-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------

DROP TABLE IF EXISTS rss_feed;
CREATE TABLE rss_feed   (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(80) NOT NULL,
    url VARCHAR(250) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO rss_feed (nombre, url) VALUES ('Infobae', 'https://www.infobae.com/feeds/rss/');

INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Lo Último', 'https://www.clarin.com/rss/lo-ultimo/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Política', 'https://www.clarin.com/rss/politica/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Mundo', 'https://www.clarin.com/rss/mundo/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Sociedad', 'https://www.clarin.com/rss/sociedad/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Policiales', 'https://www.clarin.com/rss/policiales/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Ciudades', 'https://www.clarin.com/rss/ciudades/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Opinión', 'https://www.clarin.com/rss/opinion/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Cartas al país', 'https://www.clarin.com/rss/cartas_al_pais/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Cultura', 'https://www.clarin.com/rss/cultura/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Rural', 'https://www.clarin.com/rss/rural/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Economia', 'https://www.clarin.com/rss/economia/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Tecnologia', 'https://www.clarin.com/rss/tecnologia/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Revista Ñ', 'https://www.clarin.com/rss/revista-enie/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Viva', 'https://www.clarin.com/rss/viva/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Clarín em Portugués', 'https://www.clarin.com/rss/br/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Fútbol', 'https://www.clarin.com/rss/deportes/futbol/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Ascenso', 'https://www.clarin.com/rss/deportes/ascenso/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Fútbol Internacional', 'https://www.clarin.com/rss/deportes/futbol-internacional/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Messi', 'https://www.clarin.com/rss/deportes/messi/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Rugby', 'https://www.clarin.com/rss/deportes/rugby/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Tenis', 'https://www.clarin.com/rss/deportes/tenis/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Automovilismo', 'https://www.clarin.com/rss/deportes/automovilismo/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Básquet', 'https://www.clarin.com/rss/deportes/basquet/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Polideportivo', 'https://www.clarin.com/rss/deportes/polideportivo/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Turf', 'https://www.clarin.com/rss/deportes/turf/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Boxeo', 'https://www.clarin.com/rss/deportes/boxeo/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Hockey', 'https://www.clarin.com/rss/deportes/hockey/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Deportes', 'https://www.clarin.com/rss/deportes/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Fama', 'https://www.clarin.com/rss/espectaculos/fama/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - TV', 'https://www.clarin.com/rss/espectaculos/tv/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Cine', 'https://www.clarin.com/rss/espectaculos/cine/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Música', 'https://www.clarin.com/rss/espectaculos/musica/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Teatro', 'https://www.clarin.com/rss/espectaculos/teatro/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - S!', 'https://www.clarin.com/rss/si/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Espectaculos', 'https://www.clarin.com/rss/espectaculos/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Entremujeres', 'https://www.clarin.com/rss/entremujeres/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Autos', 'https://www.clarin.com/rss/autos/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Buena Vida', 'https://www.clarin.com/rss/buena-vida/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - Viajes', 'https://www.clarin.com/rss/viajes/');
INSERT INTO rss_feed (nombre, url) VALUES ('Clarín - ARQ', 'https://www.clarin.com/rss/arq/');

INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Últimas Noticias', 'https://www.telam.com.ar/rss2/ultimasnoticias.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Política', 'https://www.telam.com.ar/rss2/politica.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Economía', 'https://www.telam.com.ar/rss2/economia.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Sociedad', 'https://www.telam.com.ar/rss2/sociedad.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Deportes', 'https://www.telam.com.ar/rss2/deportes.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Policiales', 'https://www.telam.com.ar/rss2/policiales.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Internacional', 'https://www.telam.com.ar/rss2/internacional.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Latinoamérica', 'https://www.telam.com.ar/rss2/latinoamerica.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Cono Sur', 'https://www.telam.com.ar/rss2/conosur.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Provincias', 'https://www.telam.com.ar/rss2/provincias.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Agropecuario', 'https://www.telam.com.ar/rss2/agropecuario.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Tecnología', 'https://www.telam.com.ar/rss2/tecnologia.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Cultura', 'https://www.telam.com.ar/rss2/cultura.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Espectáculos', 'https://www.telam.com.ar/rss2/espectaculos.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Turismo', 'https://www.telam.com.ar/rss2/turismo.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Salud', 'https://www.telam.com.ar/rss2/salud.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Educación', 'https://www.telam.com.ar/rss2/educacion.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Télam - Redes', 'https://www.telam.com.ar/rss2/redes.xml');

INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Ultimas Noticias', 'http://contenidos.lanacion.com.ar/herramientas/rss/origen=2');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Títulos ed. impresa', 'http://contenidos.lanacion.com.ar/herramientas/rss/origen=1');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Política', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=30');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Economía', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=272');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Deportes', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=131');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Sociedad', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=7773');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Opinión', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=28');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Espectáculos', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=120');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - El Mundo', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=7');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Revista LA NACION', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=494');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento Enfoques', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=421');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento Comercio Exterior', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=347');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento Tecnología', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=432');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento Turismo', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=504');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento Al volante', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=371');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento El Campo', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=337');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento Moda y Belleza', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=1312');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento Inmuebles Comerciales', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=1363');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento Countries', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=1348');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - Suplemento Comunidad', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=1344');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - adnCultura', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=6734');
INSERT INTO rss_feed (nombre, url) VALUES ('La Nación - The Wall Street Journal Americas', 'http://contenidos.lanacion.com.ar/herramientas/rss/categoria_id=6373');

INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Portada', 'https://www.pagina12.com.ar/rss/portada');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Edición impresa', 'https://www.pagina12.com.ar/rss/edicion-impresa');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Espectáculos', 'https://www.pagina12.com.ar/rss/suplementos/cultura-y-espectaculos/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Rosario 12', 'https://www.pagina12.com.ar/rss/suplementos/rosario12/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - El País', 'https://www.pagina12.com.ar/rss/secciones/el-pais/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Economía', 'https://www.pagina12.com.ar/rss/secciones/economia/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Sociedad ', 'https://www.pagina12.com.ar/rss/secciones/sociedad/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - El Mundo ', 'https://www.pagina12.com.ar/rss/secciones/el-mundo/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Deportes', 'https://www.pagina12.com.ar/rss/secciones/deportes/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Cultura', 'https://www.pagina12.com.ar/rss/secciones/cultura/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Universidad', 'https://www.pagina12.com.ar/rss/secciones/universidad/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Ciencia', 'https://www.pagina12.com.ar/rss/secciones/ciencia/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Psicología', 'https://www.pagina12.com.ar/rss/secciones/psicologia/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Ajedrez', 'https://www.pagina12.com.ar/rss/secciones/ajedrez/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - La Ventana', 'https://www.pagina12.com.ar/rss/secciones/la-ventana/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Diálogos', 'https://www.pagina12.com.ar/rss/secciones/dialogos/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Hoy', 'https://www.pagina12.com.ar/rss/secciones/hoy/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Plástica', 'https://www.pagina12.com.ar/rss/secciones/plastica/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Cartas de Lectores', 'https://www.pagina12.com.ar/rss/secciones/cartas-de-lectores/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Cash', 'https://www.pagina12.com.ar/rss/suplementos/cash/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Las 12', 'https://www.pagina12.com.ar/rss/suplementos/las12/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Líbero', 'https://www.pagina12.com.ar/rss/suplementos/libero/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - M2', 'https://www.pagina12.com.ar/rss/suplementos/m2/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - NO', 'https://www.pagina12.com.ar/rss/suplementos/no/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Radar', 'https://www.pagina12.com.ar/rss/suplementos/radar/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Radar Libros', 'https://www.pagina12.com.ar/rss/suplementos/radar-libros/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Sátira 12', 'https://www.pagina12.com.ar/rss/suplementos/satira12/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Soy', 'https://www.pagina12.com.ar/rss/suplementos/soy/notas');
INSERT INTO rss_feed (nombre, url) VALUES ('Página 12 - Turismo', 'https://www.pagina12.com.ar/rss/suplementos/turismo/notas');

INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Último Momento', 'http://www.perfil.com/rss/ultimomomento.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Política', 'http://www.perfil.com/rss/politica.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Policía', 'http://www.perfil.com/rss/policia.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Internacionales', 'http://www.perfil.com/rss/internacional.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Economía', 'http://www.perfil.com/rss/economia.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Deportes', 'http://www.perfil.com/rss/deportes.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Opinión', 'http://www.perfil.com/rss/columnistas.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Sociedad', 'http://www.perfil.com/rss/sociedad.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Cultura', 'http://www.perfil.com/rss/cultura.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Espectáculos', 'http://www.perfil.com/rss/espectaculos.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Ciencia', 'http://www.perfil.com/rss/ciencia.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Salud', 'http://www.perfil.com/rss/salud.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('Perfil - Tecnología', 'http://www.perfil.com/rss/tecnologia.xml');

INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Últimas noticias', 'http://www.lapoliticaonline.com/files/rss/ultimasnoticias.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Política', 'http://www.lapoliticaonline.com/files/rss/politica.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Economía', 'http://www.lapoliticaonline.com/files/rss/economia.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Ciudad', 'http://www.lapoliticaonline.com/files/rss/ciudad.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Provincia', 'http://www.lapoliticaonline.com/files/rss/provincia.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Conurbano', 'http://www.lapoliticaonline.com/files/rss/conurbano.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Mendoza', 'http://www.lapoliticaonline.com/files/rss/mendoza.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Santa Fe', 'http://www.lapoliticaonline.com/files/rss/santafe.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Transporte', 'http://www.lapoliticaonline.com/files/rss/transporte.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Energía', 'http://www.lapoliticaonline.com/files/rss/energía.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Política Online - Judiciales', 'http://www.lapoliticaonline.com/files/rss/judiciales.xml');

INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Portada', 'https://www.ambito.com/rss/home.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Ultimas noticias', 'https://www.ambito.com/rss/ultimas-noticias.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Economía', 'https://www.ambito.com/rss/economia.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Finanzas', 'https://www.ambito.com/rss/finanzas.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Política', 'https://www.ambito.com/rss/politica.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Negocios', 'https://www.ambito.com/rss/negocios.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Opinión', 'https://www.ambito.com/rss/opinion.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Lifestyle', 'https://www.ambito.com/rss/lifestyle.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Nacional', 'https://www.ambito.com/rss/nacional.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Edición Impresa', 'https://www.ambito.com/rss/edicion-impresa.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Mundo', 'https://www.ambito.com/rss/mundo.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Información General', 'https://www.ambito.com/rss/informacion-general.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Autos', 'https://www.ambito.com/rss/autos.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Estilo A', 'https://www.ambito.com/rss/estilo-a.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Municipios', 'https://www.ambito.com/rss/municipios.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Espectáculos', 'https://www.ambito.com/rss/espectaculos.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Ámbito Biz', 'https://www.ambito.com/rss/ambito-biz.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Novedades Fiscales', 'https://www.ambito.com/rss/novedades-fiscales.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Deportes', 'https://www.ambito.com/rss/deportes.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('ámbito.com - Copa América', 'https://www.ambito.com/rss/copa-america.xml');

INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Política', 'https://www.lavoz.com.ar/rss/politica.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Ciudadanos', 'https://www.lavoz.com.ar/rss/ciudadanos.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Negocios', 'https://www.lavoz.com.ar/rss/negocios.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Mundo', 'https://www.lavoz.com.ar/rss/mundo.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Sucesos', 'https://www.lavoz.com.ar/rss/sucesos.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Tecnología', 'https://www.lavoz.com.ar/rss/tecnologia.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Editorial', 'https://www.lavoz.com.ar/rss/editorial.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Salud', 'https://www.lavoz.com.ar/rss/salud.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Número Cero', 'https://www.lavoz.com.ar/rss/numero-cero.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Tendencias', 'https://www.lavoz.com.ar/rss/tendencias.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Últimas noticias', 'https://www.lavoz.com.ar/rss/rss.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - TV', 'https://vos.lavoz.com.ar/rss/tv.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Cine', 'https://vos.lavoz.com.ar/rss/cine.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Música', 'https://vos.lavoz.com.ar/rss/musica.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Escena', 'https://vos.lavoz.com.ar/rss/escena.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Comer y Beber', 'https://vos.lavoz.com.ar/rss/comer-y-beber.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Mirá', 'https://vos.lavoz.com.ar/rss/mira.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Artes', 'https://vos.lavoz.com.ar/rss/artes.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Medios', 'https://vos.lavoz.com.ar/rss/medios.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Personajes', 'https://vos.lavoz.com.ar/rss/personajes.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Últimas noticias', 'https://vos.lavoz.com.ar/rss/rss.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Fútbol', 'https://mundod.lavoz.com.ar/rss/futbol.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Tenis', 'https://mundod.lavoz.com.ar/rss/tenis.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Básquet', 'https://mundod.lavoz.com.ar/rss/basquet.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Rugby', 'https://mundod.lavoz.com.ar/rss/rugby.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Motores', 'https://mundod.lavoz.com.ar/rss/motores.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Extremo', 'https://mundod.lavoz.com.ar/rss/extremo.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Y más', 'https://mundod.lavoz.com.ar/rss/y-mas.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - belgrano', 'https://mundod.lavoz.com.ar/rss/belgrano.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - talleres', 'https://mundod.lavoz.com.ar/rss/talleres.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - instituto', 'https://mundod.lavoz.com.ar/rss/instituto.xml');
INSERT INTO rss_feed (nombre, url) VALUES ('La Voz - Últimas noticias', 'https://mundod.lavoz.com.ar/rss/rss.xml');

INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Últimas noticias', 'https://www.iprofesional.com/rss/home');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Econom&iacute;a', 'https://www.iprofesional.com/rss/economia');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Finanzas', 'https://www.iprofesional.com/rss/finanzas');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Impuestos', 'https://www.iprofesional.com/rss/impuestos');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Legales', 'https://www.iprofesional.com/rss/legales');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Negocios', 'https://www.iprofesional.com/rss/negocios');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Tecnolog&iacute;a', 'https://www.iprofesional.com/rss/tecnologia');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Comex', 'https://www.iprofesional.com/rss/comex');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Management', 'https://www.iprofesional.com/rss/management');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Política', 'https://www.iprofesional.com/rss/politica');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Autos', 'https://www.iprofesional.com/rss/autos');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Vinos &amp; Bodegas', 'https://www.iprofesional.com/rss/vinos');
INSERT INTO rss_feed (nombre, url) VALUES ('iProfesional.com - Health & Tech', 'https://www.iprofesional.com/rss/health-tech');


DROP TABLE IF EXISTS rss_item;
CREATE TABLE rss_item   (
    id INT NOT NULL AUTO_INCREMENT,
    id_feed INT NOT NULL,
    titulo VARCHAR(300) NOT NULL,
    descripcion TEXT NULL,
    fechahora DATETIME NOT NULL,
    link VARCHAR(250) NOT NULL,
    img_url VARCHAR(250) NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS rss_item_proceso;
CREATE TABLE rss_item_proceso   (
    id INT NOT NULL AUTO_INCREMENT,
    id_item INT NOT NULL,
    vectores TEXT NULL,
    entidades TEXT NULL,
    html TEXT NULL,
    polaridad DECIMAL(3,2) NULL,
    PRIMARY KEY (id)
);


DROP TABLE IF EXISTS rss_resumen;
CREATE TABLE rss_resumen   (
    id INT NOT NULL AUTO_INCREMENT,
    resumen VARCHAR(500) NOT NULL,
    fechahora_alta DATETIME NOT NULL,
    fechahora_modi DATETIME NOT NULL,
    vectores TEXT NULL,
    entidades TEXT NULL,
    html TEXT NULL,
    polaridad DECIMAL(3,2) NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS rss_resumen_item;
CREATE TABLE rss_resumen_item   (
    id INT NOT NULL AUTO_INCREMENT,
    id_resumen INT NOT NULL,
    id_item INT NOT NULL,
    PRIMARY KEY (id)
);
