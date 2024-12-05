# Hércules : REP\-PRC\-0030 \- Informe Resumen puntuación grupos







### Diseño Informe

Se debe de generar un informe en formato PDF con las puntuaciones globales de cada uno de los grupos de investigación que a fecha 31 de diciembre de los años que se bareman en la convocatoria seleccionada están en estado activo y tengan el campo "especial investigación" a valor "No". Si un grupo se barema en dos años (porque esta activo en dos años de la baremación), sólo sale una vez en el listado.  


El informe recibirá por parámetro el año de la convocatoria.

El formato del fichero es el siguiente:

![](/attachments/597852377/597873963.png)  


  


Se mostrará el año de la convocatoria.

Se recuperará por cada grupo de investigación (tabla "grupo") que tenga el campo "activo" a "true" y a fecha 31 de diciembre del año pasado como parámetro tenga el campo "especial investigación" a valor "No" (tabla "grupo especial investigación") la siguiente información para mostrarla en forma de tabla:

  




| Nombre | Formato | Campo SGI |
| --- | --- | --- |
| GRUPO | Texto | Nombre del grupo de investigación.Campo "nombre" de la tabla "Grupo" (Módulo CSP \- GIN) |
| PERSONA RESPONSABLE | Texto | Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") del investigador/a principal, es decir, de todos los miembros del grupo de investigación (tabla "grupo equipo") aquel que **actualmente** (a fecha actual) tiene el "rol" con el flag "principal" a true. En caso de existir mas de una persona, se mostrará el que tenga el mayor porcentaje de dedicación al grupo (campo "participación" de la tabla "grupo equipo"). Y en caso de coincidir se mostrarán separados por coma.(Módulo CSP \- GIN) |
| PUNTOS SEXENIOS | Número decimal con dos decimales | Campo "puntos sexenios" de la tabla "puntuación grupo". Se irá a la tabla "puntuación grupo"  del módulo de PRC para buscar el "grupo ref" que corresponde con el identificador del grupo que se esta mostrando en la tabla y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro.(Módulo PRC) |
| PUNTOS C.I. | Número decimal con dos decimales | Campo "puntos costes indirectos" de la tabla "puntuación grupo". Se irá a la tabla "puntuación grupo"  del módulo de PRC para buscar el "grupo ref" que corresponde con el identificador del grupo que se esta mostrando en la tabla y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro.(Módulo PRC) |
| PUNTOS PROD. | Número decimal con dos decimales | Campo "puntos producción" de la tabla "puntuación grupo". Se irá a la tabla "puntuación grupo"  del módulo de PRC para buscar el "grupo ref" que corresponde con el identificador del grupo que se esta mostrando en la tabla y que en el campo "convocatoria baremación id" tenga el identificador de la convocatoria cuyo "anio" corresponde con el año pasado por parámetro.(Módulo PRC) |

  
  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














