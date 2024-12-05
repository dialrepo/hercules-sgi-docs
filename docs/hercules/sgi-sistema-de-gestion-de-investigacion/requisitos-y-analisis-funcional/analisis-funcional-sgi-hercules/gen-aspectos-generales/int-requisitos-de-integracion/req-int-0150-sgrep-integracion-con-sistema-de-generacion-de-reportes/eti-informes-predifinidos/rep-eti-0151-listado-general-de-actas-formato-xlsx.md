# Hércules : REP\-ETI\-0151 \- Listado general de actas \- Formato xlsx







### Diseño Informe

Se debe de generar un informe en formato xlsx que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero xlsx de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos se mostrarán en el informe solo si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero xlsx que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo a la acta que más elementos contenga para ese bloque. Para las actas que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo: [acta\_with\_columns\_repeated.xlsx](/attachments/597852287/597865628.xlsx "attachments/597852287/597865628.xlsx")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Comité | Campo "comite" perteneciente al campo "comite" de la tabla "ConvocatoriaReunion" referenciado por el campo "convocatoriaReunion" de la tabla "Acta" |  |
|  | Fecha evaluación | Campo "fechaEvaluacion" de la tabla "ConvocatoriaReunion" referenciado por el campo "convocatoriaReunion" de la tabla "Acta" |  |
|  | Nº acta | Campo "numero" de la tabla "Acta" |  |
|  | Tipo convocatoria | Campo "nombre" perteneciente al campo "tipoConcovatoriaReunion" de la tabla "ConvocatoriaReunion" referenciado por el campo "convocatoriaReunion" de la tabla "Acta" |  |
|  | Nº iniciales | Número de memorias iniciales (nuevas) que se van a revisar o se han revisado en la reunión de evaluación asociada al acta.Se obtiene sumando el número de evaluaciones (tabla "Evaluacion") asociadas a la convocatoria del acta (campo "convocatoriaReunion" de la tabla "Acta") que tengan en el campo "version" el valor 1 (es la primera evaluación). |  |
|  | Nº revisiones | Número de memorias reevaluadas que se van a revisar o se han revisado en la reunión de evaluación asociada a la acta.Se obtiene sumando el número de evaluaciones (tabla "Evaluacion") asociadas a la convocatoria del acta (campo "convocatoriaReunion" de la tabla "Acta") que tengan en el campo "version" un valor mayor de 1  (son reevaluaciones) y no sean de revisión mínima (campo "esRevMinima" a "false") |  |
|  | Nº total | Nº iniciales \+ Nº total |  |
|  | Estado | Valor del enumerado "EstadoActa" para el registro de la tabla "TipoEstadoActa" referenciado desde el campo "estadoActual" de la tabla "Acta" |  |
| Memorias |  | Se mostrará las distintas memorias que se van a evaluar en la convocatoria de reunión asociada al acta. Para ello se obtendrán las evaluaciones de la convocatoria de reunión que no son revisión mínima (tabla "Evaluacion" con el campo "esRevMinima" a false y que en el campo "convocatoriaReunion" tenga referenciada la convocatoria de reunión de la tabla "Acta" en la que estamos) | Sí |
|  | MemoriaX: Referencia | Campo "numReferencia" de la tabla "Memoria" referenciado por el campo "memoria" de la tabla "Evaluacion" |  |
|  | MemoriaX: Versión | Campo "version" de la tabla "Evaluacion" |  |
|  | MemoriaX: Dictamen | Campo "nombre" de la tabla "Dictamen" referenciado por el campo "dictamen" de la tabla "Evaluacion" |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














