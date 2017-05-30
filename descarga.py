# -*- coding: utf-8 -*-

import pymysql
import feedparser
from datetime import date, datetime, timedelta
import time
import pytz

###############################################################################

conn = pymysql.connect('127.0.0.1', 'xxx', 'xxx', 'rss')

###############################################################################


###############################################################################
def log_console(log_str):
    print(datetime.now(), end=': ')
    print(log_str)

###############################################################################

log_console("proceso iniciado.")

hoy = date.today()
ayer = hoy - timedelta(days=1)

cursor = conn.cursor()
cursor.execute("SELECT id, nombre, url FROM rss_feed")
rows = cursor.fetchall()
for row in rows:
    feed_id = row[0]
    feed_nombre = row[1]
    feed_url = row[2]
    log_console("procesando feed: %s - %s" % (feed_nombre, feed_url))

    try:

        feed = feedparser.parse(feed_url)
        #log_console("feed descargado: " + feed['feed']['title'])
        #log_console("feed descargado: " + str(feed['feed']))
        log_console("feed descargado.")

        for entry in feed.entries:

            titulo = entry.title
            if not titulo:
                log_console('ítem sin título, salteando...')
                continue

            descripcion = ''
            try:
                descripcion = entry.description
            except:
                pass

            link = entry.link

            if not entry.published_parsed:
                log_console('ítem sin fecha, salteando...')
                continue
            try:
                fechahora =  datetime(year=entry.published_parsed[0], month=entry.published_parsed[1], day=entry.published_parsed[2],
                 hour=entry.published_parsed[3], minute=entry.published_parsed[4], second=entry.published_parsed[5]).replace(tzinfo=pytz.utc)
            except:
                log_console('ítem con problema en fecha, salteando...')
                continue
            if fechahora.date() < ayer:
                log_console('ítem con fecha vieja, abortando...')
                break
            fechahora_mysql = fechahora.strftime('%Y-%m-%d %H:%M:%S')

            img_url = ''
            if len(entry.enclosures) >= 1:
                img_url = entry.enclosures[0].href

            cursor_existe = conn.cursor()
            cursor_existe.execute('SELECT id FROM rss_item WHERE link = %s', (link, ))
            if cursor_existe.fetchone():
                log_console('ítem existente, abortando...')
                break

            cursor_insert = conn.cursor()
            cursor_insert.execute('INSERT INTO rss_item (id_feed, titulo, descripcion, fechahora, link, img_url) VALUES (%s, %s, %s, %s, %s, %s)', (str(feed_id), titulo, descripcion, fechahora_mysql, link, img_url))
            conn.commit()

            log_console('ítem registrado: ' + titulo)

    except Exception as ex:
        log_console("error al procesar feed: " + str(ex))

log_console("proceso finalizado.")

