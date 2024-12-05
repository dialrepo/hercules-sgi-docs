# Hércules : CSP \- Solicitudes



El registro de solicitudes y su ciclo de revisión y aprobación será interno al SGI.  En este ciclo intervendrán los ACT\- CSP\-001\-Investigador y los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la Unidad de gestión vinculada a la convocatoria, siempre en función de la configuración indicada en la convocatoria durante su registro en el SGI ([IU\-CSP\-0201\-013 \- Crear convocatoria \- Configuración de solicitudes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-014-crear-convocatoria-configuracion-de-solicitudes.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-014-crear-convocatoria-configuracion-de-solicitudes.md")), en referencia a la habilitación de la presentación de solicitudes en el SGI. La tramitación de la solicitud en el SGI no sustituirá a la tramitación de la misma en la plataforma correspondiente de la entidad gestora/convocante/financiadora de la convocatoria, salvo que se trate de convocatorias del plan propio.

El parámetro de "habilitación de la presentación de solicitudes en el SGI" solamente afectará al registro de las solicitudes por parte de los ACT\- CSP\-001\-Investigador. Los ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor siempre podrán registrar solicitudes sobre las convocatorias de sus Unidades de gestión, haciendo referencia siempre a un solicitante. Por norma general, las solicitudes de convocatorias externas (no plan propio) que deban tramitarse a través de los medios facilitados por las entidades convocantes, serán registradas con el parámetro "habilitación de la presentación de solicitudes en el SGI"  desactivado, de forma que serán los ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente quienes registren las solicitudes del SGI de forma paralela al proceso de registro que el  personal investigador vaya realizando en la entidad convocante. Si bien este no es un comportamiento limitado en el SGI, ni de base ni por implantación, ya que a través del apartado "Configuración solicitudes" las Unidades de gestión (ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor) podrían habilitar el registro de las solicitudes, por parte de los investigadores, para cualquier convocatoria registrada en el el SGI. 

El SGI implementará un flujo de estados único, independientemente de que se habilite o no el registro de las mismas para los investigadores e independientemente de cual sea la entidad convocante externa. Cada Universidad establecerá las pautas para hacer corresponder este flujo con el establecido por la entidad correspondiente que gestiona la convocatoria.

  


### Flujo de estados de solicitud

En el flujo de gestión de una solicitud interactuarán el ACT\- CSP\-001\-Investigador solicitante y los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la Unidad de gestión vinculada a la convocatoria (en función de los parámetros establecidos en el apartado "Configuración de solicitudes" de la Convocatoria). 

![](/attachments/597852891/597874959.jpg)

  


Desde el listado de convocatorias obtenido a través de las búsquedas facilitadas, los ACT\- CSP\-001\-Investigador podrán realizar la tramitación de la solicitud ([IU\-CSP\-0203\-002 \- Búsqueda directa y listado de convocatorias \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0203-busqueda-y-listado-de-convocatorias/iu-csp-0203-002-busqueda-directa-y-listado-de-convocatorias-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0203-busqueda-y-listado-de-convocatorias/iu-csp-0203-002-busqueda-directa-y-listado-de-convocatorias-investigador.md") e [IU\-CSP\-0203\-003 \- Búsqueda avanzada y listado de convocatorias \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0203-busqueda-y-listado-de-convocatorias/iu-csp-0203-003-busqueda-ampliada-y-listado-de-convocatorias-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0203-busqueda-y-listado-de-convocatorias/iu-csp-0203-003-busqueda-ampliada-y-listado-de-convocatorias-investigador.md")), siempre de acuerdo a los parámetros de registro de la convocatoria. 

El registro de la Solicitud también puede ser realizado directamente por los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la Unidad de gestión vinculada a la convocatoria. En este caso se deberán indicar los datos del solicitante (por medio del correspondiente buscador facilitado en la pantalla de Creación de solicitud).

Durante el proceso de registro, la Solicitud figurará con estado "Borrador", hasta que el usuario que esté realizando su creación la marque como "Solicitada".

Los estados del ciclo de vida de una solicitud son los siguientes:

* Borrador. Estado inicial. Es el estado en el que por defecto se creará la solicitud en el SGI.
* Solicitada: Una solicitud solo pasará a estado "solicitada" de manera manual, porque así lo indique o bien el  ACT\- CSP\-001\-Investigador que la haya creado o bien cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente, en caso que la solicitud no esté abierta al registro directo por parte de los ACT\- CSP\-001\-Investigador.
* En subsanación. Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Presentada subsanación. Estado intermedio. Este estado podrá ser marcado por ACT\-CSP\-001\-Investigador, en caso que la solicitud esté abierta al registro directo por parte de los ACT\- CSP\-001\-Investigador en el SGI y si el estado actual es "En subsanación", o por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente. Indicará que el ACT\-CSP\-001\-Investigador ha presentado la subsanación pertinente.
* Admitida provisional. Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Excluida provisional. Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Alegación fase admisión. Estado intermedio. Este estado podrá ser marcado por ACT\-CSP\-001\-Investigador, en caso que la solicitud esté abierta al registro directo por parte de los ACT\- CSP\-001\-Investigador en el SGI y si el estado actual es "Excluida provisional", o por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente. Indicará que el ACT\-CSP\-001\-Investigador ha presentado la alegación pertinente.
* Excluida definitiva. Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Recurso fase admisión. Estado intermedio. Este estado podrá ser marcado por ACT\-CSP\-001\-Investigador, en caso que la solicitud esté abierta al registro directo por parte de los ACT\- CSP\-001\-Investigador en el SGI y si el estado actual es "Excluida definitiva", o por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente. Indicará que el ACT\-CSP\-001\-Investigador ha presentado la alegación pertinente.
* Admitida definitiva. Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Denegada provisional: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Alegación fase provisional. Estado intermedio. Este estado podrá ser marcado por ACT\-CSP\-001\-Investigador, en caso que la solicitud esté abierta al registro directo por parte de los ACT\- CSP\-001\-Investigador en el SGI y si el estado actual es "Denegada provisional", o por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente. Indicará que el ACT\-CSP\-001\-Investigador ha presentado la alegación pertinente.
* Concedida provisional. Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador. Desde este estado ya estará disponible la opción de "Crear proyecto" desde la solicitud.
* Concedida provisional alegada: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador. Desde este estado ya estará disponible la opción de "Crear proyecto" desde la solicitud.
* Concedida provisional no alegada: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador. Desde este estado ya estará disponible la opción de "Crear proyecto" desde la solicitud.
* Denegada provisional alegada: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Denegada provisional no alegada: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Desistida. Estado final.  Este estado podrá ser marcado por ACT\-CSP\-001\-Investigador, en caso que la solicitud esté abierta al registro directo por parte de los ACT\- CSP\-001\-Investigador en el SGI y si el estado actual es "Borrador", "En subsanación", "Excluida provisional", "Excluida definitiva", "Denegada provisional", "Denegada", o por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente.
* Reserva provisional: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* En negociación: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Concedida: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador. Desde este estado ya estará disponible la opción de "Crear proyecto" desde la solicitud.
* Denegada. Estado final.  Este estado podrá ser marcado por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Recurso fase concesión: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Reserva: Estado intermedio, solo disponible para los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Firmada: Estado final.  Este estado podrá ser marcado por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Renunciada: Estado final.  Este estado podrá ser marcado por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente independientemente que la solicitud haya sido registrada en el SGI directamente por un ACT\- CSP\-001\-Investigador.
* Adicionalmente existirán dos estados, que solo afectarán a solicitudes de RRHH:
	+ Validada: Este estado puede ser marcado por el ACT\-CSP\-001\-Investigador tutor/a que hubiese sido especificado en la solicitud. ACT\-CSP\-001\-Investigador tutor/a podrá pasar a este estado solamente cuando la solicitud esté en "solicitada". Este estado también podrá ser marcado por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente, sin que exista en este caso ninguna restricción sobre el estado previo que tuviese la solicitud. A partir del estado  "Validada", independientemente de quien lo hubiera marcado, la solicitud podrá seguir teniendo el mismo comportamiento establecido para el resto de estados (desde "en subsanación" hasta "concedida", "denegada" o "renunciada").
	+ Rechazada: Este estado puede ser marcado por el ACT\-CSP\-001\-Investigador tutor/a que hubiese sido especificado en la solicitud. ACT\-CSP\-001\-Investigador tutor/a podrá pasar a este estado solamente cuando la solicitud esté en "solicitada". Este estado también podrá ser marcado por cualquier ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente, sin que exista en este caso ninguna restricción sobre el estado previo que tuviese la solicitud. A partir del estado  "Rechazada", independientemente de quien lo hubiera marcado, la solicitud podrá seguir teniendo el mismo comportamiento establecido para el resto de estados (desde "en subsanación" hasta "concedida", "denegada" o "renunciada").

Tanto ACT\-CSP\-004\-Administrador como ACT\-CSP\-003\-Gestor pueden pasar la solicitud de cualquier estado a cualquier otro estado (hacia delante y hacia atrás), no habrá ningún tipo de restricciones.

ACT\- CSP\-001\-Investigador como solicitante únicamente podrá realizar los siguientes cambios de estado:

* Del estado "Borrador" o "Rechazada" a los estados:  

	+ Solicitada
	+ Desistida
* Del estado  "En subsanación" a los estados:
	+ Presentada subsanación
	+ Desistida
* Del estado "Excluida provisional" a los estados:
	+ Alegación fase admisión
	+ Desistida"
* Del estado "Excluida definitiva" a los estados:
	+ Recurso fase admisión
	+ Desistida
* Del estado "Denegada provisional" a los estados:
	+ Alegación fase provisional
	+ Desistida
* Del estado "Denegada" a los estados:
	+ Recurso fase concesión
	+ Desistida

Las solicitudes de tipo "RRHH" implementará un flujo adicional que implica la participación de ACT\- CSP\-001\-Investigador que actúa como tutor/as del trabajo asociado. ACT\- CSP\-001\-Investigador como tutor/a podrá realizar los siguientes cambios de estado:

* Del estado "Solicitada" a los estados:  

	+ Validada
	+ Rechazada

  


El flujo de estados estará integrado con el módulo de avisos global al SGI, de forma que ACT\- CSP\-001\-Investigador y ACT\-CSP\-003\-Gestor reciban notificaciones de acuerdo a las modificaciones realizadas sobre el estado de la Solicitud.

### Descripción de la entidad "Solicitud"

Atendiendo al objetivo de homogeneización, el SGI se plantea con tres tipos de solicitud unificados:

* Solicitudes tipo "Proyecto"
* Solicitudes tipo "Grupo investigación"
* Solicitudes tipo "RRHH"

La vinculación del tipo de solicitud a la convocatoria se realiza en el apartado "Datos generales" de la Convocatoria, a través del campo "tipo solicitud SGI" ([IU\-CSP\-0201\-001 \- Crear convocatoria \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-001-crear-convocatoria-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-001-crear-convocatoria-datos-generales.md"))

Existirá un comportamiento común a todos los tipos de solicitudes así como una serie de apartados base que estarán presentes en todos los tipos de solicitud.  Con estos apartados base, que incluyen unos datos generales, documentos, hitos y el ciclo de estados, se permite disponer de una estructura mínima para la gestión de solicitudes genéricas confiriendo así al SGI la capacidad de gestionar en el futuro nuevos tipos de solicitud que no requieran un comportamiento especial. Los apartados comunes a todos los tipos de solicitud y que permiten realizar un tratamiento homogéneo de las mismas son:

* Datos generales.
* Documentos.
* Histórico de estados.
* Hitos.
* Palabras clave.

Además de estos apartados, en el caso concreto de las solicitudes de tipo "proyecto", se dispondrá de los apartados:

* Ficha general.
* Áreas de conocimiento.
* Clasificaciones (NABS, UNESCO, CNAE, etc.).
* Equipo.
* Responsable económico.
* Socios.
* Entidades financiadoras.
* Desglose presupuesto.
* Autoevaluación de ética.

  


Las solicitudes de tipo "grupo" no tendrán ningún apartado adicional específico.

Las solicitudes de tipo "RRHH" añadirán a los apartados base los siguientes:

* Información adicional del solicitante.
* Identificación del tutor/a.
* Memoria.
* Requisitos convocatoria.

  


Todos los apartados anteriores estarán disponibles para ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador, en cambio, ACT\-CSP\-001\-Investigador solamente tendrá disponibles:

* Datos generales.
* Documentos.
* Histórico de estados.
* Palabras clave.

Y dentro de los apartados propios de las solicitudes de tipo "proyecto" solamente tendrá disponibles los apartados:

* Ficha general (con ciertas limitaciones).
* Áreas de conocimiento.
* Clasificaciones (NABS, UNESCO, CNAE, etc.).
* Equipo (con ciertas limitaciones).
* Autoevaluación de ética.

  


El siguiente diagrama representa el modelo lógico de solicitudes (incluyendo las particularidades para las solicitudes de tipo "proyecto", "grupo" y "rrhh"):

![](/attachments/597852891/597865637.bmp)  


Se describen a continuación cada uno de los apartados en los que se estructura la información de la entidad "Solicitud" del módulo CSP. Estos cuatro apartados serán comunes independientemente del modelo de solicitud:

#### Datos generales

En el apartado datos generales se agrupará la siguiente información:

* Título. Campo obligatorio que dará lugar al título del proyecto o nombre del grupo en los pueda resultar derivando la solicitud.
* Investigador/a principal. Es la referencia al solicitante (ACT\- CSP\-001\-Investigador). Este dato podrá ser recogido de manera implícita por el SGI cuando sea el mismo investigador quien cumplimente el formulario, o bien deberá ser rellenado de manera explícita cuando la solicitud sea mecanizada desde la Unidad de gestión correspondiente, por ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador.
* Convocatoria. Relación automática establecida al crear una solicitud desde una convocatoria previamente registrada en el SGI.
* Identificación convocatoria externa. Campo libre para introducir un identificador de una convocatoria que no ésta registrada en el SGI.
* Estado actual de solicitud. Tanto el estado como la fecha (como el comentario cuando aplique) se irán historificando en el apartado "Histórico de estados".
* Comentario asociado al estado actual (solo disponible para los estados que requieran aportación de comentario).
* Código de registro interno: Al crear por primera vez la solicitud en el SGI (aunque se haga en este borrador), se generará un código automático, que incluirá la fecha y hora unidas a un sufijo previo. Este código de registro será único por solicitud y podrá ser utilizado posteriormente en listados con fines identificativos de la solicitud.
* Código externo. Código de registro en la entidad convocante.  Permitirá tener referenciado el identificador con el que se registra la solicitud en la entidad convocante.
* Listado de programas (subprogramas, modalidades, submodalidades): La solicitud podrá estar vinculada a un programa/subprograma/modalidad/submodalidad por cada una de las entidades convocantes, de acuerdo a la definición de la convocatoria.
* Observaciones: campo abierto para detallar cualquier observación genérica.
* A través del campo "tipo solicitud SGI" (tipo formulario solicitud en el modelo lógico anterior) se discriminará si la solicitud es de tipo "proyecto" ,"grupo" o "rrhh". En el caso de las solicitudes de tipo "grupo" existirá una segundo nivel (tipo solicitud grupo) para distinguir las solicitudes de constitución de grupos de las solicitudes de modificación de datos del grupo.

#### Documentos

Apartado para centralizar todos los documentos aportados a la solicitud.

Se mostrarán en forma de árbol, los documentos que se tienen que aportar obligatoriamente (porque son los documentos requeridos configurados en la convocatoria) y los propios documentos adicionales que se quieran aportar a la solicitud.

Los documentos requeridos serán considerados obligatorios. La comprobación de la obligatoriedad se limitará a detectar que se ha adjuntado un documento, nunca a verificar si el contenido se corresponde con lo esperado. Además del propio documento se dará opción a indicar  Comentarios sobre el mismo.

Desde el árbol de documentos, se podrá adjuntar cualquier documento. Para cada documento se podrá indicar:

* El tipo de documento. Los tipos disponibles serán los tipos de documento asociados a la fase de presentación de solicitudes configurada en la pantalla de "Configuración Solicitud" de la Convocatoria. En caso de no existir convocatoria o que no se haya definido dicha fase no se podrá seleccionar un tipo de documento.
* Un comentario de texto de libre introducción.

#### Hitos

Los hitos de la solicitud solo podrán ser registrador por las Unidad de gestión (ACT\-CSP\-004\-Administrador/ACT\-CSP\-003\-Gestor). Los ACT\- CSP\-001\-Investigador no podrán registrar hitos. Este apartado solo estará disponible en caso que la solicitud se asocie a una convocatoria del SGI. 

Los hitos permitirán dejar historificado los acontecimientos que se consideren relevantes. Un hito queda definido:

* Tipo de hito. Será seleccionable del listado de hitos configurados sobre el modelo de ejecución al que se ha asociado la convocatoria. Los tipos de hitos serán los disponibles para el modelo de ejecución al que pertenece la convocatoria sobre la que se crea la solicitud.
* Fecha. Fecha concreta en la que ocurre el hito.
* Comentario. Campo de texto de libre introducción.
* Genera aviso. Check que definirá si el hito creará un aviso en el módulo AVI del SGI ([CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md")).

Con la configuración de los tipos de hitos de solicitud, vinculados al modelo de ejecución, se dota al SGI de un mecanismo dinámico para el registro de fechas. La configuración de estos tipos de hitos está  abierta a los ACT\-CSP\-004\-Administrador de las Unidades de gestión. De esta forma las fechas a registrar en las solicitudes no están limitadas de antemano por el Sistema, dando así libertad en la gestión de solicitudes, a la vez que se mantiene una base común para todas las Unidades de gestión y a todo el SGI (Tipo de hito de solicitud). Esta tipificación común permitirá realizar búsquedas y clasificaciones posteriores en base a criterios homogéneos. 

Si por ejemplo resultase de interés recoger la fecha de resolución de convocatoria, o la de publicación en el BOE, se podrán definir ambos, en el apartado de configuraciones del módulo de CSP, como tipos de hito de solicitud. Posteriormente, en la solicitud, en el apartado Hitos, se añadirán las fechas concretas en las que suceden ambos acontecimientos, seleccionando los tipos de hitos definidos.

En el caso de que la solicitud no pertenezca a una convocatoria registrada en el SGI, no se podrán crear hitos porque no se podrá cumplimentar el campo "Tipo de hito".

#### Histórico de estados

Este apartado se irá completando automáticamente a medida que se van sucediendo los cambios de estado. Cada vez que se modifica el estado de la solicitud se pasará a la tabla de "histórico estado" el estado y la fecha del estado que figurasen hasta el ese momento en la solicitud. También se llevará al histórico el comentario asociado al estado. De esta forma quedarán historificados todos los estados por los que fue pasando la solicitud, la fecha de los mismos y su comentario.

  


El apartado histórico de estados comenzará a estar disponible una vez que tiene el primer cambio de estado, es decir, cuando la solicitud pasa de estado "Borrador" a estado "Presentada". En ese momento, se pasarán a la tabla "histórico estado" el estado "borrador" con su fecha de estado asociada (que habrá sido almacenada de forma automática por el sistema en el momento en que se guarda la solicitud por primera vez).

De forma general, la fecha del estado actual se corresponderá siempre con la fecha en la que se realiza la acción de "Guardar" habiendo realizado un cambio en el valor del estado de la solicitud. Algunos de estos estados conllevarán un comentario que podrá ser agregado por ACT\- CSP\-001\-Investigador o ACT\-CSP\-004\-Administrador/ACT\-CSP\-003\-Gestor en función del caso. Este comentario también pasará al apartado Histórico de estados.

Puede verse el detalle de estados en el apartado [Flujo de solicitud](#CSPSolicitudes-ciclo_solicitud "#CSPSolicitudes-ciclo_solicitud") 

El flujo de estados estará integrado con el módulo de avisos global al SGI ([CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md")), de forma que ACT\- CSP\-001\-Investigador y ACT\-CSP\-003\-Gestor reciban notificaciones de acuerdo a las modificaciones realizadas sobre el estado de la Solicitud. Ver [diagrama de secuencia](#CSPSolicitudes-solicitud_avisos "#CSPSolicitudes-solicitud_avisos"). 

#### Palabras clave

En este apartado se permitirá consultar las palabras clave asociadas a una solicitud y/o asociar nuevas palabras de forma que luego se puedan buscar solicitudes por dichas palabras por parte de ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-Gestor.

Ver prototipo de pantalla genérica para gestionar las palabras clave asociadas a una entidad [IU\-GEN\-0200 \- Gestión de palabras clave](https://confluence.um.es/confluence/pages/viewpage.action?pageId=94570057 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=94570057") que se adaptará en el menú correspondiente de la gestión de una solicitud.

### Descripción solicitudes tipo "proyecto"

Los apartados que se describen a continuación son específicos para las Solicitudes llamadas tipo estándar o de proyectos de investigación. Dispondrán de tres grandes apartados:

* Ficha general
* Áreas conocimiento
* Clasificaciones
* Equipo
* Responsable económico
* Socios
* Entidades financiadoras
* Desglose presupuesto

#### Ficha general

En este apartado se agrupa la información relativa al proyecto/actividad de investigación propuesto.

* Acrónimo. Posible acrónimo del proyecto.
* Referencia externa. Campo para almacenar la referencia que la entidad convocante asigna al proyecto solicitado
* Duración prevista : valor numérico, expresado en meses del proyecto.
* Proyecto coordinado: Se permitirá indicar si en el proyecto propuesto participarán otras entidades, como socios. En caso de que en la solicitud se marque el valor "Sí" se activará el apartado "Socios" y los dos campos siguientes "coordinador externo" y "proyecto colaborativo".
* Coordinador externo. Será un desplegable que tomará dos valores "sí" o "no", para indicar si existe o no un coordinador externo. En caso de responder que "sí" es representativo de que el coordinador es alguno de los Socios (y así se podrá recoger en el apartado Socios). En caso de indicar el valor "no", será indicativo que es la propia Universidad quien actúa como coordinador del proyecto.
* Proyecto colaborativo: Permitirá indicar si, además de coordinado, el proyecto propuesto será colaborativo. Es decir, si alguno de los socios participantes es una empresa privada.
* Desglose del presupuesto por entidades financiadoras: Valor "sí" o "no", en caso de elegir "sí" en el apartado de Desglose de presupuesto se deberá de indicar un presupuesto por cada entidad financiadora. En caso de responder que "no" en el apartado de Desglose de presupuesto únicamente se registrará un único presupuesto global.
* Objetivos del proyecto. Campo de texto abierto para redactar los objetivos marcados con el desarrollo de la actividad de investigación.
* Justificación e intereses. Campo de texto abierto.
* Resultados esperados. Campo de texto abierto.
* Área temática: Se vinculará la solicitud a una de las áreas temáticas asociadas a la convocatoria. La convocatoria estará asociada a un listado de áreas temáticas, y dentro de éste podrá tener limitadas las áreas temáticas. En caso de que la convocatoria no tenga restricciones de áreas temáticas, se podrá especificar un nuevo área, estando disponibles los listados creados a partir de  [IU\-CSP\-0095 \- Gestión de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/index.md"). Solo se permitirá vincular la solicitud a un área temática (o subárea).

#### Áreas de conocimiento

En este apartado el proyecto solicitado se podrá clasificar dentro de una o varias áreas de conocimiento. Esto permitirá asociar el proyecto solicitado a un área de manera independiente al área de conocimiento al que esté adscrito el responsable principal. Las áreas de conocimiento disponibles se obtendrán del sistema corporativo universitario correspondiente. El SGI permitirá que las áreas sea una estructura jerárquica de forma que el proyecto quede asociado de manera directa a la rama o ramas de conocimiento a la que pertenezca el área/áreas con las que se relaciona.

#### Clasificaciones

El SGI contará con una estructura dinámica de listados de clasificación. Una solicitud de proyecto podrá clasificarse bajo tantos listados como se desee. Listados de clasificación tipo que podrían ser cubiertas bajo esta estructura abierta son: 

* Código UNESCO. No será un campo de obligada cumplimentación. Un proyecto se podrá vincular a un código UNESCO. El listado de códigos UNESCO estará precargado a partir de los listados de FECYT.
* Código NABS. No será un campo de obligada cumplimentación. Un proyecto se podrá vincular a un código NABS. El listado de códigos NABS estará precargado.
* Código CNAE

#### Equipo

En este apartado quedará recogido el equipo de proyecto propuesto. El ACT\- CSP\-001\-Investigador solicitante quedará vinculado directamente al equipo de proyecto con rol Investigador principal. El equipo de proyecto quedará constituido por una serie de ACT\-CSP\-001\-Investigador para cada uno de los cuales se indicará:

* Rol con el que participará en el equipo de proyecto. Se deberá especificar obligatoriamente un rol para cada uno de los miembros del equipo. Los roles disponibles serán los configurados en la tabla ["rol equipo"](#CSPSolicitudes-rol_equipo "#CSPSolicitudes-rol_equipo")
* Mes inicial y final, previsto de participación. Es el rango de participación previsto para el miembro del equipo. No son datos obligatorios.

Los miembros del equipo se añadirán a partir de un buscador. Este buscador devolverá resultados a partir de la integración con el Sistema de gestión de personas corporativo (SGP). Este sistema debe disponer de algún campo que permita identificar en qué conjunto de población universitaria se clasifica cada persona (ejemplo PDI, PAS, Alumnos). En el proceso de implantación del SGI, cada Universidad debe de determinar, a partir de los filtros que se puedan establecer en la integración con el SGP, que grupos de personas deberán estar disponibles en el SGI para ser candidatas a formar parte de los equipos de proyecto. 

Si el buscador no devolviese a la persona que desea ser añadida al equipo de proyecto, éste no podrá ser registrado de manera directa en el SGI. El registro de nuevas personas estará centralizado de forma común en el SGI por medio de la correspondiente integración con el sistema de gestión de personas (SGP) corporativo . Este módulo notificará al SGP la "orden" de creación de una nueva persona. Para ello desde el SGI de deben recoger los campos necesarios para remitir esta información en la notificación de registro de nuevo investigador al SGP. La disponibilidad de este nuevo investigador, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo, SGP.

El ACT\- CSP\-001\-Investigador no podrá desencadenar directamente el registro de un nuevo investigador que no figurase en el SGP. La notificación del registro del nuevo investigador debe de ser realizada desde la Unidad de gestión (ACT\-CSP\-004\-Administrador/ACT\-CSP\-003\-Gestor) que coordina la convocatoria. 

#### Responsable económico

En este apartado quedará recogido el responsable económico del proyecto. El responsable económico quedará constituido por:

* Un ACT\-CSP\-001\-Investigador
* Mes inicial y final, previsto de participación. Es el rango de participación previsto para el responsable económico. No son datos obligatorios.

No podrá existir en el mismo momento dos responsables económicos, por lo que se tendrá que validar que los rangos de participación no se solapen.

El responsable económico se añadirá a partir de un buscador. Este buscador devolverá resultados a partir de la integración con el Sistema de gestión de personas corporativo (SGP). Este sistema debe disponer de algún campo que permita identificar en qué conjunto de población universitaria se clasifica cada persona (ejemplo PDI, PAS, Alumnos). En el proceso de implantación del SGI, cada Universidad debe de determinar, a partir de los filtros que se puedan establecer en la integración con el SGP, que grupos de personas deberán estar disponibles en el SGI para ser candidatas a ser responsables económicos de un proyecto. 

Si el buscador no devolviese a la persona que desea ser añadida, éste no podrá ser registrado de manera directa en el SGI. El registro de nuevas personas estará centralizado de forma común en el SGI por medio de la correspondiente integración con el sistema de gestión de personas (SGP) corporativo . Este módulo notificará al SGP la "orden" de creación de una nueva persona. Para ello desde el SGI de deben recoger los campos necesarios para remitir esta información en la notificación de registro de nuevo investigador al SGP. La disponibilidad de este nuevo investigador, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo, SGP.

  


#### Socios

Apartado que se activará si en el campo "Proyecto colaborativo" del apartado "Datos generales" se indica el valor "Sí". En este apartado se recogerá el listado de socios, entendidos éstos como empresas, que participarán en el proyecto propuesto. Para cada socio se permitirá recoger su equipo de proyecto. Tanto los socios como los miembros de los equipos serán entidades centralizadas de forma externa al SGI. No se realizará una gestión interna en el SGI ni de los socios ni de los miembros de sus equipos. Los sistemas que deberán centralizar la información referente a los socios y sus miembros serán los llamados genéricamente Sistema de gestión de personas (SGP) y/o Sistema de gestión económica (SGE).

El listado de socios (empresas) disponible procederá del módulo Empresas, común a todo el SGI.  Este módulo tendrá establecidos los mecanismos de integración correspondientes, de forma que el SGI proporcionará  un interface de integración para la búsqueda y notificación de creación de nuevos socios. Este interface de integración deberá ser implementado por el SGP y/o SGE correspondientes.

Para referenciar los socios se dispondrá de un buscador. Este buscador resolverá la búsqueda a través del bus de integración contra el sistema de gestión de empresas de la Universidad, que deberá ser identificado en el momento de la implantación y que habitualmente se tratará del Sistema de gestión económica.

Si el buscador no devolviese ninguna referencia para el socio (empresa) buscado, éste no podrá ser registrado de manera directa en el SGI. El registro de un nuevo socio estará centralizado por el módulo de integración, común al SGI. Este módulo notificará al sistema de gestión de empresas de la Universidad (comúnmente SGE) la "orden" de creación de una nueva empresa. Para ello facilitará un formulario a través del que se registrarán los campos necesarios. Esta información será remitida al sistema externo en la notificación de registro de la nueva empresa. La disponibilidad del nuevo socio, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo. Será el módulo de integración definido con este sistema externo quien notifique al SGI cuándo estará disponible el nuevo socio para poder vincularlo a la solicitud, así como quien determine los campos obligatorios a cumplimentar para poder registrar la Empresa.

El ACT\- CSP\-001\-Investigador no podrá desencadenar directamente el registro de una nueva empresa que no figure en el Sistema externo correspondiente. La notificación del registro de la nueva empresa debe de ser realizada desde la Unidad de gestión (ACT\-CSP\-004\-Administrador/ACT\-CSP\-003\-Gestor) que coordina la convocatoria. 

  


Para cada socio incorporado a la solicitud de proyecto, se podrá indicar:

* El rol que desempeña. Los roles de los socios de proyecto estarán disponibles a través de la tabla [tipos de roles de socios](#CSPSolicitudes-rol_socio "#CSPSolicitudes-rol_socio") (ejemplos de valores "líder", "colaborador")
* El número de investigadores que forman parte de su equipo (que adicionalmente podrá ser desglosado).
* El importe de la convocatoria que solicita
* El importe presupuestado
* El periodo previsto de participación, expresado de manera relativa a los meses de duración de proyecto.
* El equipo de proyecto
* Los periodos de justificación, aplicará cuando el coordinador del proyecto sea la propia Universidad, y serán los periodos de justificación que se le deben exigir al socio.
* Los periodo de pago, aplicará cuando el coordinador del proyecto sea la propia Universidad. Serán los periodos de pago a los que la Universidad se compromete con el socio.

  


Por cada uno de los socios se podrá detallar el equipo de proyecto, sin que sea una información requerida con carácter obligatorio. De forma análoga al equipo de proyecto propio se indicará el listado de miembros del equipo. Para cada miembro se podrá detallar:

* Rol que desempeña. Para ello se utilizará la misma tabla [tipos de rol de equipo](#CSPSolicitudes-rol_equipo "#CSPSolicitudes-rol_equipo") disponible para el equipo de proyecto propio.
* Mes inicial y final, previsto de participación. Es el rango de participación previsto para el miembro del equipo, relativo a la duración del proyecto. No son datos obligatorios.

Como ocurre con el equipo propio,  los miembros del equipo se añadirán a partir de un buscador. En este caso, los miembros no serán personal propio. La búsqueda será realizada, a través de los  mecanismos de integración provistos por el SGI, contra el SGP (sistema de gestión de personas) corporativo. Si el buscador no devolviese al miembro que desea ser añadido al equipo de proyecto del socio, éste no podrá ser registrado de manera directa en el SGI. El registro de nuevos miembros estará centralizado en el SGP, donde se deberá de identificar con la categorización adecuada que se trata de una persona ajena a la Universidad, con la que no establece una relación directa, sino un vínculo de colaboración. Esta categorización debe de ser definida en el SGP. El SGI simplemente notificará al SGP la "orden" de creación de una nueva persona (ajena a la Universidad). Desde el SGI se deben recoger los campos necesarios y remitirlos al SGP. La disponibilidad de este nuevo miembro, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo, SGP. Serán los mecanismos de integración que facilite este sistema los que determinen cuanto de inmediata será la operación.

El ACT\- CSP\-001\-Investigador no podrá desencadenar directamente el registro de un nuevo miembro que no figurase en el SGP. La notificación del registro del nuevo miembro debe de ser realizada desde la Unidad de gestión (ACT\-CSP\-004\-Administrador/ACT\-CSP\-003\-Gestor) que coordina la convocatoria. 

  


Los periodos previstos de pago de un socio, en la fase de registro de la solicitud, quedan definidos por:

* Número de periodo. Secuencial calculado por el sistema de acuerdo a la ordenación del mes previsto de pago.
* Mes previsto de pago. Expresado de forma numérica y siempre relativo a la duración del proyecto.
* Importe. Importe previsto de pago

No será obligatorio indicar los periodos previstos de pago para registrar una solicitud. Si se crea un periodo de pago el dato mínimo obligatorio será el mes previsto de pago.

  
Los periodos de justificación previstos para un socio, quedan definidos por:

* Número del periodo. Secuencial calculado por el sistema de acuerdo a la ordenación del mes inicial del periodo a justificar.
* Periodo a justificar. Expresado como mes inicial y final, relativos a la duración del proyecto
* Periodo de solicitud de la justificación. Expresado como fecha inicial y final. Con este periodo se recogerán las fechas en las que estará previsto que se solicite al socio colaborador toda la información necesaria para la justificación a la entidad correspondiente.
* Observaciones. Campo para recoger cualquier observación necesaria sobre el periodo de justificación relativo a la relación con el socio colaborador.

No será obligatorio indicar los periodos previstos de justificación para registrar una solicitud. Si se define un periodo de justificación los datos obligatorios serán el mes inicial y final del periodo.

  


Ni los periodos de pago ni los periodos de justificación definidos en la solicitud generarán avisos sobre el módulo AVI del SGI, puesto que son previsiones realizadas durante la solicitud. Los avisos correspondientes se crearán una vez haya sido creado el Proyecto, en caso que la Solicitud resultase Concedida.

#### Entidades financiadoras

Se visualizarán las entidades financiadoras de la convocatoria, de forma adicional, se podrán añadir otras entidades financiadoras ajenas a la convocatoria . Estas entidades procederán, como funcionamiento global del SGI, de la integración con el SGE.

#### Desglose de presupuesto

En este apartado se recogerá el desglose presupuestario del proyecto en solicitud. Para este desglose se partirá de las restricciones de elegibilidad añadidas en la convocatoria. El presupuesto se deberá desglosar en base a los conceptos de gasto configurados a nivel global en el SGI ([IU\-CSP\-0090 \- Gestión de conceptos de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/index.md")).

Como la convocatoria puede admitir varias entidades financiadoras o incluso el proyecto (solicitud en este momento) podría tener otras fuentes de financiación adicionales a las que promueven la convocatoria, el desglose del presupuesto se podrá recoger especificado por entidad financiadora. Dependiendo del valor del campo "Desglose del presupuesto por entidades financiadoras" de Datos proyecto se dejará introducir un único presupuesto global, un presupuesto individual por cada entidada financiadora y un presupuesto conjunto para todas las entidades de la convocatoria e individual para cada una de las entidades ajenas a la convocatoria (mixto).

Tanto si es por entidad financiadora, mixto o global se podrá recoger un desglose de presupuesto, a partir de :

* Concepto de gasto. Que será seleccionable a partir de los conceptos de gasto del sistema. Dependiendo de los conceptos de gasos definidos en el apartado Elegibilidad de la convocatoria, elsistema informará si es elegible o no y si tiene un importe límite premarcado, de acuerdo a la información registrada en la convocatoria.
* Para el concepto de gasto se deberá de indicar:
	+ El importe presupuestado (campo obligatorio)
	+ El importe solicitado (campo obligatorio)
	+ Anualidad (no obligatorio)
	+ Se dispondrá de un campo Observaciones para recoger en formato de texto libre cualquier nota de interés sobre la consideración del concepto de gasto en el presupuesto

En función de si el presupuesto se recoge ya expresado en anualidades, el mismo concepto de gasto podrá repetirse varias veces. El sistema solo impondrá como limitación que el mismo concepto de gasto no se repita para una misma anualidad y entidad financiadora. Es decir, un mismo concepto de gasto también podría aparecer para una misma anualidad en el desglose de presupuesto asociado a distintas entidades financiadoras en el caso de prespuestos por entidades financiadoras. En el caso de un único presupuesto global, no se podrá repetir el mismo concepto de gasto para la misma anualidad.

  


Con el desglose del presupuesto y con los datos de los importes solicitado y presupuestado incluidos en el detalle de los socios, se obtendrán los siguientes campos calculados (que también podrán ser introducidos manualmente en caso que no se quiera llegar a detallar esta información a nivel de presupuesto y socios):

* Importe presupuestado (Universidad)
* Importe solicitado (Universidad)
* Total importe presupuestado socios
* Total importe solicitado socios
* Suma total importe presupuestado
* Suma total importe solicitado

  


En el caso de desglose de presupuesto por entidades financiadoras, con los importes introducidos en todos los conceptos de gasto para todas las entidades financiadoras, se obtendrán los siguientes campos calculados:

* Total del presupuestado entidades convocatoria. Obtenido a partir de la suma de los importes presupuestados de todos los conceptos de gasto recogidos en los desgloses presupuestarios asociados a las entidades financiadoras de la convocatoria.
* Total solicitado entidades convocatoria. Obtenido a partir de la suma de los importes solicitados de todos los conceptos de gasto recogidos en los desgloses presupuestarios asociados a las entidades financiadoras de la convocatoria.
* Total presupuestado entidades ajenas. Obtenido a partir de la suma de los importes presupuestados de todos los conceptos de gasto recogidos en los desgloses presupuestarios asociados a las entidades ajenas de la convocatoria.
* Total solicitado entidades ajenas.  Obtenido a partir de la suma de los importes solicitados de todos los conceptos de gasto recogidos en los desgloses presupuestarios asociados a las entidades ajenas de la convocatoria.

Estos campos serán calculados y no se podrán modificar manualmente. A partir de estos campos se obtendrán:

* Importe presupuestado (Universidad): suma de Total del presupuestado entidades convocatoria y Total presupuestado entidades ajenas.
* Importe solicitado (Universidad): suma de Total solicitado entidades convocatoria y Total solicitado entidades ajenas.

Que sí serán campos modificables junto con:

* Total importe presupuestado socios
* Total importe solicitado socios
* Suma total importe presupuestado
* Suma total importe solicitado

#### Autoevaluación de ética

Cuestionario básico (con preguntas sí/no) que permitirá conocer si el proyecto solicitado debe someterse a evaluación por parte del Comité de ética. Si el resultado de este cuestionario confirma la necesidad de evaluación, se creará automáticamente una nueva petición de evaluación de ética en  [ETI \- Módulo de ética](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/index.md"). La creación de esta petición automática tendrá lugar cuando se realice el cambio de estado desde estado "Borrador" a cualquier otro estado diferente a "Desistida" y "Renunciada".

  


#### Concesión de proyecto

Para las solicitudes de tipo "proyecto", cuando éstas adquieran uno de los siguientes estados:

* Concedida provisional
* Concedida provisional alegada
* Concedida provisional no alegada
* Concedida

ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador de la Unidad de gestión  podrán crear directamente un proyecto en estado "borrador" a partir de la solicitud. El proyecto creado tomará determinados datos de la solicitud y si esta deriva de una convocatoria registrada en el SGI también se volcarán determinados datos desde la misma (ver [IU\-CSP\-0303\-004 \- Búsqueda y listado de solicitudes \- UG \- Crear proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-004-busqueda-y-listado-de-solicitudes-ug-crear-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-004-busqueda-y-listado-de-solicitudes-ug-crear-proyecto.md")). 

#### Vista investigador

Para las solicitudes de tipo "proyecto", ACT\-CSP\-001\-Investigador solamente tendrá acceso a los apartados:

* Ficha general, con ciertas limitaciones respecto a la vista de la unidad de gestión. Los campos que tendrá disponibles serán (ver [IU\-CSP\-0305\-100 \- Modificar solicitud \- Ficha general \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0305-100-modificar-solicitud-ficha-general-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0305-100-modificar-solicitud-ficha-general-investigador.md")):
	+ Acrónimo. Posible acrónimo del proyecto.
	+ Referencia externa. Campo para almacenar la referencia que la entidad convocante asigna al proyecto solicitado
	+ Duración prevista : valor numérico, expresado en meses del proyecto.
	+ Importe solicitado
	+ Objetivos del proyecto. Campo de texto abierto para redactar los objetivos marcados con el desarrollo de la actividad de investigación.
	+ Justificación e intereses. Campo de texto abierto.
	+ Resultados esperados. Campo de texto abierto.
	+ Área temática: Se vinculará la solicitud a una de las áreas temáticas asociadas a la convocatoria. La convocatoria estará asociada a un listado de áreas temáticas, y dentro de éste podrá tener limitadas las áreas temáticas. En caso de que la convocatoria no tenga restricciones de áreas temáticas, se podrá especificar un nuevo área, estando disponibles los listados creados a partir de  [IU\-CSP\-0095 \- Gestión de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/index.md"). Solo se permitirá vincular la solicitud a un área temática (o subárea).
* Áreas de conocimiento
* Clasificaciones (NABS, UNESCO, CNAE, etc.)
* Equipo. Se aplicarán ciertas limitaciones en la búsqueda de personas:
	+ Solo se permitirá la búsqueda por nombre y/o apellidos (no se permitirá la búsqueda por número de identificación personal).
	+ No es podrá acceder al detalle de los datos personales de los miembros del equipo, solamente se tendrá visibilidad del nombre, apellidos y número de identificación personal (de forma parcial).
* Autoevaluación de ética

  


### Descripción solicitudes tipo "grupo"

No se diseñará un formulario específico para las solicitudes de grupos. Serán tratadas como solicitudes genéricas por lo que solo tendrán disponibles los apartados

* Datos generales
* Documentos
* Histórico de estados
* Hitos

Ver información ampliada en [CSP \- Grupos de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-grupos-de-investigacion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-grupos-de-investigacion/index.md")

#### Creación del grupo

Cuando las solicitudes de tipo "grupo"  adquieran uno de los siguientes estados:

* Concedida provisional
* Concedida provisional alegada
* Concedida provisional no alegada
* Concedida

la unidad de gestión (ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-Gestor) podrá realizar la creación del grupo a partir de la solicitud. El grupo creado tendrá unos datos mínimos, puesto que no se está recogiendo toda la información del mismo en la solicitud. Ver [IU\-CSP\-0303\-006 \- Búsqueda y listado de solicitudes \- UG \- Crear grupo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-006-busqueda-y-listado-de-solicitudes-ug-crear-grupo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-006-busqueda-y-listado-de-solicitudes-ug-crear-grupo.md").

### Descripción solicitudes tipo "RRHH"

Las solicitudes de tipo RRHH incorporarán a los apartados genéricos los siguientes:

* Información adicional del solicitante.
* Identificación tutor/a del trabajo.
* Requisitos de la convocatoria.
* Memoria.

  


Las solicitudes de tipo "RRHH" presentan como particularidad adicional que podrían ser registradas por personal externo a la Universidad de implantación del SGI.

#### Información adicional del solicitante

En este apartado se recogerá información relativa al solicitante:

* Datos personales
	+ Nombre y apellidos
	+ Número de identificación personal
	+ Sexo
	+ Fecha de nacimiento
	+ Lugar de nacimiento
	+ Dirección
	+ Teléfono
	+ Email
* Universidad de origen
* Área ANEP

  


La información relativa a los datos personales podrá ser recuperada del sistema corporativo de RRHH por medio de los mecanismos de integración correspondientes para aquellas personas que formen parten de la Universidad de implantación del SGI. En el caso de que el solicitante sea una persona externa será necesario que esta información sea introducida manualmente.

Del mimo modo, el campo "Universidad de origen" solo aplicará para el personal externo. La  Universidad será recuperada del sistema de gestión de empresas corporativo, de modo que estarán disponibles las Universidades registradas en este sistema.

Área ANEP. El SGI dispone de un listado general de clasificaciones. Entre estas clasificaciones se podrá configurar el listado de áreas ANEP. Solamente se permitirá asociar la solicitud postdoctoral a un área ANEP.

#### Identificación tutor/a del trabajo

En este apartado se recogerá la persona que el solicitante propone como tutor/a del trabajo de RRHH. Será una persona perteneciente a la Universidad de implantación del SGI por lo que se ofrecerá el correspondiente  buscador integrado con el sistema de gestión de personas corporativo. Se recuperará la siguiente información asociada al director/a seleccionado:

* Nombre y apellidos
* Categoría
* Departamento
* Centro
* Teléfono
* Email

#### Requisitos de la convocatoria

En este apartado se mostrarán los requisitos especificados en el apartado Requisitos IP de la convocatoria ([CSP \- Convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-convocatorias.md")) relativas al nivel académico y categorías exigidas, con sus correspondientes fechas de anterioridad o posterioridad. Si bien para el personal perteneciente a la propia Universidad el cumplimento de este tipo de requisitos puede ser recuperado a partir de la información recuperada del sistema de gestión de RRHH, se dará la posibilidad al ACT\-CSP\-001\-Investigador Solicitante de adjuntar el documento acreditativo correspondiente (de forma opcional).

En este apartado se mostrarán los requisitos especificados en el apartado Requisitos Equipo de la convocatoria ([CSP \- Convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-convocatorias.md")) relativas al nivel académico y categorías exigidas, con sus correspondientes fechas de anterioridad o posterioridad. El cumplimiento de este tipo de requisitos se recuperará a partir de la información del sistema de gestión de RRHH para el tutor/a.

#### Memoria

En este apartado se recogerán datos relativos al trabajo:

* Título
* Memoria
* Observaciones

  


Los documentos adjuntos podrán ser recogidos en el apartado general de Documentos (que es uno de los apartados genéricos de la solicitud). Desde la convocatoria se podrá especificar, además, que tipos de documento será obligatorio recoger en la solicitud.

  


#### Flujo solicitudes tipo "RRHH"

Las solicitudes de tipo "RRHH" incorporan un flujo particular en el SGI: han de ser aceptadas por el/la tutor/a especificado en la solicitud.  Una vez que la solicitud ha sido marcada como "Solicitada" por ACT\-CSP\-001\-Investigador Solicitante estará disponible para  el ACT\-CSP\-001\-Investigador que hubiera sido indicado como tutor/a en la solicitud.

Desde el acceso ACT\-CSP\-001\-Investigador se dispondrá de una opción "Validación como tutor/a" solo disponible cuando existe alguna solicitud de tipo "RRHH" para la que ACT\-CSP\-001\-Investigador se hubiese indicado como tutor/a del trabajo. ACT\-CSP\-001\-Investigador tutor/a podrá aceptar o rechazar la solicitud. Se introducen en este caso los estados  "Validada" y "Rechazada". 

ACT\-CSP\-001\-Investigador como solicitante marcará la solicitud en estado "solicitada". En este momento podrá ser validada o rechazada por ACT\-CSP\-001\-Investigador tutor/a (sin que esto impida que ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador de la unidad de gestión correspondiente también puedan marcar los estados "Validada" o "Rechazada"). ACT\-CSP\-001\-Investigador como tutor/a no podrá introducir ningún cambio sobre la solicitud a excepción de validarla o rechazarla. Sobre una solicitud en estado "Validada"  solamente podrán introducir cambios o modificar el estado de la misma los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente. Será la unidad de gestión quien deba poner la solicitud en cualquier de los siguientes estados, hasta llegar a estar "concedida" o "denegada" de manera definitiva. Sobre una solicitud en estado "Rechazada"  el investigador podrá realizar los cambios oportunos comentados por el ACT\-CSP\-001\-Investigador tutor/a e incluso modificar el ACT\-CSP\-001\-Investigador tutor/a.

Cuando las solicitudes de tipo "RRHH"  adquieran uno de los siguientes estados:

* Concedida provisional
* Concedida provisional alegada
* Concedida provisional no alegada
* Concedida

la unidad de gestión (ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-Gestor) podrá realizar la creación del proyecto asociado. El proyecto creado tomará determinados datos de la solicitud y si esta deriva de una convocatoria registrada en el SGI también se volcarán determinados datos desde la misma (ver [IU\-CSP\-0303\-004 \- Búsqueda y listado de solicitudes \- UG \- Crear proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-004-busqueda-y-listado-de-solicitudes-ug-crear-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-004-busqueda-y-listado-de-solicitudes-ug-crear-proyecto.md")). 

  


  


### Búsqueda y listado de solicitudes

#### Perfiles de Unidades de gestión

Los ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor o ACT\-CSP\-005\-Visor podrán realizar búsquedas de las convocatorias . Los resultados devueltos además de los filtros aplicados dependerán siempre de la Unidad de gestión a la que se hubiera vinculado la convocatoria. Automáticamente, el SGI siempre aplicará el filtro de la unidad de gestión, de forma que un usuario solo podrá obtener las solicitudes asociadas a las convocatorias de las unidades de gestión  a las que esté vinculado con alguno de los roles  ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor o ACT\-CSP\-005\-Visor ([USR \- Módulo de usuarios](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85628906 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85628906")).

De acuerdo al rol, a partir del listado de solicitudes, estarán disponibles las opciones:

* Ver detalle, modificar o eliminar la solicitud, para los roles ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-Gestor.
* Ver detalle de convocatoria, para el rol ACT\-CSP\-005\-Visor

Los estados de la solicitud solamente podrán modificarse de acuerdo al diagrama de estados reflejado en [Flujo de solicitud](#CSPSolicitudes-ciclos_solicitud "#CSPSolicitudes-ciclos_solicitud"). 

Los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador podrán Eliminar una Solicitud, siempre de la Unidad de gestión asociada, independientemente del estado en el que se encuentre. En caso que la Solicitud disponga ya de un Proyecto asociado, la eliminación ha de realizarse de forma progresiva y manual (nunca se producirá una eliminación automática en cascada del proyecto asociado).

#### Perfil Investigador

Los  ACT\- CSP\-001\-Investigador solo podrán obtener el listado de sus solicitudes, es decir, aquellas que hayan sido registradas de forma directa en el SGI  por el propio ACT\- CSP\-001\-Investigador o aquellas que hubieran sido registradas, en su nombre, por el  ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador de la Unidad de gestión correspondiente.  No se entenderán como solicitudes asociadas a un ACT\- CSP\-001\-Investigador, aquellas en las que simplemen el  ACT\- CSP\-001\-Investigador figure como parte del equipo de proyecto (en caso que la solicitud sea de este tipo). Solo se permitirá la visibilidad y acceso de las solicitudes de las que el ACT\- CSP\-001\-Investigador es "titular".

A pesar de que la Solicitud esté vinculada de manera directa al ACT\- CSP\-001\-Investigador  se distinguirán dos modos de acceso en función de quien hubiera registrado la solicitud en el SGI (el propio ACT\- CSP\-001\-Investigador o la Unidad de gestión, a través de uno de sus ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador)

* Si la solicitud ha sido registrada por la Unidad de gestión (identificable a través del campo ID Creador), ACT\- CSP\-001\-Investigador solamente podrá ver los datos de la Solicitud, no podrá introducir ninguna modificación.
* Si la solicitud ha sido registrada por el propio ACT\- CSP\-001\-Investigador, podrá modificar, en líneas generales, los datos de los apartados:
* + Datos generales
	+ Documentos
	+ y para las solicitudes de tipo "proyecto"
		- Ficha general
		- Áreas conocimiento
		- Clasificaciones
		- Equipo
		- Autoevaluación ética

  


* Siempre y cuando la solicitud esté en los estados:
	+ Borrador. Se podrán introducir todas las modificaciones necesarias hasta que se marque la solicitud como Presentada.
	+ Presentada. Desde este estado solo se permitirá a ACT\- CSP\-001\-Investigador pasar la solicitud a estado Desistida.
	+ Admitida provisional. Desde este estado solo se permitirá a ACT\- CSP\-001\-Investigador pasar la solicitud a estado Desistida.
	+ Excluida provisional. ACT\- CSP\-001\-Investigador deberá poner la Solicitud en uno de los siguientes estados:
		- Alegada admisión. Desde este estado se podrán incluir las modificaciones pertinentes en los apartados indicados de la solicitud.
		- Desistida. Al pasar la solicitud a este estado, ACT\- CSP\-001\-Investigador indicará que no proseguirá adelante con la solicitud. Ésta pasa a un estado final.
	+ Admitida definitiva. Desde este estado solo se permitirá a ACT\- CSP\-001\-Investigador pasar la solicitud a estado Desistida.
	+ Concedida provisional. Desde este estado solo se permitirá a ACT\- CSP\-001\-Investigador pasar la solicitud a estado Desistida.
	+ Denegada provisional. ACT\- CSP\-001\-Investigador deberá poner la Solicitud en uno de los siguientes estados:
		- Alegada concesión. Desde este estado se podrán incluir las modificaciones pertinentes en los apartados indicados de la solicitud.
		- Desistida: Al pasar la solicitud a este estado, ACT\- CSP\-001\-Investigador indicará que no proseguirá adelante con la solicitud. Ésta pasa a un estado final.

  


Por otro lado, un  ACT\- CSP\-001\-Investigador solo podrá eliminar una solicitud mientras ésta figure en estado Borrador. En el momento que la Solicitud pase a estado Presentada (ni a ningún otro estado superior), ya no podrá ser Eliminada, debiendo utilizar la transición de estados implementada, acorde a lo indicado arriba, y bajo el esquema [Flujo de solicitud](#CSPSolicitudes-ciclo_solicitud "#CSPSolicitudes-ciclo_solicitud").

  


  


  





