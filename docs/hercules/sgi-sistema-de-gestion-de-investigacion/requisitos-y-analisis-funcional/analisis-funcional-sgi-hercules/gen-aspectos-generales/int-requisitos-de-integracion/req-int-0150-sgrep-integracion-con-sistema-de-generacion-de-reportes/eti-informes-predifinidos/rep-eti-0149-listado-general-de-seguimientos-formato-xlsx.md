# Hércules : REP\-ETI\-0149 \- Listado general de seguimientos \- Formato xlsx







[seguimiento\_with\_columns\_repeated.csv](/attachments/597852309/597865639.csv "attachments/597852309/597865639.csv")

### Diseño Informe

Se debe de generar un informe en formato xlsx que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero xlsx de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos se mostrarán en el informe solo si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero xlsx que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo a al seguimiento que más elementos contenga para ese bloque. Para los seguimientos que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo: [seguimiento\_with\_columns\_repeated.xlsx](/attachments/597852309/597865640.xlsx "attachments/597852309/597865640.xlsx")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Comité | Campo "comite" perteneciente al campo "comite" de la tabla "Memoria" referenciado por el campo "memoria" de la tabla "Evaluacion" |  |
|  | Tipo evaluación | Campo "nombre" de la tabla "TipoEvaluacion" referenciado por el campo "tipoEvaluacion" de la tabla "Evaluacion" |  |
|  | Tipo memoria | Campo "nombre" de la tabla "TipoMemoria" referenciado por el campo "tipoMemoria" de la tabla "Memoria" referenciado por el campo "memoria" de la tabla "Evaluacion" |  |
|  | Fecha evaluación | Campo "fechaDictamen" de la tabla "Evaluacion" |  |
|  | Memoria | Campo  "numReferencia" de la tabla "Memoria" referenciado por el campo "memoria" de la tabla "Evaluacion" |  |
|  | Solicitante: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaRef" de la tabla "PeticionEvaluacion" referenciado por el campo "peticionEvaluacion" de la tabla "Memoria" referenciada a su vez por el campo "memoria" de la tabla "Evaluacion" |  |
|  | Solicitante: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaRef" de la tabla "PeticionEvaluacion" referenciado por el campo "peticionEvaluacion" de la tabla "Memoria" referenciada a su vez por el campo "memoria" de la tabla "Evaluacion" |  |
|  | Dictamen | Campo "nombre" de la tabla "Dictamen" referenciado por el campo "dictamen" de la tabla "Evaluacion" |  |
|  | Versión | Campo "version" de la tabla "Evaluacion" |  |
| Evaluaciones anteriores |  | Se mostrará las evaluaciones anteriores de la misma memoria y del mismo tipo de evaluación (registros de la tabla "Evaluacion" que en el campo "memoria" tengan la "memoria" de la evaluación y que en "tipoEvaluacion" tenga el mismo "tipoEvaluacion" que el de la evaluación) | Sí |
|  | EvaluaciónX: Versión | Campo "version" de la tabla "Evaluacion" |  |
|  | EvaluaciónX: Fecha evaluación | Campo "fechaDictamen" de la tabla "Evaluacion" |  |
|  | EvaluaciónX: Dictamen | Campo "nombre" de la tabla "Dictamen" referenciado por el campo "dictamen" de la tabla "Evaluacion" |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














