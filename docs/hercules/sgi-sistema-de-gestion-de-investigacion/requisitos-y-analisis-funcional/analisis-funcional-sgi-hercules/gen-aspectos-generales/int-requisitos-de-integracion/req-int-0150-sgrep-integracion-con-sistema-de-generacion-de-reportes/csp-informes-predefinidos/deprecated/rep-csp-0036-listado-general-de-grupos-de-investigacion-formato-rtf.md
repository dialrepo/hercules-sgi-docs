# Hércules : REP\-CSP\-0036 \- Listado general de grupos de investigación \- Formato rtf







### Diseño Informe

Se debe de generar un informe en formato RTF compatible con DOCX que reciba como parámetros de entrada el título del informe y la lista de bloques de datos a incluir. El informe contendrá la información detallada de grupos de investigación. Se listarán todos los grupos recuperados con el detalle de los mismos.  Se incluirá el parámetro de entrada "título" como título del informe.

El listado se mostrará agrupado por grupo. Cada vez que se cambie de grupo se resaltará la línea de texto en el informe y a continuación comenzará a listarse su detalle.

El detalle se visualizará en función del bloque de datos:

* A dos columnas. Siendo la primera columna la etiqueta de la misma y la segunda columna el contenido recuperado con los datos del grupo.
* En varias filas, pero también a dos columnas, de forma que varias filas compartan una misma columna de título. La primera columna será el título y en la segunda columna, saltando de fila, se mostrará el contenido.  ejemplo ![](/attachments/597852511/597858141.png)

Habrá bloques de datos que se repitan, en este caso la etiqueta será representativa del bloque de datos, e incluirá entre paréntesis el nombre de las columnas que se mostrarán para cada elemento. Cada elemento repetido se mostrará de alguna de las formas indicadas previamente (dependiendo de cada bloque de datos).

A continuación se indica el mapeo de los nombres de columnas del fichero de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna, así como el modo en el que se visualizará (a dos columnas o repeticiones de filas).

Ejemplo: [grupo\_with\_list.rtf](/attachments/597852511/597858358.rtf "attachments/597852511/597858358.rtf")



| Bloque de datos | Columna informe | Formato | Campo SGI | Repetición |
| --- | --- | --- | --- | --- |
|  | Nombre | Dos columnas | Campo "nombre" de la tabla "grupo" |  |
|  | Investigador/a principal | Dos columnas | Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") del investigador/a principal, es decir, de todos los miembros del grupo de investigación (tabla "grupo equipo") aquel que **actualmente** (a fecha actual) tiene el "rol" con el flag "principal" a true. En caso de existir mas de una persona, se mostrará el que tenga el mayor porcentaje de dedicación al grupo (campo "participación" de la tabla "grupo equipo"). Y en caso de coincidir se mostrarán separados por coma. |  |
|  | Código | Dos columnas | Campo "codigo" de la tabla "grupo" |  |
|  | Código de identificación SGE | Dos columnas | Código de identificación SGE |  |
|  | Fecha inicio | Dos columnas | Fecha inicio |  |
|  | Fecha fin | Dos columnas | Campo "fecha fin" de la tabla "grupo" |  |
|  | Tipo grupo | Dos columnas | Valor del enumerado "tipo grupo" para el registro de la tabla "grupo tipo" referenciado desde el campo "tipo" de la tabla "grupo" |  |
| Equipo investigación | Equipo (Nombre \- E\-mail \- Rol en el equipo \- Fecha inicio \- Fecha fin \- Participación) | Varias filas | Se mostrarán todos los miembros del equipo de investigación del grupo, tabla "grupo equipo" | Sí |
|  | Miembro X: |  | Campos "nombre" y "apellidos" recuperados a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "grupo equipo". |  |
|  |  |  | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "grupo equipo". |  |
|  |  |  | Campo "nombre" de la tabla "rol proyecto" para la referencia establecida por el campo "rol proyecto" de la tabla "grupo equipo". |  |
|  |  |  | Campo "fecha inicio" de la tabla "grupo equipo". |  |
|  |  |  | Campo "fecha fin" de la tabla "grupo equipo". |  |
|  |  |  | Campo "participación" de la tabla "grupo equipo". |  |
| Responsable económico | Responsable económico (Nombre \- E\-mail \- Fecha inicio \- Fecha fin) | Varias filas | Se mostrarán todos los responsables económicos (histórico) del grupo, tabla "grupo responsable económico" | Sí |
|  | Responsable económico X: |  | Campos "nombre" y "apellidos" recuperados a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "grupo responsable económico". |  |
|  |  |  | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "grupo responsable económico". |  |
|  |  |  | Campo "fecha inicio" de la tabla "grupo responsable económico". |  |
|  |  |  | Campo "fecha fin" de la tabla "grupo responsable económico". |  |
| Líneas de investigación | Líneas investigación (Nombre \- Fecha inicio \- Fecha fin \- Miembros adscritos \- Clasificaciones \- Equipos instrumentales) | Varias filas | Se mostrarán todos las líneas de investigación del grupo, tabla "grupo línea investigación". Por cada línea de investigación se tendrá que mostrar la información de sus miembros adscritos (tabla "grupo línea investigador") separados por ";", sus clasificaciones (tabla "grupo línea clasificación)  separadas por ";" y sus equipos instrumentales (tabla "grupo línea equipo instrumental") separados por ";" | Sí |
|  | Línea X: |  | Campo "nombre" de la tabla "línea investigación" correspondiente al campo "línea investigación" de la tabla "grupo línea investigación" |  |
|  |  |  | Campo "fecha inicio" de la tabla "grupo línea investigación". |  |
|  |  |  | Campo "fecha fin" de la tabla "grupo línea investigación". |  |
|  |  |  | Listados de miembros de la línea de investigación, se concatenan con el carácter " ; " y para cada miembros se sacará los campos  "nombre" y "apellidos" recuperados a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "grupo línea investigador" concatenada con "Fecha inicio: " concatenado con el campo "fecha inicio" de la tabla "grupo línea investigador" concatenada con "Fecha fin: " y concatenado con el campo "fecha fin" de la tabla "grupo línea investigador"Ej: JUAN LÓPEZ PÉREZ Fecha inicio: 01/01/2020 Fecha fin: \- ; MARÍA ÁLVAREZ GONZÁLEZ Fecha inicio: 01/01/2019 Fecha fin: 31/02/2020 |  |
|  |  |  | Listado de clasificaciones de la línea de investigación, se deberán recuperar todas las clasificaciones con las que esté relacionada la línea (tabla "grupo línea clasificación") y concatenarlas poniendo como separador el carácter " ; "Para cada clasificación se sacará el nombre del nodo raíz ":" nombre de la clasificación. El nombre de la clasificación se obtendrá como sigue. Se corresponde con el campo "nombre" de  la tabla "ESB SGO Clasificación" para el nodo raíz del árbol de clasificación al que pertenece el  "código clasificación ref" referenciado en la tabla "grupo línea clasificación". El nodo raíz se obtendrá ascendiendo a través del campo "padre" de la tabla "ESB SGO Clasificación" hasta llegar al elemento para el que el campo "padre" toma el valor "null".El nombre del elemento dentro de la clasificación se recuperará de la tabla "ESB SGO Clasificación" para el "código clasificación ref" referenciado en la tabla "grupo línea clasificación" |  |
|  |  |  | Listados de equipos instrumentales de la línea de investigación, se sacará el campo  "nombre" de la tabla "grupo línea equipo instrumental" separados por el carácter " ; " |  |
| Equipos instrumentales | Equipos instrumentales (Nombre \- Número registro) | Varias filas | Se mostrarán los equipos instrumentales del grupo de investigación (tabla "grupo equipo instrumental") | Sí |
|  | Equipo instrumental X: |  | Campo "nombre" de la tabla "grupo equipo instrumental" |  |
|  |  |  | Campo "numRegistro" de la tabla "grupo equipo instrumental" |  |
| Enlaces | Enlaces | Varias filas | Se mostrarán los enlaces del grupo de investigación (tabla "grupo enlace") | Sí |
|  | Enlace X: |  | Campo "enlace" de la tabla "grupo enlace" |  |
| Persona autorizada | Persona autorizada (Nombre \- E\-mail \- Fecha inicio \- Fecha fin) | Varias filas | Se mostrarán todas las personas autorizadas (histórico) del grupo, tabla "grupo persona autorizada" | Sí |
|  | Persona autorizada X: |  | Campos "nombre" y "apellidos" recuperados a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "grupo persona autorizada". |  |
|  |  |  | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referenciada indicada en el campo "persona ref" de la tabla "grupo persona autorizada". |  |
|  |  |  | Campo "fecha inicio" de la tabla "grupo persona autorizada". |  |
|  |  |  | Campo "fecha fin" de la tabla "grupo persona autorizada". |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














