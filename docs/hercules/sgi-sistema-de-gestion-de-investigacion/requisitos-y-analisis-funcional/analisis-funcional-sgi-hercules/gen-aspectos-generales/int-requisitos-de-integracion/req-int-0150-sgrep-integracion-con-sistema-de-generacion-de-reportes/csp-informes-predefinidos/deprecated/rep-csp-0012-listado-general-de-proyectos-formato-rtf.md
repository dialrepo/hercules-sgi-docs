# Hércules : REP\-CSP\-0012 \- Listado general de proyectos \- Formato rtf







### Diseño Informe

Se debe de generar un informe en formato RTF compatible con DOCX que reciba como parámetros de entrada el título del informe y la lista de bloques de datos a incluir. El informe contendrá la información detallada de proyectos. Se listarán todos los proyectos recuperados con el detalle de los mismos.  Se incluirá el parámetro de entrada "título" como título del informe.

El listado se mostrará agrupado por proyecto. Cada vez que se cambie de proyecto se resaltará la línea de texto en el informe y a continuación comenzará a listarse su detalle.

El detalle se visualizará en función del bloque de datos:

* A dos columnas. Siendo la primera columna la etiqueta de la misma y la segunda columna el contenido recuperado con los datos el proyecto.
* En varias filas, pero también a dos columnas, de forma que varias filas compartan una misma columna de título. La primera columna será el título y en la segunda columna, saltando de fila, se mostrará el contenido.  ejemplo ![](/attachments/597853684/597868680.png)

Habrá bloques de datos que se repitan, en este caso la etiqueta será representativa del bloque de datos, e incluirá entre paréntesis el nombre de las columnas que se mostrarán para cada elemento. Cada elemento repetido se mostrará de alguna de las formas indicadas previamente (dependiendo de cada bloque de datos).

A continuación se indica el mapeo de los nombres de columnas del fichero de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna, así como el modo en el que se visualizará (a dos columnas o repeticiones de filas).

  


Ejemplo de formato de datos:  [proyectos\_with\_list.rtf](/attachments/597853684/597868720.rtf "attachments/597853684/597868720.rtf") al que se de debe de incorporar la visualización en varias filas, de manera semejante a la imagen mostrada previamente.

  


  




| Bloque de datos | Columna informe | Formato | Campo SGI | Repetición |
| --- | --- | --- | --- | --- |
|  | Identificador SGI | Dos columnas | campo "id" de la tabla "proyecto" |  |
|  | Código identificación SGE X | Dos columnas | campo "proyecto SGE ref" de la tabla "proyecto proyecto SGE" | Sí |
|  | Título | Dos columnas | campo "título" de la tabla "proyecto" |  |
|  | Acrónimo | Dos columnas | campo "acrónimo" de la tabla "proyecto" |  |
|  | Referencia en entidad convocante | Dos columnas | campo "código externo" de la tabla "proyecto" |  |
|  | Estado | Dos columnas | Valor del enumerado "tipo estado proyecto" para el registro de la tabla "estado proyecto" referenciado desde el campo "estado" de la tabla "proyecto" |  |
|  | Fecha estado | Dos columnas | Campo "fecha" para el registro de la tabla "estado proyecto" referenciado desde el campo "estado" de la tabla "proyecto" |  |
|  | Ámbito geográfico | Dos columnas | Campo "nombre" de la tabla "tipo ámbito geográfico" referenciado desde el campo "ámbito geográfico" de la tabla "proyecto" |  |
|  | Unidad de gestión | Dos columnas | Campo "nombre" de la tabla "unidad gestión" referenciado desde el campo "unidad gestión" de la tabla "proyecto" |  |
|  | Modelo de ejecución | Dos columnas | Campo "nombre" de la tabla "modelo ejecución" referenciado desde el campo "modelo ejecución" de la tabla "proyecto" |  |
|  | Finalidad | Dos columnas | Campo "nombre" de la tabla "finalidad" referenciado desde el campo "finalidad" de la tabla "proyecto" |  |
|  | Fecha inicio | Dos columnas | Campo "fecha inicio" de la tabla "proyecto" |  |
|  | Fecha fin | Dos columnas | Campo "fecha fin" de la tabla "proyecto" |  |
|  | Fecha fin definitiva | Dos columnas | Campo "fecha fin definitiva" de la tabla "proyecto" |  |
|  | Confidencial | Dos columnas | Campo "confidencial" de la tabla "proyecto" |  |
|  | Clasificación producción científica/CVN | Dos columnas | Campo "clasificación CVN" de la tabla "proyecto" |  |
|  | Proyecto coordinado | Dos columnas | Campo "coordinado" de la tabla "proyecto" |  |
|  | Coordinador externo | Dos columnas | Campo "coordinador externo" de la tabla "proyecto" |  |
|  | Proyecto colaborativo | Dos columnas | Campo "colaborativo" de la tabla "proyecto" |  |
|  | Porcentaje IVA | Dos columnas | Campo "iva" de la tabla "proyecto iva" referenciado desde el campo "iva" de la tabla proyecto |  |
|  | Causa exención IVA | Dos columnas | Campo "causa exención" de la tabla "proyecto" |  |
|  | Área temática | Dos columnas | Campo "nombre" de la tabla "área temática" para el registro referenciado desde el campo "área temática" de la tabla "contexto proyecto" |  |
| Áreas conocimiento | Áreas conocimiento | Dos columnas | Cada área de conocimiento se mostrará en una fila. Cada fila solo contendrá el nombre del área de conocimiento.Se mostrará el campo "nombre"  recuperado a través de [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md") para la referencia indicada por el campo "código área ref" en la tabla "proyecto área" | Sí |
| Clasificaciones | Clasificaciones | Dos columnas | Cada clasificación se mostrará en una fila. En cada fila se mostrará el nombre de la clasificación y el nombre del elemento dentro de la lista. Ambos valores se concatenarán separados por el carácter ":".Se deberán recuperar todas las clasificaciones con las que esté relacionado el proyecto (tabla "proyecto clasificación").El nombre de la clasificación se obtendrá como sigue. Se corresponde con el campo "nombre" de  la tabla "ESB SGO Clasificación" para el nodo raíz del árbol de clasificación al que pertenece el  "código área ref" referenciado en la tabla "proyecto clasificación". El nodo raíz se obtendrá ascendiendo a través del campo "padre" de la tabla "ESB SGO Clasificación" hasta llegar al elemento para el que el campo "padre" toma el valor "null".El nombre del elemento dentro de la clasificación se recuperará de la tabla "ESB SGO Clasificación" para el "código área ref" referenciado en la tabla "proyecto clasificación" | Sí |
| Relaciones | Relaciones (tipo relación \- título) | Varias filas | Se recuperarán todas las relaciones del proyecto.Se deberá mostrar el tipo de objeto relacionado y un campo título representativo de la misma. | Sí |
|  | Relación X |  | Tipo de objeto relacionado: Se recuperarán de la tabla "relación" los registros para los que los campos "entidad origen ref" o "entidad destino ref" sea el proyecto que está siendo listado. Si la referencia al proyecto se encuentra en el campo "entidad origen ref" se mostrará el valor del campo "tipo entidad destino" y si la referencia del proyecto se encuentra sobre el campo "entidad destino ref" se mostrará el valor del campo "tipo entidad origen". |  |
|  |  |  | Título del objeto relacionado: Si la referencia al proyecto se encuentra en el campo "entidad origen ref":* Si "tipo entidad destino" es igual "proyecto": se mostrará el valor del campo "título" de la tabla "proyecto" para el proyecto referenciado en "entidad destino ref". * Si "tipo entidad destino" es igual "convocatoria": se mostrará el valor del campo "título" de la tabla "convocatoria" para el proyecto referenciado en "entidad destino ref". * Si "tipo entidad destino" es igual "invención": se mostrará el valor del campo "título" de la tabla "invención" para el proyecto referenciado en "entidad destino ref".  Si la referencia al proyecto se encuentra en el campo "entidad destino ref:* Si "tipo entidad origen" es igual "proyecto": se mostrará el valor del campo "título" de la tabla "proyecto" para el proyecto referenciado en "entidad origen ref". * Si "tipo entidad destino" es igual "convocatoria": se mostrará el valor del campo "título" de la tabla "convocatoria" para el proyecto referenciado en "entidad origen ref". * Si "tipo entidad destino" es igual "invención": se mostrará el valor del campo "título" de la tabla "invención" para el proyecto referenciado en "entidad origen ref". |  |
| Entidad gestora | Entidad gestora (nombre \- número identificación) | Dos columnas | Se mostrarán el nombre y el número de identificación, separados por el carácter "\-".Nombre: Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "proyecto entidad gestora".Número de identificación: Campo "número de identificación fiscal" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "proyecto entidad gestora" | No |
| Entidad convocante | Entidades convocantes  (nombre \- número identificación \- plan \- programa convocatoria \- modalidad proyecto) | Varias filas |  | Sí |
|  | Entidad convocante X |  | Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "proyecto entidad convocante". |  |
|  |  |  | Campo "número de identificación fiscal" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "proyecto entidad convocante". |  |
|  |  |  | Si cualquiera de los campos  "programa" o "programa convocatoria" (se tomará éste si ambos están informados) de la tabla "proyecto entidad convocante" están informados, se mostrará el campo "nombre" de la tabla "programa" del nodo raíz para el elemento indicado por el campo "programa" / "programa convocatoria". Para alcanzar el nodo raíz se "ascenderá" en la tabla "programa" desde el elemento de partida ("programa" / "programa convocatoria"), a través del campo "padre" hasta alcanzar el elemento cuyo campo "padre" tome valor "null". Éste será el nombre del plan a mostrar en esta columna. |  |
|  |  |  | Se mostrará el valor del campo "nombre" de la tabla "programa" para el elemento referenciado desde el campo "programa convocatoria" de la tabla "proyecto entidad convocante". |  |
|  |  |  | Se mostrará el valor del campo "nombre" de la tabla "programa" para el elemento referenciado desde el campo "programa" de la tabla "proyecto entidad convocante". |  |
| Entidad financiadora | Entidades financiadora (nombre \- número identificación \- fuente financiación \- ámbito fuente financiación \- tipo financiación \- importe financiación \- porcentaje financiación \- ajena convocatoria) | Varias filas |  | Sí |
|  | Entidades financiadora X |  | Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "proyecto entidad financiadora". |  |
|  |  |  | Campo "número de identificación fiscal" recuperado a través [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "proyecto entidad financiadora". |  |
|  |  |  | Campo "nombre" de la tabla "fuente financiación" para el elemento referenciado por el campo "fuente financiación" de la tabla "proyecto entidad financiadora". |  |
|  |  |  | Campo "nombre" de la tabla "tipo ámbito geográfico" para la fuente de financiación (tabla "fuente financiación") "referenciada por el campo fuente financiación" de la tabla "proyecto entidad financiadora". |  |
|  |  |  | Campo "nombre" de la tabla "tipo financiación" para el elemento referenciado por el campo "tipo financiación" de la tabla "proyecto entidad financiadora". |  |
|  |  |  | Campo "importe financiación" de la tabla "proyecto entidad financiadora". |  |
|  |  |  | Campo "porcentaje financiación" de la tabla "proyecto entidad financiadora". |  |
|  |  |  | Valor sí/no. Campo "ajena" de la tabla "proyecto entidad financiadora". |  |
| Equipo | Equipo (nombre y apellidos, email, rol, fecha inicio participación, fecha fin participación) | Varias filas |  | Sí |
|  | Miembro X |  | Campos "nombre" y "apellidos" recuperados a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "proyecto equipo". |  |
|  |  |  | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "proyecto equipo". |  |
|  |  |  | Campo "nombre" de la tabla "rol proyecto" para la referencia establecida por el campo "rol proyecto" de la tabla "proyecto equipo". |  |
|  |  |  | Campo "fecha inicio" de la tabla "proyecto equipo". |  |
|  |  |  | Campo "fecha fin" de la tabla "proyecto equipo". |  |
| Responsable económico | Responsable económico (nombre y apellidos, email, fecha inicio, fecha fin) | Varias filas | Se obtendrán todos los responsables económicos del proyecto, tabla "proyecto responsable económico", ordenados por el campo "fecha inicio", de forma que el último responsable económico listado sea el actual | Sí |
|  | Responsable económico X |  | Campos "nombre"  y "apellidos" recuperados a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "proyecto responsable económico". |  |
|  |  |  | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "proyecto responsable económico". |  |
|  |  |  | Campo "fecha inicio" de la tabla "proyecto responsable económico". |  |
|  |  |  | Campo "fecha fin" de la tabla "proyecto responsable económico". |  |
| Socios | Socios (nombre \- número identificación \- rol \- núm. investigadores \- fecha inicio \- fecha fin \- importe presupuesto \- importe concedido) | Varias filas |  | Sí |
|  | Socio X |  | Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la referencia establecida por el campo "entidad ref" de la tabla "proyecto socio". |  |
|  |  |  | Campo "número identificación" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la referencia establecida por el campo "entidad ref" de la tabla "proyecto socio". |  |
|  |  |  | Campo "nombre" de la tabla "rol socio" para la referencia establecida desde el campo "rol socio" de la tabla "proyecto socio". |  |
|  |  |  | Campo "número investigadores" de la tabla "proyecto socio" |  |
|  |  |  | Campo "fecha inicio" de la tabla "proyecto socio" |  |
|  |  |  | Campo "fecha fin" de la tabla "proyecto socio" |  |
|  |  |  | Campo "importe presupuesto" de la tabla "proyecto socio" |  |
|  |  |  | Campo "importe concedido" de la tabla "proyecto socio" |  |
| Prórrogas | Prórrogas (número, tipo, fecha concesión, nueva fecha fin proyecto, importe prórroga) | Varias filas | Se recuperarán todas las prórrogas del proyecto de la tabla "proyecto prórroga", se mostrarán ordenadas por el campo "número prórroga" en orden creciente. | Sí |
|  | Prórroga X |  | Campo "número prórroga" de la tabla "proyecto prórroga". |  |
|  |  |  | Valor enumerado "tipo prórroga" asociado al campo "tipo prórroga" de la taba "proyecto prórroga". |  |
|  |  |  | Campo "fecha concesión" de la tabla "proyecto prórroga" |  |
|  |  |  | Campo "fecha fin" de la tabla "proyecto prórroga" |  |
|  |  |  | Campo "importe" de la tabla "proyecto prórroga" |  |
| Convocatoria |  |  |  | No |
|  | Convocatoria \- Título | Dos columnas | Campo "título" de la tabla "convocatoria" para la referencia establecida desde el campo "convocatoria" de la tabla "proyecto". |  |
|  | Convocatoria \- Identificación | Dos columnas | Campo "código" de la tabla "convocatoria" para la referencia establecida desde el campo "convocatoria" de la tabla "proyecto". |  |
|  | Convocatoria \- Fecha publicación | Dos columnas | Campo "fecha publicación" de la tabla "convocatoria" para la referencia establecida desde el campo "convocatoria" de la tabla "proyecto". |  |
|  | Convocatoria \- Fecha provisional | Dos columnas | Campo "fecha provisional" de la tabla "convocatoria" para la referencia establecida desde el campo "convocatoria" de la tabla "proyecto". |  |
|  | Convocatoria \- Fecha concesión | Dos columnas | Campo "fecha concesión" de la tabla "convocatoria" para la referencia establecida desde el campo "convocatoria" de la tabla "proyecto". |  |
|  | Convocatoria \- Régimen concurrencia | Dos columnas |  |  |
| Solicitud |  |  |  | No |
|  | Solicitud \- Código de registro interno | Dos columnas | Campo "código registro interno" de la tabla "solicitud" |  |
|  | Solicitud \- Título | Dos columnas | Campo "título" de la tabla "solicitud" |  |
|  | Solicitud \- Código en entidad convocante | Dos columnas | Campo "código externo" de la tabla "solicitud" |  |
|  | Solicitud \- Estado | Dos columnas | Campo "estado" de la tabla "estado solicitud" para el registro referenciado por el campo "estado" de la tabla "solicitud". |  |
|  | Solicitud \- Fecha estado | Dos columnas | Campo "fecha estado" de la tabla "estado solicitud" para el registro referenciado por el campo "estado" de la tabla "solicitud". |  |
| Seguimiento científico | Seguimiento científico (número \- tipo \- fecha inicio ejecución \- fecha fin ejecución \- fecha inicio presentación \- fecha fin presentación) | Varias filas |  | Sí |
|  | Periodo X |  | Campo "número periodo" de la tabla "proyecto periodo seguimiento". |  |
|  |  |  | Valor correspondiente dentro del enumerado "Tipo seguimiento"  al campo "tipo seguimiento" de la tabla "proyecto periodo seguimiento". |  |
|  |  |  | Campo "fecha inicio" de la tabla "proyecto periodo seguimiento". |  |
|  |  |  | Campo "fecha fin" de la tabla "proyecto periodo seguimiento". |  |
|  |  |  | Campo "fecha inicio presentación" de la tabla "proyecto periodo seguimiento". |  |
|  |  |  | Campo "fecha fin presentación" de la tabla "proyecto periodo seguimiento". |  |
| Elegibilidad | Conceptos gasto (nombre \- importe máximo \- fecha inicio \- fecha fin \- códigos económicos \- permitido) | Varias filas | Se recuperarán  los conceptos de gasto de la tabla "proyecto concepto gasto". se recuperarán en orden, primero los permitidos (campo "permitido" valor "true") y después los no permitidos (campo "permitido" valor "false"). Para cada concepto de gasto se deberán recuperar los códigos económicos relacionados, obtenidos de la tabla "proyecto concepto gasto código económico". | Sí |
|  | Concepto gasto X |  | Campo "nombre" de la tabla "concepto gasto" correspondiente al campo "concepto gasto" de la tabla "proyecto concepto gasto". |  |
|  |  |  | Campo "importe máximo" de la tabla "proyecto concepto gasto". |  |
|  |  |  | Campo "fecha inicio" de la tabla "proyecto concepto gasto". |  |
|  |  |  | Campo "fecha fin" de la tabla "proyecto concepto gasto". |  |
|  |  |  | Los códigos económicos serán una repetición pero se mostrarán en la misma línea, separados por el carácter ",".Para cada código económico se mostrará el identificador concatenado con el nombre del código económico recuperados a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para el "código económico ref" de la tabla "proyecto concepto gasto código económico". | Sí. Repetición dentro de concepto de gasto |
|  |  |  | Según el valor del campo "permitido" de la tabla "proyecto concepto gasto":* Si toma valor "true" se mostrará el texto "permitido" * Si toma valor "false" se mostrará el texto "no permitido" |  |
| Partidas presupuestarias | Partidas presupuestarias (partida \- tipo) | Varias filas | Se recuperarán todos los registros de la tabla "proyecto partida" para el proyecto listado. Modelo lógico "Proyecto \- Configuración económica". Para cada partida se mostrará: | Sí |
|  | Partida X |  | Campo "código" de la tabla "proyecto partida". |  |
|  |  |  | Valor correspondiente sobre el enumerado "tipo partida" del campo "tipo partida" de la tabla "proyecto partida". |  |
| Presupuesto | Presupuesto |  | Si están informados los campos de introducción manual se mostrarán éstos (campos directamente incluidos en la tabla "proyecto").  En caso contrario, se deberá realizar el el cálculo obtenido de presupuesto (tabla  "anualidad gasto", modelo lógico "Proyecto \- Configuración económica".). | No |
|  | Presupuesto \- Importe presupuesto Universidad | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del  campo "importe presupuesto" de la tabla "proyecto". Si no, se deberá realizar el cálculo como sigue: Suma del campo "importe presupuesto" de todos los registros de la tabla "anualidad gasto" del proyecto cuyo campo "concepto gasto" figure en la tabla "concepto gasto" con el campo "costes indirectos" a "false" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE). |  |
|  | Presupuesto \- Importe presupuesto Universidad costes indirectos | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del  campo "importe presupuesto costes indirectos" de la tabla "proyecto". Si no, se deberá realizar el cálculo como sigue: Suma del campo "importe presupuesto" de todos los registros de la tabla "anualidad gasto" del proyecto cuyo campo "concepto gasto" figure en la tabla "concepto gasto" con el campo "costes indirectos" a "true" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE). |  |
|  | Presupuesto \- Total importe presupuesto Universidad | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor resultante de sumar los campos "importe presupuesto" e "importe presupuesto costes indirectos" de la tabla proyectos. Si no, se deberá realizar el cálculo como sigue:  suma del campo "importe presupuesto" de todos los registros de la tabla "anualidad gasto" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE). |  |
|  | Presupuesto \- Importe concedido Universidad | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del  campo "importe concedido" de la tabla "proyecto". Si no, se deberá realizar el cálculo como sigue: Suma del campo "importe concedido" de todos los registros de la tabla "anualidad gasto" del proyecto cuyo campo "concepto gasto" figure en la tabla "concepto gasto" con el campo "costes indirectos" a "false" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE). |  |
|  | Presupuesto \- Importe concedido Universidad costes indirectos | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del  campo "importe concedido costes indirectos" de la tabla "proyecto". Si no, se deberá realizar el cálculo como sigue: Suma del campo "importe concedido" de todos los registros de la tabla "anualidad gasto" del proyecto cuyo campo "concepto gasto" figure en la tabla "concepto gasto" con el campo "costes indirectos" a "true" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE). |  |
|  | Presupuesto \- Total importe concedido Universidad | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor resultante de sumar los campos "importe concedido" e "importe concedido costes indirectos" de la tabla proyectos. Si no, se deberá realizar el cálculo como sigue:  suma del campo "importe concedido" de todos los registros de la tabla "anualidad gasto" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE). |  |
|  | Presupuesto \- Importe presupuesto socios | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del campo "importe presupuesto socios" de la tabla "proyecto".Si no, se deberá realizar el cálculo como sigue:  suma del campo "importe presupuesto" de todos los registros de la tabla "proyecto socio". |  |
|  | Presupuesto \- Importe concedido socios | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del campo "importe concedido socios" de la tabla "proyecto".Si no, se deberá realizar el cálculo como sigue:  suma del campo "importe concedido" de todos los registros de la tabla "proyecto socio". |  |
|  | Presupuesto \- Total importe presupuesto | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del campo "total importe presupuesto" de la tabla "proyecto".Si no, se deberá realizar el cálculo como sigue:  suma del campo "importe presupuesto" de todos los registros de la tabla "anualidad gasto" (sin distinguir ni por anualidad ni por proyecto SGE) y del campo "importe presupuesto" de todos los registros de la tabla "proyecto socio". |  |
|  | Presupuesto \- Total importe concedido | Dos columnas | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del campo "total importe concedido" de la tabla "proyecto".Si no, se deberá realizar el cálculo como sigue:  suma del campo "importe concedido" de todos los registros de la tabla "anualidad gasto" (sin distinguir ni por anualidad ni por proyecto SGE) y del campo "importe concedido" de todos los registros de la tabla "proyecto socio". |  |
| Calendario justificación | Calendario justificación (número periodo \- tipo \- fecha inicio ejecución \- fecha fin ejecución \- fecha inicio presentación \- fecha fin presentación) | Varias filas | Se recuperarán todos los elementos de la tabla "proyecto periodo justificación". Modelo lógico "Proyecto \- Configuración económica". | Sí |
|  | Periodo justificación X |  | Campo "número periodo" de la tabla "proyecto periodo justificación". |  |
|  |  |  | Valor recuperado del enumerado "tipo justificación" para el campo "tipo justificación" de la tabla "proyecto periodo justificación". |  |
|  |  |  | Campo "fecha inicio" de la tabla "proyecto periodo justificación". |  |
|  |  |  | Campo "fecha fin" de la tabla "proyecto periodo justificación". |  |
|  |  |  | Campo "fecha inicio presentación" de la tabla "proyecto periodo justificación". |  |
|  |  |  | Campo "fecha fin presentación" de la tabla "proyecto periodo justificación". |  |
| Calendario facturación | Calendario facturación (núm. previsión \- fecha emisión \- importe base \- IVA \- importe total \- tipo facturación \- estado validación \- fecha conformidad \- núm. factura emitida) | Varias filas | Se recuperarán todos los elementos de la tabla "proyecto facturación". Modelo lógico "Proyecto \- Configuración económica". | Sí |
|  | Ítem facturación X |  | Campo "número previsión" de la tabla "proyecto facturación". (X debería coincidir con el número de previsión, ya que éste es un secuencial calculado para cada proyecto, ordenado por la fecha de emisión) |  |
|  |  |  | Campo "fecha emisión" de la tabla "proyecto facturación". |  |
|  |  |  | Campo "importe base" de la tabla "proyecto facturación". |  |
|  |  |  | Campo "porcentaje iva" de la tabla "proyecto facturación". |  |
|  |  |  | Campo calculado:  Campo "importe base" \+  campo "importe base" x "porcentaje iva" de la tabla "proyecto facturación". |  |
|  |  |  | Valor dentro del enumerado "tipo facturación" para el campo "tipo facturación" de la tabla "proyecto facturación". |  |
|  |  |  | Valor del enumerado "tipo estado validación" correspondiente al campo "estado" del registro de la tabla "estado validación IP" referenciado por el campo "estado validación IP" de la tabla "proyecto facturación". |  |
|  |  |  | Campo "fecha conformidad" de la tabla "proyecto facturación". |  |
|  |  |  | Se debe recuperar a través del servicio de  integración [REQ\-INT\-0010\-SGE\-0153 \- Buscar facturas previstas emitidas](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0010-SGE-0153+-+Buscar+facturas+previstas+emitidas "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0010-SGE-0153+-+Buscar+facturas+previstas+emitidas"), pasando como parámetro el identificador del proyecto SGI, campo "id" de la tabla "proyecto" y el campo "número previsión" de la tabla "proyecto facturación". Se deberá buscar el campo "número factura" asociado al "número previsión" que se está listando. |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  













