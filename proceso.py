# -*- coding: utf-8 -*-

import pymysql


import spacy
from spacy import displacy
from spacy.lang.es.stop_words import STOP_WORDS
from heapq import nlargest

from polyglot.text import Text

import numpy as np

from datetime import date, datetime, timedelta
import time
import pytz

import base64
import pickle

import sys, traceback


###############################################################################

conn = pymysql.connect('127.0.0.1', 'xxx', 'xxx', 'rss')

###############################################################################


###############################################################################
def log_console(log_str):
    print(datetime.now(), end=': ')
    print(log_str)

###############################################################################
def polaridad(txt):
    ret = 0
    stopwords = list(STOP_WORDS)
    try:
        txt_stopped = ''
        docx = nlp(txt)
        for word in docx:
            if word.text not in stopwords:
                txt_stopped += word.text + ' '
        polyglot_txt = Text(txt_stopped, hint_language_code='es')
        ret = polyglot_txt.polarity
    except:
        pass
    return ret

###############################################################################

log_console("proceso iniciado.")

log_console("cargando modelo spaCy es_core_news_md...")
nlp = spacy.load('es_core_news_md')
log_console("modelo cargado.")

cursor = conn.cursor()
cursor.execute("SELECT id, id_feed, titulo, descripcion, fechahora, link, img_url FROM rss_item WHERE DATE(fechahora) BETWEEN SUBDATE(CURDATE(), 1) AND CURDATE() AND id NOT IN (SELECT id_item FROM rss_item_proceso) ORDER BY fechahora")
rows = cursor.fetchall()
for row in rows:

    item_id = row[0]
    item_feed_id = row[1]
    item_titulo = row[2]
    item_descripcion = row[3]
    item_fechahora = row[4]
    item_link = row[5]
    item_img_url = row[6]

    log_console("procesando ítem de feed #%s - título: %s" % (item_feed_id, item_titulo, ))

    try:
            texto = item_titulo + '. ' + item_descripcion

            doc = nlp(texto)

            vectores_b64 = base64.b64encode(pickle.dumps(doc.vector))
            #entidades_b64 = base64.b64encode(pickle.dumps(doc.ents))
            entidades_b64 = base64.b64encode(pickle.dumps([(ent.text, ent.label_, ent.start_char, ent.end_char) for ent in doc.ents]))
            html = displacy.render(doc, style="ent", page=False, minify=True)
            tmp_polaridad = polaridad(texto)
            cursor_insert = conn.cursor()
            cursor_insert.execute('INSERT INTO rss_item_proceso (id_item, vectores, entidades, html, polaridad) VALUES (%s, %s, %s, %s, %s)', (item_id, vectores_b64, entidades_b64, html, str(tmp_polaridad), ))
            conn.commit()

    except Exception as ex:
        log_console("error al procesar ítem: " + str(ex))
        print("-" * 60)
        traceback.print_exc(file=sys.stdout)
        print("-" * 60)


###############################################################################
def resumir(txt):
    stopwords = list(STOP_WORDS)
    docx = nlp(txt)
    word_frequencies = {}
    for word in docx:
        if word.text not in stopwords:
                if word.text not in word_frequencies.keys():
                    word_frequencies[word.text] = 1
                else:
                    word_frequencies[word.text] += 1
    maximum_frequency = max(word_frequencies.values())
    for word in word_frequencies.keys():  
        word_frequencies[word] = (word_frequencies[word]/maximum_frequency)
    sentence_list = [ sentence for sentence in docx.sents ]
    sentence_scores = {}  
    for sent in sentence_list:  
        for word in sent:
            if word.text.lower() in word_frequencies.keys():
                if len(sent.text.split(' ')) < 30:
                    if sent not in sentence_scores.keys():
                        sentence_scores[sent] = word_frequencies[word.text.lower()]
                    else:
                        sentence_scores[sent] += word_frequencies[word.text.lower()]
    summarized_sentences = nlargest(7, sentence_scores, key=sentence_scores.get)
    final_sentences = [ w.text for w in summarized_sentences ]

    resumen = final_sentences[0]
    return resumen


###############################################################################

cursor = conn.cursor()
cursor.execute("SELECT item.id, item.id_feed, item.titulo, item.descripcion, item.fechahora, item.link, item.img_url, proceso.vectores, proceso.entidades, proceso.html FROM rss_item item INNER JOIN rss_item_proceso proceso ON item.id = proceso.id_item WHERE DATE(item.fechahora) BETWEEN SUBDATE(CURDATE(), 1) AND CURDATE() AND item.id NOT IN (SELECT id_item FROM rss_resumen_item) ORDER BY fechahora")
rows = cursor.fetchall()
for row in rows:

    item_id = row[0]
    item_feed_id = row[1]
    item_titulo = row[2]
    item_descripcion = row[3]
    item_fechahora = row[4]
    item_link = row[5]
    item_img_url = row[6]

    proceso_vectores = row[7]
    proceso_entidades = row[8]
    proceso_html = row[9]

    log_console("comparando ítem de feed #%s - título: %s" % (item_feed_id, item_titulo, ))

    try:
            vectores = pickle.loads(base64.b64decode(proceso_vectores))

            cursor2 = conn.cursor()
            cursor2.execute("SELECT item.id, item.id_feed, item.titulo, item.descripcion, item.fechahora, item.link, item.img_url, proceso.vectores, proceso.entidades, proceso.html FROM rss_item item INNER JOIN rss_item_proceso proceso ON item.id = proceso.id_item WHERE item.id != %s AND DATE(item.fechahora) BETWEEN SUBDATE(CURDATE(), 1) AND CURDATE() ORDER BY fechahora", (item_id, ))
            rows2 = cursor2.fetchall()
            for row2 in rows2:

                comp_item_id = row2[0]
                comp_item_feed_id = row2[1]
                comp_item_titulo = row2[2]
                comp_item_descripcion = row2[3]
                comp_item_fechahora = row2[4]
                comp_item_link = row2[5]
                comp_item_img_url = row2[6]

                comp_proceso_vectores = row2[7]
                comp_proceso_entidades = row2[8]
                comp_proceso_html = row2[9]

                log_console('comparando contra ítem de feed #%s - título: %s' % (comp_item_feed_id, comp_item_titulo, ))

                # doc2 = nlp(comp_item_titulo + '. ' + comp_item_descripcion)
                #similarity = doc.similarity(doc2)

                comp_vectores = pickle.loads(base64.b64decode(comp_proceso_vectores))

                similarity = np.inner(vectores, comp_vectores) / (np.linalg.norm(vectores) * np.linalg.norm(comp_vectores))

                log_console('resultado de similitud: ' + str(similarity))

                if similarity >= 0.9945:

                    id_resumen = 0
                    cursor3 = conn.cursor()
                    cursor3.execute("SELECT id, id_resumen, id_item FROM rss_resumen_item WHERE id_item = %s", (comp_item_id, ))
                    rows3 = cursor3.fetchall()
                    if rows3:

                        id_resumen = rows3[0][1]

                        res_anterior = ''
                        cursorX = conn.cursor()
                        cursorX.execute("SELECT resumen FROM rss_resumen WHERE id = %s", (id_resumen, ))
                        rowsX = cursorX.fetchall()
                        if rowsX:
                            res_anterior = rowsX[0][0]

                        texto = item_titulo + '. ' + item_descripcion + '. ' + res_anterior
                        resumen = resumir(texto)

                        doc_resumen = nlp(resumen)
                        vectores_b64 = base64.b64encode(pickle.dumps(doc_resumen.vector))
                        entidades_b64 = base64.b64encode(pickle.dumps([(ent.text, ent.label_, ent.start_char, ent.end_char) for ent in doc_resumen.ents]))
                        html = displacy.render(doc_resumen, style="ent", page=False, minify=True)
                        tmp_polaridad = polaridad(resumen)

                        cursor_update = conn.cursor()
                        cursor_update.execute('UPDATE rss_resumen set resumen = %s, fechahora_modi = NOW(), vectores = %s, entidades = %s, html = %s, polaridad = %s WHERE id = %s', (resumen, vectores_b64, entidades_b64, html, str(tmp_polaridad), id_resumen, ))
                        conn.commit()

                        log_console('resumen actualizado: ' + resumen)

                    else:

                        texto = item_titulo + '. ' + item_descripcion + '. ' + comp_item_titulo + '. ' + comp_item_descripcion
                        resumen = resumir(texto)

                        doc_resumen = nlp(resumen)
                        vectores_b64 = base64.b64encode(pickle.dumps(doc_resumen.vector))
                        entidades_b64 = base64.b64encode(pickle.dumps([(ent.text, ent.label_, ent.start_char, ent.end_char) for ent in doc_resumen.ents]))
                        html = displacy.render(doc_resumen, style="ent", page=False, minify=True)
                        tmp_polaridad = polaridad(resumen)

                        cursor_insert = conn.cursor()
                        cursor_insert.execute('INSERT INTO rss_resumen (resumen, fechahora_alta, fechahora_modi, vectores, entidades, html, polaridad) VALUES (%s, NOW(), NOW(), %s, %s, %s, %s)', (resumen, vectores_b64, entidades_b64, html, str(tmp_polaridad), ))
                        conn.commit()
                        id_resumen = cursor_insert.lastrowid # conn.insert_id()

                        cursor_insert = conn.cursor()
                        cursor_insert.execute('INSERT INTO rss_resumen_item (id_resumen, id_item) VALUES (%s, %s)', (id_resumen, comp_item_id, ))
                        conn.commit()

                        log_console('resumen generado: ' + resumen)

                    cursor_insert = conn.cursor()
                    cursor_insert.execute('INSERT INTO rss_resumen_item (id_resumen, id_item) VALUES (%s, %s)', (id_resumen, item_id, ))
                    conn.commit()

                    log_console('ítem agreado a resumen.')

                    break

    except Exception as ex:
        log_console("error al comparar ítem: " + str(ex))
        print("-" * 60)
        traceback.print_exc(file=sys.stdout)
        print("-" * 60)

log_console("proceso finalizado.")
