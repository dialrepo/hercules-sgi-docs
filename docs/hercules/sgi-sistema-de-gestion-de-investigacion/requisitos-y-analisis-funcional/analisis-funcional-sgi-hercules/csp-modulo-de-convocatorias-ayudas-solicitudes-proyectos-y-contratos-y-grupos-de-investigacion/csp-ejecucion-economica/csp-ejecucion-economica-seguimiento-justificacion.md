# Hércules : CSP \- Ejecución económica \- Seguimiento justificación



### 1\. Introducción

El flujo previo en el SGI para que este apartado tenga toda la información necesaria es, de manera resumida:

* Se habrán creado en el SGI el proyecto o proyectos correspondientes definiendo el calendario de justificación para cada uno de ellos (menú Configuración económica \- Calendario de justificación dentro de un Proyecto)
* Se habrá vinculado el proyecto SGI con el proyecto SGE correspondiente. En este punto cabe destacar que de acuerdo a los requisitos definidos el SGI permite que varios proyecto SGI se vinculen a un mismo proyecto SGE (funcionalmente esta circunstancia podría darse cuando se crea un proyecto independiente para la cofinanciación pero sin que exista un proyecto SGE particular para este proyecto SGI)
* Se habrá realizado la justificación de uno o más periodos del proyecto. Esta justificación, en este momento, se realizará en el SGE, de manera ajena al SGI.
* El SGE dispondrá de un mecanismo que permita remitir al SGI todos los gastos justificados incluidos en cada una de las justificaciones realizadas sobre el proyecto SGE.

  


El apartado de Seguimiento de justificación permitirá:

* Aportar sobre cada gasto justificado la información de cofinanciación.
* Registrar los requerimientos recibidos manteniendo la información relativa a cada gasto.
* Mantener de manera global los importes totales del proyecto resultantes de todos los requerimientos registrados.

El comportamiento de esta apartado será común para toda la tipología de proyectos y contratos (si aplicase en estos casos). Esto es, se implementará un único flujo de requerimientos independientemente de la naturaleza del proyecto o contrato y se aportará la misma información en cada uno de estos requerimientos, además los datos a aportar en el SGI sobre los gastos justificados será la misma con independencia de la naturaleza del proyecto o contrato.

  


El apartado de seguimiento de justificación estará disponible dentro de Ejecución económica. Se recuerda que este apartado tiene como objetivo presentar de forma estructurada la información económica del los proyectos/contratos, información que debe ser recuperada desde el sistema SGE. Al detalle Ejecución Económica se accede desde un buscador que permite buscar el proyecto SGE, bien directamente con su código, o bien a través de datos propios del proyecto SGI (título, fechas de ejecución, etc.)

![](/attachments/597853005/597860140.png)

  


Desde el listado de proyectos proporcionados se puede acceder al detalle de Ejecución económica

![](/attachments/597853005/597860139.png)

  


  


Cuando se accede al detalle de Ejecución económica, todos los datos harán referencia al proyecto SGE seleccionado:

![](/attachments/597853005/597860152.png)

  


El menú Seguimiento justificación estará dentro del detalle de Ejecución económica por lo que se accederá habiendo seleccionado previamente un proyecto SGE. Este proyecto SGE podrá esta vinculado a uno o más proyectos SGI. El listado de proyectos SGI vinculados al proyecto SGE se muestra en la pantalla inicial del detalle de  Ejecución Económica, que es Listado de proyectos SGI (ver imagen superior).

  


El menú Seguimiento justificación será un agrupador que tendrá disponibles las siguientes opciones:

* Resumen
* Gastos justificados
* Requerimientos

  


![](/attachments/597853005/597860117.png)

  


### 2\. Resumen

La opción "resumen" mostrará información general, agrupada en tres bloques:

* Proyectos SGI que están vinculados al proyecto SGE, aportando en el resumen el importe concedido, siempre que este haya sido indicado en el apartado Configuración económica \- presupuesto.
* Estado actual seguimiento justificación por proyecto: Totales acumulados de la justificación para cada uno de los proyectos SGI vinculados al proyecto SGE.
* Estado actual seguimiento justificación por proyecto y anualidad: Totales acumulados de la justificación para cada uno de los proyectos SGI vinculados al proyecto SGE, cuando el seguimiento de la justificación se realice por anualidades. Esta apartado solo estará disponible si se crean requerimientos vinculados a un id justificación concreto. El campo anualidad (presupuestaria) con el que se corresponde el resumen se debe introducir manualmente
* Calendario de justificación económica, unificando en un listado los periodos de justificación de todos los proyectos SGI vinculados al proyecto SGE.
* Calendario de seguimiento científico de proyectos SGI, unificando en un listado los periodos de seguimiento científico de todos los proyectos SGI vinculados al proyecto SGE.

  


![](/attachments/597853005/597860117.png)

#### 2\.1 Proyectos SGI

En la tabla de resumen se listarán todos los proyectos SGI vinculados al proyecto SGE desde el que se accede al Seguimiento de justificación. Para cada proyecto SGI se muestran los siguientes campos, si bien se proporciona un botón que permitirá acceder al detalle del proyecto (se dispondrá de la posibilidad de forzar la visualización del detalle del proyecto en una pestaña del navegador nueva):

* ID interno SGI: identificador interno del proyecto SGI
* Código SGE: identificador del proyecto SGE
* Referencia en entidad convocante
* Título
* Responsable: Responsable económico o IP en su defecto
* Fecha inicio: fecha de inicio del proyecto
* Fecha fin: fecha de fin del proyecto
* Convocatoria: Título de la convocatoria a la que esté asociado el proyecto SGI, en caso de estarlo.
* Entidad financiadora principal:  Entidad financiadora del proyecto. Se mostrarán las entidades financiadoras del proyecto, separadas por el carácter ",". Se ordenarán por el porcentaje o importe de financiación, en caso de que éste haya sido informado.
* Importe concedido \- Costes directos: Si ha sido introducido el desglose del presupuesto por concepto de gasto del proyecto (Configuración económica \- presupuesto) se sumará el importe concedido de  todos los conceptos de gasto que no tengan marcado el check "costes indirectos". La configuración de los conceptos de gasto del SGI se realiza en el menú Configuración \- Conceptos de gasto.  Si se ha cumplimentado el campo  "valor manual importe concedido universidad"  (disponible en la pantalla Configuración económica \- presupuesto) se mostrará este valor con independencia de que se haya introducido el presupuesto desglosado por concepto de gasto.
* Importe concedido \- Costes indirectos. Si ha sido introducido el desglose del presupuesto por concepto de gasto del proyecto (Configuración económica \- presupuesto) se sumará el importe concedido de  todos los conceptos de gasto que tengan marcado el check "costes indirectos". La configuración de los conceptos de gasto del SGI se realiza en el menú Configuración \- Conceptos de gasto.  Si se ha cumplimentado el campo  "valor manual importe concedido universidad costes indirectos"  (disponible en la pantalla Configuración económica \- presupuesto) se mostrará este valor con independencia de que se haya introducido el presupuesto desglosado por concepto de gasto.

  


#### 2\.2 Estado actual  seguimiento justificación por proyecto

Se dispondrá de una serie de campos totalizadores, relativos a los importes aceptados y rechazados,  que permitirán conocer el estado de la justificación. 

En la pantalla de resumen se mostrará una tabla con un registro por cada proyecto SGI vinculado al proyecto SGE. La mayoría de estos campos deberán ser introducidos manualmente a través del botón editar disponible sobre cada registro.

  


![](/attachments/597853005/597860117.png)

  


La tabla se mostrará precargada con los siguientes campos:

* ID interno SGI: Identificador interno del proyecto SGI
* Fecha última justificación: Es la fecha más actual que se hubiera cumplimentado en el calendario de justificación (ver apartado correspondiente)

  


  


Al pulsar el botón editar disponible sobre cada registro se mostrará una ventana con la información de detalle.

  


![](/attachments/597853005/597881607.png)

  


* Proyecto SGI: ID interno SGI: Identificador interno del proyecto SGI. Es un campo de solo lectura, no se puede modificar.
* Proyecto SGI: Título del proyecto: Título del proyecto SGI. Es un campo de solo lectura, no se puede modificar.
* Fecha última justificación: Es la fecha más actual que se hubiera cumplimentado en el calendario de justificación (ver apartado correspondiente). Es un campo de solo lectura, no se puede modificar.
* Importe concedido costes directos. Es el importe concedido (suma de todas las anualidades) para costes directos que hubiera sido indicado en el presupuesto del proyecto. Es un campo de solo lectura, obtenido de los datos del presupuesto del proyecto.
* Importe concedido costes indirectos. Es el importe concedido (suma de todas las anualidades) para costes indirectos que hubiera sido indicado en el presupuesto del proyecto. Es un campo de solo lectura, obtenido de los datos del presupuesto del proyecto.

  


* Importe justificado. Hace referencia al importe total justificado al momento actual. Es un campo que deberá ser introducido manualmente.
* Importe justificado: costes directos. Hace referencia al importe total justificado, en el momento actual, correspondiente a costes directos. Es un campo que deberá ser introducido manualmente en SGI.
* Importe justificado: costes indirectos. Hace referencia al importe total justificado, en el momento actual, correspondiente a costes indirectos. Es un campo que deberá ser introducido manualmente.

  


* Importe aceptado.  Campo a introducir manualmente.
* Importe aceptado: costes directos. Campo a introducir manualmente.
* Importe aceptado: costes indirectos. Campo a introducir manualmente.
* Importe rechazado. Campo a introducir manualmente.
* Importe rechazado: costes directos. Campo a introducir manualmente.
* Importe rechazado: costes directos. Campo a introducir manualmente.
* Importe no ejecutado. Campo a introducir manualmente.
* Importe no ejecutado: costes directos. Campo a introducir manualmente.
* Importe no ejecutado: costes indirectos. Campo a introducir manualmente.
* Importe a reintegrar. Campo a introducir manualmente.
* Importe a reintegrar: costes directos. Campo a introducir manualmente.
* Importe a reintegrar: costes indirectos. Campo a introducir manualmente.
* Reintegro realizado. Campo a introducir manualmente.
* Reintegro realizado: costes directos. Campo a introducir manualmente.
* Reintegro realizado: costes indirectos. Campo a introducir manualmente.
* Intereses a reintegrar. Campo a introducir manualmente.
* Intereses reintegrados. Campo a introducir manualmente.
* Fecha último reintegro. Campo a introducir manualmente.
* Número de justificante del último reintegro. Campo a introducir manualmente.
* Reintegro pendiente. Campo calculado, diferencia entre los valore introducidos en los campos "importe a reintegrar" y "reintegro realizado".
* Intereses pendientes de reintegrar. Campo calculado, diferencia entre los valore introducidos en los campos "intereses a reintegrar" e "intereses reintegrados".

  


#### 2\.3 Estado actual  seguimiento justificación por proyecto y anualidad

Este apartado solo estará disponible si al haberse creado los requerimientos, alguno de ellos se vincula con un Identificador de justificación.

La tabla contendrá un registro por cada uno de los requerimientos de tipo Subsanación, Acuerdo de inicio de procedimiento de reintegro, Resolución de procedimiento de reintegro o Informe de cierre que se hubieran asociado a un Identificador de justificación. Solo se mostrará el requerimiento inicial, es decir, si un requerimiento de subsanación tiene enlazados los correspondientes requerimientos de acuerdo de inicio de procedimiento de reintegro, resolución de procedimiento de reintegro e informe de cierre, no se mostrará un resumen por anualidad para cada requerimiento sino que solo se muestra un resumen de anualidad. En líneas generales, solo se mostrará una entrada por cada bloque requerimientos enlazados asociados a un identificador de justificación.

![](/attachments/597853005/597860117.png)

  


La información que se mostrará precargada en la tabla será

* ID interno SGI: Identificador interno del proyecto SGI.
* ID justificación: Identificador de la justificación para la que existe un requerimiento
* Fecha justificación: Fecha de presentación de la justificación

El resto de campos se mostrarán cuando hubieran sido cumplimentados. Para cumplimentarlos se utilizará el botón editar disponible en la columna Acciones:

![](/attachments/597853005/597881591.png)

  


  


En la pantalla de detalle se mostrarán los siguientes campos

  


* Proyecto SGI: Identificador interno del proyecto SGI. Es un campo de solo lectura.
* Proyecto SGI: Título del proyecto SGI. Es un campo de solo lectura.
* Identificador justificación.  Identificador de la justificación a la que se asocia el requerimiento. Es un campo de solo lectura.
* Fecha justificación. Fecha de presentación de la justificación a la que está asociado el requerimiento. Es un campo de solo lectura.

  


* Anualidad presupuesto. Se listará las anualidades configuradas en el presupuesto del proyecto. Se debe seleccionar una anualidad. Si el presupuesto se recogió sin anualidades se mostrará el texto "Anualidad genérica".
* Importe concedido anualidad costes directos. Suma de importes concedidos de todos los conceptos de gasto, que no representen costes indirectos, incluidos en el presupuesto para la anualidad indicada. Es un campo calculado obtenido de los datos introducidos en el presupuesto del proyecto.
* Importe concedido anualidad costes indirectos. Suma de importes concedidos de todos los conceptos de gasto, que representen costes indirectos, incluidos en el presupuesto para la anualidad indicada. Es un campo calculado obtenido de los datos introducidos en el presupuesto del proyecto.

  


* Importe justificado. Campo introducido manualmente.
* Importe justificado: costes directos. Campo introducido manualmente.
* Importe justificado: costes indirectos. Campo introducido manualmente.
* Importe aceptado. Campo introducido manualmente.
* Importe aceptado: costes directos. Campo introducido manualmente.
* Importe aceptado: costes indirectos. Campo introducido manualmente.
* Importe rechazado. Campo introducido manualmente.
* Importe rechazado: costes directos. Campo introducido manualmente.
* Importe rechazado: costes indirectos. Campo introducido manualmente.
* Importe alegado. Campo introducido manualmente.
* Importe alegado: costes directos. Campo introducido manualmente.
* Importe alegado: costes indirectos. Campo introducido manualmente.
* Importe no ejecutado. Campo introducido manualmente.
* Importe no ejecutado: costes directos. Campo introducido manualmente.
* Importe no ejecutado: costes indirectos. Campo introducido manualmente.
* Importe a reintegrar. Campo introducido manualmente.
* Importe a reintegrar: costes directos. Campo introducido manualmente.
* Importe a reintegrar: costes indirectos. Campo introducido manualmente.
* Reintegro realizado. Campo introducido manualmente.
* Reintegro realizado: coste directos. Campo introducido manualmente.
* Reintegro realizado: coste indirectos. Campo introducido manualmente.
* Intereses a reintegrar. Campo introducido manualmente.
* Intereses reintegrados. Campo introducido manualmente.
* Fecha último reintegro. Campo introducido manualmente.
* Número justificante último reintegro. Campo introducido manualmente.
* Reintegro pendiente. Campo introducido manualmente.
* Intereses pendientes de reintegrar. Campo introducido manualmente.

  


#### 2\.4 Calendario de justificación

El calendario de justificación de cada uno de los proyectos SGI que estén vinculados al proyecto SGE del que se está realizando el seguimiento de la justificación, habrán sido introducidos como parte de la gestión de cada proyecto en el menú Configuración económica \- Calendario de justificación.

La justificación será realizada en el SGE. Cada justificación realizada en el SGE de la que se desee realizar seguimiento en el SGI, deberá tener un identificador en el SGE. Este identificador deberá de ser introducido manualmente en el SGI, asociándolo al periodo del calendario de justificación correspondiente. Además, se introducirá la fecha de presentación de dicha justificación. Ambos campos serán obligatorios. Con esta información quedarán alienados los periodos de justificación del SGI con las justificaciones finalmente realizadas desde el SGE.

![](/attachments/597853005/597860094.png)

  


#### 2\.5 Calendario de seguimiento científico

Se listará el calendario de seguimiento científico de cada uno de los proyectos SGI que estén vinculados al proyecto SGE del que se está realizando el seguimiento de la justificación. Habrán sido introducidos como parte de la gestión de cada proyecto en el menú Seguimiento científico.

La justificación será realizada en el SGE. En el SGI se permitirá la introducción de la fecha en la que se presentó la justificación científica. No se podrán crear requerimientos sobre los periodos de seguimiento científico.

  


![](/attachments/597853005/597881582.png)

  


### 3\. Gastos justificados

El apartado de gastos justificados dentro del seguimiento de la justificación, recuperará los gastos justificados del SGE. Sobre estos gastos recuperados del SGE se deberán de aportar nuevos campos en el SGI, son los campos propios del seguimiento de justificación.

Inicialmente, en el primer momento del seguimiento de la justificación, el SGI no dispondrá de ningún gasto. Deben ser recuperados del SGE. La obtención de estos gastos puede ser realizada:

* Sin indicar ningún filtro. En este caso el SGI solicitará al SGE todos los gastos justificados para el proyecto SGE, sin importar la  justificación a la que pertenezcan.
* Indicando el proyecto SGI. En este caso, el SGI solicitará al SGE los gastos justificados para todas las justificaciones del proyecto SGI indicado. Para realizar esta petición el SGI utilizar los identificadores de justificación que hubieran sido aportados en la pantalla Resumen, bloque de datos Calendario de justificación. Si estos identificadores no han sido aportados manualmente al SGI, no se podrá hacer uso de este filtro.
* Indicando un identificador de justificación. En este caso, el SGI solicitará al SGE los gastos justificados pertenecientes a una determinada justificación. Como en el caso anterior, este filtro solo podrá ser utilizado en el caso de que hubieran sido informados en el SGI los identificadores de justificación en la pantalla Resumen, bloque de datos Calendario de justificación.

![](/attachments/597853005/597860161.png)

  


  


Una vez que el SGE haya devuelto los gastos, de acuerdo al filtro indicado, se mostrarán en pantalla en forma de tabla. Se mostrarán los campos más significativos y desde el botón de Editar se mostrará el detalle del gasto.

![](/attachments/597853005/597860159.png)

  


  


#### 3\.1 Detalle gasto

En este detalle del gasto se podrán ver los datos que actualmente se están mostrando en el apartado Ejecución económica \- Facturas y justificantes. Al igual que en este apartado, se mostrarán también los documentos asociados al gasto en el SGE.

![](/attachments/597853005/597860154.png)

  


Cualquier dato del detalle del gasto recuperado del SGE no podrá ser modificado. Pero sí será posible aportar al gasto la información propia del seguimiento de la justificación.

  


##### 3\.1\.1 Detalle de gasto \- Datos SGI \- Datos de la Cofinanciación

Dentro de los campos que será posible incorporar a los gastos en el SGI es el desglose de la cofinanciación. Cualquier campo aportado al gasto en el SGI solo será almacenado en este sistema, es decir, nunca será remitido al SGE. 

El SGI proporcionará los campos para realizar el desglose de la cofinanciación en cualquier gasto y proyecto, independientemente de que aplique realizar el desglose. El SGI no dispone de ningún criterio para determinar cuando la entidad receptora de la justificación exige o no este detalle,  por lo que lo más abierto es permitir incorporar este detalle siempre. Será la unidad de gestión la que decida cuando aportar esta información.

Para registrar una cofinanciación se podrá:

* Indicar la convocatoria de la que procede la cofinanciación. Para ello la convocatoria deberá haber sido registrada previamente en el SGI.
* Indicar el proyecto que cofinancia, siempre que éste haya sido registrado previamente en el SGI.
* Indicar la entidad cofinanciadora. Si se ha seleccionado un proyecto la entidad cofinanciadora será una de las entidades financiadoras del proyecto. En caso que no se haya indicado ningún proyecto, se dará opción a poder indicar cualquier entidad (a través del buscador común de empresas).

  


Para registrar una cofinanciación sobre un gasto será obligatorio indicar la entidad financiadora y el importe. Un gasto podrá ser cofinanciado por varias entidades, por lo que  se permitirá la introducción de varios registros de cofinanciación.

  


Pantalla de detalle del gasto con el listado de cofinanciación:

![](/attachments/597853005/597860154.png)

  


Tras pulsar el botón "Añadir cofinanciación" se mostrará la pantalla para introducción de los datos:

Inicialmente se permite la búsqueda por convocatoria, proyecto y entidad financiadora. Se podrá especificar cualquiera de ellos. 

![](/attachments/597853005/597860153.png)

  


En caso de que se especifique un proyecto, la entidad cofinanciadora deberá ser una de las entidades financiadoras del proyecto, se precargará el listado con las mismas:

![](/attachments/597853005/597860177.png)

  


  


No será obligatorio especificar la cofinanciación para todos los gastos. La  unidad de gestión será la responsable de determinar en qué proyectos y gastos debe de aportar esta información. 

Un gasto podrá tener uno más registros de cofinanciación, de forma que según se vayan introduciendo se irán mostrando a modo de tabla\-listado, permitiendo modificar sus datos o eliminarlos, así como seguir añadiendo nuevos registros de cofinanciación:

  


![](/attachments/597853005/597881603.png)

  


Para facilitar la búsqueda de los gastos de un proyecto SGE para los que aún no se ha aportado esta información se proporcionará un filtro de búsqueda ("datos cofinanciación"). Los gastos justificados serán devueltos por el SGE, para cada gasto devuelto por el SGE se comprobará en el SGI si ha sido aportada la información de cofinanciación.

![](/attachments/597853005/597860159.png)

  


### 4\. Requerimientos

Se implementará un único flujo de requerimientos que será común para cualquier proyecto. El SGI implementará los siguientes tipos de requerimientos:

* Requerimiento documental
* Resolución requerimiento documental (informe definitivo remitido por la entidad tras dar respuesta al requerimiento documental)
* Requerimiento subsanación
* Acuerdo de inicio de procedimiento de reintegro
* Resolución del procedimiento de reintegro
* Informe de cierre
* Resolución de recurso

  


Algunos de estos requerimientos podrán tener asociada la respuesta o alegación que la Universidad presenta sobre el mismo. Los requerimientos para los que estará disponible la opción de respuesta son:

* Requerimiento documental
* Requerimiento subsanación
* Acuerdo de inicio de procedimiento de reintegro
* Resolución del procedimiento de reintegro

  


Inicialmente no existirá ningún requerimiento.

![](/attachments/597853005/597860182.png)

  


Al pulsar el botón Añadir requerimiento se mostrará el detalle para introducir los datos del mismo. Un requerimiento consta de cuatro pestañas:

* Datos generales
* Gastos
* Respuesta/alegación
* Documentos

#### 4\.1 Requerimiento \- Datos generales

Aunque existen algunos campos que solo aplican para unos tipos de requerimientos concretos, la pantalla de datos generales contendrá todos los campos. Será el personal de la unidad de gestión quien deba conocer qué campos deben ser cumplimentados para cada tipo de requerimiento.

  


![](/attachments/597853005/597881599.png)

  


Campos que componen los datos generales de cualquier tipo de requerimiento:

* Proyecto SGI: será un campo obligatorio.  Cada requerimiento deberá pertenecer a un proyecto SGI concreto. El desplegable mostrará los proyectos SGI asociados al proyecto SGE sobre el que se está realizando el seguimiento de la justificación.
* Identificador justificación. Se podrá vincular el requerimiento a una justificación concreta pero no será obligatorio. Esto permitirá que el requerimiento se asocie con carácter general al proyecto o bien se asocie a una justificación concreta, cubriendo así los casos en los que el seguimiento de la justificación se realice de acuerdo a los periodos anuales de justificación y dé lugar a la existencia de varios requerimientos del mismo tipo sobe el mismo proyecto SGI.  Crear un requerimiento asociado a un identificador de justificación, dará lugar a que en la pantalla Resumen del seguimiento de justificación del proyecto SGE se muestre el listado "Estado actual seguimiento justificación por proyecto SGI y anualidad".
* Número requerimiento. Será un número secuencial generado automáticamente por el SGI. El número será secuencial dentro del proyecto SGI.
* Tipo de requerimiento. Será un desplegable con el listado de tipos de requerimiento disponibles en el SGI.
* Requerimiento previo. Un requerimiento se puede vincular, de forma opcional, a un requerimiento previo. Esto permitirá ir encadenando los diferentes requerimientos cuando sea necesario (ejemplo: un acuerdo de inicio de procedimiento de reintegro podrá vincularse con el requerimiento de subsanación, una resolución del procedimiento de reintegro podrá vincularse a su vez con el acuerdo de inicio de procedimiento de reintegro previo). Aunque sea posible establecer estos vínculos no será obligatorio que el ciclo se registre al completo, es decir, el SGI no realizará ninguna validación pudiendo, por ejemplo, vincular directamente una resolución de procedimiento de reintegro con el requerimiento de subsanación. Esto permitirá a la unidad de gestión la libertad de realizar el registro de la información que considere oportuno.
* Fecha de notificación. Campo para recoger la fecha en la que se recibe la notificación del requerimiento.
* Fin plazo de alegación. Campo para recoger la fecha en la que finaliza el plazo para dar respuesta a la notificación.
* Existirán una serie de campos para recoger los importes globales del requerimiento. En función del tipo de requerimiento podría no aplicar la cumplimentación de alguno de estos importes. El SGI no obligará la cumplimentación de ninguno de ellos, será la unidad de gestión quien pueda tomar la decisión de qué importes cumplimentar:
	+ Importe total aceptado. Campo a introducir manualmente.
	+ Importe aceptado: costes directos. Campo a introducir manualmente.
	+ Importe aceptado: costes indirectos. Campo a introducir manualmente.
	+ Importe total rechazado. Campo a introducir manualmente.
	+ Importe rechazado: costes directos. Campo a introducir manualmente.
	+ Importe rechazado: costes indirectos. Campo a introducir manualmente.
	+ Importe total a reintegrar. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en el requerimiento.
	+ Importe a reintegrar: costes directos. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en el requerimiento.
	+ Importe a reintegrar: costes indirectos. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en el requerimiento.
	+ Intereses a reintegrar. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en el requerimiento.
* Observaciones. Campo para introducir cualquier comentario sobre el requerimiento que la unidad de gestión estime oportuno.
* Bloque de campos que solo aplicarían cuando la notificación se corresponda con un informe de cierre:
	+ Subvención justificada. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en la notificación de cierre.
	+ Defecto de la subvención. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en la notificación de cierre.
	+ Anticipo justificado. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en la notificación de cierre.
	+ Defecto del anticipo. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en la notificación de cierre.
* Bloque de campos que solo aplicarían cuando la notificación se corresponda con la resolución del posible recurso interpuesto a la entidad:
	+ Recurso estimado. Es un campo que debe ser introducido manualmente por la unidad de gestión, para indicar si ha sido estimado o no el recurso interpuesto. Los totales del recurso deben recogerse sobre los campos de importe disponibles previamente.
* Incidencias sobre documentación. Algunos requerimientos podrán incluir, además de incidencias sobre gastos individuales, incidencias en la documentación global presentada. El SGI permitirá recoger estas incidencias con dos campos:
	+ Documento de justificación. Es un campo de texto, para recoger el nombre del documento sobre el que se notifica incidencia. El nombre será de introducción libre no se limitará a documentos que se hubiesen adjuntado al apartado de documentos del proyecto.
	+ Incidencia/Motivo de rechazo. Es un campo de texto para recoger la incidencia reportada sobre el documento.

Sobre un mismo requerimiento se podrán recoger tantas incidencias de documentación como sea necesario, sin que sea obligatorio recoger alguna.

  


##### 4\.1\.1 Requerimiento \- Datos generales \- Incidencias en documentación

Para añadir una incidencia de documentación recogida en el requerimiento se hará uso del botón "Añadir incidencia" disponible en los datos generales del requerimiento:

![](/attachments/597853005/597860205.png)

  


Una incidencia en la documentación queda definida por dos campos:

* Documento de justificación. Es un campo de texto, para recoger el nombre del documento sobre el que se notifica incidencia. El nombre será de introducción libre no se limitará a documentos que se hubiesen adjuntado al apartado de documentos del proyecto.
* Incidencia/Motivo de rechazo. Es un campo de texto para recoger la incidencia reportada sobre el documento.

  


#### 4\.2 Requerimiento \- Gastos

Una vez creado un requerimiento se podrán añadir los gastos a los que hace referencia. Inicialmente no habrá ningún gasto asociado al requerimiento.

![](/attachments/597853005/597881597.png)

  


A través del botón "Añadir gasto" se podrán incluir gastos al requerimiento. Para añadir estos gastos se mostrará una ventana del tipo:

![](/attachments/597853005/597860179.png)

  


  


Los gastos disponibles para añadir al requerimiento deberán ser obtenidos del SGE (a través del mecanismo de integración correspondiente). Se dispondrá de una serie de filtros que aplicarán sobre el botón "Obtener gastos SGE". Este botón solicita los gastos justificados del proyecto SGE sobre el que se está haciendo el seguimiento. Los filtros que se pueden aplicar para obtener los gastos son:

* ID justificación. Será  un filtro que, por defecto, estará precargado con el  ID de justificación indicado en los datos generales del requerimiento, si aplica. Pero este filtro precargado podría eliminarse, para solicitar al SGE cualquier gasto incluido en cualquier justificación del proyecto SGE. De esta forma, el SGI no va a limitar que a un requerimiento asociado a una justificación se pueda añadir un gasto perteneciente a cualquier otra justificación.  Si el requerimiento no se vincula a ningún identificador de justificación concreto, el desplegable estará precargado con todos los identificadores de justificación que se hubieran recogido en los periodos de justificación del SGI. No es obligatorio que se delimite la búsqueda a un identificador de justificación concreto
* Número registro proveedor. Permite limitar la búsqueda a un determinado gasto de acuerdo al número de registro del gasto para el proveedor (campo del SGE).
* Importe presentado en justificación. Permite limitar la búsqueda a los gastos que tengan un determinado valor en el campo importe presentado en justificación (campo del SGE).
* Fecha de devengo. Permite limitar la búsqueda de acuerdo a la fecha de devengo del gasto. Se podrá indicar un rango de fechas.
* Fecha de pago. Permite limitar la búsqueda de acuerdo a la fecha de pago del gasto. Se podrá indicar un rango de fechas.

  


Una vez que se pulsa el botón "Obtener gastos SGE" se mostrará el listado de gastos  devueltos por el SGE. En este listado se mostrarán los campos principales del gasto, si bien se dispondrá de un botón que permita ver el detalle completo del gasto (de acuerdo a la información disponible en el SGE). Del listado de gastos devueltos por el SGE se deberán seleccionara aquellos que son solicitados en el requerimiento. Se podrán seleccionar varias gastos o uno solo, marcando la casilla de "check" disponible sobre cada gasto, y pulsando el botón "Añadir".

![](/attachments/597853005/597860179.png)

  


  


Una vez añadidos, los gastos estarán disponibles en el apartado Gastos del requerimiento.

![](/attachments/597853005/597860201.png)

  


Sobre los gastos añadidos al requerimiento se podrá proporcionar información relativa al requerimiento. Esta información será propia del SGI y no será remitida al SGE. Si bien para algunos tipos de requerimiento se podrá recoger otro tipo de información  sobre el gasto, con carácter general la información que puede ser añadida al gasto en el SGI es:

* Aceptado. Es un indicador  que permite recoger si el gasto ha sido aceptado o no en el requerimiento que se está registrando. Por defecto, todos los gastos añadidos al requerimiento se consideran aceptados, debiendo cambiarse este valor en caso de ser necesario.
* Importe aceptado
* Importe rechazado
* Incidencia en el gasto o motivo de rechazo

  


Para aportar esta información se hará uso del botón Editar disponible sobre cada gasto. Se mostrará una ventana del tipo:

![](/attachments/597853005/597860199.png)

  


Para algunos tipos de requerimiento los campos disponibles en esta ventana podrán variar. En el detalle del gasto ya estarán disponibles los datos de la cofinanciación que hubieran sido aportados en el SGI en el bloque "Gastos justificados" de este mismo apartado "Seguimiento de justificación"  o bien podrán aportarse en este misma ventana. Además de los datos de cofinanciación y de los datos del requerimiento también se puede aportar ya la información de la alegación que se presentará al requerimiento. Es el bloque de datos "Datos SGI \- Datos de la respuesta al requerimiento" disponiendo de los campos:

* Importe alegado
* Alegación. Campo de texto libre para recoger la alegación expuesta.

#### 4\.3 Requerimiento \- Respuesta/Alegación

Dentro del detalle de un requerimiento se dispondrá del apartado "respuesta/alegación" que permitirá recoger la información aportada en la respuesta al requerimiento. No será obligatorio cumplimentar este apartado.

  


![](/attachments/597853005/597860189.png)

  


Los campos que conforman la respuesta/alegación a un requerimiento, independientemente del tipo de requerimiento son:

* Número requerimiento. Campo que se muestra en modo consulta para mostrar el número de requerimiento al que se está dando respuesta.
* Tipo de requerimiento. Campo que se muestra en modo consulta para mostrar el tipo de requerimiento al que se está dando respuesta.
* Fecha de respuesta/alegación: Fecha en la que se realiza/remite la respuesta al requerimiento.
* Importe total alegado. Campo a introducir manualmente.
* Importe alegado: Campo a introducir manualmente.
* Importe alegado: Campo a introducir manualmente.
* Importe total reintegrado. Valor a introducir manualmente de acuerdo al reintegro finalmente realizado (como parte de la respuesta a este requerimiento).
* Importe total reintegrado: Costes directos. Valor a introducir manualmente de acuerdo al reintegro finalmente realizado (como parte de la respuesta a este requerimiento) correspondiente a costes directos.
* Importe total reintegrado: Costes indirectos. Valor a introducir manualmente de acuerdo al reintegro finalmente realizado (como parte de la respuesta a este requerimiento) correspondiente a costes indirectos.
* Intereses reintegrados. Valor a introducir manualmente de acuerdo a los intereses reintegrados, si finalmente se ha realizado este reintegro como parte de la respuesta a este requerimiento.
* Fecha de pago del reintegro. Valor a introducir manualmente para recoger la fecha en la que se realiza el pago asociado al reintegro realizado como respuesta a este requerimiento.
* Justificante de pago del reintegro. Valor a introducir manualmente para recoger el justificante del pago asociado al reintegro realizado como respuesta a este requerimiento.
* Observaciones. Campo de texto libre.
* Respuesta a las incidencias en documentación: Se mostrará el listado de incidencias en documentación que han sido introducidas en el apartado de datos generales del requerimiento, pudiendo editar cada una de ellas para introducir la alegación presentada en la respuesta al requerimiento. Al pulsar el botón editar situado en cada elemento de la tabla se mostrará una ventana en la que se podrá introducir la alegación presentada:

![](/attachments/597853005/597860187.png)

  


#### 4\.4 Documentos

Apartado disponible para adjuntar cualquier documento relativo al requerimiento.

![](/attachments/597853005/597881595.png)

  


De forma análoga a otros apartados del SGI se mostrarán los documentos agrupados por el tipo de documento. Los tipos de documentos serán los que hubieran sido configurados sobre el modelo de ejecución al que está asociado el proyecto SGI al que pertenece el requerimiento.

  


#### 4\.5 Ejemplos de requerimientos

A continuación se pone como ejemplo la gestión de un requerimiento documental, su respuesta y la posterior resolución del mismo.

##### 4\.5\.1 Requerimiento documental

Los datos generales del requerimiento documental no tendrán ninguna particularidad:

  


![](/attachments/597853005/597860203.png)

  


  


Creado el requerimiento con sus datos generales, estará disponible en el listado de requerimientos, pudiendo acceder a su detalle para añadir los gastos que se ven afectados por el requerimiento:

![](/attachments/597853005/597860157.png)

  


###### 4\.5\.1\.1 Gastos requerimiento documental

Inicialmente el requerimiento no dispondrá de ningún gasto:

![](/attachments/597853005/597860171.png)

  


Tras pulsar el botón "Añadir gastos" se mostrará la ventana que permitirá obtener los gastos justificados del SGE. Desde esta ventana se podrán seleccionar los gastos incluidos en el requerimiento.

![](/attachments/597853005/597860165.png)

  


Una vez añadidos, los gastos se mostrarán en el apartado Gastos del requerimiento, pudiendo acceder al detalle de cada uno de ellos.

![](/attachments/597853005/597860169.png)

  


Desde el detalle de cada gasto se tendrá acceso a la documentación del gasto que hubiera sido aportada en el SGE (documento del gasto, justificante de pago, etc.). Así mismo se podrá incorporar al gasto la información relativa al seguimiento de la justificación, como podría ser la información de cofinanciación (en caso que aún no hubiera sido registrada).

###### 4\.5\.1\.2 Respuesta al requerimiento documental

La respuesta al requerimiento documental podrá registrarse desde el apartado Respuesta/Alegación. No será de obligatoria cumplimentación ningún campo, por lo que podría simplemente cumplimentarse la fecha en la que se realiza la respuesta (ya que en el caso de un requerimiento documental podría no ser necesario cumplimentar el resto de campos).

![](/attachments/597853005/597860217.png)

  


###### 4\.5\.1\.3 Documentos

Cualquier documento relativo al requerimiento o a la respuesta al mismo puede ser almacenado en el SGI en el apartado Documentos del requerimiento.

  


##### 4\.5\.2 Resolución requerimiento documental

Cuando desde la entidad se remita la resolución al requerimiento documental, ésta se registrará como un requerimiento más, a través del botón "añadir requerimiento"

![](/attachments/597853005/597860157.png)

  


En el apartado de datos generales de creación de la notificación, se seleccionará:

* Tipo de requerimiento: Resolución de requerimiento documental
* Requerimiento previo: Se deberá seleccionar el requerimiento al que se refiere la notificación, de esta forma la "Resolución de requerimiento documental" partirá del listado de gastos añadidos al requerimiento previo con el se vincula.

![](/attachments/597853005/597860104.png)

  


El nuevo requerimiento se mostrará en el listado y se podrá ver la vinculación con el requerimiento de origen.

![](/attachments/597853005/597860156.png)

  


###### 4\.5\.2\.1 Gastos de la resolución del requerimiento documental

Al acceder al listado de gastos dentro del detalle de la resolución del requerimiento documental,  estarán disponibles de forma automática los gastos añadidos previamente al requerimiento documental (para ello ambos requerimientos deberán haber sido previamente vinculados a través del campo "requerimiento previo" en la creación de la resolución del requerimiento documental).

Al acceder al detalle de cada uno de estos gastos, además de ver todos los campos obtenidos del SGE se podrá registrar la información del SGI:

* Cofinanciación, en caso que esta no hubiera sido incluida previamente.
* Resultado remitido en la resolución del requerimiento documento
	+ Check para indicar si el gasto ha sido aceptado o rechazado (por defecto se considerará aceptado).
	+ Campo de texto libre para recoger cualquier incidencia reportada o el motivo de rechazo  (lo que aplique en cada caso).

![](/attachments/597853005/597860196.png)

  


  


##### 4\.5\.3 Requerimiento subsanación

Se expone a continuación un ejemplo con la creación de un requerimiento de subsanación. El requerimiento de subsanación se crearía desde el listado de requerimientos, al igual que cualquier otro.

![](/attachments/597853005/597860156.png)

  


En los datos generales se indicaría:

* Proyecto SGI. Campo obligatorio. Se debe indicar el proyecto SGI al que pertenece el requerimiento
* Identificador justificación. Solo será obligatorio cumplimentarlo en caso que el requerimiento se deba asociar a una justificación concreta, como sería el caso de proyectos cuya justificación responda a anualidades.
* Número de requerimiento. Campo calculado por el SGI. El número será secuencial dentro del proyecto SGI.
* Tipo de requerimiento. Se seleccionaría "requerimiento de subsanación" en este caso.
* Requerimiento previo. En el caso de un requerimiento de subsanación no aplica vincularlo con ningún requerimiento previo.
* Fecha de notificación
* Fin plazo alegación
* Campos importe.
	+ Importe total aceptado. Valor a introducir manualmente.
	+ Importe aceptado: costes directos. Valor a introducir manualmente.
	+ Importe aceptado: costes indirectos. Valor a introducir manualmente.
	+ Importe total rechazado. Valor a introducir manualmente.
	+ Importe rechazado: costes directos. Valor a introducir manualmente.
	+ Importe rechazado: costes indirectos. Valor a introducir manualmente.
	+ Importe total a reintegrar. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en el requerimiento. Su introducción dependerá de la información aportada en el requerimiento. Podría no aplicar su cumplimentación en un requerimiento de subsanación.
	+ Importe a reintegrar: costes directos. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en el requerimiento. Su introducción dependerá de la información aportada en el requerimiento. Podría no aplicar su cumplimentación en un requerimiento de subsanación.
	+ Importe a reintegrar: costes indirectos. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en el requerimiento. Su introducción dependerá de la información aportada en el requerimiento. Podría no aplicar su cumplimentación en un requerimiento de subsanación.
	+ Intereses a reintegrar. Es un campo que debe de ser introducido manualmente por la unidad de gestión a partir de la información remitida por la entidad en el requerimiento. Su introducción dependerá de la información aportada en el requerimiento. Podría no aplicar su cumplimentación en un requerimiento de subsanación.
* Observaciones. Campo para introducir cualquier comentario sobre el requerimiento que la unidad de gestión estime oportuno.
* Incidencias sobre documentación general del proyecto reportadas en el requerimiento de subsanación.
	+ Documento de justificación. Es un campo de texto, para recoger el nombre del documento sobre el que se notifica incidencia. El nombre será de introducción libre no se limitará a documentos que se hubiesen adjuntado al apartado de documentos del proyecto.
	+ Incidencia/Motivo de rechazo. Es un campo de texto para recoger la incidencia reportada sobre el documento.

Sobre un mismo requerimiento se podrán recoger tantas incidencias de documentación como sea necesario, sin que sea obligatorio recoger alguna.

  


![](/attachments/597853005/597860101.png)

  


  


Una vez creado el requerimiento de subsanación con sus datos, éste estará disponible en el listado de requerimientos.

![](/attachments/597853005/597860213.png)

  


###### 4\.5\.3\.1 Gastos requerimiento subsanación

Se deberán añadir los gastos requeridos en el requerimiento de subsanación, como se indicó en apartados previos.

![](/attachments/597853005/597860192.png)

  


Todos los gastos se considerarán inicialmente aceptados, por lo que se deberá acceder al detalle de cada uno de ellos para incorporar la información relativa al requerimiento.

![](/attachments/597853005/597860190.png)

  


En el detalle del gasto se puede indicar de forma simultánea:

* Datos de la cofinanciación (en caso que no hubiese sido introducida previamente y sin que sea de obligada cumplimentación)
* Datos del requerimiento
	+ Aceptado/Rechazado. Es un indicador que permite recoger si el gasto ha sido aceptado o no en el requerimiento que se está registrando. Por defecto, todos los gastos añadidos al requerimiento se consideran aceptados, debiendo cambiarse este valor en caso de ser necesario.
	+ Importe aceptado. Debe de indicarse el importe reportado en el requerimiento que se considera aceptado en la justificación.
	+ Importe rechazado. Debe de indicarse el importe indicado en el requerimiento que se considera rechazado en la justificación.
	+ Incidencia en el gasto o motivo de rechazo
* Datos de la respuesta del requerimiento. Se podrían recoger en este momento los datos de la respuesta al requerimiento, o bien podrían ser introducidos más adelante. El SGI no limita el momento de hacerlo.
	+ Importe alegado
	+ Alegación. Campo de texto libre para recoger la alegación expuesta.

###### 4\.5\.3\.2 Respuesta al requerimiento subsanación

En el apartado Respuesta/alegación se podrán cumplimentar los campos que apliquen en el caso de una respuesta a un requerimiento de subsanación:

![](/attachments/597853005/597860215.png)

  


* Fecha de respuesta/alegación: Fecha en la que se realiza/remite la respuesta al requerimiento.
* Importe total alegado. Campo a introducir manualmente.
* Importe alegado: Campo a introducir manualmente.
* Importe alegado: Campos a introducir manualmente.
* Importe total reintegrado. Valor a introducir manualmente de acuerdo al reintegro finalmente realizado (como parte de la respuesta a este requerimiento). Podría darse el caso que no se realizase ningún reintegro en un requerimiento de subsanación. En este caso, el campo no se cumplimentaría.
* Importe total reintegrado: Costes directos. Valor a introducir manualmente de acuerdo al reintegro finalmente realizado (como parte de la respuesta a este requerimiento) correspondiente a costes directos. Podría darse el caso que no se realizase ningún reintegro en un requerimiento de subsanación. En este caso, el campo no se cumplimentaría.
* Importe total reintegrado: Costes indirectos. Valor a introducir manualmente de acuerdo al reintegro finalmente realizado (como parte de la respuesta a este requerimiento) correspondiente a costes indirectos. Podría darse el caso que no se realizase ningún reintegro en un requerimiento de subsanación. En este caso, el campo no se cumplimentaría.
* Intereses reintegrados. Valor a introducir manualmente de acuerdo a los intereses reintegrados, si finalmente se ha realizado este reintegro como parte de la respuesta a este requerimiento. Podría darse el caso que no se realizase ningún reintegro en un requerimiento de subsanación. En este caso, el campo no se cumplimentaría.
* Fecha de pago del reintegro. Valor a introducir manualmente para recoger la fecha en la que se realiza el pago asociado al reintegro realizado como respuesta a este requerimiento. Podría darse el caso que no se realizase ningún reintegro en un requerimiento de subsanación. En este caso, el campo no se cumplimentaría.
* Justificante de pago del reintegro. Valor a introducir manualmente para recoger el justificante del pago asociado al reintegro realizado como respuesta a este requerimiento. Podría darse el caso que no se realizase ningún reintegro en un requerimiento de subsanación. En este caso, el campo no se cumplimentaría.
* Observaciones. Campo de texto libre.
* Respuesta a las incidencias en documentación: Se mostrará el listado de incidencias en documentación que han sido introducidas en el apartado de datos generales del requerimiento, pudiendo editar cada una de ellas para introducir la alegación presentada en la respuesta al requerimiento.

  


##### 4\.5\.4 Acuerdo de inicio de procedimiento de reintegro

Una notificación de acuerdo de inicio de procedimiento de reintegro se registrará como un requerimiento.

![](/attachments/597853005/597860213.png)

  


Si el acuerdo de inicio de procedimiento de reintegro sucede a un requerimiento de subsanación, se vinculará a ésta a través del campo "requerimiento previo", pero el SGI no limita esta circunstancia. Es decir, el SGI permitirá crear un acuerdo de inicio de procedimiento de reintegro sin necesidad de que previamente se hubiera registrado un requerimiento de subsanación. El SGI tampoco limitará el tipo del requerimiento previo al que se pueda vincular, es decir, no se limitará a que el acuerdo de inicio de procedimiento de reintegro se vincule únicamente a un requerimiento de subsanación.

Si el acuerdo de inicio de procedimiento de reintegro se vincula a un requerimiento previo, partirá de los gastos que hubieran sido introducidos en el mismo, pudiendo incorporar sobre los mismos los datos propios del requerimiento actual.

  


##### 4\.5\.5 Informe de cierre

El informe de cierre que marca el fin del proceso de seguimiento de la justificación será tratado en el SGI como un requerimiento más, si bien en este caso se particularizarán los datos del requerimiento de forma que:

* No se muestre el campo "Fin plazo alegación" ni el apartado "Respuesta/Alegación"
* Se muestran cuatro campos adicionales en la pestaña de datos generales, todos ellos de introducción manual:
	+ Subvención justificada
	+ Defecto de la subvención
	+ Anticipo justificado
	+ Defecto del anticipo

![](/attachments/597853005/597860097.png)

##### 4\.5\.6 Resolución recurso

En el caso que la justificación derivase en la interposición de un recurso, se podrá registrar en el SGI la resolución del mismo como un requerimiento más.

Se tratará como un requerimiento más, pudiendo especificar el detalle de los importes aceptados/rechazados, así como los reintegros solicitados. Se dispondrá de un campo específico para indicar si el recurso ha sido admitido o no.

![](/attachments/597853005/597860099.png)

  


  


### 5\. Resumen final gasto

Si bien la información de cada gasto asociada a cada  uno de los requerimientos que se registren en el SGI deberá irse informando en cada uno de los requerimientos individuales, esta información podrá ser consultada de manera global.

En el apartado "Gastos justificados" de la opción "Seguimiento justificación", se podrán obtener todos los gastos justificados desde el SGE, a la información obtenida desde el SGE se sumará la  información aportada sobre cada gasto en cada uno de los requerimientos.

![](/attachments/597853005/597860211.png)

  


#### 5\.1 Detalle del gasto

Con el botón editar, disponible sobre cada gasto se abrirá, la ventana de detalle del gasto. En esta ventana se mostrarán todos los campos devueltos por el SGE y los aportados en el SGI:

* Datos de la cofinanciación (que serán editables desde esta pantalla).
* Datos de cada uno de los requerimientos. Se mostrará un desplegable que contendrá todos los requerimientos en los que haya sido incluido el gasto. Se deberá seleccionar el requerimiento concreto para mostrar los datos aportados sobre el mismo.

  


![](/attachments/597853005/597860209.png)

  


#### 5\.2 Botón exportar

A pie del listado de gastos  justificados se mostrará el botón de exportación. A través de este botón se podrá generar un archivo con formato compatible con excel que contendrá el listado de gastos justificados con el detalle de los campos. Para cada gasto se mostrarán todos los campos informados en cada requerimiento así como el conjunto de campos de resumen del proyecto SGI al que pertenece el gasto (que aparecerán repetidos en todos los gastos del proyecto) y, cuando aplique, del resumen de gastos del proyecto\-anualidad (que también aparecerán repetidos en todos los gastos del proyecto, independientemente de la anualidad con la que se correspondiese el gasto).

![](/attachments/597853005/597860211.png)

  


  


### 6\. Exportación global de requerimientos

Se habilitará la posibilidad de exportar de manera conjunta los requerimientos recibidos de varios proyectos. Esta opción se incluirá en el listado general de Ejecución económica.

#### Buscador ampliado Ejecución económica

Se ampliará el buscador ampliado de Ejecución económica añadiendo filtros de búsqueda por:

* Entidad convocante
* Entidad financiadora

![](/attachments/597853005/597860462.png)

  


A pie de listado se dispondrá de un botón que permita la exportación de todos los requerimientos registrados sobre todos los proyectos SGI vinculados a todos los proyectos SGE incluidos en el listado. Los campos a incluir en el listado son:

* Identificador interno del proyecto SGI
* Código del proyecto SGE
* Título del proyecto
* Fecha inicio proyecto
* Fecha fin proyecto
* Referencia del proyecto en entidad convocante
* Título de convocatoria
* Nombre y apellidos de IP
* Nombre  y apellidos de responsable económico
* Listado de entidades convocantes
* Listado de entidades financiadoras
* Total importe concedido Universidad (o sumatorio de importe concedido de proyecto anualidad)
* Por cada requerimiento
	+ Tipo de requerimiento
	+ Fecha de notificación
	+ Fecha fin plazo alegación
	+ Importe total aceptado
	+ Importe total rechazado
	+ Observaciones




