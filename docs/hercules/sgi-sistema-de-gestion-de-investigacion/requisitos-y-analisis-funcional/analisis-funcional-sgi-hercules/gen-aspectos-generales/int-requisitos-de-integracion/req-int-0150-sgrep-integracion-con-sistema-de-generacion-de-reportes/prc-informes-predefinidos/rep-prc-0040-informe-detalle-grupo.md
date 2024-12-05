# Hércules : REP\-PRC\-0040 \- Informe Detalle grupo







### Diseño Informe

Se debe de generar un informe en formato PDF con el detalle del reparto de la baremación de una convocatoria de un grupo de investigación. Se muestra el listado de investigadores que forman parte del grupo y los puntos Sexenios, de Costes indirectos y de cada baremo de producción (libros, artículos, trabajos presentados en congresos, dirección de tesis, obras artísticas, comités editoriales, organización de actividades I\+D\+i, proyectos de investigación, contratos e invenciones).  


El ACT\-PRC\-001\-Investigador únicamente tendrá acceso al informe si pertenece o ha pertenecido al grupo (existe en la tabla "grupo equipo" para el identificador del grupo pasado por parámetro)

El informe recibirá por parámetro el año de la convocatoria y el identificador del grupo de investigación  


El formato del fichero es el siguiente:

![](/attachments/597852494/597874022.png)  


  


En la siguiente tabla se especifica de donde sacar la información:  
  




| Nombre | Formato | Campo SGI |
| --- | --- | --- |
| GRUPO | Texto | Nombre del grupo de investigación.A partir del identificador pasado por parámetro se irá a recuperar los datos generales del grupo.Campo "nombre" de la tabla "grupo" (Módulo CSP \- GIN). |
| Convocatoria | Número entero | Año pasado por parámetro. Es el año de la convocatoria de baremación |
| INVESTIGADORES: Listado de investigadores que formaron parte del grupo de investigación en los años que se baremaron en la convocatoria de baremación cuyo "anio" corresponde con el año pasado por parámetro.Se obtiene de la tabla "puntuación item investigador" (para obtener el campo "persona ref)", que pertenecen al grupo (tabla "puntuación grupo investigador") y que cumple que   "grupo ref" es el pasado por parámetro y "convocatoria baremación id" es el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro (tabla "puntuación grupo").Por cada persona distinta del grupo se mostrará una fila con las siguientes columnas (un mismo investigador puede estar en la tabla "puntuación grupo investigador" mas de una vez, porque puede tener una puntuación del item para cada año de baremación, como es el caso de items de proyectos) | | |
| NOMBRE | Texto | Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") a partir del campo "persona ref" de la tabla "puntuación item investigador" |
| PUNTOS PROD. | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro), son de la "persona ref" que corresponde con el identificador del investigador que se esta mostrando en al tabla y son de tipo puntuación igual a LIBROS, o ARTICULOS o COMITES\_EDITORIALES o CONCRESOS o DIRECCION\_TESIS o OBRAS\_ARTISTICAS o ORGANZACION\_ACTIVIDADES o CONTRATOS o PROYECTOS\_INVESTIGACION o INVENCIONES (entidad "puntuación item investigador" tiene el campo "tipo puntuación") |
| PUNTOS C.I. | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro), son de la "persona ref" que corresponde con el identificador del investigador que se esta mostrando en al tabla y son de tipo puntuación igual a COSTE\_INDIRECTO (entidad "puntuación item investigador" tiene el campo "tipo puntuación") |
|  | | |
| EL PRECIO POR PUNTO DE PRODUCCIÓN ES x euros | Número decimal con dos decimales | El valor de "x" se obtiene del campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| EL PRECIO POR PUNTO DE SEXENIO ES x euros | Número decimal con dos decimales | El valor de "x" se obtiene del campo "punto sexenio" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| EL PRECIO POR PUNTO DE COSTES INDIRECTOS ES x euros | Número decimal con dos decimales | El valor de "x" se obtiene del campo "punto costes indirectos" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| SEXENIOS: Fila resumen con el número de sexenios de los investigadores del grupoSe obtiene los puntos del baremo "Sexenio" de la convocatoria que corresponde con el año pasado por parámetro: Se obtiene el campo "puntos" de la tabla "baremo" cuyo campo "configuración baremo" sea el de "tipo baremo" igual a SEXENIO y el baremo corresponde con la "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro.Sino existe dicho baremo (no se ha seleccionado el baremo en la configuración de la convocatoria) los tres campos serán 0\. Sino se calculan de la forma explicada en cada uno de los campos.(Módulo PRC) | | |
| Nº SEXENIOS | Número entero | Se suma el campo "puntos" de la tabla "puntuación item investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a SEXENIO (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a SEXENIO) y se divide por por los puntos del baremo "Sexenio" (explicado en el encabezado) |
| PUNTOS | Número decimal con dos decimales | Campo "puntos sexenios" de la tabla "puntuación grupo". Se irá a la tabla "puntuación grupo" para buscar el "grupo ref" que corresponde con el identificador del grupo que se esta pasando por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de sexenio, es decir, por el campo "punto sexenio" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| PRODUCCIÓN: Se dibujará una fila por cada Tipo de producción. | | |
| LIBROS | | |
|  | Texto | LIBROS |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Publicaciones y dentro de ellos los que son de tipo Libro, Capítulos de libro, Edición o Comentario sistemático a normas, que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "060\.010\.010\.00" y exista en la tabla "campo producción científica" un registro con el "código CVN" igual a "060\.010\.010\.010" y en su lista de  valores (tabla "valor campo") tenga en el campo "valor" uno de los siguientes valores: "032" o "004" o "208" o "COMENTARIO\_SISTEMATICO\_NORMAS" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a LIBROS (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a LIBROS) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| ARTÍCULOS | | |
|  |  | ARTÍCULOS |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Publicaciones y dentro de ellos los que son de tipo Artículo científico, que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "060\.010\.010\.00" y exista en la tabla "campo producción científica" un registro con el "código CVN" igual a "060\.010\.010\.010" y en su lista de  valores (tabla "valor campo") tenga en el campo "valor" el valor "020" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a ARTICULOS (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a ARTICULOS) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| TRABAJOS PRESENTADOS EN CONGRESOS | | |
|  |  | TRABAJOS PRESENTADOS EN CONGRESOS |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Trabajos presentados en congresos que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "060\.010\.020\.00" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a CONGRESOS (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a CONGRESOS) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| DIRECCIÓN DE TESIS/TFM/TFG | | |
|  |  | DIRECCIÓN DE TESIS/TFM/TFG |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Dirección de tesis que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "030\.040\.000\.00" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a DIRECCION\_TESIS (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a DIRECCION\_TESIS) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| OBRAS ARTÍSTICAS | | |
|  |  | OBRAS ARTÍSTICAS |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Obras artísticas que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "050\.020\.030\.00" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a OBRAS\_ARTISTICAS (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a OBRAS\_ARTISTICAS) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| COMITÉS EDITORIALES | | |
|  |  | COMITÉS EDITORIALES |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Comités editoriales que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "060\.030\.030\.00" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a COMITES\_EDITORIALES (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a COMITES\_EDITORIALES) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| ORGANIZACIÓN DE ACTIVIDADES I\+D\+I | | |
|  |  | ORGANIZACIÓN DE ACTIVIDADES I\+D\+I |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Comités Organización de actividades que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "060\.020\.030\.00" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a ORGANIZACION\_ACTIVIDADES (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a ORGANIZACION\_ACTIVIDADES) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| PROYECTOS DE INVESTIGACIÓN | | |
|  |  | PROYECTOS DE INVESTIGACIÓN |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Proyectos de investigación que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "050\.020\.010\.00" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a PROYECTOS\_INVESTIGACION (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a PROYECTOS\_INVESTIGACION) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| CONTRATOS | | |
|  |  | CONTRATOS |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Contratos que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "050\.020\.020\.00" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a CONTRATOS (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a CONTRATOS) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| INVENCIONES | | |
|  |  | INVENCIONES |
| NÚMERO | Número entero | Se cuentan los items de producción científica de tipo Invenciones que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga el valor "050\.030\.010\.00" |
| PUNTOS | Número decimal con dos decimales | Se suma el campo "puntos" de la tabla "puntuación grupo investigador" de todas las puntuaciones que corresponden con el grupo pasado por parámetro (campo "grupo ref" de la tabla "puntuación grupo" tiene el valor del identificador de grupo pasado por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro) y son de tipo puntuación igual a INVENCIONES (entidad "puntuación item investigador" tiene el campo "tipo puntuación" igual a INVENCIONES) |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de producción, es decir, por el campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| COSTES INDIRECTOS: Fila resumen con la puntuación de los costes indirectos  del grupo | | |
| Nº PROYECTOS/CONTRATOS | Número entero | Se cuentan los items de producción científica de tipo Proyectos y de tipo Contratos que tuvieron puntuación:* Se contabilizarán los registros de la tabla "producción científica" que tengan en el campo "convocatoria baremación id" el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro y el campo "epigrafe CVN" tenga uno de los siguientes valores "050\.020\.010\.00" o "050\.020\.020\.00" |
| PUNTOS | Número decimal con dos decimales | Campo "puntos costes indirectos" de la tabla "puntuación grupo". Se irá a la tabla "puntuación grupo"  para buscar el "grupo ref" que corresponde con el identificador del grupo que se esta pasando por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| IMPORTE | Número decimal con dos decimales | Se multiplica la columna PUNTOS por el valor del punto de coste indirecto, es decir, por el campo "punto costes indirectos" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| DINERO TOTAL: Se dibujará una fila por cada Tipo de producción. | | |
| LIBROS | | |
|  |  | LIBROS |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo LIBROS |
| ARTÍCULOS | | |
|  |  | ARTÍCULOS |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo ARTÍCULOS |
| TRABAJOS PRESENTADOS EN CONGRESOS | | |
|  |  | TRABAJOS PRESENTADOS EN CONGRESOS |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo TRABAJOS PRESENTADOS EN CONGRESOS |
| DIRECCIÓN DE TESIS/TFM/TFG | | |
|  |  | DIRECCIÓN DE TESIS/TFM/TFG |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo DIRECCIÓN DE TESIS/TFM/TFG |
| OBRAS ARTÍSTICAS | | |
|  |  | OBRAS ARTÍSTICAS |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo OBRAS ARTÍSTICAS |
| COMITÉS EDITORIALES | | |
|  |  | COMITÉS EDITORIALES |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo COMITÉS EDITORIALES |
| ORGANIZACIÓN DE ACTIVIDADES I\+D\+I | | |
|  |  | ORGANIZACIÓN DE ACTIVIDADES I\+D\+I |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo ORGANIZACIÓN DE ACTIVIDADES I\+D\+I |
| PROYECTOS DE INVESTIGACIÓN | | |
|  |  | PROYECTOS DE INVESTIGACIÓN |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo PROYECTOS DE INVESTIGACIÓN |
| CONTRATOS | | |
|  |  | CONTRATOS |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo CONTRATOS |
| INVENCIONES | | |
|  |  | INVENCIONES |
| IMPORTE | Número decimal con dos decimales | Valor ya calculado en el propio informe para el campo IMPORTE de la fila de PRODUCCIÓN que corresponde con el tipo INVENCIONES |
|  | | |
| TOTAL PRODUCCIÓN | Número decimal con dos decimales | Se multiplica "puntos producción" por el valor del "punto producción". Dichos campos se obtienen de:Campo "puntos producción" de la tabla "puntuación grupo". Se irá a la tabla "puntuación grupo" para buscar el "grupo ref" que corresponde con el identificador del grupo que se esta pasando por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro.Campo "punto producción" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. |
| TOTAL SEXENIOS | Número decimal con dos decimales | Se multiplica "puntos sexenios" por el valor del "punto sexenio". Ya calculado en el informe para dibujar la fila de SEXENIOS. Dichos campos se obtienen de:Campo "puntos sexenios" de la tabla "puntuación grupo". Se irá a la tabla "puntuación grupo" para buscar el "grupo ref" que corresponde con el identificador del grupo que se esta pasando por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. Ya calculado en el informe para dibujar la fila de SEXENIOS.Campo "punto sexenio" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. Ya calculado en el informe para dibujar la fila de SEXENIOS. |
| TOTAL COSTES INDIRECTOS | Número decimal con dos decimales | Se multiplica "puntos costes indirectos" por el valor del "punto costes indirectos". Ya calculado en el informe para dibujar la fila de COSTES INDIRECTOS. Dichos campos se obtienen de:Campo "puntos costes indirectos" de la tabla "puntuación grupo". Se irá a la tabla "puntuación grupo" para buscar el "grupo ref" que corresponde con el identificador del grupo que se esta pasando por parámetro y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. Ya calculado en el informe para dibujar la fila de COSTES INDIRECTOS.Campo "punto costes indirectos" de la tabla "convocatoria baremación" de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro. Ya calculado en el informe para dibujar la fila de COSTES INDIRECTOS. |
| TOTAL | Número decimal con dos decimales | Suma de las filas TOTAL PRODUCCIÓN, TOTAL SEXENIOS Y TOTAL COSTES INDIRECTOS |

  
  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














