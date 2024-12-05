# Hércules : Análisis Funcional SGI \- Hércules



Este documento recoge el Análisis Funcional del prototipo del Sistema de Gestión de la Investigación (SGI) que forma parte del conjunto de soluciones Hércules, con las que la CRUE\-TIC (Comisión Sectorial de Tecnologías de la Información y las Comunicaciones de la Conferencia de Rectores de las Universidades Españolas) dotará, a todas las Universidades españolas adheridas, de una solución global de gestión de la investigación basada en capacidades e  infraestructura semántica.

El Sistema Hércules se compone de tres proyectos:

* Proyecto de arquitectura semántica (ASIO)
* Proyecto de enriquecimiento y análisis de datos (EDMA)
* Proyecto de desarrollo de un prototipo innovador de un Sistema de Gestión de la Investigación (SGI)

  


Este documento se limitará a recoger el análisis funcional del prototipo del SGI, si bien a lo largo del mismo habrá referencias a los sistemas ASIO y EDMA.

## Objetivos del análisis funcional

El objetivo del documento de análisis funcional es recoger la definición de requisitos y casos de uso que quedarán cubierto en el SGI resultante. En este documento quedarán establecidos los requisitos necesarios para que el sistema a desarrollar cumpla con las necesidades del SGI \- Hércules de la CRUE: requisitos funcionales y no funcionales. En definitiva, este documento delimitará el alcance del sistema a desarrollar.

El documento se ha estructurado partiendo de lo general y llegando a lo particular, para ello se han establecido los siguientes objetivos:

* Descripción general del sistema.


	+ Visión y alcance
	+ Actores principales
	+ Relación con otros sistemas
* Catálogo de requisitos
* Descomposición en casos de uso

## Descripción general del SGI

El Sistema Universitario Español no cuenta actualmente con ningún sistema de gestión de información de investigación libre compartido por las distintas universidades adheridas a la CRUE. El SGI a desarrollar implementará los flujos de gestión de la investigación de manera global, de acuerdo a la definición recogida durante este proceso de análisis (en el que participan diferentes Universidades). Será un sistema a implantar de manera opcional e individualizada en cada una de las universidades que decidan hacer uso del mismo. Los datos gestionados por el SGI de cada Universidad serán exclusivamente los propios de esa Universidad. Como parte de la implantación del SGI  en cada Universidad se requerirán unos trabajos adicionales para adaptar la capa de integración del SGI a los requisitos específicos de los sistemas corporativos de cada Universidad. Esto puede suponer, del mismo modo, la realización de estos mismos trabajos de adaptación en la capa de integración de los sistemas corporativos de la Universidad que se deseen integrar con el SGI.

  


#### Visión y alcance

A modo de contextualización del alcance global del SGI se realiza una primera descripción del mismo desde diferentes puntos de vista:

##### Módulos funcionales

El SGI cubrirá el ciclo y procesos propios de la gestión de la investigación, para ello se descompondrá en los siguientes módulos funcionales:

* Convocatorias, solicitudes, proyectos y contratos (incluyendo la gestión de ayudas y becas)
* Grupos de investigación
* Producción científica
* Propiedad industrial e intelectual
* Ética
* Empresas de base tecnológica
* Oferta tecnológica
* Relación con clientes
* Áreas de especialización
* Catálogo de la oferta científico técnica (servicios de ayuda a la investigación)

![](/attachments/597853748/597867616.jpg)

  


Todos los módulos del sistema mantendrán estrecha relación participando de manera común en la mayoría de los flujos de trabajo cubiertos por el SGI. En la imagen previa se pueden apreciar estas relaciones. 

Se realiza a continuación una breve descripción de cada uno de los módulos, si bien los requisitos y casos de uso de cada uno de ellos se recogen de manera detallada en su apartado correspondiente. Para cada uno de los módulos se identifica la abreviatura con la que será referido a lo largo del análisis, diseño e implementación del sistema. 

Las acciones o datos visibles de cada uno de los módulos, o incluso la visibilidad total del módulo, va a estar siempre limitada por el perfil con el que se hace uso del SGI.

* **CSP**: Convocatorias, solicitudes, proyectos y contratos (incluyendo la gestión de ayudas y becas). Módulo principal del sistema. Podrá estar desglosado en tres submódulos: convocatorias, solicitudes  proyectos. Unifica la gestión de convocatorias, clasificándolas de acuerdo a varios criterios. Sobre estas convocatorias se podrán registrar solicitudes, ya sea de manera directa por parte de los investigadores, ya sea desde las unidades u oficinas de gestión. En función del tipo de convocatoria podrá haber un distintos tipos de solicitud, pero el objetivo del SGI será siempre la máxima normalización posible. Las solicitudes concedidas darán lugar  a los proyectos y/o contratos, que independientemente de su tipología quedarán agrupados en este mismo módulo. Los proyectos/contratos tendrán el correspondiente equipo de investigación, de forma que los investigadores participan con un rol determinado en el mismo. Los proyectos/contratos contarán con el correspondiente apartado de datos económicos. La gestión económica y contable de los proyectos, estará delegada de manera íntegra en el Sistema de gestión económica (SGE) corporativo. Se entiende por gestión económica todas las operaciones relacionadas con facturación, pagos y cobros, relaciones internas, reservas, modificaciones de crédito, detracciones de costes indirectos, etc. Es fundamental, por tanto, la existencia de un mecanismo de integración entre ambos sistemas. Solo a través de este mecanismo de integración será posible que el SGI disponga de manera detallada de la información necesaria para la realización de la  justificación económica de los proyectos.

Es el módulo principal del SGI y será utilizado de manera general por todas las unidades u oficinas gestoras (UGI, OTRE, OPE, etc), además de por el personal investigador. El módulo CSP contará con un mecanismo para marcar las convocatorias y proyectos bajo la titularidad de una determinada unidad de gestión. De este modo, una convocatoria que está siendo gestionada por OTRI, no podrá ser visible, de forma general por los gestores de otras oficinas. Será necesario vincular a los gestores a sus correspondientes unidades.

* **GIN**: Grupos de investigación. Los grupos de investigación estarán constituidos por diferentes miembros que participan con un rol determinado. Los grupos de investigación quedarán vinculados a la producción científica, líneas de investigación y oferta tecnológica de cada uno de sus miembros. Será un módulo disponible tanto para las oficinas gestoras, principalmente para la UGI o unidad responsables de la gestión de grupos, como para el personal de investigación.
* **PRC**: Producción científica.  Este módulo centralizará la producción científica oficial de la Universidad, contará con los flujos de aprobación necesarios y contendrá el algoritmo de baremación. Deberá estar integrado con el sistema de gestión de CVN corporativo, a través del que recibirá los items de producción científica que no son gestionados en el SGI. Será un módulo disponible tanto para las oficinas gestoras, principalmente para la UGI o unidad responsable de la gestión de grupos, como para el personal de investigación.
* **ETI**: Ética. Módulo de gestión de las comisiones de ética. El personal de investigación podrá tramitar a través de este módulo las solicitudes de revisión por parte del comité de ética de las propuestas de proyecto. El comité de ética, que podrá estar constituido en una unidad de gestión independiente, deberá poder planificar las reuniones de los tres comités de ética a los que dará cobertura el SGI. Los resultados de las evaluaciones quedarán registrados en el SGI, que también dará cobertura al seguimiento de las revisiones que fueran necesarias a lo largo de la duración de cada proyecto.
* **PII**: Módulo de gestión de la propiedad industrial e intelectual, clasificada según los distintos tipos de protección existentes. El registro de una protección será por norma general responsabilidad de la OTRI, quedando los investigadores vinculados a través del equipo de autoría. Una protección podrá concluir en uno o varios contratos de explotación de licencias (módulo CSP).
* **EBT**: Empresas de base tecnológica, de intenso conocimiento no tecnológico, spin\-off sy/o startups. El registro de constitución y seguimiento de las EBT será gestionado, por norma general, por la OTRI. El personal investigador será el solicitante de la creación de una EBT, si bien podría ser directamente promovida por la OTRI. Derivados de la constitución de estas EBTs se registrarán, en el módulo CSP, los correspondientes contratos de regalías o royalties.
* **OTC**: Oferta tecnológica. Módulo donde los investigadores podrán registrar su oferta investigadora, que deberá ser adecuadamente validada por los responsables de la unidad de gestión correspondiente.
* **RLC**: Relación con clientes.  Módulo para dar cobertura al flujo de registro y seguimiento de las oportunidades de negocio con los clientes. Se mantendrán identificados todos los posibles clientes con los que se haya realizado o interese realizar acciones para fomentar la actividad de investigación y transferencia. De una oportunidad se desencadenará un proyecto/ contrato con o sin convocatoria previa. Será un módulo a utilizar principalmente por la OTRI. No dispondrá de acceso por parte de los investigadores. Éstos empezarían a formar parte del flujo tras la materialización de una oportunidad en la correspondiente convocatoria y/o proyecto/contrato.
* **CAT**: Catálogo de la oferta científico técnica (servicio de ayuda a la investigación). Módulo de gestión de los servicios de apoyo a la investigación. Los gestores de este servicio realizarán su gestión y seguimiento. El personal investigador hará uso de los servicios prestados, a través de las correspondientes solicitudes. Los técnicos del servicio SAI ejecutarán las tareas derivadas de las solicitudes. Desde este módulo se realizará la notificación al Sistema de gestión económica (SGE) de las correspondientes relaciones internas de gasto. Como aspecto destacable se debe considerar la posibilidad de que sea un módulo accesible por personal externo a la universidad, personas físicas o empresas que requieran los servicios prestados por SAI.  A través del módulo AUT, se debe permitir y asegurar el acceso de este personal externo siempre bajo las normas de seguridad que envuelven de manera global al SGI. Las tareas realizadas para personal externo redundarán en una notificación de facturación al SGE. El  SGI delegará en el SGE todo el proceso de facturación, cobro  y contabilización.
* **AES**: Áreas de especialización. Módulo que permitirá el vínculo de los investigadores con los medios de comunicación. Los investigadores podrán definir las áreas en la que se consideran expertos, esta información deberá ser validada por los gestores de la unidad responsable.
* **INV**: Investigadores. Módulo de gestión de investigadores. Si bien la entidad "investigador" se podría considerar el núcleo del SGI, podría decirse que, en cambio, este módulo actúa como un módulo "recolector" de la información asociada al investigador:
	+ Datos personales, laborales y académicos del investigador. En un modo de operación básico todos los datos personales, laborales y académicos serán recogidos por el SGI a través de mecanismos de integración con los sistemas de gestión corporativos correspondientes. De este modo, aunque puede que llegase a ser necesario, no es el objetivo principal de este módulo la creación/modificación/eliminación de investigadores. Tendrán una casuística particular los investigadores externos, aquellos que tienen una relación laboral con la Universidad y, por tanto, cuyos datos no podrán ser recopilados desde los sistemas de gestión corporativos.
	+ CVN: Datos del CVN. Estructura normalizada del currículum del investigador.  Si bien algunos de sus apartados podrán ser recuperados, total o parcialmente, de la integración con sistemas corporativos o de otros módulos del SGI, existirán apartados o parte de los mismos que deberán ser introducidos por cada investigador. La introducción y gestión de esta información será realizada por el módulo CVN. El módulo de gestión de CVN se implementará como un módulo externo al SGI. Tendrá capacidad para importar/exportar el CVN en los formatos normalizados por FECYT.
	+ Desde el módulo de investigadores se tendrá una visión resumida, organizada y centralizada de la actividades, productos, resultados con los que está vinculado un investigador concreto. La gestión y vista ampliada de cada uno estos ítems deberá realizarse desde el módulo correspondiente, que estará adecuadamente enlazado desde el módulo de investigadores:
		- Líneas de investigación: Líneas de investigación a las que está adscrito el investigador.
		- Oferta tecnológica: Oferta tecnológica del investigador.
		- Producción científica: Producción científica, debidamente agrupad por su tipología, del investigador.
		- Solicitudes de convocatorias: Solicitudes registradas sobre convocatorias (en cualquiera de sus variedades) por el investigador.
		- Proyectos: Proyectos en los que participa el investigador, incluidos contratos, ayudas y becas.
		- PII: Propiedad industrial e intelectual en las que el investigador participa como autor.
		- EBTs: Empresas de base tecnológica en las que el investigador participa como promotor.
		- Grupos de investigación: Grupos de investigación de los que forma parte el investigador.
		- Áreas de especialización: Áreas de especialización del investigador.
		- Comisiones de ética: Solicitudes realizadas a comisión de ética.
		- Servicios del catálogo: Solicitudes realizadas al servicio de apoyo a la investigación y/o servicios en los que actúa como responsable.

##### Módulos de soporte al proceso de la investigación

Además de los módulos funcionales enumerados, el SGI contará con una serie de herramientas a distintos niveles

* **USR:**Gestión de usuarios y unidades de gestión: solicitud de creación de usuario externos y configuración de perfiles de los usuarios dentro del  SGI. Creación y configuración de las unidades de gestión.
* **AUT**: Módulo de autenticación y autorización. Primera interacción del usuario con el sistema. El SGI deberá estar integrado con el sistema de autenticación y/o autorización corporativo. O en su defecto, tener sus propios mecanismos internos. A través de este módulo los usuarios podrán introducir su usuario / contraseña, y el SGI deberá poder validar o no el acceso del usuario, asignándole el perfil correspondiente y ofreciendo solamente la visibilidad de los módulos y/o conjunto de datos que le corresponda.
* **AVI**: Módulo de avisos y alertas. El SGI contará con un módulo de visualización y generación de avisos y alertas, que recordarán a los distintos grupos de usuarios  el registro o el vencimiento de plazos.
* **BI**: Analítica e inteligencia de datos. Herramienta de generación de informes y estadísticas con amplias posibilidades de adaptación de filtros y formatos de los resultados.
* **CSO**: Canal de soporte a los usuarios. Herramienta  de ayuda on\-line basada en lenguaje
* **ESB**: Bus de integración. Módulo de la arquitectura técnica que aislará al SGI de la implementación particular de los diferentes interfaces de integración en cada implantación.
* **MLI**: Multi\-idioma. El SGI se configurará por defecto en dos idiomas: español e inglés a nivel de traducción de etiquetas del interface de usuario. Se contemplará la doble introducción del contenido en ambos idiomas en el módulo de CVN. Será el usuario quien deberá realizar la doble introducción del contenido en ambos idiomas, en caso de que desee tener su CV disponible en ambos idiomas.

#### Actores principales

Se recogen a continuación los principales actores, reducidos éstos a grupos de personas,  que pueden interactuar con el SGI:

* Personal de las unidades y oficinas de gestión (indistintamente UGI, OTRI, OPE, etc.)
* Personal de gestión y personal técnico del Servicio de Apoyo a la investigación
* Personal investigador
* Personal externo, que accede de manera autenticada (usuario/contraseña) al SGI:
	+ Personal investigador
	+ Solicitantes de los servicios de apoyo a la investigación (módulo CAT)
	+ ¿medios de comunicación?
* Público en general, que solamente accede a la vista pública del SGI

Ver detalle en [GEN \- Actores](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/gen-actores.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/gen-actores.md")

#### Experiencia de usuario

Combinando los módulos funcionales y los actores principales del SGI se pueden distinguir diferentes categorías a nivel de experiencia de usuario:

* Personal de gestión:
	+ Acceso autenticado al SGI
	+ Tendrán acceso a un determinado número de módulos funcionales del sistema en función de las unidades de gestión a las que esté vinculado, y accediendo a la información con rol de administración, gestión o lectura, según corresponda.
	+ Dentro de la información disponible en los respectivos módulos no tendrán restricciones en función de los investigadores asociados a la entidad de referencia del módulo.
* Personal de investigación:
	+ Acceso autenticado al SGI.
	+ Tendrán acceso a los módulos funcionales que incluyen registro de solicitudes y aquellos que permiten definir su actividad investigadora:
		- CSP
			* Búsqueda y acceso a las convocatorias registradas en el SGI por el personal de gestión.
			* Registro interno en el SGI de solicitudes sobre las convocatorias publicadas. Listado de sus solicitudes y seguimiento de las mismas
			* Acceso al listado de los proyectos en los que participa o ha participado y visibilidad de sus datos detallados.
		- Grupos investigación:
			* Acceso al listado de los proyectos en los que participa o ha participado y visibilidad de sus datos detallados.
		- Ética
			* Registro de solicitudes de comisión de ética y seguimiento de las mismas.
			* Según su rol podrá ser miembro evaluador de un comité de ética  y, por tanto, acceder al flujo asociado al proceso de evaluación.
		- Producción científica:
			* Listado de todas las actividades que conforman su producción científica, debidamente estructurada, y gestión de las mismas.
			* Solicitudes de certificados de participación
			* Inclusión de acreditaciones de la producción científica registrada bajo filiación de entidades externas
		- CVN: Gestión de su CVN. El módulo de CVN se implementará como un módulo ajeno al SGI, si bien se dispondrá del correspondiente mecanismo de integración.
		- Oferta tecnológica. Listado de su oferta tecnológica y gestión de la misma.
		- Áreas especialización. Listado de sus áreas de especialización y gestión de las mismas.
		- Catálogo:
			* Registro de solicitudes al servicio de apoyo a la investigación y seguimiento de las mismas.
			* Para investigadores responsables gestión de los grupos de trabajo y aprobación
		- PII
			* Listados de las protecciones en las que colabora y acceso al detalle de las mismas.
		- EBT
			* Listado de las EBTs en las que colabora y acceso al detalle de las mismas
	+ Para cualquiera de estos módulos cada investigador solamente tendrá disponibles los ítems en los que participa (sus solicitudes, sus proyectos, su CVN, etc.), y no tendrá visibilidad del perfil de ningún otro investigador.
* Personal técnico del Servicio de apoyo a la investigación:
	+ Acceso autenticado al SGI
	+ CAT: Solamente tendrá disponible el módulo de Catálogo de la oferta científico\-técnica, limitando la visibilidad a las tareas que puede realizar de manera directa o que le hayan sido asignadas.
* Medios de comunicación:
	+ AES: Acceso autenticado al SGI, teniendo únicamente disponible la funcionalidad que permite contactar con los investigadores que dispongan de algún área de especialización.
* Público en general:
	+ Información pública del Portal de investigación, sin posibilidad de acceder de manera autenticada al SGI

El interface de usuario responderá a un diseño homogéneo para las vistas del personal de gestión, de investigación y técnico, es decir, para aquellos actores que acceden al SGI de manera autenticada. En el caso de la vista de acceso público, el interface responderá a una estructura independiente.

#### Relación con otros sistemas universitarios

A continuación se enumeran los sistemas corporativos universitarios con los que el SGE dispondrá se relacionará a través de mecanismos de integración. Dado que el SGI se debe diseñar como un sistema global, no dependiente de las condiciones específicas de ninguna Universidad concreta, el planteamiento de diseño será proveer al SGI de un interface de integración que permita el posterior acoplamiento de los sistemas particulares de cada Universidad. Esto supondrá que en periodo de implantación se deba construir, si fuese necesario, el correspondiente módulo de transformación, si en algún caso los datos ofrecidos por los servicios de integración de los sistemas universitarios no se adaptasen de manera directa a los establecidos en este interface de integración. Siempre será necesario que los sistemas objeto de integración incorporen también el correspondiente módulo de integración y provean de los datos definidos en el interface de integración del SGI. La construcción, si fuera necesaria, de este módulo de integración en estos sistemas y/o la ampliación de módulos para recoger datos que fuera precisados por el SGI, quedará siempre fuera del alcance y ámbito de los trabajos de implantación del propio SGI.

* SGE: Sistema de gestión económica. La gestión económica y contable de los proyectos y contratos será realizada por el SGE corporativo. El SGI proporcionará un interface de integración para establecer la comunicación con el SGE. El SGE de cada Universidad debe proporcionar el módulo de integración correspondiente que se acople sobre este interface proporcionado. El SGI actuará como un sistema receptor de los datos económicos generados en el SGE, a fin de poder mostrarlos de forma agrupada. El SGI también realizará notificaciones con los datos necesarios para que se desencadene en el SGE las acciones de registro necesarias.
* SG Personas y/o terceros: Se entiende por sistema de gestión de personas, el sistema corporativo que centralice la información de los datos personales de los actores del SGI. Según la Universidad podrá tratarse de uno o varios sistemas, o quizá se trate del mismo sistema de gestión de recursos humanos. El objetivo es que desde el SGI no se deba realizar la gestión duplicada de datos personales. El SGI actuará como un receptor de los datos personales proporcionados por los sistemas corporativos correspondientes. El SGI proveerá de un interface de integración para recibir esta información. El SGI también realizar notificaciones con los datos necesarios para que se desencadene en el SG Personas y/o tercero la acción de registro de terceros, personas o empresas (investigadores externos, socios de proyectos, etc.)
* SG RRHH: Además de los datos de carácter personal, el SGI requerirá información relativa a la relación contractual de los investigadores con la Universidad, así como información relativa a sus nóminas. Como en los casos anteriores, el SGI actuará como un sistema receptor de esta información proporcionando un interface de integración. El sistema de gestión de RRHH de cada Universidad deberá aportar los mecanismos de integración apropiados.
* SG Académica y/o SG Doctorado: De estos sistemas el SGI podrá recuperar determinada información para ser incorporada al CVN de los investigadores. El SGI será un sistema receptor de información, proporcionando un interface de integración para recibir esta información.
* Firma electrónica: Integración con el sistema de firma digital en el flujo de de firma de las hojas de registro de tiempo de los investigadores.
* Repositorio institucional de producción científica: Integración con el repositorio institucional de producción científica para recuperar datos necesarios para el módulo de producción científica y CVN.
* FECYT: Integración con los servicios de FECYT para importación y exportación del currículum del investigador en formato CVN norma FECYT 1\.4\.
* SIR2: Implementación del mecanismo de autenticación (login de usuarios).

  
  





