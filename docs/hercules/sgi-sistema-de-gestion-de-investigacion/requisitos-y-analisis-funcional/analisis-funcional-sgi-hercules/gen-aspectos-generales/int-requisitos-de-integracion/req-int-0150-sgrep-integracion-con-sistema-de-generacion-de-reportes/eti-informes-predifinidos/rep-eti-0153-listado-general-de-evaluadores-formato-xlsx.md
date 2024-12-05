# Hércules : REP\-ETI\-0153 \- Listado general de evaluadores \- Formato xlsx







### Diseño Informe

Se debe de generar un informe en formato xlsx que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero xlsx de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos se mostrarán en el informe solo si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero xlsx que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo al evaluador que más elementos contenga para ese bloque. Para los evaluadores que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo: [evaluador\_with\_columns\_repeated.xlsx](/attachments/597852279/597865685.xlsx "attachments/597852279/597865685.xlsx")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "usuarioRef" de la tabla "Evaluador" |  |
|  | Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "usuarioRef" de la tabla "Evaluador" |  |
|  | E\-mail | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" de la tabla "Evaluador". |  |
|  | Comité | Campo "comite" perteneciente al campo "comite" de la tabla "Evaluador" |  |
|  | Cargo comité | Campo "nombre" de la tabla "CargoComite" referenciado desde el campo "cargoComite" de la tabla "Evaluador" |  |
|  | Fecha alta | Campo "fechaAlta" de la tabla "Evaluador" |  |
|  | Fecha baja | Campo "fechaBaja" de la tabla "Evaluador" |  |
|  | Estado | Activo: si  no tiene fecha baja o fecha baja es mayor a la actualInactivo: si fecha baja es menor a la fecha actual |  |
| Conflicto de interés |  | Se mostrará las distintas personas dadas de alta como conflicto de interés para cada evaluador. Para ello se obtendrán los registros de la tabla "ConflictoInteres" cuyo campo "evaluador" sea el evaluador en cuestión. | Sí |
|  | ConflictoX: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaConflictoRef" de la tabla "ConflictoInteres" |  |
|  | ConflictoX: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaConflictoRef" de la tabla "ConflictoInteres" |  |
|  | ConflictoX: E\-mail | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "personaConflictoRef" de la tabla "ConflictoInteres". |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














