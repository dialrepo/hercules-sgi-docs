# Hércules : Guia de Implantación \- Checklist



* [UM \- Universidad de Murcia](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/index.md")
* [Universidad de Lérida](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/universidad-de-lerida.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/universidad-de-lerida.md")
* [Particularidades de distintas bases de datos](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/particularidades-de-distintas-bases-de-datos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/particularidades-de-distintas-bases-de-datos.md")

## Checklist pre\-valoración implantación SGI

Este documento debe ser utilizado como una guía para recopilar la información necesaria para realizar el estudio de implantación del SGI

Hércules.

## Infraestructura y entorno

Para su implantación, el SGI Hércules requiere de un clúster de Kubernetes. Este clúster deberá estar dimensionado de forma adecuada

en función de las necesidades y el uso que le vaya a dar la Universidad tanto a la plataforma Hércules SGI como al propio cluster y el

resto de las aplicaciones que lo puedan compartir.

El clúster puede estar funcionando en la propia infraestructura de la Universidad (instalación on\-premise) o en una nube pública bajo una

suscripción de la propia Universidad (instalación on\-cloud).

Es recomendable pero no necesaria la disponibilidad de dos clúster diferenciados, uno para el entorno de producción y otro para el

entorno de test. El objetivo es prevenir errores en actuaciones que puedan afectar a la disponibilidad del entorno de producción.

Por último, es recomendable también la instalación del motor de base de datos de forma independiente al clúster, teniendo su propia

infraestructura, su propia política de backup y en general una independencia de los mencionados clúster de kubernetes. En estos

momentos la plataforma Hércules SGI solo está certificada para trabajar sobre base de datos Postgre y Oracle, por lo que cualquier otro

sistema de base de datos requerirá de una certificación previa del mismo. El clúster donde se implante la plataforma tendrá que poder

conectarse con la base de datos.

Para el correcto funcionamiento de Hércules SGI el clúster de Kubernetes deberá disponer de:

* 16 de RAM. Se ha de tener en cuenta el número de nodos de modo que, si se sigue una estrategia de pocos nodos con muchos recursos, estos deben de disponer de esa memoria disponible antes del despliegue. Mientras que, en el caso de una estrategia de muchos nodos, con menos recursos, cada nodo al menos deberá disponer de 1Gb libre.
* Mínimo 2 cpus por nodo de despliegue. Hércules SGI no hace un uso intensivo de la CPU por lo que es bastante flexible en ese sentido.
* Aprovisionamiento de almacenamiento persistente (PVC). Necesario para la persistencia del módulo de SGDOC. Se soportaría cualquier implementación soportada por la implementación del cluster, pero esta debe de estar configurada previamente.
* Conectividad con el servicio externo de SGP y, según configuración, con el motor de base de datos.

Se propone un escenario de implantación genérico en el que se excluyen explícitamente las siguientes tareas, que deberán ser

realizadas por la unidad técnica correspondiente de la Universidad:

* Cualquier instalación de software en la infraestructura de la universidad, ya sean labores de instalación del clúster de Kubernetes o de los servidores de base de datos, así como cualquier labor de administración, backup o monitorización de los mismos.
* La adquisición de licencias de software (por ejemplo, licencias de base de datos Oracle).

Para plantear otros escenarios sería necesario realizar las reuniones correspondientes.

Teniendo en cuenta lo anterior, debe indicarse:

* Qué tipo de instalación se llevará a cabo: on\-premise / on\-cloud
* Bajo que motor de BBDD se instalará el SGI Hércules
* Si existe algún tipo de problema para disponer de la infraestructura y entornos indicada
* Si se quiere plantear un escenario de instalación de la infraestructura diferente al planteado (por ejemplo, que las tareas de instalación recaigan en Treelogic)

## Autenticación

El SGI permite la integración con el sistema de autenticación corporativo aunque también es posible implantar el SGI de forma que éste

haga uso del sistema propio de autenticación del que está provisto.

La plataforma Hércules SGI implementa la gestión del acceso e identidad de los usuarios sobre la solución de código abierto keycloak.

Esta solución permite implementar el inicio de sesión único con Identity Management y Accesss Managemet.

Para integrar la plataforma con los servicios de gestión de identidades de la universidad estos solo tendrán que ser compatibles con los

protocolos de federación de identidades SAML v2 o OpenID Connect (OIDC) / OAuth2\.

Las cuestiones que habría que tener en cuenta para valorar esta integración serían:

* ¿Se desea implantar el SGI de forma integrada con el sistema de autenticación corporativo?
* ¿Cuál es este sistema?

  


El SGI está preparado para recibir atributos del sistema de autenticación corporativo de tal forma que en base a estos atributos se puedan

mapear los usuarios con su bloque de permisos. Si se quiere desvincular completamente SGI de la asignación de permisos el sistema

tendrá que ser capaz de devolver un atributo que pueda ser mapeado dentro del SGI con el bloque de permisos deseado. El SGI también

tiene la posibilidad de incluir una lógica de asignación de permisos a partir de los atributos enviados por el sistema de autenticación.

## Módulos funcionales e integraciones

El SGI dispone de los siguientes módulos funcionales:

* CSP: Gestión de convocatorias, solicitudes, proyectos/contratos y grupos de investigación.
* ETI: Comisión de evaluación de ética.
* PII: Gestión de la propiedad industrial e intelectual
* EER: Gestión de empresas de explotación de resultados (spin\-off, ebts, start\-ups ..)
* PRC: Baremación de la producción científica de los grupos de investigación.
* INV: Módulo para el perfil de investigación, incluyendo gestión relativa a CSP, ETI y PRC que afecte a la persona investigadora.

¿Qué módulos del SGI se implantarán?

A continuación se incluye un apartado para cada uno de los módulos que tienen alguna consideración particular de cara a la implantación.

Solo es necesario dar respuesta a cada apartado si el módulo será objeto de implantación.

### ETICA

Las integraciones necesarias para disponer de la funcionalidad el módulo al completo son:

* Personas: SGP. Es una integración imprescindible.
* Estructura organizativa: SGO. Es una integración solo necesaria en caso que se habilite la posibilidad de ver el detalle de los datos de las personas y/o dar de alta nuevas personas desde el SGI y siempre y cuando el SGP corporativo incluya como obligatorio algún campo recogido a través de esta integración.

Además de las cuestiones relativas a estas integraciones, incluidas en los apartados finales de este documento, de debe dar respuesta a

las siguientes cuestiones relativas a una posible migración de datos:

* Se debe de identificar si existe algún sistema actual y si deben migrarse datos del mismo al SGI. Si el sistema da soporte a formularios que recojan la memoria del proyecto para cualquiera de los comités de ética: CEI (seres humanos), CEEA (experimentación animal) o CBE (Bioseguridad), deben adjuntarse el contenido de estos formularios y cómo el sistema actual recoge toda la información tanto de los formularios como del resultado de las evaluaciones de ética realizadas sobre los proyectos.
* Si no existe un sistema pero sí se dispone de datos recopilados en ficheros (forma excel, filemaker o similar), debe identificarse:
	+ Formato en el que están disponibles los datos que sean objeto de migración
	+ De qué conjunto de datos se dispone (detalle de proyectos evaluados, resultados de la evaluación, personal que realizaevaluaciones, memorias de los proyectos con o sin detalle de los formularios asociados a los comités CEI, CEEA o CBE,etc)
	+ Volumen de datos a migrar
* Se debe de indicar si los datos a migrar referencian a personas en el SGP o si los datos de las personas están contenidos de manera independiente al SGP (en caso de ser así debe tenerse en cuenta que el proceso de migración implicaría referenciar a la personas en el SGP siendo éste el sistema mandatorio y prescindiendo de los datos independientes que figuren en la fuente de migración)

### CSP \- Convocatorias, solicitudes y proyectos

Las integraciones necesarias para disponer de la funcionalidad el módulo al completo son:

* Personas: SGP. Es una integración imprescindible.
* Empresas: SGEMP. Es una integración imprescindible.
* Estructura organizativa: SGO. Podría prescindirse de esta opción siempre que:
	+ No se habilite la posibilidad de ver el detalle de las personas y/o dar de alta nuevas personas desde el SGI. En caso de habilitarse esta funcionalidad, la integración sería necesaria y siempre y cuando el SGP corporativo incluya como obligatorio algún campo recogido a través de esta integración.
	+ No se habilite la posibilidad de ver el detalle y/o dar de alta nuevas empresas desde el SGI. En caso de habilitarse esta funcionalidad, la integración sería necesaria y siempre y cuando el SGEMP corporativo incluya como obligatorio algún campo recogido a través de esta integración.
	+ Se prescinda de realizar la clasificación de solicitudes y proyectos por áreas de conocimiento y otras clasificaciones que puedan residir en sistemas corporativos.
* Gestión económica: SGE. Aunque esta integración resulta imprescindible para disponer del detalle económico de proyectos y contratos, podría optarse por realizar esta integración en una segunda fase de la implantación del SGI. Mientras la integración no esté disponible el detalle económico de proyectos y contratos deberá ser consultado haciendo uso del SGE.
* Sistema de CVN. Es una integración opcional. Solo será necesaria en caso de existir un sistema de gestión de CVN que se integre con el SGI y que implemente la funcionalidad de incorporar de manera directa proyectos, contratos, grupos en el CVN.

Además de las cuestiones relativas a estas integraciones, incluidas en los apartados finales de este documento, de debe dar respuesta las siguientes cuestiones relativas a una posible migración de datos:

* Si existe algún sistema a través del que se realice actualmente la gestión de convocatorias, solicitudes y proyectos se debe de identificar:
	+ ¿Se trata de un sistema comercial o un desarrollo propio?
	+ ¿Se dispone del modelo de datos?
* Si no existe un sistema pero sí se dispone de datos recopilados en ficheros (forma excel, filemaker o similar), debe identificarse:
	+ Formato en el que están disponibles los datos que sean objeto de migración
* ¿Tienen todas las convocatorias, solicitudes y proyectos los mismos datos o existe un conjunto de datos diferente en función de la naturaleza de cada convocatoria, solicitud o proyecto?
* Identificar el volumen de convocatorias a migrar y una estructura aproximada de la información contenida.
* Identificar el volumen de solicitudes a migrar y una estructura aproximada de la información contenida.
* Identificar el volumen de proyectos/contratos a migrar y una estructura aproximada de la información contenida.
* Si existe algún sistema a través del que se realice actualmente la gestión de grupos:
	+ ¿Se trata de un sistema comercial o un desarrollo propio?
	+ ¿Se dispone del modelo de datos?
* Si no existe un sistema pero sí se dispone de datos recopilados en ficheros (forma excel, filemaker o similar), debe identificarse:
	+ Formato en el que están disponibles los datos que sean objeto de migración
* Identificar el volumen de grupos a migrar y la estructura aproximada de la información que contienen.
* Se debe de indicar si los datos a migrar referencian a personas en el SGP o si los datos de las personas están contenidos de manera independiente al SGP (en caso de ser así debe tenerse en cuenta que el proceso de migración implicaría referenciar a la personas en el SGP siendo éste el sistema mandatorio y prescindiendo de los datos independientes que figuren en la fuente de migración)
* Se debe de indicar si los datos a migrar referencian a empresas del SGEMP o si los datos de las empresas están contenidas de manera independiente al SGEMP (en caso de ser así debe tenerse en cuenta que el proceso de migración implicaría referenciar a las empresas en el SGEMP siendo éste el sistema mandatorio y prescindiendo de los datos independientes que figuren en la fuente de migración)

### PII \- Propiedad intelectual e industrial

Las integraciones necesarias para disponer de la funcionalidad el módulo al completo son:

* Personas: SGP. Es una integración imprescindible.
* Empresas: SGEMP. Es una integración imprescindible.
* Estructura organizativa: SGO. Podría prescindirse de esta opción siempre que:
	+ No se habilite la posibilidad de ver el detalle de las personas y/o dar de alta nuevas personas desde el SGI. En caso de habilitarse esta funcionalidad, la integración sería necesaria y siempre y cuando el SGP corporativo incluya como obligatorio algún campo recogido a través de esta integración.
	+ No se habilite la posibilidad de ver el detalle y/o dar de alta nuevas empresas desde el SGI. En caso de habilitarse esta funcionalidad, la integración sería necesaria y siempre y cuando el SGEMP corporativo incluya como obligatorio algún campo recogido a través de esta integración.
	+ No exista ningún sistema corporativo que proporcione un listado centralizado de países. En este caso se debería preconfigurar un listado de países en la fase de implantación del SGI para que esté disponible para la configuración de vías de protección.
* Gestión económica: SGE. Aunque esta integración resulta imprescindible para disponer del detalle de gastos asociados al registro de las PII y para el cálculo automático de las regalías derivadas de los contratos de explotación de las PII, podría optarse por realizar esta integración en una segunda fase de la implantación del SGI. Mientras la integración no esté disponible el detalle de gastos e ingresos de las PII deberá ser consultado haciendo uso del SGE y el cálculo de los repartos se realizaría por vías ajenas al SGI.
* Sistema de CVN. Es una integración opcional. Solo será necesaria en caso de existir un sistema de gestión de CVN que se integre con el SGI y que implemente la funcionalidad de incorporar de manera directa las pii en el CVN.

Además de las cuestiones relativas a estas integraciones, incluidas en los apartados finales de este documento, de debe dar respuesta a

las siguientes cuestiones relativas a una posible migración de datos:

* Si existe algún sistema a través del que se realice actualmente la gestión de las PII y de sus solicitudes de protección:
	+ ¿Se trata de un sistema comercial o un desarrollo propio?
	+ ¿Se dispone del modelo de datos?
* Si no existe un sistema pero sí se dispone de datos recopilados en ficheros (forma excel, filemaker o similar), debe identificarse:
	+ Formato en el que están disponibles los datos que sean objeto de migración
* ¿Tienen todas las PII los mismos datos o existe un conjunto de datos diferente en función de las mismas?
* ¿Están las PII asociadas a todas sus solicitudes de protección o éstas se registran de manera independiente?
* ¿Tienen todas las solicitudes de protección los mismos datos o existe un conjunto de datos diferente en función de las mismas?
* Identificar el volumen de PII y solicitudes de protección a migrar y la estructura aproximada de la información que contienen.
* Se debe de indicar si los datos a migrar referencian a personas en el SGP o si los datos de las personas están contenidos de manera independiente al SGP (en caso de ser así debe tenerse en cuenta que el proceso de migración implicaría referenciar a la personas en el SGP siendo éste el sistema mandatorio y prescindiendo de los datos independientes que figuren en la fuente de migración)
* Se debe de indicar si los datos a migrar referencian a empresas del SGEMP o si los datos de las empresas están contenidas de manera independiente al SGEMP (en caso de ser así debe tenerse en cuenta que el proceso de migración implicaría referenciar a las empresas en el SGEMP siendo éste el sistema mandatorio y prescindiendo de los datos independientes que figuren en la fuente de migración)

### EER \- Empresas de explotación de resultados

Las integraciones necesarias para disponer de la funcionalidad el módulo al completo son:

* Personas: SGP. Es una integración imprescindible.
* Empresas: SGEMP. Es una integración imprescindible.
* Estructura organizativa: SGO. Podría prescindirse de esta opción siempre que:
	+ No se habilite la posibilidad de ver el detalle de las personas y/o dar de alta nuevas personas desde el SGI. En caso de habilitarse esta funcionalidad, la integración sería necesaria y siempre y cuando el SGP corporativo incluya como obligatorio algún campo recogido a través de esta integración.
	+ No se habilite la posibilidad de ver el detalle y/o dar de alta nuevas empresas desde el SGI. En caso de habilitarse esta funcionalidad, la integración sería necesaria y siempre y cuando el SGEMP corporativo incluya como obligatorio algún campo recogido a través de esta integración.

Además de las cuestiones relativas a estas integraciones, incluidas en los apartados finales de este documento, de debe dar respuesta a

las siguientes cuestiones relativas a una posible migración de datos:

* Si existe algún sistema a través del que se realice actualmente la gestión de las EER
	+ ¿Se trata de un sistema comercial o un desarrollo propio?
	+ ¿Se dispone del modelo de datos?
* Si no existe un sistema pero sí se dispone de datos recopilados en ficheros (forma excel, filemaker o similar), debe identificarse:
	+ Formato en el que están disponibles los datos que sean objeto de migración
* ¿Tienen todas las EER los mismos datos o existe un conjunto de datos diferente en función de las mismas?
* Identificar el volumen de EER a migrar y la estructura aproximada de la información que contienen.
* Se debe de indicar si los datos a migrar referencian a personas en el SGP o si los datos de las personas están contenidos de manera independiente al SGP (en caso de ser así debe tenerse en cuenta que el proceso de migración implicaría referenciar a la personas en el SGP siendo éste el sistema mandatorio y prescindiendo de los datos independientes que figuren en la fuente de migración)
* Se debe de indicar si los datos a migrar referencian a empresas del SGEMP o si los datos de las empresas están contenidas de manera independiente al SGEMP (en caso de ser así debe tenerse en cuenta que el proceso de migración implicaría referenciar a las empresas en el SGEMP siendo éste el sistema mandatorio y prescindiendo de los datos independientes que figuren en la fuente de migración)

### PRC \- Baremación de la producción científica

Las integraciones necesarias para disponer de la funcionalidad el módulo al completo son:

* Personas: SGP . Es una integración imprescindible.
* Estructura organizativa: SGO. Es una integración imprescindible.
* Integración con sistema de CVN. Es una integración imprescindible.

Dado que la orientación del módulo de PRC del SGI cubre la baremación de los Grupos de investigación tomando como entrada la

producción científica de los mismos, las premisas para implantación del módulo de PRC son:

* + Disponer del módulo de CSP puesto que es este módulo el que cubre la gestión de los grupos de investigación
	+ Que la Universidad disponga de un sistema de gestión de CVN capaz de integrarse con el SGI
	+ Que los baremos a definir se ajusten al listado de baremos preconfigurados en el SGI y basados en los aparatados de la estructura CVN

Referente a la migración de datos históricos para el módulo de PRC, debe tenerse en cuenta que el planteamiento para este módulo en el

SGI es la realización de la baremación de los grupos de investigación. Solo cabría plantear una migración de datos si los baremos en los

que estuvieran basadas las baremaciones a migrar estén disponibles en los baremos base del SGI. Será un estudio a realizar en tiempo

de implantación. Con este planteamiento el punto a identificar ahora es:

* ¿Se plantea la migración de las baremaciones de grupos históricas?

## Integraciones

### Integración con el sistema de gestión de personas (SGP)

Independientemente de los módulos a implantar existe una integración que resulta imprescindible, se trata de la integración con el

Sistema de gestión de personas (SGP). El SGI no almacenará ningún dato relativo a las personas, toda la información que precisa debe

ser recuperada en tiempo real desde el SGP.

Se indican de forma general los grupos de datos relativos a la entidad genérica "persona" que precisa el SGI, identificando si se precisan

de forma general o de manera particular para algún módulo concreto (por lo que su inclusión sería necesaria solo en el caso que el

módulo correspondiente sea objeto de implantación):

* Datos personales y de contacto (GENERAL)
* Colectivo universitario (alumnado, PDI, PAS, personal externo, etc.) al que pertenece (GENERAL). Los colectivos concretos que aplican en cada Universidad se identificarán en tiempo de implantación pero es necesario que el SGI reciba esta información para cada persona.
* Datos de nivel académico y categoría profesional (CSP, ETI, EER, PII)
* Sexenios y dirección de trabajos (tesis y otros) (PRC).

El SGI provee de un API para la integración con el SGP. Lo más común es que el sistema desde el que el SGI reciba la información de

personas sea el Sistema de gestión de RRHH corporativo, sin embargo, el SGI no impone ninguna restricción para que sean varios los

sistemas que nutran al SGI de la información de personas, si así fuese el caso.

Existen dos formas de plantear la integración de personas:

* Que el sistema o sistemas de la Universidad implementen los servicios del API del SGI
* Que se desarrolle un interface de comunicación intermedio a través del que se realice una transformación entre datos/API de los sistemas origen y el API del SGI

Existe la posibilidad de que desde el SGI se pueda solicitar el alta de una persona (por ejemplo una persona externa que participe en un

grupo de investigación, proyecto, contrato o que solicite una evaluación a la comisión de ética). Dado que el SGI no almacena datos de

personas, este alta deberá ser redirigida al SGP corporativo. Del mismo modo, el SGI ofrece la posibilidad de solicitar la modificación de

los datos de una persona. Ambas funcionalidades pueden no ser activadas en caso que los procedimientos internos de gestión no

admitan que la creación de personas se realice desde sistemas externos al propio SGP corporativo. En caso de activarse cualquiera de

las dos funcionalidades el SGP corporativo deberán incluirse los servicios de integración correspondientes.

Teniendo en cuenta lo anterior:

* ¿Con qué sistema o sistemas se debe integrar el SGI para recibir la información de personas?
* ¿Se optará por desarrollar un interface de comunicación intermedio entre el SGI y los sistemas origen de la Universidad? o por el contrario ¿se desarrollarán los servicios de integración en los sistemas origen de la Universidad de forma que respondan exactamente al API que expone el SGI?
* Si se opta por desarrollar un interface de comunicación intermedio ¿deberá ser un desarrollo a presupuestar por Treelogic o será un desarrollo a realizar por la propia Universidad o terceros?
* ¿Se habilitará la creación de nuevas personas desde el SGI?
	+ Si la respuesta es afirmativa ¿qué datos mínimos precisa el SGP corporativo para dar de alta una nueva persona?
* ¿Se habilitará la modificación de datos personas desde el SGI?
	+ Si la respuesta es afirmativa ¿qué datos de la persona podrán ser modificados desde el SGI?

### Integración con el sistema de la estructura organizativa (SGO)

El SGI precisa de una serie de datos generales como son las áreas de conocimiento, departamentos, centros, listados de unidades

geográficas (países, comunidades, localidades) y listado de clasificaciones (UNESCO, CNAE, ...). No es obligatorio que exista esta

integración. Todos estos listados pueden ser definidos y cargados durante la implantación del SGI pero conviene que si existe un sistema

universitario que los pueda proporcionar se realice una integración con el mismo para que así los datos del SGI estén unificados con los

del sistema origen. Los listados objeto de integración pueden proceder del sistema de gestión académica, del sistema de recursos

humanos o de cualquier otro sistema propio de la Universidad o de una combinación de los mismos. En el SGI se identifica con el nombre

genérico de sistema de la estructura organizativa (SGO).

* ¿Existe un sistema que pueda proporcionar al SGI el listado de áreas de conocimiento, los departamentos y los centros de la Universidad?
	+ Si existe este sistema ¿Se optará por desarrollar un interface de comunicación intermedio entre el SGI y el/los sistemas origen de la Universidad? o por el contrario ¿se desarrollarán los servicios de integración en los sistemas origen de la Universidad de forma que respondan exactamente al API que expone el SGI?
	+ Si se opta por desarrollar un interface de comunicación intermedio ¿deberá ser un desarrollo a presupuestar por Treelogic o será un desarrollo a realizar por la propia Universidad o terceros?
* ¿Existe un sistema que pueda proporcionar al SGI algún listado de clasificaciones por las que interese clasificar los proyectos, tales como CNAE, UNESCO, ANEP o cualquier otra clasificación propia de la Universidad?
	+ Si existe este sistema ¿Se optará por desarrollar un interface de comunicación intermedio entre el SGI y el/los sistemas origen de la Universidad? o por el contrario ¿se desarrollarán los servicios de integración en los sistemas origen de la Universidad de forma que respondan exactamente al API que expone el SGI?
	+ Si se opta por desarrollar un interface de comunicación intermedio ¿deberá ser un desarrollo a presupuestar por Treelogic o será un desarrollo a realizar por la propia Universidad o terceros?

  


### Integración con el sistema de gestión de empresas (SGEMP)

En el ámbito del SGI se entiende por empresa cualquier organismo o entidad con la que se establezca un vínculo para el desarrollo de las

actividades de investigación, ya sea como entidad financiadora ya sea como entidad con la que la Universidad participa en el desarrollo de

la actividad. No es necesario, por tanto, que exista actividad económica con la entidad para que ésta tenga un vínculo con el SGI. Si bien

pudiera ser el sistema de gestión económica el sistema origen de estos datos, no tendrá porque ser así en todas las Universidades,

pudiendo darse el caso de que fuesen incluso dos los sistemas origen: uno para las entidades con las que exista actividad económica y

otro para el resto de entidades. Por este motivo, la integración de empresas se desvincula de la integración económica. Al igual que en el

caso de personas, el SGI no almacena ningún dato de empresas toda la información que precisa debe ser recuperada en tiempo real

desde el SGP. En caso que en los sistemas de la Universidad solo se almacenen las entidades con las que se establezca actividad

económica, la única funcionalidad del SGI que estaría limitada sería la introducción de los socios con los que la Universidad participase

en los proyectos de investigación (cuando se tratase de entidades para las que nunca antes se hubiese establecido relación económica.)

Los datos que precisa el SGI son los datos básicos (nombre, razón social, número de identificación, dirección postal)

Existen dos formas de plantear la integración de personas:

* Que el sistema o sistemas de la Universidad que provean implementen los servicios del API del SGI
* Que se desarrolle un interface de comunicación intermedio a través del que se realice una transformación entre datos/API de los sistemas origen y el API del SGI

Existe la posibilidad de que desde el SGI se pueda solicitar el alta de una empresa (por ejemplo, el caso mencionado anteriormente de

una empresa con la que se participa en un proyecto y con la que nunca antes se hubiera establecido relación). Dado que el SGI no

almacena datos de empresas, este alta deberá ser redirigida al SGEMP corporativo. Del mismo modo, el SGI ofrece la posibilidad de

solicitar la modificación de los datos de una empresa. Ambas funcionalidades pueden no ser activadas en caso que los procedimientos

internos de gestión no admitan que la creación de empresas se realice desde sistemas externos al propio SGEMP corporativo. En caso de

activarse cualquiera de las dos funcionalidades el SGP corporativo deberán incluirse los servicios de integración correspondientes.

Teniendo en cuenta lo anterior:

* ¿Con qué sistema o sistemas se debe integrar el SGI para recibir la información de empresas?
* ¿Se optará por desarrollar un interface de comunicación intermedio entre el SGI y los sistemas origen de la Universidad? o por el contrario ¿se desarrollarán los servicios de integración en los sistemas origen de la Universidad de forma que respondan exactamente al API que expone el SGI?
* Si se opta por desarrollar un interface de comunicación intermedio ¿deberá ser un desarrollo a presupuestar por Treelogic o será un desarrollo a realizar por la propia Universidad o terceros?
* ¿Se habilitará la creación de nuevas empresas desde el SGI?
	+ Si la respuesta es afirmativa ¿qué datos mínimos precisa el SGEMP corporativo para dar de alta una nueva empresa?
* ¿Se habilitará la modificación de datos de empresas desde el SGI?
	+ Si la respuesta es afirmativa ¿qué datos de la empresa podrán ser modificados desde el SGI?

### Integración con el sistema de gestión económica (SGE)

El SGI no almacenará ningún dato relativo a la gestión económica de proyectos, contratos o propiedad industrial e intelectual, ni realizará

los cálculos de obtención del saldo económico de los proyectos. La información relativa al estado económico podrá visualizarse de

manera integrada en el SGI pero el sistema origen de todos los datos será el SGE. Será en este sistema donde se registren gastos,

facturas, ingresos, reservas de crédito (si aplica), etc.

La integración económica se puede considerar la más compleja ya que no dispone de una estructura de datos fija. Se debe realizar un

estudio previo para identificar los campos a visualizar en el SGI tanto de gastos como de ingresos así como del estado en el que han de

estar éstos para que se visualicen en el SGI.

Como resumen general se listan algunas premisas y datos que forman parte de esta integración:

* En el SGE deben de estar identificados los proyectos/contratos/propiedad industrial e intelectual cuyos datos económicos se quieran recuperar en el SGE.
* En el SGI se debe relacionar cada proyecto/contrato con el correspondiente identificador del proyecto en el SGE. Este identificador de proyecto en el SGE podrá ser un número de proyecto económico, una orgánica, etc. (el concepto que corresponda según cada SGE).
* Desde el SGI se podrá crear un nuevo proyecto económico/orgánica en el SGE quedando vinculado a un proyecto/contrato del SGI.
* En el SGI se podrá vincular los conceptos de gasto (a nivel de convocatoria/proyecto) con los tipos de gasto (códigos económicos) utilizados en el SGE, configurando así la elegibilidad de la convocatoria/proyecto.
* En el SGI se podrá definir el presupuesto del proyecto por anualidad a nivel de concepto de gasto, de tipo de gasto y de partida presupuestaria. Desde el SGI, se podrá remitir el detalle del presupuesto por partida presupuestaria al SGE.
* En el SGI se podrá activar o no la validación de gastos. A través de esta validación de gastos se podrá realizar la aceptación del gasto y la correspondencia del tipo gasto con el concepto de gasto de la convocatoria/proyecto en caso de que esta no sea única.
* En el caso de los contratos, en el SGI se definirá el calendario de facturación previsto. Las facturas se crearán y emitirán en el SGE asociándolas al número de previsión del SGI.
* La información económica de un proyecto/contrato se mostrará en el SGI en tres secciones:
	+ Estado actual del proyecto: en esta sección se presentará el balance actual de gastos ingresos del proyecto/contrato.
	+ Detalle de operaciones contables, desglosado en ingresos, gastos y modificaciones presupuestarias. En cada Universidad se deberán definir las operaciones contables a mostrar y el estado en el que deben estar las mismas para que sean mostradas en el SGI (retenido, comprometido, obligado, etc). Se deben definir las columnas a mostrar en el SGI.
	+ Facturas y gastos. Son los gastos ya materializados y validados. En cada Universidad se debe identificar el estado en el que han de figurar los gastos para que éstos se muestren en esta sección, así como los gastos a mostrar. Se desglosan en:
		- Facturas y gastos generales
		- Viajes y dietas
		- Personal contratado
	+ Facturas emitidas (asociadas a los contratos). Se deberá identificar el estado en el que han de figurar las facturas emitidas en el SGE para que se muestren en el SGI así como los campos a mostrar.
* El SGE debe de permitir identificar los gastos de registros originados para cada PII. En el SGI se podrá vincular cada PII con sus contratos de explotación. Se recuperarán del SGE los ingresos originados por estos contratos. A partir de estos ingresos y los gastos de registros, el SGI podrá calcular el reparto de regalías asociado a la PII.

Teniendo en cuenta lo anterior:

* ¿Con qué sistema se debe integrar el SGI para recibir la información económica?
* ¿Se optará por desarrollar un interface de comunicación intermedio entre el SGI y el sistema de gestión económica de la Universidad? o por el contrario ¿se desarrollarán los servicios de integración en el sistemas de gestión económica de la Universidad de forma que responda exactamente al API que expone el SGI?
* Si se opta por desarrollar un interface de comunicación intermedio ¿deberá ser un desarrollo a presupuestar por Treelogic o será un desarrollo a realizar por la propia Universidad o terceros?
* ¿Existe algún punto de las premisas anteriores, relativas al SGE, que no pueda ser cubierto?
* ¿Se debe habilitar la validación de gastos en el SGI?
* ¿Se habilitará la creación de nuevos proyectos económicos/orgánicas desde el SGI?
	+ Si la respuesta es afirmativa ¿qué datos mínimos precisa el SGE corporativo para dar de alta un nuevos proyecto económico/orgánica?
* ¿Se habilitará la modificación de datos de este proyecto económico/orgánica desde el SGI?
	+ Si la respuesta es afirmativa ¿qué datos podrán ser modificados desde el SGI?

### Integración con sistema de CVN

Desde el SGI se puede utilizar el API disponible para que el sistema de CVN incorpore al CV de cada persona:

* Proyectos competitivos y no competitivos en los que participa
* Grupos de investigación en los que participa
* Proyectos externos en los que se autoriza a participar
* Autoría sobre propiedad industrial e intelectual

Además se puede utilizar el API provisto por el SGI para poder aplicar la baremación de la Producción científica de los grupos de

investigación a partir del CVN de cada miembro del grupo.

* ¿Con qué sistema de CVN se debe integrar el SGI?
* ¿Se hará uso de la integración para que el sistema de CVN los proyectos/grupos/PII en el CV de cada persona?
* ¿Se hará uso de la integración para que el SGI disponga de la información necesaria para la baremación de la producción científica de los grupos de investigación?
* ¿Se optará por desarrollar un interface de comunicación intermedio entre el SGI y el sistema de gestión de CVN de la Universidad? o por el contrario ¿se desarrollarán los servicios de integración en el sistemas de CVN de forma que responda exactamente al API que expone el SGI?
* Si se opta por desarrollar un interface de comunicación intermedio ¿deberá ser un desarrollo a presupuestar por Treelogic o será un desarrollo a realizar por la propia Universidad o terceros?




