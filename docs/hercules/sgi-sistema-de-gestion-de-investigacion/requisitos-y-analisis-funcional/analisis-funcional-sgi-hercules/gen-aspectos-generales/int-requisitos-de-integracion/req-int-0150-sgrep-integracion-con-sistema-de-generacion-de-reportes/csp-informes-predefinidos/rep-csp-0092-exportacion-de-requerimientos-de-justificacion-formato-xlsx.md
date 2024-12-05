# Hércules : REP\-CSP\-0092 \- Exportación de requerimientos de justificación \- Formato xlsx







### Diseño Informe

Se debe de generar un informe en formato xlsx que contenga el detalle de los requerimientos asociados al seguimiento de la justificación económica, para un listado de proyectos SGE. 

Se debe mostrar una fila por cada par proyecto económico \- proyecto SGI. Para cada para proyecto SGE \- proyecto SGI se listarán, en columnas, sus requerimientos y la respuesta o alegación asociada a los mismos. Cada requerimiento ocupará un bloque de columnas. No todos los proyectos tendrán el mismo número de requerimientos. Los requerimientos se listarán con el mismo número de columnas, independientemente de que, según el tipo de requerimiento, pudiesen no aplicar alguna de estas columnas.

En la siguiente tabla se recogen todas las columnas que debe contener el fichero resultante, así como aquellas que forman parte de bloques de repetición.

  


La tabla principal para obtener los datos será "requerimiento justificación". Para el listado de proyectos SGE para el que se invoca la exportación se obtendrán todos sus requerimientos (tabla "requerimiento justificación"). Cada requerimiento podrá tener asociada una alegación (tabla "alegación requerimiento"). Cada requerimiento pertenecerá a un par proyecto SGE \- proyecto SGI. La información a mostrar del proyecto SGI se recuperará de la tabla "proyecto".

  




| Columna informe | Campo | Repetición |
| --- | --- | --- |
| Código proyecto SGE | Es el código del proyecto SGE desde el que se accede al seguimiento de justificación. Campo "proyecto SGE ref" (tabla "proyecto proyecto SGE") | No |
| ID proyecto SGI | Es el campo "id" de la tabla "proyecto" para el proyecto al que pertenece el requerimiento (campo "proyecto" de la tabla ""proyecto proyecto SGE") | No |
| Referencia en entidad convocante | Se corresponde con el campo "código externo" de la tabla "proyecto" para el ID proyecto SGI recuperado previamente. | No |
| Título proyecto | Se corresponde con el campo "título" de la tabla "proyecto" para el ID proyecto SGI recuperado previamente. | No |
| Fecha inicio | Se corresponde con el campo "fecha inicio" de la tabla "proyecto" para el ID proyecto SGI recuperado previamente. | No |
| Fecha fin | Se corresponde con el campo "fecha fin" de la tabla "proyecto" para el ID proyecto SGI recuperado previamente. | No |
| Fecha fin definitiva | Se corresponde con el campo "fecha fin definitiva" de la tabla "proyecto" para el ID proyecto SGI recuperado previamente. | No |
| Los datos del responsable (nombre, apellidos e email) se plantean como un bloque de repetición puesto que, por configuración, podrían existir varias personas con un rol "principal", si bien lo normal es que solo exista uno. | | |
| Responsable X: Nombre | Nombre de la persona que ocupa el rol IP del equipo de proyecto en la fecha actual.Se mostrará en este columna el nombre obtenido a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la "persona ref" de la tabla "proyecto equipo" que tenga el rol principal (registro de la tabla "rol proyecto" con campo "principal" a "true") para la fecha actual (la fecha actual debe estar comprendida entre los campos "fecha inicio" y "fecha fin" de la tabla "proyecto equipo", considerando el valor null sobre fecha fin como periodo vigente). | Sí |
| Responsable X: Apellidos | Apellidos de la persona que ocupa el rol IP del equipo de proyecto en la fecha actual.Se mostrarán en esta columna los apellidos obtenidos a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la "persona ref" de la tabla "proyecto equipo" que tenga el rol principal (registro de la tabla "rol proyecto" con campo "principal" a "true") para la fecha actual (la fecha actual debe estar comprendida entre los campos "fecha inicio" y "fecha fin" de la tabla "proyecto equipo", considerando el valor null sobre fecha fin como periodo vigente). | Sí |
| Responsable X: Email | Email de la persona que ocupa el rol IP del equipo de proyecto en la fecha actual.Se mostrarán el campo "email" con el indicador "principal" a "true" recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la "persona ref" de la tabla "proyecto equipo" que tenga el rol principal (registro de la tabla "rol proyecto" con campo "principal" a "true") para la fecha actual (la fecha actual debe estar comprendida entre los campos "fecha inicio" y "fecha fin" de la tabla "proyecto equipo", considerando el valor null sobre fecha fin como periodo vigente). | Sí |
| Título convocatoria | Título de la convocatoria a la que está asociado el proyecto.Si el proyecto SGI está asociado a una convocatoria, es decir, el campo "convocatoria" de la tabla "proyecto" está informado (para el identificador de proyecto SGI recuperado previamente) se mostrará el campo "título" de la tabla "convocatoria". En caso contrario el campo se mostrará vacío. | No |
| Se mostrarán en un bloque de repetición el nombre y el número de identificación de todas las entidades financiadoras del proyecto. Se obtendrán de la tabla "proyecto entidad financiadora" para el identificador del proyecto SGI recuperador previamente). | | |
| Entidad financiadora X: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "proyecto entidad financiadora". | Sí |
| Entidad financiadora X: Número identificación | Campo "número de identificación fiscal" recuperado a través [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "proyecto entidad financiadora". | Sí |
| Importe concedido | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor resultante de sumar los campos "importe concedido" e "importe concedido costes indirectos" de la tabla proyectos. Si no, se deberá realizar el cálculo como sigue:  suma del campo "importe concedido" de todos los registros de la tabla "anualidad gasto" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE) para el ID de proyecto SGI recuperado previamente. | No |
| Importe concedido CD | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del  campo "importe concedido" de la tabla "proyecto".Si no, se deberá realizar el cálculo como sigue: Suma del campo "importe concedido" de todos los registros de la tabla "anualidad gasto", para el ID proyecto SGI recuperado previamente, cuyo campo "concepto gasto" figure en la tabla "concepto gasto" con el campo "costes indirectos" a "false" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE). | No |
| Importe concedido CI | Si alguno de los campos "importe presupuesto",  "importe presupuesto costes indirectos", "importe concedido", "importe concedido costes indirectos", "importe presupuesto socios", "importe concedido socios", "total importe presupuesto", "total importe socios" de la tabla "proyecto" están informados, se mostrará en esta celda el valor del  campo "importe concedido" de la tabla "proyecto".Si no, se deberá realizar el cálculo como sigue: Suma del campo "importe concedido" de todos los registros de la tabla "anualidad gasto", para el ID proyecto SGI recuperado previamente, cuyo campo "concepto gasto" figure en la tabla "concepto gasto" con el campo "costes indirectos" a "true" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE). | No |
| Requerimientos (tabla "requerimiento justificación") asociados al par proyecto SGE \- proyecto SGI  con su alegación (tabla "alegación requerimiento"). Los requerimientos se mostrarán ordenados por el campo "número requerimiento" que a su vez estará ordenado de acuerdo al campo "fecha notificación", ambos son campos de la tabla "requerimiento justificación". Para cada requerimiento se mostrarán todas las columnas aunque no estén informadas. Será un bloque de columnas de repetición. | | |
| Requerimiento X: Núm. req | Se mostrará el campo "número requerimiento" de la tabla "requerimiento justificación". | Sí |
| Requerimiento X: Tipo req | Se mostrará el campo "nombre" de la tabla "tipo requerimiento" para la referencia establecida por el campo "tipo requerimiento" de la tabla "requerimiento justificación". | Sí |
| Requerimiento X: periodo justificación | Se mostrará el campo "número requerimiento" de la tabla "proyecto periodo justificación" para la referencia establecida por el campo "proyecto periodo justificación" de la tabla "requerimiento justificación". | Sí |
| Requerimiento X: req. previo | Se mostrará una cadena formada por la concatenación, mediante el carácter "\-", del campo "número requerimiento" y el "nombre" del tipo de requerimiento, para el requerimiento referenciado por el campo "requerimiento previo" de la tabla "requerimiento justificación" (es una relación recursiva). |  |
| Requerimiento X: Fecha notificación | Se mostrará el campo "fecha notificación" de la tabla "requerimiento justificación". | Sí |
| Requerimiento X: Fecha fin alegación | Se mostrará el campo "fecha fin alegación" de la tabla "requerimiento justificación". |  |
| Requerimiento X: importe aceptado proyecto | Se mostrará el campo "importe aceptado" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: importe aceptado CD proyecto | Se mostrará el campo "importe aceptado CD" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: importe aceptado  CI proyecto | Se mostrará el campo "importe aceptado CI" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: importe rechazado proyecto | Se mostrará el campo "importe rechazado" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: importe rechazado CD proyecto | Se mostrará el campo "importe rechazado CD" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: importe rechazado  CI proyecto | Se mostrará el campo "importe rechazado CI" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: importe reintegrar proyecto | Se mostrará el campo "importe reintegrar" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: importe reintegrar CD proyecto | Se mostrará el campo "importe reintegrar CD" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: importe reintegrar CI proyecto | Se mostrará el campo "importe reintegrar CI" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: Subvención justificada | Se mostrará el campo "subvención justificada" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: Defecto subvención | Se mostrará el campo "defecto subvención" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: Anticipo justificado | Se mostrará el campo "anticipo justificado" de la tabla "requerimiento justificación"" | Sí |
| Requerimiento X: Defecto anticipo | Se mostrará el campo "defecto anticipo" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: recurso estimado | Se mostrará el campo "recurso estimado" de la tabla "requerimiento justificación" | Sí |
| Requerimiento X: fecha alegación | Se mostrará el campo "fecha alegación" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |
| Requerimiento X: importe alegado | Se mostrará el campo "importe alegado" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |
| Requerimiento X: importe alegado CD | Se mostrará el campo "importe alegado CD" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |
| Requerimiento X: importe alegado CI | Se mostrará el campo "importe alegado CI" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |
| Requerimiento X: importe reintegrado | Se mostrará el campo "importe reintegrado" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |
| Requerimiento X: importe reintegrado CD | Se mostrará el campo "importe reintegrado CD" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |
| Requerimiento X: importe reintegrado CI | Se mostrará el campo "importe reintegrado CI" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |
| Requerimiento X: intereses reintegrados | Se mostrará el campo "intereses reintegrados" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |
| Requerimiento X: fecha reintegro | Se mostrará el campo "fecha reintegro" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |
| Requerimiento X: justificante reintegro | Se mostrará el campo "justificante reintegro" de la tabla "alegación requerimiento" (de la alegación vinculada al requerimiento que se está mostrando) | Sí |

### Permisos

  








### Interfaces de usuario relacionados







### Casos de uso relacionados









