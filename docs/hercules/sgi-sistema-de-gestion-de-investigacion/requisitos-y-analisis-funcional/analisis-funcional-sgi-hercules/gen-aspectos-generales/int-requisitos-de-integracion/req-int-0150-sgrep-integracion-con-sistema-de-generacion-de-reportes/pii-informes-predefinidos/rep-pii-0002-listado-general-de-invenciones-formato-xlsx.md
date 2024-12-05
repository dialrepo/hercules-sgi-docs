# Hércules : REP\-PII\-0002 \- Listado general de invenciones \- Formato xlsx







### Diseño Informe

Se debe de generar un informe en formato csv que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero xlsx de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos sólo se mostrarán en el informe si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero xlsx que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo a la invención que más elementos contenga para ese bloque. Para las invenciones que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo: [invenciones\_with\_columns\_repeated.xlsx](/attachments/597852558/597858672.xlsx "attachments/597852558/597858672.xlsx")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Número Invención | Campo "id" de la tabla "Invencion". |  |
|  | Título Invención | Campo "titulo" de la tabla "Invencion". |  |
|  | Fecha Comunicación | Campo "fechaComunicacion" de la tabla "Invencion". |  |
|  | Tipo Protección | Campo "nombre" de la tabla "TipoProteccion" asociada a la invención través del campo "tipoProteccion" de la tabla "Invencion". |  |
| Equipo inventor |  |  | Sí |
|  | Miembro de equipo inventor X: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referencia indicada en el campo "inventorRef" de la tabla "InvencionInventor". |  |
|  | Miembro de equipo inventor X: Apellidos | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referencia indicada en el campo "inventorRef" de la tabla "InvencionInventor". |  |
|  | Miembro de equipo inventor X: Departamento | Campo "nombre" del objeto Departamento recuperado a través de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") para la referencia indicada en el campo "inventorRef" de la tabla "InvencionInventor". |  |
| Solicitudes Protección |  |  | Sí |
|  | Solicitud de protección X: Fecha Solicitud | Campo "fechaPrioridadSolicitud" de la tabla "SolicitudProteccion". |  |
|  | Solicitud de protección X: Vía Protección | Campo "nombre" de la tabla "ViaProteccion" asociada a la solicitud de protección a través del campo "viaProteccion" de la tabla "SolicitudProteccion". |  |
|  | Solicitud de protección X: País | Campo "nombre" recuperado a través de [REQ\-INT\-0030\-SGO\-0061 \- Consultar país](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0061-consultar-pais.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0061-consultar-pais.md") para la referencia indicada en el campo "paisProteccionRef" de la tabla "SolicitudProteccion". |  |
|  | Solicitud de protección X: Número Solicitud | Campo "numeroSolicitud" de la tabla "SolicitudProteccion". |  |
|  | Solicitud de protección X: Estado | Valor textual asociado al enumerado que se indique en el campo "estado" de la tabla "SolicitudProteccion". |  |
|  | Solicitud de protección X: Prioritaria | Valor booleano que se representará con un carácter, teniendo dos valores posibles:* "S" : representa que la solicitud de protección es la prioritaria de la invención. Esto ocurrirá si tiene un valor informado en el campo "fechaFinPriorPresFasNacRec" de la tabla "SolicitudProteccion". * "N": representa que la solicitud de protección NO es la prioritaria de la invención. Esto ocurrirá si NO tiene un valor informado en el campo "fechaFinPriorPresFasNacRec" de la tabla "SolicitudProteccion". |  |
|  | Solicitud de protección X:Fecha Fin Prioridad/Plazo Present. Fases Nac./Reg. | Campo "fechaFinPriorPresFasNacRec" de la tabla "SolicitudProteccion". |  |
|  | Solicitud de protección X: Fecha Concesión | Campo "fechaConcesion" de la tabla "SolicitudProteccion". |  |
|  | Solicitud de protección X: Número Concesión | Campo "numeroConcesion" de la tabla "SolicitudProteccion". |  |
|  | Solicitud de protección X: Número Registro | Campo "numeroRegistro" de la tabla "SolicitudProteccion". |  |







### Interfaces de usuario relacionados







### Casos de uso relacionados



  








### Permisos de acceso al informe

#### Por actor

#### Todos los permisos de acceso







