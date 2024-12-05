# Hércules : PRC \- Módulo de producción científica



## Introducción

El módulo de producción científica es un módulo integrado en el SGI Hércules que permite tener la base principal y sin duplicados de toda la producción científica de la Universidad.

El objetivo final del módulo de PRC en el SGI es la obtención de la puntuación de la producción científica a los grupos de investigación (en UMU convocatoria ACI). Por lo que el baremo de la convocatoria ACI deberá de ajustarse a los apartados y campos del CVN.

El SGI dispone de los siguientes mecanismos para alimentar la base de producción científica:

* De manera automática, a través de la gestión de proyectos, grupos, PII, etc. realizada por las unidades de gestión en el propio SGI.
* De manera automática, a través de la integración del SGI con el CVN (aquellos items introducidos por el investigador en el CVN y que los envía para su validación a Producción científica).
* De manera automática, a través de la integración con la Universidad para recoger aquellos items que existen en la Universidad y que el SGI se establece como puente para mandárselo al CVN. Ejemplos: sexenios, dirección de tesis.

En PRC no se podrá modificar ningún dato, es un modulo únicamente de consulta, los datos serán modificados en los sistemas de origen, es decir, CVN, otros módulos del SGI o los sistemas externos de la Universidad. Únicamente es un módulo de recopilación de la información de la producción científica la cual podrá ser validada.

Los items introducidos a través del CVN por el investigador deben de ser validados en PRC. La validación de un ítem de producción iría a los IPs de los grupos a los que pertenece cada autor de la publicación.

Las entidades cuya gestión forma parte del SGI, como son los proyectos (en todas sus tipologías; con origen en convocatorias competitivas, en contratos o convocatorias no competitivas), los expedientes de propiedad industrial e intelectual, entre los que estarán las patentes y los grupos de investigación, quedan vinculados de manera automática al currículum de cada miembro del equipo/autores y, por tanto, al módulo producción científica del SGI y se consideran validados, al igual que la información que llega por una integración con la Universidad.

  


## Tipología y datos de la producción cientifíca

Cualquier epígrafe del CVN puede ser susceptible a emplearse en la baremación del ACI pero debido a que los baremos no se pueden calcular de forma única usando los campos del CVN, sino que hay que hacer alguna personalización para realizar los cálculos, los posibles elementos que pueden formar parte del ACI y que serán configurables por un gestor (se podrá seleccionar/deseleccionar de los del listado cada año) son:  


* Sexenios. La fuente de datos origen será a través de una integración con la Universidad.
* Aportación costes indirectos. La fuente de datos origen será exclusivamente el SGI.
* Producción científica. Dentro de Producción científica se tendrá:
	+ Dirección de tesis y/o PFC (030\.040\.000\.000\). La fuente de datos origen será el CVN y la integración con la Universidad
	+ Publicaciones, documentos científicos y técnicos (060\.010\.010\.000\). La fuente de datos origen será el CVN.
	+ Pertenencia a consejos editoriales (060\.030\.030\.000\). La fuente de datos origen será el CVN.
	+ Trabajos presentados en congresos nacionales o internacionales (060\.010\.020\.000\). La fuente de datos origen será el CVN.
	+ Organizaciones de actividades de I\+D\+i (060\.020\.030\.000\). La fuente de datos origen será el CVN.
	+ Proyectos de I\+D\+i financiados en convocatorias competitivas (050\.020\.010\.000\). La fuente de datos origen será exclusivamente el SGI.
	+ Contratos, convenios o proyectos de I\+D\+i no competitivos (050\.020\.020\.000\). La fuente de datos origen será exclusivamente el SGI.
	+ Obras artísticas dirigidas. (050\.020\.030\.000\). La fuente de datos origen será el CVN.
	+ Propiedad intelectual e industrial. Know\-how y secretos industriales. (050\.030\.010\.000\). La fuente de datos origen será exclusivamente el SGI.

## Introducción de la información

### Forma automática SGI

Las siguientes entidades forman parte del SGI por lo que una vez creadas o modificadas en su módulo respectivamente se darán de alta o se modificarán en el módulo de Producción Científica. Dichas entidades serán:

* Proyectos de investigación que tengan en el campo "Apartado CVN" el valor "Competitivo" se dará de alta directamente en el apartado "Proyectos de I\+D\+i financiados en convocatorias competitivas" de Producción científica. La gestión de dichos item se hará en el módulo de CSP, en Producción científica se guardará una copia de los datos que se necesitan para baremar.
* Proyectos de investigación que tengan en el campo "Apartado CVN" el valor "No competitivo" se dará de alta directamente en el apartado "Contratos, convenios o proyectos de I\+D\+i no competitivos" de Producción científica. La gestión de dichos item se hará en el módulo de CSP, en Producción científica se guardará una copia de los datos que se necesitan para baremar.
* Propiedad intelectual e industrial se darán de alta directamente en el apartado "Propiedad intelectual e industrial" de Producción científica. La gestión de dichos item se hará en el módulo de Propiedad intelectual e industrial, en Producción científica se guardará una copia de los datos que se necesitan para baremar.

Dichos item estarán en estado VALIDADO y no pasarán por el flujo de validación.

### Forma automática CVN

El CVN consultará al SGI por los epígrafes que forman parte de la Producción científica y que necesitan validación, es decir, los epígrafes que se han configurado para contabilizar en la baremación ACI.

El CVN enviará todo lo nuevo, modificado o borrado de los items correspondientes a esos epígrafes.

En caso de ser un nuevo item el CVN lo enviará al SGI. Al recibirlo el SGI lo notificará al IP o IPs del grupos o grupos de investigación al que pertenecen los investigadores que forman parte del item.

Para que un item se considere validado tendrá que ser validado por todos los IPs de los grupos. Un item no tiene que estar completamente validado para contabilizar para la baremación del ACI, si por ejemplo un item de publicación científica tiene 4 autores, y 2 de ellos forman parte del Grupo de investigación 1 y otros dos del Grupo de investigación 2 y únicamente lo ha validado el IP del Grupo de investigación 1, ese item contará para la baremación del Grupo 1 y no para la del Grupo 2\.

En caso de ser una modificación de un item el CVN lo enviará al SGI. El SGI comprobará si tiene algún campo para "validación adicional frente a cambios". En caso de que lo tenga y el valor se ha modificado respecto al valor que tiene el SGI almacenado con anterioridad, lo notificará al IP o IPs del grupos o grupos de investigación al que pertenecen los investigadores que forman parte del item. El CVN envía el item entero modificado al SGI.

En caso de que se elimine un item en el CVN de un item que se ha enviado a validar al SGI, dicho item se debe de enviar al SGI, para que se haga el borrado del mismo.

#### Flujo de validación nuevo item en el CVN

1. El CVN lo enviará al SGI a través de los servicios del API implementados en el SGI
2. El SGI guarda los datos del item en PRC e inicializa el item al estado "Pendiente".
3. Al recibirlo el SGI lo notificará al IP o IPs del grupo o grupos de investigación al que pertenecen los investigadores que forman parte del item. La notificación se hará a través del módulo de [CU\-COM\-0020 \- Generar comunicado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado"). Se recorrerán todos los autores del item y se mirará por cada autor al grupo o grupos de investigación al que pertenece actualmente. Una vez que se tiene la lista de grupos de investigación que tienen que validar el item se enviará el comunicado al investigador principal de cada uno de los grupos. El item se considerará totalmente validado (se cambia el estado a "Validado") cuando todos los IP de los grupos lo valide. Un item no tiene que estar completamente validado para contabilizar para la baremación del ACI, si por ejemplo un item de publicación científica tiene 4 autores, y 2 de ellos forman parte del Grupo de investigación 1 y otros dos del Grupo de investigación 2 y únicamente lo ha validado el IP del Grupo de investigación 1, ese item contará para la baremación del Grupo 1 y no para la del Grupo 2 (tendrá un estado "Validado parcialmente").
4. En caso de que el item se rechace el IP tendrá que informar del motivo del rechazo (se cambiará el estado del item a "Rechazado"). Con que uno de los IP de grupos que lo rechace el item se considera rechazado. Un item rechazado no será considerado en el ACI. Será en el CVN donde el investigador tiene que modificar el item y volver a enviar para su nueva validación.
5. El CVN lee del SGI los items que han sido validados o rechazados (mediante un proceso cron o similar programado).

#### Flujo de validación de un item modificado en el CVN (en estado Validado)

En el caso de que en el CVN se modifique un item que está en estado "Validado" en el SGI el flujo será el siguiente:

1. El CVN lo enviará al SGI a través de los servicios del API implementados en el SGI. El CVN envía el item entero modificado.
2. El SGI comprobará si tiene algún campo configurado con "validación adicional frente a cambios". En caso de que lo tenga y el valor se ha modificado respecto al valor que tiene el SGI almacenado con anterioridad, se cambia el estado del item a "Pendiente" y se reemplaza los valores anteriores por los nuevos valores enviados del CVN. Se sigue con el Paso 3 del "Flujo de validación nuevo item en el CVN"
3. Si no tiene ningún campo configurado con "validación adicional frente a cambios" o los tiene pero no han sido modificados los valores, se reemplaza los valores anteriores por los nuevos valores enviados del CVN y se sigue dejando en estado "Validado"

#### Flujo de validación de un item modificado en el CVN (en estado Rechazado)

En el caso de que en el CVN se modifique un item que está en estado "Rechazado" en el SGI el flujo será el siguiente:

1. El CVN lo enviará al SGI a través de los servicios del API implementados en el SGI. El CVN envía el item entero modificado.
2. El SGI modifica el estado del item a "Pendiente" y se reemplaza los valores anteriores por los nuevos valores enviados del CVN.
3. Se sigue con el Paso 3 del "Flujo de validación nuevo item en el CVN"

### Forma automática integraciones Universidad

El SGI se integrará con la Universidad para obtener información de aquellos epígrafes que se dan de alta en la propia Universidad, para ellos se dispondrá de los servicios adecuados para poder consultar los nuevos items, los modificados o los eliminados.

Dichos items estarán en estado VALIDADO y no pasarán por el flujo de validación.

Las integraciones identificadas con la Universidad son:

* Sexenios
* Dirección de tesis

## Convocatorias

Cada año se creará la convocatoria de baremación de grupos para configurar los baremos/criterios de evaluación que se van a aplicar a los items de producción científica y para especificar los puntos de cada uno de ellos.

Para facilitar la tarea de esta configuración se podrá clonar la convocatoria del año anterior para partir de dichos datos y cambiar únicamente aquellos baremos que cambien de un año a otro.

El ACT\-PRC\-003\-Gestor accederá dentro del módulo de PRC a la funcionalidad de **Convocatorias** donde podrá ver las convocatorias dadas de alta en el SGI. Inicialmente se muestra un buscador para poder filtrar por:

* Nombre de la convocatoria
* Año
* Si esta eliminada o no la convocatoria. Si una convocatoria tiene el campo activo a "No" es que a sido eliminada del SGI, es un borrado lógico, por si el gestor quisiera recuperarla, pulsando el botón de "Reactivar".

Se mostrará un listado de aquellas convocatorias que cumplen los criterios de búsqueda.

El listado contendrá las columnas: 

* Nombre. Nombre de la convocatoria
* Año: Año al que pertenece la convocatoria de baremación de grupos
* Importe: Cantidad de dinero disponible para el reparto de la baremación entre los grupos de investigación
* Activo. Indicador del borrado lógico de la convocatoria.
* Fecha baremación. En caso de que ya se haya lanzado el proceso de baremación, fecha en la que se lanzó.

Además de realizar una búsqueda, se podrá dar de alta una nueva Convocatoria.

Desde el listado se podrá acceder a la funcionalidad de consulta y modificación de los datos de la Convocatoria, así como lanzar el proceso de baremación.

El ACT\-PRC\-003\-Gesto podrá lanzar el proceso de baremación del año en el que se esta. Se lanzará y se ejecutará en segundo plano debido al tiempo que tarda en realizar todas las operaciones y consultas. Una vez finalizado el proceso se enviará un comunicado al ACT\-PRC\-003\-Gesto para informarle de que ya se ha finalizado el reparto y que puede ir a consultarlo a la opción del menú "Informes". Se informará el campo "Fecha baremación" una vez que este hecho el reparto. Si ya tiene la fecha de baremación informada es que ya se ha lanzado al menos una vez el proceso de baremación, se dejará volver a lanzarlo, pero se borrarán los datos anteriores y se cogerán los nuevos cálculos para el reparto. Para la misma convocatoria (para el mismo año) no hay histórico, sino que se borran los datos anteriores.

### Nueva Convocatoria

Para realizar un alta de **Convocatoria**, un ACT\-PRC\-003\-Gestor, debe incorporar la información mínima para que pueda registrarse.

Los datos a rellenar serán los siguientes:

#### Datos Generales

* Nombre. Nombre que el ACT\-PRC\-003\-Gestor quiera dar a la convocatoria de ese año. Será un campo obligatorio.
* Año: Año al que pertenece la convocatoria de baremación de grupos. Únicamente se puede crear una convocatoria por año. Se comprobará que no exista una convocatoria creada para ese mismo año. Será un campo obligatorio.
* Años que son baremables: Número de años que se van a tener en cuenta para el proceso de baremación. Será un campo obligatorio.
* Último año a considerar: Es el último año que se va a baremar. A partir de este año se restan el número de años baremables mas uno, para saber en que año empieza la baremación. Por ejemplo, si en el campo "Años que son baremables" se inicializa con un 3 y el campo "Último año a considerar" se pone el año 2021, los años que se van a baremar son los años 2019, 2020 y 2021  (2021 \-3 \+1 \= 2019\). Será un campo obligatorio.
* Importe total: Cantidad de dinero disponible para el reparto de la baremación entre los grupos de investigación. Será un campo obligatorio.
* Partida presupuestaria: Código de la partida presupuestaria de donde salen los fondos para realizar el reparto entre los grupos de investigación. Será un campo opcional.

Se tendrá que informar todos los campos obligatorios y luego se pueden optar por dos posibilidades:

1. pulsar directamente el botón "Guardar la convocatoria" sin ir a las pantallas de "Baremos y puntuaciones" y "Moduladores y rangos", por lo que la convocatoria quedará guardada en el SGI pero no tendrá ningún criterio de baremación a aplicar a la producción científica (a no ser que se haya utilizado la opción de clonar que te copia los datos de la convocatoria que estas clonando). Se podrán informar en otro momento editando la convocatoria.
2. ir a la pantalla "Baremos y puntuaciones" y a la de "Moduladores y rangos" y cumplimentar la información

#### Baremos y puntuaciones

Se mostrará en forma de árbol todos los baremos disponibles en el SGI, donde el ACT\-PRC\-003\-Gestor podrá marcar aquellos que quiere que se tengan en cuenta en la convocatoria que esta editando. Por defecto todos los baremos estarán desactivados (cuando se trata de la funcionalidad de "Nueva convocatoria", si es una clonación tomarán los valores de la convocatoria que se esta clonando)

Para "Guardar la convocatoria" tendrá que cumplimentar los datos de peso y/o puntos mostrados a la derecha de cada uno de los baremos marcados.

En caso de tener marcado un baremo se tendrá que ir a su edición para cumplimentar sus datos:

* Peso: es el peso del baremo, únicamente se aplica el peso para los nodos raíz (los de orden 1\), es decir, a los epígrafes de Sexenios, Aportación coste indirectos y Producción científica. Campo obligatorio si es un nodo raíz.
* Puntos: son los puntos que se les da al baremo, únicamente se les puede dar puntos a los nodos hoja, es decir, aquellos que no tienen hijos. Dato obligatorio si es un nodo hoja.

Una vez editados todos los baremos marcados y cumplimentados se podrá pulsar el botón de "Guardar la convocatoria".

#### Moduladores y rangos

Se muestran los valores de los moduladores:

* Número de autores por área: Se tendrá que indicar por cada área de conocimiento de primer nivel de la Universidad la puntuación para cada rango de número de autores. Los rangos de número de autores serán fijos:  

	+ 1 autor
	+ Entre 2 y 3 autores
	+ Entre 4 y 5 autores
	+ Entre 5 y 6 autores
	+ entre 6 y 7 autores
	+ Más de 8 autores
* Áreas: Se tendrá que indicar por cada área de conocimiento de primer nivel de la Universidad la puntuación que da cada una de ellas si el item pertenece a esa área
* Cuantía coste indirectos: Sólo se mostrará este apartado si el baremo "Aportación costes indirectos" esta seleccionado y en el campo "Tipo de cuantía" se ha elegido la opción "Por rango". Se podrán crear puntuaciones por rangos de cuantía de costes indirectos del proyecto. La cuantía de costes indirectos de un proyecto es la suma del importe concedido de cada uno de los conceptos de gasto dados de alta en las anualidades del proyecto y que sean de tipo coste indirecto.
* Cuantía contratos: Se podrán crear puntuaciones por rangos de cuantía de contratos (proyectos con el campo "clasificación CVN" igual a "Proyectos no competitivos"). La cuantía  de un proyecto es la suma del importe concedido de cada uno de los conceptos de gasto dados de alta en las anualidades del proyecto
* Licencias de explotación: Se podrán crear puntuaciones por rangos de cuantía de contratos de explotación relacionados con invenciones. La cuantía  de un contrato de explotación es la suma de los ingresos de dicho contrato.

## Informes

Desde el módulo de PRC se podrán generar los siguientes informes relacionados con el eeparto de las subvenciones a los grupos de investigación:

* Resumen puntuación grupos: muestra el listado de grupos de investigación con los puntos obtenidos en Sexenios, Costes indirectos y en Producción.
* Detalle grupo: muestra el detalle del reparto de la baremación de una convocatoria de un grupo de investigación. Se muestra el listado de investigadores que forman parte del grupo y los puntos Sexenios, de Costes indirectos y de cada baremo de producción (libros, artículos, trabajos presentados en congresos, dirección de tesis, obras artísticas, comités editoriales, organización de actividades I\+D\+i, proyectos de investigación, contratos e invenciones)
* Detalle producción  investigador/a: muestra los puntos obtenidos de los costes indirectos, sexenios y de su producción científica detallando los puntos en cada item de producción científica.

Para generar cualquiera de los tres informes se necesitará seleccionar obligatoriamente el año de la convocatoria y  seleccionar el tipo de informe. Si el informe es de tipo "Detalle grupo" se necesita seleccionar el grupo y si el informe es de tipo "Detalle producción  investigador/a" se necesitará seleccionar al investigador.

  


## Modelo lógico

![](/attachments/597852527/597871784.jpg)

  


  





