# Hércules : REP\-ETI\-0140 \- Listado general de solicitudes de evaluación \- Formato csv







### Diseño Informe

Se debe de generar un informe en formato csv que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero csv de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos se mostrarán en el informe solo si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero csv que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo a la solicitud de evaluación que más elementos contenga para ese bloque. Para las solicitudes de evaluación que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo:[sol\_evaluacion\_with\_columns\_repeated.csv](/attachments/597852562/597874075.csv "attachments/597852562/597874075.csv")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Solicitante: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaRef" de la tabla "PeticionEvaluacion". |  |
|  | Solicitante: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "personaRef" de la tabla "PeticionEvaluacion". |  |
|  | Código | Campo "codigo" de la tabla "PeticionEvaluacion" |  |
|  | Código de la solicitud de convocatoria | Campo "códigoRegistroInterno" de la tabla "solicitud" recuperada a través del identificador de la solicitud indicado en el campo "solicitudConvocatoriaRef" de la tabla "PeticionEvaluacion" |  |
|  | Título del proyecto | Campo "titulo" de la tabla "PeticionEvaluacion" |  |
|  | Tipo de actividad | Campo "nombre" perteneciente al campo "tipoActividad" de la tabla "PeticionEvaluacion" |  |
|  | Tipo de investigación tutelada | Campo "nombre" perteneciente al campo "tipoInvestigacionTutelada" de la tabla "PeticionEvaluacion" |  |
|  | Órgano financiador | Campo "fuenteFinanciacion" de la tabla "PeticionEvaluacion" |  |
|  | Importe financiación | Campo "importeFinanciacion" de la tabla "PeticionEvaluacion" |  |
|  | Fecha inicio | Campo "fechaInicio" de la tabla "PeticionEvaluacion" |  |
|  | Fecha fin | Campo "fechaFin" de la tabla "PeticionEvaluacion" |  |
| Equipo investigador |  | Se mostrará el equipo investigador de la solicitud de evaluación (tabla "EquipoTrabajo") | Sí |
|  | Equipo\-MiembroX: E\-mail | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" de la tabla "EquipoTrabajo". |  |
|  | Equipo\-MiembroX: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" de la tabla "EquipoTrabajo". |  |
|  | Equipo\-MiembroX: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" de la tabla "EquipoTrabajo". |  |
|  | Equipo\-MiembroX: Vinculación | Campo "categoriaProfesional" recuperado a través de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") para la referencia indicada en el campo "usurioRef" de la tabla "EquipoTrabajo". |  |
| Asignación de tareas |  | Se muestra el listado de tareas de los miembros del equipo de investigación para cada una de las memorias (tabla "Tarea") | Sí |
|  | TareaX: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" asociado al campo "equipoTrabajo" de la tabla "Tarea" |  |
|  | TareaX: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" asociado al campo "equipoTrabajo" de la tabla "Tarea" |  |
|  | TareaX: Memoria | Campo "numReferencia" perteneciente al campo "memoria" de la tabla "Tarea" |  |
|  | TareaX: Tarea | Si el campo "comite" perteneciente al campo "memoria" de la tabla "Tarea" hace referencia a un comité de tipo COMITE.CEISH (id \= 1\) o COMITE.CEIAB (id \= 3\) entonces se obtiene el campo "tarea" de la tabla "Tarea", si por el contrario es un tipo de comité COMITE.CEEA (id \= 2\) entonces se obtiene del campo "nombre" perteneciente al campo "tipoTarea" de la tabla "Tarea" |  |
|  | TareaX: Experiencia/Formación | Si el campo "comite" perteneciente al campo "memoria" de la tabla "Tarea" hace referencia a un comité de tipo COMITE.CEISH (id \= 1\) o COMITE.CEIAB (id \= 3\) entonces se obtiene el campo "formacion" de la tabla "Tarea", si por el contrario es un tipo de comité COMITE.CEEA (id \= 2\) entonces se obtiene del campo "nombre" perteneciente al campo "formacionEspecifica" de la tabla "Tarea" |  |
| Memorias |  | Se muestra el listado de memorias de la solicitud de evaluación (tabla "Memoria") | Sí |
|  | MemoriaX: Referencia | Campo "numReferencia" de la tabla "Memoria" |  |
|  | MemoriaX: Comité | Campo "comite" perteneciente al campo "comite" de la tabla "Memoria" |  |
|  | MemoriaX: Estado | Valor del enumerado "EstadoMemoria" para el registro de la tabla "EstadoMemoria" referenciado desde el campo "estadoActual" de la tabla "Memoria" |  |
|  | MemoriaX: Fecha evaluación | Dependiendo del estado de la memoria se obtendrá de una forma u otra, a continuación se explica la forma dependiendo del estado:* **Completada**,  **En secretaria**: La fecha de evaluación se sacará de la próxima convocatoria de reunión de tipo "Ordinaria" o "Extraordinaria" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación, Pendiente de correcciones, No procede evaluar, Favorable pendiente de revisión mínima, En secretaria revisión mínima, Fin evaluación**: La fecha de evaluación se sacará de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Memoria" y que sea la última versión (versión mayor) * **Completada seguimiento anual**,  **En secretaria seguimiento anual**: La fecha de evaluación se sacaránde la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento anual, Solicitud modificación, Fin evaluación seguimiento anual**: La fecha de evaluación se sacará de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento anual" y que sea la última versión (versión mayor) * **Completada seguimiento final**,  **En secretaria seguimiento final**: La fecha de evaluación se sacará de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor. * **En evaluación seguimiento final, En secretaria seguimiento final aclaraciones, En aclaración seguimiento final, Fin evaluación seguimiento final**: La fecha de evaluación se sacará de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento final" y que sea la última versión (versión mayor) * **Archivado**: se deja vacía |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














