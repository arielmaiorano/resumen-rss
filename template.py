# -*- coding: utf-8 -*-

import pymysql
from datetime import date, datetime, timedelta
import time
import pytz

from jinja2 import Environment, PackageLoader, FileSystemLoader, select_autoescape


###############################################################################

conn = pymysql.connect('127.0.0.1', 'xxx', 'xxx', 'rss')

FILE_PATH = '/var/www/html/xxx/index.html'

###############################################################################


###############################################################################
def log_console(log_str):
    print(datetime.now(), end=': ')
    print(log_str)

###############################################################################

log_console("proceso iniciado.")

resumenes = []

cursor = conn.cursor()
cursor.execute("SELECT id, resumen, fechahora_alta, fechahora_modi, html, polaridad FROM rss_resumen WHERE DATE(fechahora_modi) = CURDATE() ORDER BY fechahora_modi DESC limit 12")
rows = cursor.fetchall()
for row in rows:

    resumen_id = row[0]
    resumen_txt = row[1]
    resumen_fechahora_alta = row[2] #datetime.strptime(row[2], '%Y-%m-%d %H:%M:%S')
    resumen_fechahora_modi = row[3] #datetime.strptime(row[3], '%Y-%m-%d %H:%M:%S')
    resumen_html = row[4]
    resumen_polaridad = row[5]

    resumen_txt = resumen_txt.replace('&quot;', '"')
    resumen_html = resumen_html.replace('&quot;', '"')

    log_console("procesando resumen #%s - texto: %s" % (resumen_id, resumen_txt, ))

    resumen = { 'resumen_id': resumen_id, 'resumen_txt': resumen_txt, 'resumen_html': resumen_html, 'resumen_fechahora_alta': resumen_fechahora_alta, 'resumen_fechahora_modi': resumen_fechahora_alta, 'img_url': '', 'items' : [], 'foto_por': '', 'resumen_polaridad': resumen_polaridad }

    cursor2 = conn.cursor()
    cursor2.execute("SELECT i.id, i.id_feed, i.titulo, i.descripcion, i.fechahora, i.link, i.img_url, f.nombre, ip.html, ip.polaridad FROM rss_item i INNER JOIN rss_feed f ON i.id_feed = f.id INNER JOIN rss_item_proceso ip ON i.id = ip.id_item WHERE i.id IN (SELECT id_item FROM rss_resumen_item WHERE id_resumen = %s) ORDER BY fechahora DESC", (resumen_id,  ))
    rows2 = cursor2.fetchall()
    for row2 in rows2:

        item_id = row2[0]
        item_feed_id = row2[1]
        item_titulo = row2[2]
        item_descripcion = row2[3]
        item_fechahora = row2[4] #datetime.strptime(row2[4], '%Y-%m-%d %H:%M:%S')
        item_link = row2[5]
        item_img_url = row2[6]
        feed_nombre = row2[7]
        item_proceso_html = row2[8]
        item_proceso_polaridad = row2[9]

        if item_img_url:
            resumen['img_url'] = item_img_url
            resumen['foto_por'] = feed_nombre


        item = { 'item_id': item_id, 'item_feed_id': item_feed_id, 'feed_nombre': feed_nombre, 'item_titulo': item_titulo, 'item_descripcion': item_descripcion, 'item_fechahora': item_fechahora, 'item_link': item_link, 'item_img_url': item_img_url, 'item_proceso_html': item_proceso_html, 'item_proceso_polaridad': item_proceso_polaridad }

        resumen['items'].append(item)

    resumenes.append(resumen)

env = Environment(
    loader=FileSystemLoader('./'),
    autoescape=select_autoescape(['html', 'xml'])
)
template = env.get_template('template.html')
html = template.render(resumenes=resumenes, fechahora=datetime.now())
with open(FILE_PATH, 'w') as f:
    print(html, file=f)

log_console("proceso finalizado.")
