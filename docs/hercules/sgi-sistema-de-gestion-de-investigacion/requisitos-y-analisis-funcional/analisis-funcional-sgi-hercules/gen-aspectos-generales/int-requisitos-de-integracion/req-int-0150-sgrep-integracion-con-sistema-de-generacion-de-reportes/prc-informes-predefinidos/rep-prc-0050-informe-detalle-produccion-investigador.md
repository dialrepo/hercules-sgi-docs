# Hércules : REP\-PRC\-0050 \- Informe Detalle producción investigador







### Diseño Informe

Se debe de generar un informe en formato PDF con el detalle de los puntos obtenidos en cada item de producción científica para un investigador concreto. En los puntos de producción científica se debe de detallar los puntos de cada uno de los tipos y los items en concreto que han dado lugar a la puntuación obtenida.   


El ACT\-PRC\-001\-Investigador únicamente tendrá acceso al informe si se trata del informe del propio investigador (identificador pasado por parámetro es el mismo que el de la persona logueada) o se trata de un "Investigador principal" de un grupo y por lo tanto tendrá acceso a los informes de los investigadores que forman parte del grupo del cual la persona logueada es el investigador principal. Para ello se irá a la tabla "grupo equipo" y se mirará si la persona logueada en el momento actual existe en dicha tabla con un "rol" que tenga marcado el flag de "principal".  En caso afirmativo  la persona logueada tendrá permiso de generar el informe de todas las personas (campo "persona ref") que pertenecen al grupo (tabla "grupo equipo")  


El informe recibirá por parámetro el año de la convocatoria y el identificador del investigador  


El formato del fichero es el siguiente:

![](/attachments/597852584/597874054.png)  


  


En la siguiente tabla se especifica de donde sacar la información:  
  




| Nombre | Formato | Campo SGI |
| --- | --- | --- |
| Investigador | Texto | Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") a partir del campo "persona ref" recibido por parámetro |
| Convocatoria | Número entero | Año pasado por parámetro. Es el año de la convocatoria de baremación |
| PRODUCCIÓN: Se muestra la puntuación total obtenida por el investigador de producción científica. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor distinto a  "COSTE\_INDIRECTO" y "SEXENIO" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe dividirá en lo siguientes bloques: | | |
| LIBROS: Se muestra la puntuación total obtenida por el investigador en LIBROS. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "LIBROS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de LIBROS: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "LIBROS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con el  "Título de publicación" del item de producción científica.Para ello de todos los campos de producción científica (tabla " campo producción científica" relacionada con la tabla "producción científica") se cogerá el que tiene en el "codigoCVN" el valor "060\.010\.010\.030", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| ARTÍCULOS:  Se muestra la puntuación total obtenida por el investigador en ARTICULOS. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "ARTICULOS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de ARTICULOS: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "ARTICULOS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con el  "Título de publicación" del item de producción científica.Para ello de todos los campos de producción científica (tabla " campo producción científica" relacionada con la tabla "producción científica") se cogerá el que tiene en el "codigoCVN" el valor "060\.010\.010\.030", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| TRABAJOS PRESENTADOS EN CONGRESOS: Se muestra la puntuación total obtenida por el investigador en CONCRESOS. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "CONCRESOS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de CONCRESOS: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "CONCRESOS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con el  "Título del trabajo" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.010\.020\.030", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| DIRECCIÓN DE TESIS/TFM/TFG: Se muestra la puntuación total obtenida por el investigador en DIRECCION\_TESIS. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "DIRECCION\_TESIS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de DIRECCION\_TESIS: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "DIRECCION\_TESIS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con el  "Título del trabajo" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "030\.040\.000\.030", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| OBRAS ARTÍSTICAS: Se muestra la puntuación total obtenida por el investigador en OBRAS\_ARTISTICAS. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "OBRAS\_ARTISTICAS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de OBRAS\_ARTISTICAS: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "OBRAS\_ARTISTICAS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con la  "Descripción" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "050\.020\.030\.010", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| COMITÉS EDITORIALES: Se muestra la puntuación total obtenida por el investigador en COMITES\_EDITORIALES. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "COMITES\_EDITORIALES" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de COMITES\_EDITORIALES: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "COMITES\_EDITORIALES" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con el  "Nombre del comité editorial" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.030\.030\.010", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| ORGANIZACIÓN DE ACTIVIDADES I\+D\+I: Se muestra la puntuación total obtenida por el investigador en ORGANZACION\_ACTIVIDADES. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "ORGANZACION\_ACTIVIDADES" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de ORGANZACION\_ACTIVIDADES: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "ORGANZACION\_ACTIVIDADES" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con el  "Título de la actividad" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.020\.030\.010", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| PROYECTOS DE INVESTIGACIÓN: Se muestra la puntuación total obtenida por el investigador en PROYECTOS\_INVESTIGACION. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "PROYECTOS\_INVESTIGACION" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de PROYECTOS\_INVESTIGACION: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "PROYECTOS\_INVESTIGACION" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con el  "Título del proyecto" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "050\.020\.010\.010", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| CONTRATOS: Se muestra la puntuación total obtenida por el investigador en CONTRATOS. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "CONTRATOS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de CONTRATOS: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "CONTRATOS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con el  "Título del proyecto" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "050\.020\.020\.010", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| INVENCIONES: Se muestra la puntuación total obtenida por el investigador en INVENCIONES. Se obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "INVENCIONES" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetroSe muestra el listado de items de producción científica de INVENCIONES: (registros de la tabla  "puntuación item investigador" que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" un valor igual a  "INVENCIONES" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) | | |
| Título | Texto | Es el valor del campo que corresponde con el  "Título del proyecto" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "050\.030\.010\.020", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo" con "orden" igual a 1\). |
| Puntos | Número decimal con dos decimales | Campo "puntos" de la tabla "puntuación item investigador" |
| COSTES INDIRECTOS: Se muestra la puntuación obtenida por el investigador de costes indirectosSe obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" el valor "COSTES\_INDIRECTOS" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro | | |
| SEXENIOS: Se muestra la puntuación obtenida por el investigador en sexeniosSe obtiene de la suma del campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con la persona pasada por parámetro (campo "persona ref"), que tenga el campo "tipo puntuación" el valor "SEXENIO" y correspondan a puntos de "producción científica" (tabla "producción científica)" con el campo "convocatoria baremación id" igual el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro | | |

  
  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














