# Hércules : REP\-ETI\-0142 \- Listado general de memorias \- Formato csv







### Diseño Informe

Se debe de generar un informe en formato csv que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero csv de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos se mostrarán en el informe solo si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero csv que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo a la memoria que más elementos contenga para ese bloque. Para las memorias que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo:[memoria\_with\_columns\_repeated.csv](/attachments/597852540/597874093.csv "attachments/597852540/597874093.csv")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Referencia | Campo "numReferencia" de la tabla "Memoria" |  |
|  | Comité | Campo "comite" perteneciente al campo "comite" de la tabla "Memoria" |  |
|  | Estado | Valor del enumerado "EstadoMemoria" para el registro de la tabla "EstadoMemoria" referenciado desde el campo "estadoActual" de la tabla "Memoria" |  |
|  | Fecha evaluación | Dependiendo del estado de la memoria se obtendrá de una forma u otra, a continuación se explica la forma dependiendo del estado:* **Completada**,  **En secretaria**: La fecha de evaluación se sacará de la próxima convocatoria de reunión de tipo "Ordinaria" o "Extraordinaria" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación, Pendiente de correcciones, No procede evaluar, Favorable pendiente de revisión mínima, En secretaria revisión mínima, Fin evaluación**: La fecha de evaluación se sacará de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Memoria" y que sea la última versión (versión mayor) * **Completada seguimiento anual**,  **En secretaria seguimiento anual**: La fecha de evaluación se sacaránde la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento anual, Solicitud modificación, Fin evaluación seguimiento anual**: La fecha de evaluación se sacará de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento anual" y que sea la última versión (versión mayor) * **Completada seguimiento final**,  **En secretaria seguimiento final**: La fecha de evaluación se sacará de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento final, En secretaria seguimiento final aclaraciones, En aclaración seguimiento final, Fin evaluación seguimiento final**: La fecha de evaluación se sacará de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento final" y que sea la última versión (versión mayor) * **Archivado**: se deja vacía |  |
|  | Solicitante: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaRef" de la tabla "PeticionEvaluacion" refenciado por el campo "peticionEvaluacion" de la tabla "Memoria" |  |
|  | Solicitante: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaRef" de la tabla "PeticionEvaluacion" refenciado por el campo "peticionEvaluacion" de la tabla "Memoria" |  |
|  | Responsable: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "usuarioRef" de la tabla "Memoria". |  |
|  | Responsable: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "usuarioRef" de la tabla "Memoria". |  |
| Evaluaciones |  | Se mostrará las distintas evaluaciones que ha tenido la memoria (tabla "Evaluacion") (Primero se mostrarán las de Tipo Memoria, luego Seguimiento anual, luego Seguimiento Final y luego las de Retrospectiva y ordenador de menor a mayor versión dentro del mismo tipo) | Sí |
|  | EvaluaciónX: Tipo | Campo "nombre" de la tabla "TipoEvaluacion" referenciado desde el campo "tipoEvaluacion" de la tabla "Evaluacion" |  |
|  | EvaluaciónX: Versión | Campo "version" de la tabla "Evaluacion" |  |
|  | EvaluaciónX: Dictamen | Campo "nombre" de la tabla "Dictamen" referenciado desde el campo "dictamen" de la tabla "Evaluacion" si ya esta finalizada la evaluación y disponible para el investigador, es decir, si no es de revisión mínima cuando el acta este finalizada.Sólo se mostrará el dictamen en los siguientes casos:* la evaluación es de revisión mínima  (campo "esRevMinima" es true) * la evaluación no es de revisión mínima (campo "esRevMinima" es true) y el acta asociada a la convocatoria de reunión de la evaluación esta en estado "Finalizada". Si esta "En elaboración" no se muestra el dictamen. |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














