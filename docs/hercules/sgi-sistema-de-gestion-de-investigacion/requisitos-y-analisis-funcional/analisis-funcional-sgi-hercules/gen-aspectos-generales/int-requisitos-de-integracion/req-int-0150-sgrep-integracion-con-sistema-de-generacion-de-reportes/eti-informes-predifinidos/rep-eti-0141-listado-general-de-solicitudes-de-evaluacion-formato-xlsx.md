# Hércules : REP\-ETI\-0141 \- Listado general de solicitudes de evaluación \- Formato xlsx







### Diseño Informe

Se debe de generar un informe en formato xlsx que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero xlsx de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos se mostrarán en el informe solo si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero xlsx que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo a la solicitud de evaluación que más elementos contenga para ese bloque. Para las solicitudes de evaluación que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo: [sol\_evaluacion\_with\_columns\_repeated.xlsx](/attachments/597852555/597874080.xlsx "attachments/597852555/597874080.xlsx")

  




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
|  | Equipo \- Miembro X: Email | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" de la tabla "EquipoTrabajo". |  |
|  | Equipo \- Miembro X: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" de la tabla "EquipoTrabajo". |  |
|  | Equipo \- Miembro X: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" de la tabla "EquipoTrabajo". |  |
|  | Equipo \- Miembro X: Vinculación | Campo "categoriaProfesional" recuperado a través de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") para la referencia indicada en el campo "usurioRef" de la tabla "EquipoTrabajo". |  |
| Asignación de tareas |  | Se muestra el listado de tareas de los miembros del equipo de investigación para cada una de las memorias (tabla "Tarea") | Sí |
|  | Tarea X: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" asociado al campo "equipoTrabajo" de la tabla "Tarea" |  |
|  | Tarea X: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usurioRef" asociado al campo "equipoTrabajo" de la tabla "Tarea" |  |
|  | Tarea X: Memoria | Campo "numReferencia" perteneciente al campo "memoria" de la tabla "Tarea" |  |
|  | Tarea X: Tarea | Si el campo "comite" perteneciente al campo "memoria" de la tabla "Tarea" hace referencia a un comité de tipo COMITE.CEISH (id \= 1\) o COMITE.CEIAB (id \= 3\) entonces se obtiene el campo "tarea" de la tabla "Tarea", si por el contrario es un tipo de comité COMITE.CEEA (id \= 2\) entonces se obtiene del campo "nombre" perteneciente al campo "tipoTarea" de la tabla "Tarea" |  |
|  | Tarea X: Experiencia/Formación | Si el campo "comite" perteneciente al campo "memoria" de la tabla "Tarea" hace referencia a un comité de tipo COMITE.CEISH (id \= 1\) o COMITE.CEIAB (id \= 3\) entonces se obtiene el campo "formacion" de la tabla "Tarea", si por el contrario es un tipo de comité COMITE.CEEA (id \= 2\) entonces se obtiene del campo "nombre" perteneciente al campo "formacionEspecifica" de la tabla "Tarea" |  |
| Memorias |  | Se muestra el listado de memorias de la solicitud de evaluación (tabla "Memoria") | Sí |
|  | MemoriaX: Referencia | Campo "numReferencia" de la tabla "Memoria" |  |
|  | MemoriaX: Comité | Campo "comite" perteneciente al campo "comite" de la tabla "Memoria" |  |
|  | MemoriaX: Estado | Valor del enumerado "EstadoMemoria" para el registro de la tabla "EstadoMemoria" referenciado desde el campo "estadoActual" de la tabla "Memoria" |  |
|  | MemoriaX: Fecha evaluación | * Para las memorias que no tienen ninguna evaluación asociada se deja vacío. (no existe ningún registro en la tabla "Evaluacion" cuyo campo "memoria" tenga a la propia memoria) * Para las memorias que si tienen evaluación asociada se busca la evaluación de su última versión y se muestra la fecha evaluación de la convocatoria de reunión asociada → Se recuperan todas los registros de la tabla "Evaluacion" donde el campo "memoria" tenga a la propia memoria y el campo "tipoEvaluacion" tenga el valor del enumerado TipoEvaluacion.Memoria y se ordenan por el campo "version" de forma descendente. De esos registros se coge el primero (el de versión mas alta) y se obtiene el campo "fechaEvaluacion" de la tabla "ConvocatoriaReunion" referenciada por el campo "convocatoriaReunion" de la tabla "Evaluacion" |  |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














