# Hércules : PII \- Módulo de Propiedad industrial e intelectual



## Modelo de dominio

![](/attachments/597853838/597874026.png)

El objeto de este módulo de Protección Industrial e Intelectual es el que desde la OTRI se gestionen las invenciones y sus protecciones.

Todo el proceso de protección de invenciones está marcado por las diferentes leyes de regulación existentes en este ámbito:

* Ley de patentes (que se extiende por norma general a todo tipo de propiedad intelectual).
* Ley de secreto industrial.

El proceso de registro de la propiedad de una invención se inicia por los investigadores cumplimentando un formulario (oficialmente llamado "comunicación de resultados a proteger") donde se recoge:

* Técnica o arte empleadas.
* Sector empresarial donde encajaría.
* Empresas a las que podría interesar la licencia de explotación.
* Si el producto o conocimiento a proteger ha sido desarrollado en un proyecto financiado con subvención o a través de un contrato del artículo 83\.

Esta solicitud (el formulario de comunicación de invención o de resultados a proteger) se remite a la OTRI. 

En cada universidad existe un proceso de aprobación que determinará si a partir de dicha comunicación se inicia el proceso de solicitud de protección de la misma o no y, en su caso, cómo se protegerá:

* Decisión interna a la OTRI.
* Existencia de una comisión de valoración universitaria.
* Valoración a través de consultoría externa.

Si tras este proceso de aprobación se decide que se ha de proteger la invención, la OTRI le asignará un tipo de protección. En este punto es en el que la invención aparecerá por primera vez en el SGI, esto es, será a partir de este momento cuando el personal de la OTRI la dará de alta con los datos que se considere de interés reflejar en el sistema, uno de ellos, el propio documento de comunicación.

Si el resultado es negativo existen una serie de pautas internas internas a cada universidad para permitir:

* Que el investigador se autofinancie el registro.
* Que se destinen fondos de algún Grupo de investigación para financiar el registro.

En este caso, la invención puede registrarse o no en el SGI, pero la gestión económica relativa a su financiación será transparente para el módulo de PII y tratada de igual forma que si la financiación fuese por parte de la universidad, simplemente se mostrará la información de gastos e ingresos asociados a la invención que se encuentre registrada fuera del mismo, bien en los sistemas de la universidad (gastos), bien en otros módulos (CSP, para los contratos de licencia, por ejemplo).

El Gestor (ACT\-PII\-001\-Gestor) de la OTRI creará la invención con los datos que interese reflejar en el SGI de los contenidos en el documento e irá añadiendo la información y los posibles cambios en el proceso de decisión de si se ha de proteger la invención y cual es la mejora manera. Si la protección es llevada a cabo, el paso a realizar es la adición de solicitud o solicitudes de protección que se consideren oportunas dentro de los plazos previstos.

Se pueden gestionar todos los aspectos de la protección de invenciones durante toda la vida de la misma (contratos, gastos, ingresos, repartos, documentos, titularidades e inventores).

## Descripción funcional

Desde el punto de vista de la OTRI no hay diferencias entre el personal a nivel de permisos en este módulo. Todos los usuarios con permiso para acceder al mismo son rol Gestor (ACT\-PII\-001\-Gestor).

Con carácter general todas las invenciones tienen la posibilidad de recoger en el SGI la misma información:

* **Datos generales**: serán aquellos datos mínimos básicos necesarios para dar de alta una invención en el sistema.
* **Inventores**: lista de autores de una invención.
* **Documentos**: documentación digitalizada asociada a las invenciones de carácter general, como puede ser el propio documento de "comunicación de resultados a proteger".
* **Titularidad**: información las entidades titulares de la invención a lo largo del tiempo.
* **Informes de patentabilidad**: informes sobre los que el gestor se podrá basar para tomar las decisiones de seguir adelante o no con la protección de una invención.
* **Solicitudes de protección**: reflejo de los trámites que se llevan a cabo a lo largo del tiempo y, según el caso, en diferentes países para la protección de una invención. Será la única sección de información que podrá diferir en contenido entre las protecciones de tipo industrial y las de tipo intelectual.
* **Ejecución económica**: información sobre gastos, contratos e ingresos generados por las invenciones y sobre los procesos de reparto de los beneficios de la explotación de las mismas.

### Flujo general

![](/attachments/597853838/597874025.png)

El gestor de la OTRI accede al módulo y lo primero que verá es la lista de invenciones que ya haya registradas en el sistema, pudiendo ser ninguna si el sistema no tiene ningún registro. Podrá además realizar búsquedas para filtrar dichas invenciones bajo algún criterio si así lo requiere.  


Al añadir una invención, lo primero que verá el usuario será la sección de "Datos generales" junto con la sección de "Inventores". Estas dos secciones contienen el conjunto de información a recoger del formulario de comunicación de invención que la OTRI recibe del inventor, por lo que serán los primeros datos a informar y posiblemente los únicos hasta que se arranque cualquier gestión sobre la misma. El gestor deberá por tanto completar en primer lugar estas dos secciones y "Guardar" la invención para a continuación poder completar el resto de información de la invención que se reparte por las diferentes secciones.   


Una vez se guarde la invención, se podrá:

* Ver y/o modificar los datos generales.
* Ver y/o modificar los inventores. La modificación de los inventores una vez estaban ya creados no tendrá reflejo en la titularidad.
* Ver y/o modificar la información de titularidad, que será generada automáticamente si se han informado los inventores, pero se podrá modificar.
* Gestionar documentación adicional, en el alta se puede incluir únicamente un documento, que en general, será el formulario de comunicación de invención.
* Gestionar informes de patentabilidad.
* Gestionar protecciones para la invención
* Ver la información económica asociada a la invención y realizar repartos de los beneficios generados

El flujo natural de la gestión de la invención según se ha mostrado en el diagrama anterior es:

1. Alta de invención incluyendo datos generales e inventores.
2. Incorporación de informes de patentabilidad, en caso de que se hayan solicitado realizar.
3. Si en base al informe o informes y/o a criterio del gestor de la OTRI se decide seguir adelante con la protección, se arrancaría con una primera solicitud de protección.
4. Según evolucione dicha primera solicitud, se irán reflejando en el SGI sus diferentes estados e información asociada y/o a criterio del gestor se decidirá si abrir y cuándo nuevas vías de protección.
5. Desde el momento que se generen los primeros gastos y haya los primeros contratos que repercutan ingresos, éstos se verán reflejados en la invención.
6. Cuando el gestor considere, llevará a cabo el reparto de los ingresos generados.
7. En cualquier momento del flujo, se podrán incorporar documentos a la invención.

Este orden de ocurrencia no está limitado en el sistema ni este ciclo tiene un punto de fin determinado para las invenciones, sino que éstas y su información asociada permanecerá viva y será modificable en el SGI permanentemente (con alguna excepción descrita más adelante).

Las secciones de información disponibles en el formulario de invención dentro del SGI, en su orden lógico, se describen a continuación.  


### Secciones del formulario

#### Datos Generales

Sección con los datos básicos de la invención proporcionados en su mayoría en el documento de comunicación de invención. Son los siguientes:

* **Título**. Campo de texto obligatorio.
* **Fecha de comunicación.** Fecha de la comunicación de la invención. Por defecto se cargará con la fecha del momento seleccionada, pero se podrá indicar otra por parte del usuario.  Obligatoria.
* **Descripción**. Campo de texto obligatorio.
* **Tipo de protección**. Desplegable obligatorio.
	+ Propiedad Industrial
		- **Patente**
		- **Modelo de utilidad**
		- **Diseño industrial**
		- **Marca**
		- **Secreto industrial**. Forman parte de los tipos de protección industrial los acuerdos de **secreto industrial**. Se basan en un acuerdo privado de confidencialidad y uso del producto o conocimiento desarrollado, vendrían a ser tratados como acuerdos de "know\-how", pero en el marco de tipo de protección industrial. (A veces no interesa lanzar el proceso de registro de patente y directamente se acuerda hacer uso de la misma en base a la firma de un acuerdo privado de uso secreto).
	+ Propiedad Intelectual   
	
		- **Software**
		- **Know\-how**
* ****Subtipo de protección**.**Desplegable opcional. El desplegable es visible si el tipo tiene subtipos.
* **Proyecto de investigación**. Proyecto a asociar con la invención a seleccionar de entre los proyectos disponibles en el SGI. Sería el proyecto o contrato con el que se ha financiado o en el marco del cuál ha surgido la invención. Opcional.
* **Sectores de aplicación.** Listado de sectores empresariales que podrían estar interesados en la invención. No se recogerán códigos CNAE en este punto porque no se dispondrá de información tan detallada, por lo que será información de más alto nivel y distinta a la que se presenta a la hora de seleccionar clasificaciones CNAE. Se pueden asociar más de uno. Será obligatorio añadir al menos uno.
* **Áreas de procedencia.** Listado de áreas de conocimiento de las que puede proceder o están relacionadas con la invención. Se pueden asociar más de una. Será obligatorio añadir al menos una.
* **Documento de comunicación de invención**. Formulario original que el investigador ha entregado a la OTRI para comunicar la invención. Solo es visible en esta sección en el alta de la invención por simplicidad, a partir del alta, aparecerá junto con el resto de documentos asociados a la invención. La idea es que fuese únicamente un documento, pero no se limitará que se puedan añadir más. Será obligatorio añadir al menos uno.
* **Comentarios/Observaciones**. Campo de texto abierto no obligatorio.

#### Documentos

Sección en la que el usuario puede **ver y adjuntar documentación** que se genera durante el proceso de gestión de la protección de la invención.

Dispondrá de un listado de documentos con un nombre para cada uno junto con la fecha en la que fue adjuntado, pudiendo ser cada uno de ellos **descargado** o **borrado**.

Se pone a disposición del usuario la opción de adjuntar un nuevo documento con un nombre y fecha seleccionada.

En esta sección es en la que aparecerá, en caso de haberse informado, la documentación adjuntada durante el proceso de alta de la invención en el formulario de "Datos generales".

#### Participantes

En una invención existirán participantes tanto a nivel personal, que denominaremos "autores" de la invención o "miembros del equipo inventor", como a nivel de organizaciones o entidades/empresas, que denominaremos "titulares" de la invención. 

Todos los miembros del equipo inventor (autores) llevan asociado su porcentaje de participación (autoría). 

Los miembros del equipo inventor participan vinculados a una organización. En función del porcentaje de autoría de sus miembros, cada organización o "titular" tiene, a su vez, un porcentaje de titularidad. El porcentaje de titularidad se obtendría a partir del sumatorio de los porcentajes de participación de cada uno de los miembros del equipo inventor pertenecientes a la entidad/empresa/organización colaboradora. En ocasiones, este porcentaje de titularidad puede ser establecido bajo acuerdo entre las organizaciones participantes, de forma que no se corresponda exactamente con el porcentaje de autoría.

No existirá a nivel de formulario una sección denominada "Participantes" sino que en su lugar se distinguirá un formulario independiente para cada una de estas figuras, una para el Equipo inventor y otra para Titulares o Titularidades.

##### Equipo inventor

Sección en la que se añaden los autores o miembros del equipo inventor de la invención. 

Será obligatorio informarlos todos en el alta de la invención.  


Existirá un listado de miembros del equipo inventor donde las columnas a mostrar serán: **Nombre**, **Apellidos**, **Número de documento de identificación, Entidad** y **Participación**, pudiendo ser cada uno de ellos **visualizado** o **modificado**, pero no borrado (salvo en un momento inicial antes de guardar la invención por primera vez) en lo relativo a su asociación con la invención.  


Se diferencian los miembros del equipo inventor de la propia Universidad de los miembros del equipo inventor externos por la columna **Entidad**.  


En la opción de añadir **nuevo miembro de equipo inventor** se muestra un buscador común y general a todo el sistema donde se buscan las personas en los sistemas de la Universidad para ser referenciados en esta sección. Si no se encuentra a la persona en los sistemas de la Universidad, se podrá solicitar el alta de la misma mediante un formulario de "Solicitar alta" de persona específico de la implantación en la universidad e integrado con el sistema universitario correspondiente, ya que los datos de los miembros del equipo inventor, a excepción de los surgidos como necesidad específica de información dentro de este módulo, no serán almacenados en el SGI.  


Los **datos visibilizados** al encontrar una persona a añadir como miembro del equipo inventor de la Universidad serán los identificados en el formulario de búsqueda común en la tabla de resultado de búsqueda y, a mayores, los del formulario de "Ver detalle" de persona específico de la implantación en la universidad e integrado con el sistema correspondiente, al que se podrá acceder desde el resultado de la búsqueda.  


Un dato que siempre se ha de informar en el formulario para añadir un nuevo miembro de equipo inventor a la invención, independientemente del miembro, es el **porcentaje de participación de autoría** en la invención. Será un campo numérico entero de 1 a 100 y obligatorio.

Cuando el usuario informe por primera vez la lista de miembros del equipo inventor asociados a la invención, se generará automáticamente la información acerca de la titularidad de la misma (pestaña "Titularidad"). Esto sólo ocurrirá la primera vez que se "Guarden" los miembros del equipo inventor, esto es, en el momento de la creación de la invención.

##### Titularidad

Sección donde se ven y desde la que se gestionan los titulares (entidades) de la invención y los periodos de vigencia de los mismos definidos por una fecha de inicio y un fecha de fin.

Se mostrarán dos listados separados pero dependientes entre sí: el listado de períodos de titularidad y el listado de titulares asociados a un período de titularidad.  


El **Listado de períodos de titularidad** contendrá un listado de períodos de tiempo diferenciados y no coincidentes cuyo objeto es el de reflejar un cambio en la titularidad de la invención del que se quiere dejar constancia. 

Se entenderá por período vigente a aquel que no tenga una fecha de fin y por período histórico al que sí la tenga. En un momento concreto, solo podrá existir un único período vigente.

En este listado de se mostrará tanto el período vigente, que solo podrá ser uno, como los períodos históricos, estando en un primer momento seleccionado el período vigente o, en su defecto, el histórico más reciente, al acceder a la pantalla. 

Las columnas del listado son: **Fecha inicio** y **Fecha fin** (de titularidad). 

Al seleccionar un período en este listado, se actualizará automáticamente el listado de titulares con los que estén asociados a ese período.   


Sobre este listado se podrá modificar o eliminar únicamente el período vigente y siempre y cuando además no existan repartos de pagos asociados con él. El único dato que se podrá modificar será la fecha de inicio de la titularidad. En cuanto a la eliminación, ésta supondrá que se solicite al usuario confirmar si al eliminar el período vigente el período inmediatamente anterior vuelve a ser vigente (se elimina su fecha de fin) o bien simplemente no queda ningún período de vigencia activo.

Se podrá además añadir un nuevo período de vigencia, de forma que el inmediatamente anterior pasará a ser histórico. El usuario habrá de indicar tanto la fecha de fin del período anterior, que pasará a ser histórico, como la de inicio del nuevo período, que pasará a ser el vigente. 

Al añadir un nuevo período de vigencia, se validará la secuencialidad y no intersección entre las fechas, pero no se restringirá por parte de la aplicación el que haya saltos entre períodos de titularidad. Además, se hará una copia de la lista de titulares del período anterior para que sirva de base a las modificaciones que este nuevo período precise realizar sobre los mismos.

En el **Listado de titulares** aparecerán por defecto las entidades titulares dentro del período vigente o, en su defecto, del histórico más reciente, pero se podrán mostrar así mismo los titulares de un período histórico si se selecciona otro período en el listado de períodos de titularidad. Las columnas del listado son: **Entidad** y **Participación**. Desde el listado de titulares vigentes también se podrá acceder al **Informe de la titularidad de una entidad**. Para los titulares asociados a un período histórico, no se podrá acceder al **Informe de la titularidad de la entidad**.  


Como se ha descrito anteriormente, para el primer período de vigencia, sus titulares y los porcentajes se generarán en función de las entidades a las que pertenecen los miembros del equipo inventor y sus porcentajes de autoría. El porcentaje de participación de una entidad es la suma de los porcentajes de autoría de los miembros del equipo inventor vinculados a ella.

Así mismo, como se comenta también en la gestión del listado de períodos de titularidad, al añadir un nuevo período se cargará este listado por defecto con los titulares del período anterior.

Al modificar los titulares se pueden cambiar los porcentajes o añadir o quitar alguna de las entidades, siempre y cuando la suma de porcentajes siga sumando 100% al ir a guardar las modificaciones.  


#### Informe de patentabilidad

Sección para añadir los diferentes Informes de patentabilidad que se hayan solicitado realizar a entidades externas a la universidad. Se pueden añadir varios.

Se mostrará un listado con los datos básicos de los informes añadidos hasta el momento: **Documento, Fecha informe, Entidad creadora y Resultado.**

Los datos a recoger del informe son:

* **Fichero adjunto**. Campo de selección de un archivo a adjuntar. Obligatorio.
* **Fecha informe**. Campo de tipo fecha (sin hora). Obligatorio.
* **Resultado del informe**. Desplegable con las siguientes opciones posibles: Favorable, Desfavorable. Obligatorio.
* **Entidad creadora**. Entidad creadora del informe que se obtiene de los sistemas de la Universidad a través del buscador genérico de empresas común al SGI. Obligatorio.
* **Contacto empresa creadora (\*\*)**. Campo de texto libre. Obligatorio.
* **Contacto examinador (\*\*)**. Campo de texto libre. Obligatorio.
* **Comentarios**. Campo de texto libre opcional.

(\*\*) No se requiere integración con el sistema de gestión de personas de la universidad en estos campos puesto que no se dispondrá de todos los datos necesarios para poder dar de alta a estos contactos / personas en los mismos.

#### Solicitudes de protección

Sección para gestionar las solicitudes de protección de la invención en los distintos niveles y tipos de propiedad.

Al acceder a la sección se ve la lista de solicitudes que ya haya registradas en el sistema, pudiendo ser ninguna si el sistema no tiene ningún registro.

En este listado se verán columnas diferentes en función del si el tipo de propiedad de la invención es **Propiedad** **industrial** o **Propiedad** **intelectual**, ya que los campos de las solicitudes varía entre un caso y el otro.  


 Columnas para las invenciones de Propiedad intelectual: **Vía de protección, Fecha de solicitud,  Nº de solicitud, Nº de registro** y Acciones.  Estas acciones son ver/modificar la solicitud y borrarla. 

 Columnas para las invenciones de Propiedad industrial: **Vía de protección, Fecha de fin de prioridad o de presentación a fases nacionales/regionales,  Nº de solicitud, Nº de publicación, Nº de concesión, Estado** y Acciones.  Estas acciones son ver/modificar la solicitud y borrarla. 

El **estado** que se muestra para las solicitudes de protección de invenciones de **Propiedad industrial** será uno de los siguientes:

* **Solicitada**. En general, solamente tiene la fecha de solicitud rellenada, pero no se restringirá a que así sea.
* **Publicada**. En general tiene, además de la fecha de solicitud, la fecha de publicación rellenada, pero no se restringirá a que así sea.
* **Concedida**. En general tiene, además de la fecha de publicación , la fecha de concesión rellenada, pero no se restringirá a que así sea.
* **Caducada**. En general tiene la fecha de caducidad rellenada, pero no se restringirá a que así sea.

Las solicitudes de protección de invenciones de **Propiedad intelectual** **no tendrán estado**.

Para las solicitudes de protección, un dato fundamental es la vía a través de la cuál se solicita proteger la invención, esto es, la **Vía de protección**.

Las vías de protección serán distintas en función del tipo de propiedad.

Las **vías de protección** contempladas para las invenciones con un tipo de protección del tipo **Propiedad industrial** son:

* **España**. Lo más común es que sea la primera solicitud, aunque se puede partir de una no española.
* **PCT**. Es una extensión de 18 meses del año de prioridad. Lo normal es que sea la segunda solicitud.
* **Europea**. Esta vía tiene la particularidad de tener la validación por países.
* **País específico**.  Se escoge de la lista de códigos de país cual es elegido.

Las **vías de protección** contempladas para las invenciones con un tipo de protección del tipo **Propiedad intelectual** son:

* **Registro autonómico**.
* **Acta notarial**.
* **Registro interno**. Registro propio del la Universidad, esta solicitud no va a registrarse a ningún organismo oficial externo.

En todo caso, ambas listas podrán ser ampliadas siempre y cuando las vías de protección supongan una funcionalidad ya identificada para alguna de las anteriores en el sistema.

Los campos de una solicitud diferirán en función del tipo de protección de la invención, así pues, para las invenciones de tipo **Propiedad industrial** serán los siguientes:  


* **Título.** Campo de texto. Obligatorio.
* **Fecha de solicitud** (si no es la primera solicitud o si es PCT) / **prioridad** (si es la primera y solo si no es PCT).  Obligatoria.
* **Fecha fin de prioridad/presentación a fases nacionales/regionales**. Obligatorio si es visible. Sólo visible si es la primera solicitud o es PCT. Es de 12 meses para España, 18 para PCT (contemplar para el resto de vías) desde la Fecha de prioridad.
* **Vía de protección**. Desplegable. Obligatorio.
* **País**. Desplegable. Obligatorio si es visible. Solo visible si la vía de protección es "País específico".
* **Número de solicitud**.  Campo de texto. Obligatorio. (España: PXXXXX, PCT: PCTXXXXX, Europea: EPXXXXX, País específico: PaisXXXXX)
* **Estado.** Desplegable. Obligatorio. Tendrá los siguientes valores posibles:  

	+ Solicitada
	+ Publicada
	+ Concedida
	+ Caducada
* **Fecha de publicación**. Opcional.
* **Número de publicación**. Campo de texto no obligatorio. (España: ESXXXXX, PCT: WOXXX, Europea: EPXXXXX, País específico: PaisXXXXX)
* **Fecha de concesión**. Opcional.
* **Número de concesión**. Campo de texto no obligatorio.
* **Fecha de caducidad**. Obligatorio si es visible. Solo es visible si se cambia el estado a "Caducada".
* **Tipo de caducidad**. Obligatorio si es visible.  Solo es visible si se cambia el estado a "Caducada".   

	+ Abandono
	+ Retirada
	+ Denegación
* **Agente de la propiedad**. Campo de búsqueda de entidades vinculadas a la Universidad para asociar una a la solicitud. Opcional.
* **Comentarios/observaciones**. Campo de texto no obligatorio.

Para las invenciones de tipo **Propiedad intelectual** serán los siguientes:

* **Título.** Campo de texto. Obligatorio.
* **Fecha de solicitud**.  Obligatoria.
* **Vía de protección**. Desplegable. Obligatorio.
* **Número de solicitud**.  Campo de texto. Obligatorio.
* **Número de registro**.  Campo de texto. Opcional.

En cuanto a la gestión de las propias solicitudes, ésta también difiere en función del tipo de propiedad. En el caso de la Propiedad intelectual no aparecen los conceptos de prioridad ni la diferenciación por países, ya que se gestiona su protección a nivel mundial, y solamente habrá una solicitud de protección, mientras el el caso de la Propiedad industrial, generalmente habrá varias solicitudes de protección y sí se manejan los conceptos de inicio y fin de prioridad y de fin de plazo para entrada en períodos regionales/nacionales para las PCTs y la posibilidad de hacer solicitudes por país específico.

Para el caso de la Propiedad industrial, por el hecho de tener en cuenta el concepto de **prioridad**, la **primera solicitud** es muy importante, ya que es la que va a tener informadas las **fecha de inicio y fin de prioridad**. Sobre esta cuestión hay varios puntos a matizar en función de la vía de protección específica que se seleccione.

##### Propiedad industrial \- PRIMERA SOLICITUD \- VÍA NO PCT

En estos casos aplicará la **prioridad**, de forma que, el fin de la misma se calculará en función de la vía concreta y de los meses de prioridad que tenga configurados y de la fecha de prioridad (fecha de solicitud nombrada de manera especial en este caso).

##### Propiedad industrial \- SEGUNDA SOLICITUD Y POSTERIORES \- VÍA NO PCT

En estos casos **no** aplicará la **prioridad**.  


##### Propiedad industrial \- VÍA PCT

En estos casos, **no** aplicará la **prioridad**, pero sí se gestiona el concepto de plazo para la presentación de solicitudes a fases nacionales / regionales, de forma que, el fin de dicho plazo se calculará en función de los meses de prioridad configurados para esta vía concreta y de la fecha de solicitud.

##### Propiedad industrial \- VÍA EUROPEA

En estos casos, **no** aplicará la **prioridad**.

Para las solicitudes de este tipo de vía aparecerá una sección adicional, que no existirá en el resto de casos, con la lista de países en los que se ha validado la invención. Se denominará **Países validados** y tendrá los siguientes campos:

* **Fecha validación**. Obligatoria.
* **País**. Obligatorio.
* **Código de invención**. Obligatorio.

La gestión de las invenciones por esta vía se llevará a cabo mediante la creación de solicitudes en cada uno de estos países. El gestor será el encargado de su creación y gestión en los organismos correspondientes, el el SGI será gestionado a través de una única solicitud por esta vía Europea.  


##### Procedimientos asociados a la solicitud

Los procedimientos serán anotaciones que se quieren registrar a lo largo del tiempo relacionadas con la solicitud y de las que se quiere dejar constancia de documentación, acciones a tomar y los comentarios que se consideren oportunos.

Estarán disponibles para cualquier tipo de protección asociada a la invención y cualquier vía de protección asociada a la solicitud.

El listado de procedimientos se muestra dentro del detalle de cada solicitud concreta.

Los campos disponibles para los procedimientos se distribuirán en dos secciones:

* Datos de procedimientos:
	+ **Fecha**. Obligatoria.
	+ **Tipo de procedimiento**. Desplegable Obligatorio.
	+ **Acciones a tomar**. Campo de texto. Opcional.
	+ **Fecha límite** de las acciones a tomar. Opcional.
	+ **Generar aviso**. Check para abrir el diálogo de crear aviso.
	+ **Comentarios**. Campo de texto opcional.
* Documentos asociados a procedimientos:
	+ **Fecha añadido**. Obligatorio.
	+ **Nombre**. Campo de texto. Obligatorio.
	+ **Fichero**. Campo de tipo fichero. Obligatorio.

##### Flujo de las solicitudes

![](/attachments/597853838/597875237.png)

#### Gastos

Sección en la que se puede consultar el listado de gastos asociados a la invención obtenidos del **SGE mediante integración**.

Estos gastos son referenciados en la invención para poder **asociarlos** a una solicitud de protección (no obligatorio) y para poder controlar la parte de los mismos que está pendiente de deducir, puesto que puede que no se deduzcan completamente en una operación de reparto.  


Se podrá consultar el informe de gastos, que contendrá la suma de los gastos asociados a cada invención y/o solicitud de protección desde la fecha de solicitud hasta la actualidad.

#### Contratos asociados

Sección en la que se puede consultar el listado de contratos asociados a la invención y de sectores asociados a cada contrato. 

En el listado de contratos se mostrarán una serie de datos relevantes sobre los mismos obtenidos consultando al módulo CSP del SGI.  


En el listado de los sectores en los que la invención se ha licenciado para cada país se mostrará la siguiente información: 

* **Sector**. Desplegable obligatorio. Listado con los sectores de aplicación que también se informan asociados a la invención.
* **País**. Desplegable Obligatorio. Listado de países.
* **Fecha de inicio de licencia**. Opcional.
* **Fecha de fin de licencia**. Opcional.
* **Exclusividad**. Desplegable con valores Sí o No. Obligatorio.

Se pueden tanto borrar como añadir nuevos.

#### Ingresos

Sección en la que se puede consultar el listado de **ingresos asociados** a la invención (o contratos de licencia de la misma) obtenidos del **SGE mediante integración**.

Estos ingresos son referenciados en la invención para poder controlar la parte de los mismos que está pendiente de repartir, puesto que puede que no se repartan completamente en una operación de reparto.

#### Repartos

Sección donde se podrán tanto consultar como realizar nuevos repartos de los beneficios/resultados de la explotación de las licencias de invención que se hayan contratado como modificar los datos de los repartos existentes.  


Se podrá escoger un rango de fechas para poder filtrar los repartos ya existentes.

Los datos de un reparto estarán divididos en dos secciones:

* **Datos generales**: esta sección será la que se pueda informar en el momento de la creación. Contendrá dos listados, uno con el listado de gastos a deducir y otro con el listado de ingresos a repartir. Sobre cada gasto e ingreso el usuario habrá de realizar dos operaciones:
	+ Seleccionar si  lo quiere incluir o no en el reparto
	+ En el caso de haber incluido el gasto o ingreso en el reparto, indicar qué importe concreto quiere deducir o repartir, respectivamente, en este proceso de reparto.
* **Reparto de resultados**: esta sección solo estará visible si el resultado es positivo para poder llevar a cabo el reparto de las cantidades entre la Universidad y los miembros del equipo inventor de la misma. Este reparto, que será en porcentajes, se configura de antemano con un valor por defecto y se hace por tramos de resultado, si bien se podrá modificar por el usuario. El reparto del importe correspondiente a cada uno de los miembros del equipo inventor será calculado automáticamente en función de su porcentaje de autoría, basándose en el importe correspondiente al conjunto del equipo, si bien también se podrá modificar por parte del usuario.

Los datos que contendrá cada una de estas secciones serán los siguientes:

* **Datos generales**: 
	+ Listado de **gastos a deducir** con la siguiente información:
		- Fecha
		- Referencia
		- Importe
		- Concepto
		- Tipo
		- Solicitud
		- Importe pendiente de compensar
		- Importe a compensar
	+ Listado de **ingresos a repartir** con la siguiente información:
		- Fecha
		- Referencia
		- Nº interno de contrato
		- Entidad pagadora
		- Importe
		- Importe pendiente de reparto
		- Importe a repartir
	+ Además se mostrará en esta pestaña el cálculo del resultado en base a los desgloses indicados en gastos e ingresos como la diferencia entre ingresos y gastos.
* **Reparto de resultado**:
	+ **Resultado a repartir**. Decimal. Solo lectura. Calculado en base a sumatorio de ingresos a repartir \- sumatorio de gastos a deducir.
	+ **Reparto de ingresos según tramo**. Composición de 3 campos de texto informando del tramo que aplica en base al resultado y los porcentajes que corresponden para ese tramo a Universidad y equipo inventor.
	+ **Importe del reparto a la Universidad**. Decimal. Calculado en base al % correspondiente a la Universidad.
	+ **Importe del reparto a equipo inventor**. Decimal. Calculado en base al % correspondiente al equipo inventor.
	+ **Desglose de reparto a equipo inventor**. Listado de miembros del equipo inventor a los que la Universidad tiene obligación adquirida de hacer repartos de regalías. Para cada elemento del listado aparecerá la siguiente información:  
	
		- Datos personales del miembro del equipo inventor (nombre, apellidos, número de documento, entidad a la que está vinculado)
		- Porcentaje de autoría
		- Porcentaje que le aplica en el reparto (calculado en base a su porcentaje de autoría relativo al resto de miembros del equipo inventor a los que paga la Universidad)
		- Desglose del reparto:
			* Importe a recibir en nómina
			* Importe a dedicar a un proyecto
			* Importe a gestionarse por otra vía que no sea nómina ni proyecto
		- Importe total del reparto que corresponde al miembro del equipo inventor

Se deberá comprobar que la suma del importe a pagar Universidad y del importe a pagar a los inventores coincida con el Resultado a repartir.

Así mismo,  el importe total, una vez desglosado el reparto entre los miembros del equipo inventor, ha de coincidir con el importe del reparto que se ha indicado que corresponde al equipo inventor en su conjunto.

El resultado de este proceso de reparto se podrá finalmente exportar a un documento **PDF**.

## Comunicados

* De manera genérica para una solicitud: 
	+ avisos a los usuarios dentro de los X meses desde la fecha de prioridad hasta la fecha de fin de prioridad. Los avisos han de ser:
		- A los X/2, a los 2X/3 y a los X\-1 meses, avisando de lo que queda a hasta los X meses y que no se ha añadido una segunda solicitud de protección. Si hay más de una solicitud ya no se avisa.
		- Al mes X, avisando de que se ha terminado el periodo de prioridad.
* La solicitud es una PCT y no es la primera solicitud:
	+ avisos a los usuarios dentro de los 18 meses siguiente a los X de prioridad. Los avisos han de ser:
		- A los 9, a los 14 y a los 17 meses.
		- Al mes 18, avisando de que se ha terminado de extensión.
* Generar avisos dinámicos a partir de los procedimientos de la solicitud.

Ver análisis en [PII \- Comunicados](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=PII+-+Comunicados&linkCreation=true&fromPageId=597853838 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=PII+-+Comunicados&linkCreation=true&fromPageId=597853838").

## Informes

* Listado de invenciones
* Listado de solicitudes de protección

## Integraciones

* Sistema de Gestión Económica
	+ Gastos de asociados a una invención.
	+ Ingresos de los contratos.
* Personas para la parte de autoría de la invención
* Entidades / Empresas para:
	+ Titularidades de la invención.
	+ Proveedores de servicios (p.ej. informe de patentabilidad).
* Sistema de Gestión de la Organización:
	+ Áreas de conocimiento de la invención.
	+ Países licenciados y solicitudes de protección por país.
	+ Palabras clave asociadas a la invención.
* Sistema de Gestión de Documentos:
	+ Documentación de la invención.
	+ Documentación de los procedimientos de las solicitudes de protección.
* Otros módulos de Hércules:
	+ CSP, para Contratos de la invención para su visualización.
	+ CSP, para Proyectos de investigación para su asociación con la invención.

## Modelo lógico

![](/attachments/597852351/597865350.png)  


  





