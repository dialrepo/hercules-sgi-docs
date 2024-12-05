# Hércules : ESB \- SGI \- Proyectos











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Proyecto | Contiene los datos generales de un proyecto. De esta entidad se pueden obtener los campos:* Nombre del proyecto * Fecha de inicio * Fecha de finalización * Ámbito geográfico * Cod. según financiadora * Tipo de proyecto |
| ContextoProyecto | Contiene información del contexto del proyecto. De esta entidad se puede obtener el campo:* Resultados relevantes |
| ProyectoEquipo | Contiene la información de las personas que forman parte del equipo del proyecto. De esta entidad de puede obtener los campos:* Número de investigadores/as participantes * Grado de contribución * Tipo de participación * Posición * Nombre * Apellidos |
| ProyectoEntidadGestora | Contiene los datos de una entidad gestora. Un proyecto sólo se le permite tener una entidad gestora. De esta entidad se puede obtener el campo:* Entidad realización |
| ProyectoEntidadConvocante | Contiene los datos de una entidad convocante. Un proyecto puede tener varian entidades convocantes. De esta entidad de puede obtener los campos:* Nombre del programa * Entidad |
| ProyectoEntidadFinanciadora | Contiene los datos de una entidad financiadora. Un proyecto puede tener varian entidades financiadoras. De esta entidad de puede obtener los campos:* Porcentaje en subvención * Porcentaje en crédito * Porcentaje mixto * Entidad |
| ProyectoClasificacion | Contiene la referencia a la clasificación. Para ver el detalle de la clasificación habria que consultar al SGO (sgo/clasificaciones/{refencia}) |

### Modelo lógico

[CSP \- PRO \- Modelo lógico](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-csp/csp-pro-proyectos/csp-pro-modelo-logico-diagrama.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-csp/csp-pro-proyectos/csp-pro-modelo-logico-diagrama.md")

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

#### Definición de los objetos

##### Proyecto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del proyecto. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| convocatoriaId | Long | Identificador de la convocatoria del proyecto en caso de que la convocatoria este registrada en el SGI. |
| solicitudId | Long | Identificador de la solicitud de convocatoria que dió lugar al proyecto. |
| estado | EstadoProyecto | Entidad que representa un estado del proyecto. |
| titulo | String | Título del proyecto. |
| acronimo | String | Identificador corto del proyecto. |
| codigoExterno | String | Código o referencia con el que se identifica el proyecto en la entidad convocante externa (en caso de existir). |
| fechaInicio | String | Fecha de inicio del proyecto. |
| fechaFin | String | Fecha de fin del proyecto. |
| fechaFinDefinitiva | String | Fecha de fin definitiva del proyecto. Se informará de esta fecha en el caso de situaciones como rescisiones o renuncias al proyecto, o bien puede ser informada automáticamente por el sistema al registrar una prórroga sobre el proyecto. Si está informada prevalecerá sobre la fecha de fin y será la considerada como fecha de finalización del proyecto, independientemente de que sea mayor o menor que la fecha de fin inicial. |
| unidadGestionRef | String | Identificador de la Unidad de gestión (OTRI, OPE, UGI, etc) a la que pertenece el proyecto. |
| modeloEjecucion | ModeloEjecucion | Entidad que representa un modelo de ejecución. |
| finalidad | TipoFinalidad | Entidad que representa la finalidad del proyecto. |
| convocatoriaExterna | String | Permite mostrar o recoger la identificación externa de la convocatoria, dependiendo si el proyecto se asocia o no a una convocatoria registrada en el SGI. |
| ambitoGeografico | TipoAmbitoGeografico | Entidad que representa el ámbito geográfico. |
| confidencial | Boolean | Indica si el proyecto es confidencial. |
| clasificacionCVN | String | Indica el apartado del CVN al que correspondería el proyecto. Tiene los siguientes valores:* AYUDAS * COMPETITIVOS * NO\_COMPETITIVOS |
| coordinado | Boolean | Indica si el proyecto se realizará de forma coordinada con otros socios. |
| colaborativo | Boolean | Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| coordinadorExterno | Boolean | Indica quién actúa como coordinador del proyecto. Un valor "false" indica que es la propia universidad quien actúa en calidad de coordinador del proyecto. En caso que quien coordine el proyecto no sea la universidad sino uno de los socios, se indicará en este campo el valor "true". |
| timesheet | Boolean | Indica si el proyecto requiere gestión de Timesheet. |
| permitePaquetesTrabajo | Boolean | Indica si el proyecto requiere gestión de paquetes de trabajo en los Timesheet. |
| costeHora | Boolean | Indica si el proyecto requerirá realizar el cálculo de coste de hora de personal. |
| tipoHorasAnuales | String | Sólo se informará si se el campo "costeHora" tiene valor "true".Indica el criterio de las horas anuales para el cálculo del coste/hora.Tiene los siguientes valores:* CATEGORIA * FIJO * REAL |
| iva | ProyectoIva | Entidad que representa el IVA del proyecto. |
| causaExencion | String | Indica la causa de exención de IVA.Tiene los siguientes valores:* NO\_SUJETO * NO\_SUJETO\_CON\_DEDUCCION * NO\_SUJETO\_SIN\_DEDUCCION * SUJETO\_EXENTO |
| observaciones | String | Observaciones de carácter interno del proyecto. |
| anualidades | Boolean | Indica si en el presupuesto se va a introducir por anualidades o no. |
| importePresupuesto | Numérico | Es el importe presupuesto correspondiente al proyecto a desarrollar por la Universidad en caso de que lo deseen introducir de forma manual y no a través del detalle del presupuesto (entidad "AnualidadGasto"). |
| importeConcedido | Numérico | Es el importe concedido correspondiente al proyecto a desarrollar por la Universidad en caso de que lo deseen introducir de forma manual y no a través del detalle del presupuesto (entidad "AnualidadGasto"). |
| importePresupuestoSocios | Numérico | Es el importe total presupuestado por todos los socios (adicionales a la Universidad) que participan en el proyecto en caso de que lo deseen introducir de forma manual y no a través del importe presupuestdo de los socios (entidad "ProyectoSocio"). |
| importeConcedidoSocios | Numérico | Es el importe total concedido por todos los socios (adicionales a la Universidad) que participan en el proyecto en caso de que lo deseen introducir de forma manual y no a través del importe concedido de los socios (entidad "ProyectoSocio"). |
| totalImportePresupuesto | Numérico | Es el importe total presupuestado del proyecto (Universidad y socios) en caso de que lo deseen introducir de forma manual y no a través del detalle del presupuesto (entidad "AnualidadGasto") y del importe presupuestado de los socios (entidad "ProyectoSocio"). |
| totalImporteConcedido | Numérico | Es el importe total concedido del proyecto (Universidad y socios) en caso de que lo deseen introducir de forma manual y no a través del detalle del presupuesto (entidad "AnualidadGasto") y del importe presupuestado de los socios (entidad "ProyectoSocio"). |
| activo | Boolean | Indica si esta activa o no. En caso de no estar activo se considera como un proyecto eliminado del sistema. Se realizan borrados lógicos por si el gesto o administrador desean recuperar un proyecto eliminado. |

##### EstadoProyecto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del estado del proyecto |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identificador del proyecto. |
| estado | String | Estado del proyecto. Tiene los siguientes valores:* BORRADO * CONCEDIDO * RENUNCIADO * RESCINDIDO |
| fechaEstado | String | Fecha en la que se alcanzó el estado. |
| comentario | String | Comentario que se pude añadir cuando se produce el cambio de estado para recoger cualquier observación. |

##### ModeloEjecucion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del modelo de ejecución |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre del modelo de ejecución |
| descripcion | String | Descripción del modelo de ejecución |
| activo | Boolean | Indica si el registro está activo o no. A través de este atributo se da cobertura al borrado lógico de los registros de esta entidad. |
| externo | Boolean | Flag que distingue los modelos de ejecución que representan proyectos externos (proyectos registrados en el SGI en los que participa personal investigador de la Universidad pero cuya gestión y responsabilidad recae sobre otra Universidad). |
| contrato | Boolean | Flag que distingue los modelos de ejecución basados en facturación (contratos). El SGI utiliza este campo para mostrar determinados apartados. |

##### TipoFinalidad



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del tipo de finalidad. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre del tipo de finalidad. |
| descripcion | String | Descripción del tipo de finalidad. |
| activo | Boolean | Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de finalidad con al flag "activo" a "false" no estará disponible para su vinculación a los modelos de ejecución |

##### TipoAmbitoGeografico



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del tipo de ámbito geográfico. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre del ámbito geográfico |
| activo | Boolean | Campo utilizado para dar soporte al borrado lógico de los registros de esta entidad. Un ámbito geográfico no activo no se está disponible para su selección a nivel de interface de usuario. |

##### ProyectoIva



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del tipo de finalidad. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identificador del proyecto |
| iva | Integer | Valor del porcentaje del IVA. |
| fechaInicio | String | Fecha de inicio en la que empieza a aplicarse el porcentaje de IVA al que refiere el registro. |
| fechaFin | String | Fecha de fin en la que deja de aplicarse el porcentaje de IVA al que refiere el registro. |



**Proyecto** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": "06275880",
	"lastModifiedDate": "2021-08-19T10:17:29.386Z",
	"id": 1,
	"convocatoriaId": 2,
	"solicitudId": null,
	"estado": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 1,
		"proyectoId": 1,
		"estado": "BORRADOR",
		"fechaEstado": "2021-01-31T23:00:00Z",
		"comentario": null
	},
	"titulo": "Proyecto 1 CGF/OPE-1",
	"acronimo": "PCGFOPE1",
	"codigoExterno": "PCGFOPE1",
	"fechaInicio": "2021-01-31T23:00:00Z",
	"fechaBase": "2021-04-30T22:00:00Z",
	"fechaFin": "2022-12-31T22:59:59Z",
	"fechaFinDefinitiva": null,
	"unidadGestionRef": "2",
	"modeloEjecucion": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 7,
		"nombre": "Proyecto OPE",
		"descripcion": "",
		"activo": true,
        "externo": false,
        "contrato": false
	},
	"finalidad": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 1,
		"nombre": "Proyecto I+D",
		"descripcion": null,
		"activo": true
	},
	"convocatoriaExterna": "CGF/OPE-01",
	"ambitoGeografico": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"activo": true,
		"id": 5,
		"nombre": "Europeo"
	},
	"confidencial": false,
	"clasificacionCVN": "COMPETITIVOS",
	"coordinado": false,
	"colaborativo": null,
	"coordinadorExterno": null,
	"timesheet": true,
	"permitePaquetesTrabajo": false,
	"costeHora": true,
	"tipoHorasAnuales": "CATEGORIA",
	"iva": {
		"createdBy": "06275880",
		"creationDate": "2021-08-19T10:17:29.384Z",
		"lastModifiedBy": "06275880",
		"lastModifiedDate": "2021-08-19T10:17:29.384Z",
		"id": 10,
		"proyectoId": 1,
		"iva": 11,
		"fechaInicio": "2021-08-20T00:00:00.384Z",
		"fechaFin": null
	},
	"causaExencion": null,
	"observaciones": "",
	"anualidades": true,
	"importePresupuesto": null,
	"importeConcedido": null,
	"importePresupuestoSocios": null,
	"importeConcedidoSocios": null,
	"totalImportePresupuesto": null,
	"totalImporteConcedido": null,
	"activo": true
}
```


##### ProyectoContexto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del proyecto. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| objetivos | String | Texto libre para recoger cuales serán los objetivos del proyecto. |
| intereses | String | Texto libre para recoger los motivos que justifican el desarrollo del proyecto y/o los intereses del mismo. |
| resultadosPrevistos | String | Texto libre para recoger los resultados esperados del proyecto. |
| propiedadResultados | String | Permitirá recoger quién es el propietario de los resultados que se generen a raíz de la ejecución del proyecto.Tiene los siguientes valores:* COMPARTIDA * ENTIDAD\_FINANCIADORA * SIN\_RESULTADOS * UNIVERSIDAD |
| areaTematicaConvocatoria | AreaTematica | Entidad que representa el área temática elegida en la convocatoria en caso de que el proyecto este relacionado con una convocatoria del SGI. |
| areaTematica | AreaTematica | Entidad que representa el área temática en la que se enmarca el proyecto. |

  


##### AreaTematica



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del área temática |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre del área temática. El nombre del nodo raíz del árbol da el nombre al listado de áreas temáticas. |
| descripcion | String | Descripción del área temática. |
| padre | AreaTematica | Entidad que representa el área temática padre.El listado de áreas temáticas se implementa con una estructura de árbol jerárquico. Este campo establece la jerarquía del registro actual con su superior. El registro para el que este campo tome el valor "null" será el nodo raíz y será el que otorgue el nombre al listado de áreas temáticas |
| activo | Boolean | Flag a través del que se implementa el borrado lógico de los registros de esta tabla. Un elemento con el flag "activo" a "false" no estará disponible para su vinculación a las convocatorias, solicitudes y proyectos. Si el elemento que no está activo es el nodo raíz del árbol será el listado completo que no esté visible. Si el elemento que no está activo es un nodo interno, será este nodo y todos sus descendientes los que no estén disponibles. |



**ContextoProyecto** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": "06275880",
	"lastModifiedDate": "2021-08-19T08:40:16.806Z",
	"id": 1,
	"proyectoId": 1,
	"objetivos": "explicación de los objetivos del proyecto",
	"intereses": "explicación de la Justificación e intereses",
	"resultadosPrevistos": "descripción de los resultados esperados",
	"propiedadResultados": "UNIVERSIDAD",
	"areaTematicaConvocatoria": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 61,
		"nombre": "BIO",
		"descripcion": "Biociencias y biotecnología",
		"padre": {
			"createdBy": null,
			"creationDate": null,
			"lastModifiedBy": null,
			"lastModifiedDate": null,
			"id": 1,
			"nombre": "AEI",
			"descripcion": "Estructura de áreas y paneles científico técnicos de la Agencia Estatal de Investigación",
			"padre": null,
			"activo": true
		},
		"activo": true
	},
	"areaTematica": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 62,
		"nombre": "BIF",
		"descripcion": "Biología integrativa y fisiología",
		"padre": {
			"createdBy": null,
			"creationDate": null,
			"lastModifiedBy": null,
			"lastModifiedDate": null,
			"id": 61,
			"nombre": "BIO",
			"descripcion": "Biociencias y biotecnología",
			"padre": {
				"createdBy": null,
				"creationDate": null,
				"lastModifiedBy": null,
				"lastModifiedDate": null,
				"id": 1,
				"nombre": "AEI",
				"descripcion": "Estructura de ¡reas y paneles cientÃ­fico tÃ©cnicos de la Agencia Estatal de InvestigaciÃ³n",
				"padre": null,
				"activo": true
			},
			"activo": true
		},
		"activo": true
	}
}
```


##### ProyectoEquipo



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad proyecto equipo. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identifcador del proyecto. |
| personaRef | String | Identificador o Referencia de la persona miembro del equipo de proyecto. Es el identificador de la persona en el sistema de personas de la Universidad. |
| rolProyecto | RolProyecto | Entidad que representa el rol. Son los roles que puede tener el equipo de proyecto.Ejemplos:* Investigador/a principal * Co\-Investigador/a PrincipalColaborador * Asesor científico * Colaborador E.I. |
| fechaInicio | String | Fecha de inicio para la participación del miembro del equipo de proyecto con el rol seleccionado. |
| fechaFin | String | Fecha de inicio para la participación del miembro del equipo de proyecto con el rol seleccionado. |
| horasDedicacion | Numérico | Horas totales de dedicación al proyecto. Se utiliza para realizar la propuesta de distribución del timesheet. |

##### RolProyecto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del rol proyecto. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| abreviatura | String | Abreviatura identificativa del rol. |
| nombre | String | Nombre identificativo del rol. |
| descripcion | String | Campo de texto de introducción libre para descripción ampliada. |
| rolPrincipal | Boolean | Indica si el rol es el rol principal. No se limita el número de roles para los que se marque el indicador de rol principal, pudiendo estar mas de un rol con el indicador marcado. |
| equipo | String | Tipo Equipo Proyecto. Tiene los siguientes valores:* INVESTIGACION * TRABAJO |
| orden | String | Tipo de Orden. El orden sólo se indica para aquellos roles que tengan marcado el flag de investigador principal, para indicar si es de orden 1 o de orden 2\. Tiene los siguientes valores:* PRIMARIO * SECUNDARIO |
| activo | Boolean | Indica si esta activo o no. En caso de no estar activo no se podrá asignar a ningún miembro del equipo de una solicitud ni a los miembros del equipo de los socios de una solicitud. |



**ProyectoEquipo** Ampliar origen



```
	{
		"createdBy": "06275880",
		"creationDate": "2021-08-19T08:37:32.853Z",
		"lastModifiedBy": "06275880",
		"lastModifiedDate": "2021-08-19T08:37:32.853Z",
		"id": 35,
		"proyectoId": 1,
		"personaRef": "27477512",
		"rolProyecto": {
			"createdBy": null,
			"creationDate": null,
			"lastModifiedBy": null,
			"lastModifiedDate": null,
			"id": 1,
			"abreviatura": "IP",
			"nombre": "Investigador/a principal",
			"descripcion": "Investigador/a principal",
			"rolPrincipal": true,
			"orden": "PRIMARIO",
			"equipo": "INVESTIGACION",
			"activo": true
		},
		"fechaInicio": null,
		"fechaFin": null,
		"horasDedicacion": null
	}

```


##### ProyectoEntidadGestora



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad gestora del proyecto. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identifcador del proyecto. |
| entidadRef | String | Referencia o Identificador de la entidad en el sistema externo de Empresas.Ver diseño del API de empresas para obtener el detalle de una empresa a a partir de su identificador: [SGI \- ESB \- SGEMP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md") |



**ProyectoEntidadGestora** Ampliar origen



```
	{
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 1,
		"proyectoId": 1,
		"entidadRef": "G0021150"
	}


```


  


##### ProyectoEntidadConvocante



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad convocante del proyecto. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identifcador del proyecto. |
| entidadRef | String | Referencia o Identificador de la entidad en el sistema externo de Empresas.Ver diseño del API de empresas para obtener el detalle de una empresa a a partir de su identificador: [SGI \- ESB \- SGEMP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md") |
| programaConvocatoria | Programa | Entidad que representa el Programa al que se asocia la entidad convocante en la Convocatoria. En el caso de que el proyecto este relacionado con una convocatoria del SGI, en este campo se guarda el programa que se haya definido en la convocatoria para la entidad convocante. |
| programa | Programa | Entidad que representa el del Programa al que se asocia la entidad convocante en el proyecto. |

##### Programa



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del programa. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre del programa, el que se mostrará en la visualización del árbol del plan de investigación en la gestión de convocatorias y proyectos. |
| descripcion | String | Descripción del programa. |
| padre | Programa | Entidad que representa el programa padre.Los planes de investigación se implementan con una estructura de árbol jerárquico. Este campo establece la jerarquía del registro actual con su superior. El registro para el que este campo tome el valor "null" será el nodo raíz y será el que otorgue el nombre al plan de investigación. |
| activo | Boolean | Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un programa con el flag "activo" a "false" no estará disponible para ser seleccionado en convocatorias/proyectos. Si un elemento del árbol no está activo no estará disponible ni el propio elemento ni ninguno de sus descendientes. Si el elemento no activo es el nodo raíz del árbol el será el plan de investigación al completo el que no esté disponible. |



**ProyectoEntidadConvocante** Ampliar origen



```
	{
		"id": 1,
		"entidadRef": "G0021150",
		"programaConvocatoria": {
			"createdBy": null,
			"creationDate": null,
			"lastModifiedBy": null,
			"lastModifiedDate": null,
			"id": 34,
			"nombre": "Energy efficiency",
			"descripcion": null,
			"padre": {
				"createdBy": null,
				"creationDate": null,
				"lastModifiedBy": null,
				"lastModifiedDate": null,
				"id": 27,
				"nombre": "Energía segura, limpia y eficiente",
				"descripcion": null,
				"padre": {
					"createdBy": null,
					"creationDate": null,
					"lastModifiedBy": null,
					"lastModifiedDate": null,
					"id": 25,
					"nombre": "Retos sociales",
					"descripcion": null,
					"padre": {
						"createdBy": null,
						"creationDate": null,
						"lastModifiedBy": null,
						"lastModifiedDate": null,
						"id": 22,
						"nombre": "Horizonte 2020",
						"descripcion": "Programa Marco de Investigación e Innovación de la UE 2014-2020",
						"padre": null,
						"activo": true
					},
					"activo": true
				},
				"activo": true
			},
			"activo": true
		},
		"programa": {
			"createdBy": null,
			"creationDate": null,
			"lastModifiedBy": null,
			"lastModifiedDate": null,
			"id": 43,
			"nombre": "LC-SC3-EE-10-2018-2019-2020",
			"descripcion": "Mainstreaming energy efficiency finance",
			"padre": {
				"createdBy": null,
				"creationDate": null,
				"lastModifiedBy": null,
				"lastModifiedDate": null,
				"id": 34,
				"nombre": "Energy efficiency",
				"descripcion": null,
				"padre": {
					"createdBy": null,
					"creationDate": null,
					"lastModifiedBy": null,
					"lastModifiedDate": null,
					"id": 27,
					"nombre": "Energía segura, limpia y eficiente",
					"descripcion": null,
					"padre": {
						"createdBy": null,
						"creationDate": null,
						"lastModifiedBy": null,
						"lastModifiedDate": null,
						"id": 25,
						"nombre": "Retos sociales",
						"descripcion": null,
						"padre": {
							"createdBy": null,
							"creationDate": null,
							"lastModifiedBy": null,
							"lastModifiedDate": null,
							"id": 22,
							"nombre": "Horizonte 2020",
							"descripcion": "Programa Marco de Investigación e Innovación de la UE 2014-2020",
							"padre": null,
							"activo": true
						},
						"activo": true
					},
					"activo": true
				},
				"activo": true
			},
			"activo": true
		}
	}

	
		
```


##### ProyectoEntidadFinancidora



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad financiadora del proyecto. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identifcador del proyecto. |
| entidadRef | String | Referencia o Identificador de la entidad en el sistema externo de Empresas.Ver diseño del API de empresas para obtener el detalle de una empresa a a partir de su identificador: [SGI \- ESB \- SGEMP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md") |
| fuenteFinanciacion | FuenteFinanciacion | Entidad que representa una fuente de financiación. |
| tipoFinanciacion | TipoFinanciacion | Entidad que representa un tipo de financiación. |
| porcentajeFinanciacion | Numérico | Porcentaje de financiación de la entidad financiadora. |
| importeFinanciacion | Numérico | Importe de financiación de la entidad. |
| ajena | Boolean | Indica si se trata de una entidad financiadora ajena a la convocatoria o no. |

  


##### FuenteFinanciacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la fuente de financiación |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre identificativo de la fuente de financiación. |
| descripcion | String | Descripción de la fuente de financiación. |
| fondoEstructural | Boolean | Flag que identifica si la fuente de financiación procede o no de fondos estructurales europeos. |
| tipoAmbitoGeografico | TipoAmbitoGeografico | Entidad que representa un ámbito geográfico. |
| tipoOrigenFuenteFinanciacion | TipoOrigenFuenteFinanciacion | Entidad que representa un tipo de origen de fuente de financiación. |
| activo | Boolean | Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Una fuente de financiación con el campo "activo" a "false" no estará disponible para ser asociada a ninguna entidad financiadora en convocatorias/proyectos. |

##### TipoOrigenFuenteFinanciacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del tipo de origen de fuente de financiación |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre del tipo de origen de fuente de financiación. |
| activo | Boolean | Flag a través del que se implementa el borrado lógico de los registros de esta tabla. Un tipo de origen de fuente de financiación con el campo "activo" a "false" no estará disponible para la creación/modificación de las fuentes de financiación. |

##### TipoFinanciacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del tipo de financiación. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre del tipo de financiación. |
| descripcion | String | Descripción del tipo de financiación. |
| activo | Boolean | Flag a través del que se implementa el borrado lógico de los registros de esta tabla. |



**ProyectoEntidadFinancidora** Ampliar origen



```
	{
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 1,
		"proyectoId": 1,
		"entidadRef": "G0021150",
		"fuenteFinanciacion": {
			"createdBy": null,
			"creationDate": null,
			"lastModifiedBy": "02221287",
			"lastModifiedDate": "2021-07-20T09:14:57.558Z",
			"activo": true,
			"id": 4,
			"nombre": "Horizonte 2020",
			"descripcion": null,
			"fondoEstructural": false,
			"tipoAmbitoGeografico": {
				"createdBy": null,
				"creationDate": null,
				"lastModifiedBy": null,
				"lastModifiedDate": null,
				"activo": true,
				"id": 5,
				"nombre": "Europeo"
			},
			"tipoOrigenFuenteFinanciacion": {
				"createdBy": null,
				"creationDate": null,
				"lastModifiedBy": null,
				"lastModifiedDate": null,
				"activo": true,
				"id": 1,
				"nombre": "Público"
			}
		},
		"tipoFinanciacion": {
			"createdBy": null,
			"creationDate": null,
			"lastModifiedBy": null,
			"lastModifiedDate": null,
			"id": 1,
			"nombre": "Subvención",
			"descripcion": null,
			"activo": true
		},
		"porcentajeFinanciacion": 80,
		"importeFinanciacion": null,
		"ajena": false
	}


```


##### ProyectoAnualidadResumen



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la anualidad del proyecto. |
| anio | Long | Año de la anualidad |
| fechaInicio | String | Fecha de inicio de la anualidad |
| fechaFin | String | Fecha de fin de la anualidad |
| totalGastosPresupuesto | Numérico | Total de los gastos presupuestados de la anualidad. |
| totalGastosConcedido | Numérico | Total de los gastos concedidos de la anualidad. |
| totalIngresos | Numérico | Total de los ingresos de la anualidad. |
| presupuestar | Boolean | Indica si es necesario notificar al sistema de gestión económica el presupuesto de la anualidad. Si toma el valor "Sí" indica que se debe de notificar al sistema de gestión económica el detalle del presupuesto para la anualidad. |
| enviadoSge | Boolean | Indica si el presupuesto de la anualidad ha sido notificado o no al sistema de gestión económica. |



**ProyectoAnualidadResumen** Ampliar origen



```
	{
		"id": 1,
		"anio": 20121,
		"fechaInicio": "2020-12-31T23:00:00Z"
		"fechaFin": "2021-12-31T22:59:59Z"
		"totalGastosPresupuesto": 5000,
		"totalGastosConcedido": 5000,
		"totalIngresos": null,
		"presupuestar": false,
        "enviadoSge": false
	}


```


##### ProyectoPresupuestoTotales



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| importeTotalPresupuestoUniversidadSinCosteIndirecto | BigDecimal | Importe total (suma del importe de todas las anualidades) presupuestado a la Universidad para el desarrollo del proyecto, asociado a conceptos de gasto que no representan costes indirectos. |
| importeTotalPresupuestoSocios | BigDecimal | Importe total (suma del importe de todas las anualidades) presupuestado al resto de socios de la Universidad para el desarrollo del proyecto. |
| importeTotalConcedidoUniversidadSinCosteIndirecto | BigDecimal | Importe total (suma del importe de todas las anualidades) concedido a la Universidad para el desarrollo del proyecto, asociado a conceptos de gasto que no representan costes indirectos. |
| importeTotalConcedidoSocios | BigDecimal | Importe total (suma del importe de todas las anualidades) concedido al resto de socios de la Universidad para el desarrollo del proyecto. |
| importeTotalPresupuesto | BigDecimal | Importe total (suma del importe de todas las anualidades) presupuestado. |
| importeTotalConcedido | BigDecimal | Importe total (suma del importe de todas las anualidades) concedido. |
| importeTotalPresupuestoUniversidadCostesIndirectos | BigDecimal | Importe total (suma del importe de todas las anualidades) presupuestado a la Universidad para el desarrollo del proyecto, asociado a conceptos de gasto que representan costes indirectos. |
| importeTotalConcedidoUniversidadCostesIndirectos | BigDecimal | Importe total (suma del importe de todas las anualidades) concedido a la Universidad para el desarrollo del proyecto, asociado a conceptos de gasto que representan costes indirectos. |



**ProyectoPresupuestoTotales** Ampliar origen



```
{
    "importeTotalPresupuestoUniversidadSinCosteIndirecto": 71000.00,
    "importeTotalPresupuestoSocios": 0,
    "importeTotalConcedidoUniversidadSinCosteIndirecto": 63000.00,
    "importeTotalConcedidoSocios": 0,
    "importeTotalPresupuesto": 71000.00,
    "importeTotalConcedido": 63000.00,
    "importeTotalPresupuestoUniversidadCostesIndirectos": 0,
    "importeTotalConcedidoUniversidadCostesIndirectos": 0
}
```


##### ProyectoClasificacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad clasificación proyecto |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| proyectoId | Long | Identificador del proyecto. |
| clasificacionRef | String | Identificador de la clasificación.Ver diseño del API de SGO para obtener el detalle de una clasificación a a partir de su identificador: [SGI \- ESB \- SGO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md") |

##### NotificacionProyecto



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador de la entidad NotificacionProyectoExternoCVN |
| proyectoId | Long | Identificador del proyecto. |
| proyectoCVNId | String | Identificador único o referencia del proyecto/contrato registrado en el CVN |
| solicitanteRef | String | Referencia de la persona dentro del sistema de gestión de personas corporativo a la que pertenece el ítem proyecto/contrato registrado en CVN. |
| autorizacionId | Long | Identificador de la solicitud de autorización previamente remitido por el SGI |
| titulo | String | Campo título del ítem proyecto/contrato registrado en CVN.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.010 \- Nombre del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.010 \- Nombre del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| codExterno | String | Referencia que se le ha dado el proyecto en la entidad convocante/financiadora recogida en CVN.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.260 \- Código de proyecto según la entidad financiadora, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.110 \- Código de proyecto según la entidad financiadora, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| fechaInicio | String | Fecha de inicio del proyecto/contrato recogido en CVN.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.270 \- Fecha de inicio del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.180 \- Fecha de inicio del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| fechaFin | String | Fecha de fin del proyecto/contrato recogido en CVN.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.410 \- Fecha de finalización, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas. En el caso de que el proyecto se registre bajo el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas, este campo no estará disponible, al no estar contemplado en la norma CVN. |
| ambitoGeografico | String | Ámbito geográfico del proyecto/contrato recogido en CVN.La correspondencia con la norma FECYT de CVN es: se corresponde con el campo 050\.020\.010\.040 \- Ámbito del proyecto (o 050\.020\.010\.050 Ámbito del proyecto, otros si el valor es OTHERS) en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.040 Ámbito del proyecto (050\.020\.020\.050 Ámbito del proyecto, otros) , en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.Se enviará el texto, no el código. Es decir:* Autonómica * Nacional * Unión Europea * Internacional no UE * (texto del campo "Ámbito del proyecto, otros") |
| responsableRef | String | Referencia de la persona dentro del Sistema de gestión de personas corporativo asociado al dato recogido sobre el campo IP de CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.140 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.250 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| datosResponsable | String | Nombre de la persona que ocupa el cargo de IP del proyecto, recogida en CVN. En caso de que el IP del proyecto no este dado de alta en el Sistema de gestión de personas.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.140 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.250 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| entidadParticipacionRef | String | Referencia de la entidad dentro del Sistema de gestión de empresas corporativo asociado al dato recogido sobre el campo Entidad donde se desarrolla del CVN.La correspondencia con la norma FECYT será: campo  050\.020\.010\.100 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.370 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| datosEntidadParticipacion | String | Nombre de la entidad recogido sobre el campo Entidad donde se desarrolla del CVN. En caso de que la entidad no este dada de alta en el Sistema de gestión de empresas.La correspondencia con la norma FECYT será: campo  050\.020\.010\.100 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.370 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| nombrePrograma | String | Nombre del programa de financiación recogido en el CVN. Se corresponde con el campo 050\.020\.010\.250 Nombre del programa de financiación, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.170 Nombre del programa asociado al proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| importeTotal | Numérico | Importe total del proyecto/programa recogido en el CVN. Se corresponde con el campo 050\.020\.010\.290 Financiación del proyecto, cuantía total, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.200 Financiación del proyecto, cuantía total, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| porcentajeSubvencion | Numérico | Porcentaje subvencionado recogido en el CVN.Se corresponde con el campo 050\.020\.010\.310 Financiación del proyecto, porcentaje en subvención, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.220 Financiación del proyecto, porcentaje en subvención, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| documentoRef | String | Identificador del documento acreditativo de la concesión del proyecto |
| urlAcreditativa | String | URL acreditativa en repositorios ajenos a la Universidad |
| entidadesFinanciadoras | Lista\[EntidadFinanciadora] | Listado de entidades financiadoras del CVN. |

##### EntidadFinanciadora



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| entidadFinanciadoraRef | String | Referencia de la entidad dentro del Sistema de gestión de empresas corporativo asociado al dato recogido sobre el campo Entidades financiadoras del CVN. Se corresponde con el campo 050\.020\.010\.190 Entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.120 Nombre/s entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| datosEntidadFinanciadora | String | Nombre de la entidad recogido sobre el campo Entidades financiadoras del CVN. En caso de que la entidad no este dada de alta en el Sistema de gestión de empresas.Se corresponde con el campo 050\.020\.010\.190 Entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.120 Nombre/s entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |

##### PalabraClave



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único autogenerado de la palabra clave. |
| proyectoId | Long | Identificador del proyecto al que se asocia la palabra clave. |
| palabraClaveRef | String | Referencia a la palabra clave. Coincide con el texto de la palabra clave por ser único en el diccionario de todo el SGI. |



**PalabraClave** Ampliar origen



```
{
	"id": 12,	
	"proyectoId": 1,
	"palabraClaveRef": "Tratamiento experimental"
}
```


##### ProyectoAreaConocimiento



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| createdBy | String | Referencia al usuario creador del registro en los sistemas de la Universidad. |
| creationDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| lastModifiedBy | String | Referencia al último usuario que modificó el registro en los sistemas de la Universidad. |
| lastModifiedDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| id | Long | Identificador único del área de conocimiento del proyecto. |
| proyectoId | Long | Referencia al proyecto. |
| areaConocimientoRef | String | Referencia al área de conocimiento en los sistemas de la Universidad. |



**SolicitudAreaConocimiento** Ampliar origen



```
 {
    "createdBy": "03839481",
    "creationDate": "2022-05-12T12:30:48.741Z",
    "lastModifiedBy": "03839481",
    "lastModifiedDate": "2022-05-12T12:30:48.741Z",
    "id": 7,
    "proyectoId": 3,
	"areaConocimientoRef": "030"
}
```


#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgicsp**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /proyectos/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[Long] | Listado de Identificadores de Proyecto activos y que no sean confidenciales que han sido modificados, tanto la entidad Proyecto como en las siguientes entidades relacionadas:* ProyectoEquipo * ContextoProyecto * ProyectoEntidadGestora * ProyectoEntidadConvocante * ProyectoEntidadFinanciadora * ProyectoAnualidad * AnualidadGasto * EstadoProyecto * ProyectoArea * ProyectoConceptoGasto * ProyectoDocumento * ProyectoFacturacion * ProyectoFase * ProyectoHito * ProyectoPartida * ProyectoPeriodoJustificacion * ProyectoPeriodoSeguimiento * ProyectoProrroga * ProyectoProyectoSGE * ProyectoResponsableEconomico * ProyectoSocio  Se utilizarán los siguiente parámetros en la llamada al servicio* fechaModificacion: se le pasará la fecha a partir de la cual se quieren ver los cambios * estado: igual a concedido * clasificacionCVN: que tengan informado este campo con uno de los tres valores posibles  Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z";estado\=\="CONCEDIDO";clasificacionCVN\=in\=("COMPETITIVOS","NO\_COMPETITIVOS","AYUDAS") |
| GET | /proyectos | q\+s (query \+ sort)La query estará formada por:* cualquiera de los campos del objeto Proyecto | Lista\[Proyecto] | Listado de proyectos.*Ejemplo*:activo\=\=true |
| GET | /proyectos/{id} |  | Proyecto | Datos generales de un Proyecto |
| GET | /proyectos/{id}/contexto |  | ProyectoContexto | Datos del contexto de un Proyecto |
| GET | /proyectos/{id}/equipo |  | Lista\[ProyectoEquipo] | Listado de miembros del equipo de un Proyecto |
| GET | /proyectos/{id}/entidadgestoras |  | Lista\[ProyectoEntidadGestora] | Listado de entidades gestoras de un Proyecto |
| GET | /proyectos/{id}/entidadconvocantes |  | Lista\[ProyectoEntidadConvocante] | Listado de entidades convocantes de un Proyecto |
| GET | /proyectos/{id}/entidadfinanciadoras |  | Lista\[ProyectoEntidadFinanciadora] | Listado de entidades financiadoras de un Proyecto |
| GET | /proyectos/{id}/anualidades |  | Lista\[ProyectoAnualidadResumen] | Listado de anualidades de un Proyecto |
| GET | /proyectos/{id}/presupuesto\-totales |  | ProyectoPresupuestoTotales | Importes totales obtenidos de las anualidades de un proyecto (los importes del presupuesto introducidos manualmente se encuentran dentro del objeto Proyecto).*Ejemplo*:/proyectos/1/presupuesto\-totales |
| GET | /proyectos/{id}/proyectoclasificaciones |  | Lista\[ProyectoClasificacion] | Listado de clasificaciones de un Proyecto |
| GET | /proyectos/{id}/notificacionesproyectos |  | Lista\[NotificacionProyectoExternoCVN] | Listado de notificaciones de proyectos exterons del CVN asociados a un Proyecto del SGI |
| GET | /proyectos/{id}/areasconocimento |  | Lista\[ProyectoAreaConocimiento] | Listado de áreas de conocimiento de un Proyecto. |
| GET | /proyectos/{id}/palabrasclave |  | Lista\[PalabraClave] | Listado de palabras clave de un Proyecto. |




