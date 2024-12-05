# Hércules : REP\-CSP\-0034 \- Listado general de grupos de investigación \- Formato xlsx







### Diseño Informe

Se debe de generar un informe en formato xlsx que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero xlsx de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos se mostrarán en el informe solo si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero xlsx que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo al grupo de investigación que más elementos contenga para ese bloque. Para los grupos de investigación que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo: [grupo\_with\_columns\_repeated.xlsx](/attachments/597852376/597858150.xlsx "attachments/597852376/597858150.xlsx")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Nombre | Campo "nombre" de la tabla "grupo" |  |
|  | Investigador/a principal | Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") del investigador/a principal, es decir, de todos los miembros del grupo de investigación (tabla "grupo equipo") aquel que **actualmente** (a fecha actual) tiene el "rol" con el flag "principal" a true. En caso de existir mas de una persona, se mostrará el que tenga el mayor porcentaje de dedicación al grupo (campo "participación" de la tabla "grupo equipo"). Y en caso de coincidir se mostrarán separados por coma. |  |
|  | Código | Campo "codigo" de la tabla "grupo" |  |
|  | Código de identificación SGE | Campo "proyecto SGE ref" de la tabla "grupo". |  |
|  | Fecha inicio | Campo "fecha inicio" de la tabla "grupo" |  |
|  | Fecha fin | Campo "fecha fin" de la tabla "grupo" |  |
|  | Tipo grupo | Valor del enumerado "tipo grupo" para el registro de la tabla "grupo tipo" referenciado desde el campo "tipo" de la tabla "grupo" |  |
|  | Grupo especial de investigación | Campo "especial investigación" de la tabla "grupo especial investigación" referenciado desde el campo "especial investigación" de la tabla "grupo". Si es "true" se mostrará "Sí" y si es "false" se mostrará "No" |  |
| Equipo investigación |  | Se mostrarán todos los miembros del equipo de investigación del grupo, tabla "grupo equipo" | Sí |
|  | Equipo \- MiembroX: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo equipo". |  |
|  | Equipo \- MiembroX: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo equipo". |  |
|  | Equipo \- MiembroX: E\-mail | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo equipo". |  |
|  | Equipo \- MiembroX: Rol | Campo "nombre" de la tabla "rol proyecto" para la referencia establecida por el campo "rol proyecto" de la tabla "grupo equipo". |  |
|  | Equipo \- MiembroX: Fecha inicio | Campo "fecha inicio" de la tabla "grupo equipo". |  |
|  | Equipo \- MiembroX: Fecha fin | Campo "fecha fin" de la tabla "grupo equipo". |  |
|  | Equipo \- MiembroX: Participación | Campo "participación" de la tabla "grupo equipo". |  |
| Responsable económico |  | Se mostrarán todos los responsables económicos (histórico) del grupo, tabla "grupo responsable económico" | Sí |
|  | Responsable económicoX: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo responsable económico". |  |
|  | Responsable económicoX: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo responsable económico". |  |
|  | Responsable económicoX: E\-mail | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo responsable económico". |  |
|  | Responsable económicoX Fecha inicio | Campo "fecha inicio" de la tabla "grupo responsable económico". |  |
|  | Responsable económicoX Fecha fin | Campo "fecha fin" de la tabla "grupo responsable económico". |  |
| Líneas de investigación |  | Se mostrarán todos las líneas de investigación del grupo, tabla "grupo línea investigación". Por cada línea de investigación se tendrá que mostrar la información de sus miembros adscritos (tabla "grupo línea investigador"), sus clasificaciones (tabla "grupo línea clasificación) y sus equipos instrumentales (tabla "grupo línea equipo instrumental" | Sí |
|  | LíneaX: Nombre | Campo "nombre" de la tabla "línea investigación" correspondiente al campo "línea investigación" de la tabla "grupo línea investigación" |  |
|  | LíneaX: Fecha inicio | Campo "fecha inicio" de la tabla "grupo línea investigación". |  |
|  | LíneaX: Fecha fin | Campo "fecha fin" de la tabla "grupo línea investigación". |  |
| Miembros adscritos a la línea de investigación |  | Por cada línea de investigación (X) se mostrarán sus miembros adscritos (tabla "grupo línea investigador") | Sí |
|  | LíneaX: MiembroY: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo línea investigador". |  |
|  | LíneaX: MiembroY: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo línea investigador". |  |
|  | LíneaX: MiembroY: E\-mail | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo línea investigador". |  |
|  | LíneaX: MiembroY: Fecha inicio | Campo "fecha inicio" de la tabla "grupo línea investigador" |  |
|  | LíneaX: MiembroY: Fecha fin | Campo "fecha fin" de la tabla "grupo línea investigador" |  |
| Clasificaciones de la línea de investigación |  | Por cada línea de investigación (X) se mostrarán sus clasificaciones (tabla "grupo línea clasificación") | Sí |
|  | LíneaX: ClasificaciónY | Se deberán recuperar todas las clasificaciones con las que esté relacionada la línea de investigación (tabla "grupo línea clasificación"). Se mostrará en una primera columna el nombre de la clasificación y a continuación tantas columnas como códigos dentro de esta clasificación con los que esté relacionada la líneaEl nombre de la clasificación se obtendrá como sigue. Se corresponde con el campo "nombre" recuperado a través de [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541") para el nodo raíz del árbol de clasificación al que pertenece el  "código clasificación ref" referenciado en la tabla "grupo línea clasificación". El nodo raíz se obtendrá ascendiendo a través del campo "padre" obtenido con [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541") hasta llegar al elemento para el que el campo "padre" toma el valor "null" (se dispone de [REQ\-INT\-0030\-SGO\-0030 \- Listar clasificaciones](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0030-SGO-0030+-+Listar+clasificaciones "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0030-SGO-0030+-+Listar+clasificaciones") para obtener el listado completo de una clasificación) |  |
|  | LíneaX: ClasificaciónY: Código Z | Campo "nombre" recuperado a través de [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541") para el  "código clasificación ref" de la tabla "grupo línea clasificación". | Sí. Repetición dentro de clasificación |
| Equipos instrumentales de la línea |  | Por cada línea de investigación (X) se mostrarán sus equipos instrumentales (tabla "grupo línea equipo instrumental") | Sí |
|  | LíneaX: Equipo instrumental Y: Nombre | Campo "nombre" de la tabla "grupo línea equipo instrumental" |  |
| Equipos instrumentales |  | Se mostrarán los equipos instrumentales del grupo de investigación (tabla "grupo equipo instrumental") | Sí |
|  | Equipo instrumentalX: Nombre | Campo "nombre" de la tabla "grupo equipo instrumental" |  |
|  | Equipo instrumentalX: Número registro | Campo "numRegistro" de la tabla "grupo equipo instrumental" |  |
| Enlaces |  | Se mostrarán los enlaces del grupo de investigación (tabla "grupo enlace") | Sí |
|  | EnlaceX: Enlace | Campo "enlace" de la tabla "grupo enlace" |  |
| Persona autorizada |  | Se mostrarán todas las personas autorizadas (histórico) del grupo, tabla "grupo persona autorizada" | Sí |
|  | Persona autorizadaX: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo persona autorizada". |  |
|  | Persona autorizadaX: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo persona autorizada". |  |
|  | Persona autorizadaX: E\-mail | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "persona ref" de la tabla "grupo persona autorizada". |  |
|  | Persona autorizadaX: Fecha inicio | Campo "fecha inicio" de la tabla "grupo persona autorizada". |  |
|  | Persona autorizadaX: Fecha fin | Campo "fecha fin" de la tabla "grupo persona autorizada". |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














