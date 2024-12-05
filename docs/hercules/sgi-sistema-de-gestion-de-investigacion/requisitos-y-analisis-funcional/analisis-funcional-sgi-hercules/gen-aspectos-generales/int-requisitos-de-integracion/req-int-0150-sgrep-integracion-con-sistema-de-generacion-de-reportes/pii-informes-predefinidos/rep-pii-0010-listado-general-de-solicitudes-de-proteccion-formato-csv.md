# Hércules : REP\-PII\-0010 \- Listado general de solicitudes de protección \- Formato csv







### Diseño Informe

Se debe de generar un informe en formato csv que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero csv de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos sólo se mostrarán en el informe si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero csv que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo a la solicitud de protección que más elementos contenga para ese bloque. Para las solicitudes de protección que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

El fichero csv resultante utilizará un carácter predefinido como separador de cada columna.

Ejemplo: [solicitudes\_proteccion\_with\_columns\_repeated.csv](/attachments/597852844/597858700.csv "attachments/597852844/597858700.csv")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Fecha Solicitud | Campo "fechaPrioridadSolicitud" de la tabla "SolicitudProteccion". |  |
|  | Vía Protección | Campo "nombre" de la tabla "ViaProteccion" asociada a la solicitud de protección a través del campo "viaProteccion" de la tabla "SolicitudProteccion". |  |
|  | País | Campo "nombre" recuperado a través de [REQ\-INT\-0030\-SGO\-0061 \- Consultar país](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0061-consultar-pais.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0061-consultar-pais.md") para la referencia indicada en el campo "paisProteccionRef" de la tabla "SolicitudProteccion". |  |
|  | Número Solicitud | Campo "numeroSolicitud" de la tabla "SolicitudProteccion". |  |
|  | Título Invención | Campo "titulo" de la tabla "Invencion" asociada a la solicitud de protección a través del campo "invencionId" de la tabla "SolicitudProteccion". |  |
|  | Tipo Protección | Campo "nombre" de la tabla "TipoProteccion" asociada a la invención través del campo "tipoProteccion" de la tabla "Invencion" de la invención asociada a la solicitud de protección a través del campo "invencionId" de la tabla "SolicitudProteccion". |  |
|  | Estado | Valor textual asociado al enumerado que se indique en el campo "estado" de la tabla "SolicitudProteccion". |  |
|  | Prioritaria | Valor booleano que se representará con un carácter, teniendo dos valores posibles:* "S" : representa que la solicitud de protección es la prioritaria de la invención. Esto ocurrirá si tiene un valor informado en el campo "fechaFinPriorPresFasNacRec" de la tabla "SolicitudProteccion". * "N": representa que la solicitud de protección NO es la prioritaria de la invención. Esto ocurrirá si NO tiene un valor informado en el campo "fechaFinPriorPresFasNacRec" de la tabla "SolicitudProteccion". |  |
|  | Fecha Fin Prioridad/Plazo Present. Fases Nac./Reg. | Campo "fechaFinPriorPresFasNacRec" de la tabla "SolicitudProteccion". |  |
|  | Fecha Concesión | Campo "fechaConcesion" de la tabla "SolicitudProteccion". |  |
|  | Número Concesión | Campo "numeroConcesion" de la tabla "SolicitudProteccion". |  |
|  | Número Registro | Campo "numeroRegistro" de la tabla "SolicitudProteccion". |  |







### Interfaces de usuario relacionados







### Casos de uso relacionados



  








### Permisos de acceso al informe

#### Por actor

#### Todos los permisos de acceso







