# Hércules : REP\-ETI\-0145 \- Listado general de convocatorias de reunión \- Formato xlsx







### Diseño Informe

Se debe de generar un informe en formato xlsx que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero xlsx de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos se mostrarán en el informe solo si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero xlsx que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo a la convocatoria de reunión que más elementos contenga para ese bloque. Para las convocatorias de reunión que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo: [convocatoria\_reunion\_with\_columns\_repeated.csv](/attachments/597852846/597874101.csv "attachments/597852846/597874101.csv")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Comité | Campo "comite" perteneciente al campo "comite" de la tabla "ConvocatoriaReunion" |  |
|  | Fecha evaluación | Campo "fechaEvaluacion" de la tabla "ConvocatoriaReunion" |  |
|  | Código | Campo generado: tiene el siguiente formato ACTAsecuencial/YYYY/COMITE , donde COMITE es el campo "comite" perteneciente al campo "comite" de la tabla "ConvocatoriaReunion", YYYY es el año de la fecha de evaluación (campo "fechaEvaluacion" de la tabla "ConvocatoriaReunion") y secuencial es el número del acta que corresponde a la convocatoria, es un secuencial por comité. Hay tres secuenciales uno por cada comité (no es por año). Mirar como se esta generando o como se obtiene en la página del buscador de convocatorias de reunión, en el resultado se esta obteniendo dicho campo. |  |
|  | Tipo convocatoria | Campo "nombre" de la tabla "TipoConvocatoriaReunion" referenciado por el campo "tipoConvocatoriaReunion" de la tabla "ConvocatoriaReunion" |  |
|  | Orden del día | Campo "ordenDia" de la tabla "ConvocatoriaReunion" |  |
| Memorias |  | Se mostrará las distintas memorias que se van a evaluar en la convocatoria de reunión. Para ello se obtendrán las evaluaciones de la convocatoria de reunión que no son revisión mínima (tabla "Evaluacion" con el campo "esRevMinima" a false y que en el campo "convocatoriaReunion" tenga referenciada la convocatoria de reunión) | Sí |
|  | MemoriaX: Referencia | Campo "numReferencia" de la tabla "Memoria" referenciado por el campo "memoria" de la tabla "Evaluacion" |  |
|  | MemoriaX: Solicitante: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaRef" de la tabla "PeticionEvaluacion" referenciado por el campo "peticionEvaluacion" de la tabla "Memoria" referenciada a su vez por el campo "memoria" de la tabla "Evaluacion" |  |
|  | MemoriaX: Solicitante: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaRef" de la tabla "PeticionEvaluacion" referenciado por el campo "peticionEvaluacion" de la tabla "Memoria" referenciada a su vez por el campo "memoria" de la tabla "Evaluacion" |  |
|  | MemoriaX: Evaluador 1: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "usuarioRef" de la tabla "Evaluador" referenciado por el campo "evaluador1" de la tabla "Evaluacion" |  |
|  | MemoriaX: Evaluador 1: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "usuarioRef" de la tabla "Evaluador" referenciado por el campo "evaluador1" de la tabla "Evaluacion" |  |
|  | MemoriaX: Evaluador 2: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "usuarioRef" de la tabla "Evaluador" referenciado por el campo "evaluador2" de la tabla "Evaluacion" |  |
|  | MemoriaX: Evaluador 2: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "usuarioRef" de la tabla "Evaluador" referenciado por el campo "evaluador2" de la tabla "Evaluacion" |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














