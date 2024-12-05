# Hércules : CSP \- Integración Estadísticas



## INTRODUCCIÓN

Para poder mostrar en el sistema externo de la Universidad sus actuales pantallas de Gráficas sobre estadísticas e indicadores se necesita información sobre los proyectos, solicitudes, grupos de investigación e invenciones del SGI.

Las solicitudes concedidas darán lugar a los proyectos. Los proyectos pueden crearse en el SGI sin necesidad de que exista el flujo previo de creación de la convocatoria y registro de solicitudes.

En el SGI se van a crear una serie de vistas para proporcionar dicha información.

A continuación  se detallan dichas vistas.

## ES\_PROYECTO

Listado de proyectos del SGI que cumplen las siguientes condiciones:

* activos



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del proyecto. Clave primaria. |
| SOLICITUD\_ID | Identificador de la solicitud de proyecto en caso de que el proyecto se haya creado a partir de dicha solicitud. |
| UNIDAD\_GESTION\_REF | Identificador único de la unidad de gestión asociada al proyecto. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | Nombre de la unidad de gestión asociada al proyecto. |
| CONVOCATORIA | Campo "identificación" de la convocatoria asociada al proyecto en caso de tenerla. |
| ESTADO | Estado actual del proyecto. Se sacará el campo "estado" de la tabla ESTADO\_PROYECTO del estado actual del proyecto.Posibles valores:* BORRADOR * CONCEDIDO * RENUNCIADO * RESCINDIDO |
| TITULO | Campo "título" del proyecto. |
| IMPORTE\_CONCEDIDO | Si el campo "importe concedido" o "importe concedido costes indirectos" del proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe concedido" de todos los gastos del proyecto (tabla ANUALIDAD\_GASTO). |
| FECHA\_PRESENTACION | Fecha en la que la solicitud pase a estado SOLICITADA. |
| FECHA\_CONCESION | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear proyecto" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el proyecto tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| FECHA\_INICIO | Campo "fecha inicio" del proyecto. |
| FECHA\_FIN | Si esta informada "fecha fin definitiva" se enviará "fecha fin definitiva", sino la "fecha de fin" del proyecto. |
| COORDINADO | Indica si el proyecto se realizará de forma coordinada con otros socios. |
| COLABORATIVO | Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| COORDINADOR\_EXTERNO | Indica quién actúa como coordinador del proyecto. Un valor "No" indicará  que es la propia universidad quien actúa en calidad de coordinador del proyecto. En caso que quien coordine el proyecto no sea la universidad sino uno de los socios,  se indicaría en este campo el valor "Sí". |
| MODELO\_EJECUCION\_ID | Identificador único del modelo de ejecución asociado al proyecto. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJCUCION\_NOMBRE | Nombre del modelo de ejecución asociado al proyecto. |
| TIPO\_FINALIDAD\_ID | Identificador único del tipo de finalidad asociado al proyecto. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | Nombre del tipo de finalidad asociado al proyecto. |
| AMBITO\_ID | Identificador único del tipo de ámbito geográfico asociado al proyecto. Los tipos  de ámbitos geográficos son configurables en el SGI. |
| AMBITO\_NOMBRE | Nombre del tipo de ámbito geográfico asociado al proyecto. |

  


Ver diseño en [SGI \- Vistas Estadísticas\#ES\_PROYECTO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO")

NOTAS:

* GESTOR:
	+ Es la UNIDAD\_GESTION en el SGI
* ENTIDAD:
	+ Se enviará en la vista ES\_PROYECTO\_ENT\_FIN porque un proyecto puede tener varias entidades financiadoras. Por cada entidad financiadora se enviará también la fuente de financiación.
	+ Se enviará en la vista ES\_PROYECTO\_ENT\_CONV porque un proyecto puede tener varias entidades convocantes. Por cada entidad convocante se enviará también el programa (plan de investigación  o programa o subprograma o modadidad) que tenga asignada a nivel de convocatoria y a nivel de proyecto (id y nombre).
* ID\_GESTION\_ECONOMICA
	+ Se enviará en la vista ES\_PROYECTO\_SGE porque un proyecto puede estar relacionado con más de un proyecto SGE, aunque no es el caso de Murcia.
* PROGRAMA, SUBPROGRAMA, MODALIDAD:   

	+ Se enviará en la vista ES\_PROYECTO\_ENT\_CONV porque un proyecto puede tener varias entidades convocantes. Por cada entidad convocante se enviará también el programa (plan de investigación o programa o subprograma o modadidad) que tenga asignada a nivel de convocatoria y a nivel de proyecto (id y nombre).
* NOMBRE\_GRUPO\_INVESTIGACION


	+ Los grupos irán en la vista ES\_GRUPO
* ID\_IP
	+ Se enviará en la vista ES\_PROYECTO\_EQUIPO porque un proyecto puede tener mas de un investigador principal en el SGI. La vista sacará todos los miembros del equipo con sus rangos de participación y sus roles.

## ES\_PROYECTO\_ENT\_FIN

Listado de entidades financiadores de los proyectos del SGI que cumplen las siguientes condiciones:

* activos

Por cada proyecto se mostrarán los siguientes campos de una entidad financiadora:

* identificador de la entidad (el SGI no almacena información de la entidad, únicamente su identificador)
* fuente de financiación
* tipo de financiación
* ajena



| **Campo** | **Comentario** |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| ENTIDAD\_REF | Identificador de la entidad en el sistema de gestión de empresas de la Universidad. |
| FUENTE\_FINANCIACION\_ID | Identificador único de la fuente de financiación asociada a la entidad financiadora. Las fuentes de financiación son configurables en el SGI. |
| FUENTE\_FINANCIACION\_NOMBRE | Nombre de la fuente de financiación asociada a la entidad financiadora. |
| TIPO\_FINANCIACION\_ID | Identificador único del tipo de financiación asociada a la entidad financiadora. Los tipos de financiación son configurables en el SGI. |
| TIPO\_FINANCIACION\_NOMBRE | Nombre del tipo de financiación asociado a la entidad financiadora. |
| AJENA | Indica si la entidad financiadora es ajena o no a la convocatoria |

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_PROYECTO\_ENT\_FIN](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO_ENT_FIN "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO_ENT_FIN")

## ES\_PROYECTO\_ENT\_CONV

Listado de entidades convocantes de los proyectos del SGI que cumplen las siguientes condiciones:

* activos

Por cada proyecto se mostrarán los siguientes campos de una entidad convocante:

* identificador de la entidad (el SGI no almacena información de la entidad, únicamente su identificador)
* programa de la convocatoria: puede ser el plan de investigación o el programa o el subprograma de la convocatoria asociada al proyecto
* programa del proyecto: puede ser plan de investigación o el programa o el subprograma o la modalidad seleccionada en el proyecto



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| ENTIDAD\_REF | Identificador de la entidad en el sistema de gestión de empresas de la Universidad. |
| PROGRAMA\_CONVOCATORIA\_ID | Identificador único del plan o del programa o del subprograma definido en la convocatoria asociada al proyecto. Los planes de investigación junto con sus programa, subprograma y modalidades son configurables en el SGI en una estructura de árbol. |
| PROGRAMA\_CONVOCATORIA\_NOMBRE | Nombre del plan o del programa o del subprograma definido en la convocatoria asociada al proyecto. |
| PROGRAMA\_ID | Identificador único del plan o del programa o del subprograma o de la modalidad seleccionada en el proyecto. Los planes de investigación junto con sus programa, subprograma y modalidades son configurables en el SGI en una estructura de árbol. |
| PROGRAMA\_NOMBRE | Nombre del plan o del programa o del subprograma o de la modalidad seleccionada en el proyecto. |

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_PROYECTO\_ENT\_CONV](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO_ENT_CONV "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO_ENT_CONV")

## ES\_PROYECTO\_SGE

Listado de identificadores SGE (Sistema gestión económico) de los proyectos del SGI que cumplen las siguientes condiciones:

* activos

Por cada proyecto se mostrará el identificador SGE (un proyecto SGI puede tener más de uno identificador SGE asociado, aunque la normal general es que sea único)



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| PROYECTO\_SGE\_REF | Identificador del proyecto económico en el sistema de gestión económico de la Universidad |

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_PROYECTO\_SGE](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO_SGE "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO_SGE")

## TS\_PROYECTO\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de los proyectos del SGI que cumplen las siguientes condiciones:

* activos

Por cada proyecto se mostrarán los siguientes campos de un miembro del equipo:

* identificador de la persona (el SGI no almacena información de la persona, únicamente su identificador)
* fecha de inicio de la participación en el equipo
* fecha de finalización de la participación en el equipo
* rol con el que participa en el equipo
* si el rol tiene marcado el flag de principal o no
* en caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| PERSONA\_REF | Identificador de la persona en el sistema de personas de la Universidad |
| FECHA\_INICIO | Fecha de inicio de la participación en el equipo. |
| FECHA\_FIN | Fecha de finalización de la participación en el equipo. |
| ROL\_PROYECTO\_ID | Identificador del rol del miembro en el equipo. |
| ROL\_PROYECTO\_ABREVIATURA | Abreviatura o código identificativo del rol del miembro en el equipo. |
| ROL\_PRINCIPAL | Si el rol es un rol principal o no. |
| ORDEN | En caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO |

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_PROYECTO\_EQUIPO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO_EQUIPO "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_PROYECTO_EQUIPO")

## ES\_GRUPO

Listado de grupos de investigación del SGI que cumplen las siguientes condiciones:

* activos



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del grupo de investigación. Clave primaria. |
| SOLICITUD\_ID | Identificador de la solicitud de constitución de grupo en caso de que el grupo se haya creado a partir de dicha solicitud. |
| UNIDAD\_GESTION\_REF | Identificador único de la unidad de gestión asociada a la convocatoria de constitución del grupo. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | Nombre de la unidad de gestión asociada a la solicitud de constitución del grupo. |
| CONVOCATORIA | Campo "identificación" de la convocatoria asociada a la solicitud de constitución del grupo en caso de que se creara a partir de una solicitud el grupo. |
| ID\_GESTION\_ECONOMICA | Identificación SGE (sistema de gestión económico) |
| TITULO | Campo "nombre" del grupo. |
| FECHA\_PRESENTACION | Fecha en la que la solicitud pase a estado SOLICITADA. |
| FECHA\_CONCESION | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear grupo" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el grupo tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| FECHA\_INICIO | Campo "fecha inicio" del grupo. |
| FECHA\_FIN | Campo "fecha fin" del grupo. |
| MODELO\_EJECUCION\_ID | Identificador único del modelo de ejecución asociado a la convocatoria de constitución del grupo. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJCUCION\_NOMBRE | Nombre del modelo de ejecución asociado a la solicitud de constitución del grupo. |
| TIPO\_FINALIDAD\_ID | Identificador único del tipo de finalidad asociado a la convocatoria de constitución del grupo. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | Nombre del tipo de finalidad asociado a la solicitud de constitución del grupo. |

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_GRUPO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_GRUPO "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_GRUPO")

## ES\_GRUPO\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de los grupos del SGI que cumplen las siguientes condiciones:

* activos

Por cada grupo se mostrarán los siguientes campos de un miembro del equipo:

* identificador de la persona (el SGI no almacena información de la persona, únicamente su identificador)
* fecha de inicio de la participación en el equipo
* fecha de finalización de la participación en el equipo
* rol con el que participa en el equipo
* si el rol tiene marcado el flag de principal o no
* en caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| GRUPO\_ID | Identificador del grupo. |
| PERSONA\_REF | Identificador de la persona en el sistema de personas de la Universidad |
| FECHA\_INICIO | Fecha de inicio de la participación en el equipo. |
| FECHA\_FIN | Fecha de finalización de la participación en el equipo. |
| ROL\_PROYECTO\_ID | Identificador del rol del miembro en el equipo. |
| ROL\_PROYECTO\_ABREVIATURA | Abreviatura o código identificativo del rol del miembro en el equipo. |
| ROL\_PRINCIPAL | Si el rol es un rol principal o no. |
| ORDEN | En caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO |

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_GRUPO\_EQUIPO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_GRUPO_EQUIPO "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_GRUPO_EQUIPO")

## ES\_SOLICITUD

Listado de solicitudes de convocatorias del SGI que cumplen las siguientes condiciones:

* activas



| Campo | Comentario |
| --- | --- |
| ID | Identificador único de la solicitud. Clave primaria. |
| UNIDAD\_GESTION\_REF | Identificador único de la unidad de gestión asociada a la solicitud. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | Nombre de la unidad de gestión asociada a la solicitud. |
| CONVOCATORIA | Campo "identificación" de la convocatoria asociada a la solicitud. |
| ESTADO | Estado actual de la solicitud. Se sacará el campo "estado" de la tabla ESTADO\_SOLICITUD del estado actual de la solicitud.Posibles valores:* ADMITIDA\_DEFINITIVA * ADMITIDA\_PROVISIONAL * ALEGACION\_FASE\_ADMISION * ALEGACION\_FASE\_PROVISIONAL * BORRADOR * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA * DENEGADA * DENEGADA\_PROVISIONAL * DENEGADA\_PROVISIONAL\_ALEGADA * DENEGADA\_PROVISIONAL\_NO\_ALEGADA * DESISTIDA * EXCLUIDA\_DEFINITIVA * EXCLUIDA\_PROVISIONAL * FIRMADA * NEGOCIACION * PRESENTADA\_SUBSANACION * RECURSO\_FASE\_ADMISION * RECURSO\_FASE\_CONCESION * RENUNCIADA * RESERVA * RESERVA\_PROVISIONAL * SOLICITADA * SUBSANACION * RECHAZADA * VALIDADA |
| TITULO | Campo "título" de la solicitud. |
| IMPORTE\_SOLICITADO | Si el campo "importe solicitado" o "importe solicitado costes indirectos" de la solicitud de proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe solicitado" de todos los gastos del presupuesto de la solicitud (tabla SOLICITUD\_PROYECTO\_PRESUPUESTO). |
| FECHA\_PRESENTACION | Fecha en la que la solicitud pase a estado SOLICITADA. |
| FECHA\_CONCESION | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear proyecto" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el proyecto tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| DURACION | Campo "duración" de la solicitud. Las solicitudes no tienen fecha de inicio ni de fin, únicamente una duración en meses. |
| COORDINADO | Indica si el proyecto se realizará de forma coordinada con otros socios. |
| COLABORATIVO | Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| COORDINADOR\_EXTERNO | Indica quién actúa como coordinador del proyecto. Un valor "No" indicará  que es la propia universidad quien actúa en calidad de coordinador del proyecto. En caso que quien coordine el proyecto no sea la universidad sino uno de los socios,  se indicaría en este campo el valor "Sí". |
| MODELO\_EJECUCION\_ID | Identificador único del modelo de ejecución asociado a la convocatoria. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJECUCION\_NOMBRE | Nombre del modelo de ejecución asociado a la convocatoria. |
| TIPO\_FINALIDAD\_ID | Identificador único del tipo de finalidad asociado a la convocatoria. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | Nombre del tipo de finalidad asociado a la convocatoria. |
| AMBITO\_ID | Identificador único del tipo de ámbito geográfico asociado a la convocatoria. Los tipos  de ámbitos geográficos son configurables en el SGI. |
| AMBITO\_NOMBRE | Nombre del tipo de ámbito geográfico asociado a la convocatoria. |

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_SOLICITUD](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_SOLICITUD "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_SOLICITUD")

## ES\_SOLICITUD\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de las solicitudes del SGI que cumplen las siguientes condiciones:

* activas

Por cada solicitud se mostrarán los siguientes campos de un miembro del equipo:

* identificador de la persona (el SGI no almacena información de la persona, únicamente su identificador)
* mes de inicio de la participación en el equipo
* mes de finalización de la participación en el equipo
* rol con el que participa en el equipo
* si el rol tiene marcado el flag de principal o no
* en caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| SOLICITUD\_ID | Identificador de la solicitud. |
| PERSONA\_REF | Identificador de la persona en el sistema de personas de la Universidad |
| MES\_INICIO | Mes de inicio de la participación en el equipo. |
| MES\_FIN | Mes de finalización de la participación en el equipo. |
| ROL\_PROYECTO\_ID | Identificador del rol del miembro en el equipo. |
| ROL\_PROYECTO\_ABREVIATURA | Abreviatura o código identificativo del rol del miembro en el equipo. |
| ROL\_PRINCIPAL | Si el rol es un rol principal o no. |
| ORDEN | En caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO |

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_SOLICITUD\_EQUIPO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_SOLICITUD_EQUIPO "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_SOLICITUD_EQUIPO")

## ES\_INVENCION

Listado de invenciones del SGI que cumplen la siguiente condición:

* activas

En el SGI se registran invenciones donde un tipo de ellas son las Patentes.



| Campo | Comentario |
| --- | --- |
| ID | Identificador único de la invención. Clave primaria. |
| TIPO\_PROTECCION\_ID | Identificador del tipo de protección. Los tipos de protección en el SGI son configurables.Una patente puede ser un tipo de protección de Propiedad industrial. |
| TIPO\_PROTECCION\_NOMBRE | Nombre del tipo de protección. |
| TITULO | Título de la invención |
| FECHA\_COMUNICACION | Fecha de la comunicación de la invención |

NOTAS:

* REFERENCIA
	+ No existe un campo referencia de la invención en el SGI. Una invención puede tener una o varias solicitudes de protección asociadas. Una solicitud de protección tiene el campo "Número solicitud". Ver vista ES\_INVENCIONES\_SOL\_PROTECCION
* ID\_GESTION\_ECONOMICA
	+ En el SGI no se guarda el identificador del SGE, sino que es en el sistema de gestión económica (SGE) donde se almacena la relación entre una invención del SGI y un identificador SGE.
* FECHA\_INICIO, FECHA\_FIN
	+ En el SGI una invención no tiene con tal ninguna fecha inicio o fin. Son las solicitudes de protección las que tienen fechas asociadas. Una invención puede tener una o varias solicitudes de protección asociadas. Una solicitud de protección tiene los campos: Fecha solicitud/prioridad y Fecha fin prioridad/presentación a fases nacionales/regionales.

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_INVENCION](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_INVENCION "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_INVENCION")

## ES\_INVENCION\_SOL\_PROTECCION

Listado de solicitudes de protección de las distintas invenciones del SGI que cumplen la siguiente condición:

* activas



| Campo | Comentario |
| --- | --- |
| ID | Identificador único de la solicitud de protección. Clave primaria. |
| INVENCION\_ID | Identificador de la invención a la que pertenece. |
| NUMERO\_SOLICITUD | Número de la solicitud que es comunicada por el organismo donde se solicita. |
| FECHA\_PRIORIDAD\_SOLICITUD | Fecha de la solicitud o fecha de prioridad.Hay dos casuísticas que determinan el texto a mostrar como nombre para este campo:1. Para cualquier vía asociada a tipos de protección de "Propiedad industrial" excepto las vías del tipo extensión internacional (PCT p.ej.), y solo en caso de que sea la primera solicitud, el texto a mostrar como nombre del campo será "Fecha de prioridad". 2. Para cualquier vía asociada a tipos de protección de "Propiedad intelectual", para las vías del tipo extensión internacional (PCT p.ej.) y para solicitudes posteriores a la primera que se encuentren en el caso descrito en el punto 1, el texto a mostrar como nombre del campo será "Fecha de solicitud". |
| FECHA\_FIN\_PRIOR\_PRES\_FAS\_NAC\_REC | Fecha de finalización de la prioridad de la solicitud o de fin del plazo de presentación de solicitudes en fases nacionales/regionales. Si la solicitud NO es la primera solicitud de la invención, este campo no será visible (no se informará) salvo que la vía de protección sea del tipo extensión internacional \= "Sí" (PCT p.ej.). |

Ver diseño en [SGI \- Vistas Estadísticas\#ES\_INVENCION\_SOL\_PROTECCION](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_INVENCION_SOL_PROTECCION "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-interface-integracion/sgi-vistas/sgi-vistas-estadisticas.md#SGIVistasEstadísticas-ES_INVENCION_SOL_PROTECCION")

## ES\_ARTICULO

Listado de publicaciones cuyo campo tipo de publicación es "Artículo científico" y que han sido enviados al módulo de Producción científica del SGI para su baremación. La publicación debe cumplir las siguientes condiciones:

* tipo publicación "Artículo científico"



| Campo | Comentario |
| --- | --- |
| ID | Identificador único de la publicación. Clave primaria |
| TITULO | Título del artículo científico, se correponde con el campo CVN “060\.010\.010\.030” de la Fecyt. |
| FECHA\_PUBLICACION | Fecha de publicación del artículo científico, se correponde con el campo CVN “060\.010\.010\.140” de la Fecyt. |
| REVISTA | Nombre de la publicación (revista), se correponde con el campo CVN “060\.010\.010\.210” de la Fecyt. |
| INTERNACIONAL | Indica si el artículo es internacional o no. Posibles valores:* true * false |
| PERTENECE\_GRUPO | Será 1 si al menos uno de los autores a fecha 31 de diciembre de la fecha de publicación pertenecia a un grupo de investigación del SGI. |

NOTAS:

* CUARTIL
	+ Se puede calcular a partir de los campos “posición publicación” y “número revistas” de los índice de impacto. Pero en el SGI pueden llegar varios índices de impacto con fuente de impactos distintas (SJE, JCR, etcc) y en años distintos. Por lo que se puede consultar dicha información en la vista ES\_ARTICULO\_INDICE\_IMPACTO

## ES\_ARTICULO\_INDICE\_IMPACTO

Listado de los índices de impacto de un artículo científico. Una artículo puede tener varios índices de impacto con fuente de impactos distintas (SJE, JCR, etc...) y en años distintos.



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria |
| ARTICULO\_ID | Identificador del artículo. |
| TIPO\_FUENTE\_IMPACTO | Fuente de impacto. Uno de los siguientes valores:* 000 (representa a WOS \- JCR) * 010 (representa a SCOPUS \- SJR) * 020 (representa a INRECS) * BCI (representa a BCI) * ICEE (representa a ICEE) * DIALNET (representa a DIALNET) * CITEC (representa a CITEC) * SCIMAGO (representa a SCIMAGO o ERI) * ERIH (representa a ERIH) * MIAR (representa a MIAR) * FECYT (representa a FECYT) * GII\_GRIN\_SCIE (representa a GII\_GRIN\_SCIE) * CORE (representa a CORE) * OTHERS (representa a Otros) |
| OTRA\_FUENTE\_IMPACTO | En el caso de que en el campo TIPO\_FUENTE\_IMPACTO tenga el valor OTHERS en este campo se puede especificar el nombre de la fuente de impacto. |
| ANIO | Año en el que se estable el valor del índice para la fuente de impacto. |
| CUARTIL | Cuartil calculado a partir de los campos POSICION\_PUBLICACION (posición que ocupa la revista dentro de su categoría) y NUMERO\_REVISTAS (número total de revistas existentes en su categoría). Unos de los siguientes valores:* 1 * 2 * 3 * 4 |




