# Hércules : PII\-Configuración



### Introducción

El módulo de PII dispone de un apartado propio de configuración bajo la opción de menú "Configuración", que no es más que un agrupador de menús donde cada uno de ellos dan acceso a la gestión específica de cada una de las entidades o maestros que se permite configurar.

Las opciones de configuración disponibles son:

* Tipos de protección
* Sectores de aplicación
* Resultados de informe de patentabilidad
* Tipos de procedimiento
* Tramos de reparto
* Vías de protección

El apartado de "Configuración" será únicamente accesible para el rol "administrador".

Vista general del menú Configuración:

![](/attachments/597853705/597881780.png)

El acceso a la configuración de los maestros de este módulo se comporta siempre de la misma forma. Al ser listados con potencialmente pocos registros, no disponen de la función de buscador, sino que, al acceder, se muestra directamente el listado completo de registros que estén configurados en ese momento. Además, la forma de presentar el listado será también la misma y en línea con el resto de módulos de la aplicación, esto es, el listado que se muestra está compuesto por una tabla paginada, con varias columnas de información y una última columna de acciones. 

A continuación se detallan cada una de las opciones de menú del módulo de Protección industrial e intelectual para un usuario con el perfil de un **Administrador/a**.

### Tipos de protección

Los tipos de protección son los que determinan, para una invención, cómo se ha de proteger.

Un tipo de protección tendrá siempre asignado un tipo de propiedad específico de entre dos opciones posibles, "Propiedad intelectual" o  "Propiedad industrial". Este tipo de propiedad del tipo de protección, será el que determine las posibles vías de protección a través de las que se puede solicitar proteger la invención, mediante las diferentes solicitudes de protección que se vayan creando, es por ello que es el dato de mayor relevancia para esta entidad.

La información de tipos de protección de la que se dispondrá en el SGI será la siguiente:

* Nombre: es el nombre identificativo del tipo de protección, con el que se listará en todos los desplegables.
* Descripción: es un texto de introducción libre para disponer de una descripción ampliada del tipo de protección.
* Tipo de propiedad: es el tipo de propiedad asociada al tipo de protección. Podrá tener dos valores:  

	+ Propiedad industrial
	+ Propiedad intelectual
* Activo: indicador de si el registro está activo o no. Tomará uno de estos valores: Sí o No.

#### Listado de tipos de protección

Al acceder a la opción de menú "Tipos de protección", se mostrará una pantalla con el listado de tipos de protección que ya estén dados de alta.

En el momento de implantar el SGI en una Universidad, se deberán definir una lista de tipos de protección a cargar. Por ejemplo, podrían ser los siguientes:

* Tipos de protección para el tipo de propiedad "Propiedad Industrial":
	+ Patente
	+ Modelo de utilidad
	+ Diseño industrial
	+ Marca
	+ Secreto industrial. Forman parte de los tipos de protección industrial los acuerdos de secreto industrial. Se basan en un acuerdo privado de confidencialidad y uso del producto o conocimiento desarrollado, vendrían a ser tratados como acuerdos de "know\-how", pero en el marco de tipo de protección industrial. (A veces no interesa lanzar el proceso de registro de patente y directamente se acuerda hacer uso de la misma en base a la firma de un acuerdo privado de uso secreto).
* Tipos de protección para el tipo de propiedad "Propiedad Intelectual":  

	+ Software
	+ Know\-how

Estos tipos de protección se podrán modificar o dar de baja y, además, también se podrán añadir tipos nuevos.

![](/attachments/597853705/597880547.png)

Las columnas que se mostrarán en el listado serán:

* Nombre
* Descripción
* Tipo de propiedad
* Activo

Desde este listado el administrador/a puede realizar las siguientes acciones, disponibles en la columna "Acciones" para cada registro:

* Editar un registro
* Eliminar un registro
* Reactivar un registro

Además, desde esta misma pantalla de listado de tipos de protección, se podrán también dar de alta nuevos tipos.

#### Añadir tipo de protección

El botón "Añadir Tipo de Protección" permite crear un nuevo tipo de protección.

Tras pulsar el botón, se navega a una nueva pantalla para la introducción de datos, que dispondrá de una única pestaña, "Datos Generales", que contendrá los datos mínimos para poder dar de alta el tipo de protección:

![](/attachments/597853705/597880951.png)

Los campos para dar de alta un tipo de protección son:

* Tipo de propiedad: es un campo obligatorio.
* Nombre: es un campo obligatorio. Debe ser único. No se permite la existencia de dos tipos de protección activos con el mismo nombre.
* Descripción: es un campo obligatorio.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Guardar Tipo de Protección".

![](/attachments/597853705/597880948.png)

En caso que se introduzca un nombre para el tipo de protección que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880614.png)

Si la operación de creación finaliza satisfactoriamente, la pantalla de listado de tipos de protección se refrescará automáticamente para que se añada a la lista el nuevo tipo recién creado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880613.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de tipos de protección y no se creará el nuevo tipo de protección.

#### Modificar tipo de protección

Al pulsar sobre el icono modificar para un elemento de la lista, se navegará a una nueva pantalla donde se cargarán los datos actuales del registro seleccionado del listado.

En la modificación aparecerá una pestaña adicional al caso del alta, la pestaña "Subtipos de Protección", donde se podrán añadir, para los tipos de protección que lo precisen, un nivel más de detalle dentro del tipo. Por ejemplo, se podrán usar para diferenciar, para una "Marca" concreta, entre que sea "Marca española" y "Marca peninsular".

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Guardar Tipo de Protección".

Una vez realizados los cambios deseados, se aplicarán las validaciones adicionales a la de obligatoriedad para los campos que las tengan, según se describe en los apartados a continuación.

##### Tipo de protección \- Datos generales

Los campos para modificar un tipo de protección en la pestaña "Datos Generales" son:

* Tipo de propiedad: es un campo obligatorio. Es modificable. Si ya existe una invención asociada a ese tipo de protección y esta invención tiene alguna solicitud de protección asociada, no se podrá modificar el tipo de propiedad de este tipo de protección. Esto es así ya que los datos que en el SGI se recogen de las solicitudes de protección difieren entre la propiedad industrial y la intelectual según se describe en [PII\-Invenciones \- Añadir nueva solicitud de protección \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-pii/pii-invenciones.md#PIIInvenciones-DatosGenerales.2 "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-pii/pii-invenciones.md#PIIInvenciones-DatosGenerales.2").
* Nombre: es un campo obligatorio. Es modificable. Debe ser único. No se permite la existencia de dos tipos de protección activos con el mismo nombre.
* Descripción: es un campo obligatorio. Es modificable.

##### Tipo de protección \- Subtipos de protección

La pestaña "Subtipos de protección", dentro de un tipo de protección concreto, da acceso a la gestión de los subtipos de protección para ese tipo de protección.

![](/attachments/597853705/597880937.png)

La información de subtipos de protección de la que se dispondrá en el SGI será la siguiente:

* Nombre: es el nombre identificativo del subtipo de protección, con el que se listará en todos los desplegables.
* Descripción: es un texto de introducción libre para disponer de una descripción ampliada del subtipo de protección.
* Activo: indicador de si el registro está activo o no. Tomará uno de estos valores: Sí o No.

###### Listado de subtipos de protección

Las columnas que se mostrarán en el listado serán:

* Nombre
* Descripción
* Activo

Desde este listado el administrador/a puede realizar las siguientes acciones, disponibles en la columna "Acciones" para cada registro:

* Eliminar un registro
* Reactivar un registro

Además, desde esta misma pantalla de listado de subtipos de protección, se podrán también dar de alta nuevos subtipos.

###### Añadir subtipo de protección

El botón "Añadir Subtipo de Protección" permite crear un nuevo subtipo de protección y asociarlo al tipo de protección dentro del que se encuentra su gestión.

Tras pulsar el botón, se abrirá una ventana emergente para la introducción de datos:

![](/attachments/597853705/597880935.png)

Los campos para dar de alta un subtipo de protección son:

* Nombre: es un campo obligatorio. Debe ser único. No se permite la existencia de dos subtipos de protección activos con el mismo nombre.
* Descripción: es un campo obligatorio.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Aceptar".

![](/attachments/597853705/597880542.png)![](/attachments/597853705/597880615.png)

En caso que se introduzca un nombre para el subtipo de protección que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880541.png)

Si la operación de creación finaliza satisfactoriamente, la ventana de alta de tipo de protección se cerrará automáticamente y al pulsar guardar se mostrará un mensaje informativo.

![](/attachments/597853705/597880543.png)

Si se pulsa el botón  "Cancelar", la ventana de alta de tipo de protección se cerrará y no se creará el nuevo tipo de protección.

###### Eliminar subtipo de protección

La entidad subtipo de protección admite "desactivación".

###### Recuperar subtipo de protección

La entidad subtipo de protección admite "recuperación".

Al reactivar un subtipo de protección se validará que no exista otro subtipo de protección activo con el mismo nombre y, si es así, se mostrará un mensaje de error y no se podrá reactivar. 

#### Eliminar tipo de protección

La entidad tipo de protección admite "desactivación".

#### Recuperar tipo de protección

La entidad tipo de protección admite "recuperación".

Al reactivar un tipo de protección se validará que no exista otro tipo de protección activo con el mismo nombre y, si es así, se mostrará un mensaje de error y no se podrá reactivar.

![](/attachments/597853705/597880546.png)

### Sectores de aplicación

Las invenciones deben poder ser explotadas y, por tanto, ser "susceptibles de aplicación industrial". Esto ocurre cuando pueden ser fabricadas o utilizadas en cualquier clase de industria. Los sectores de aplicación de una invención serán aquellos sectores industriales  en los que se considera que la invención aplica. No tendrán correlación con los sectores [CNAE](https://www.cnae.com.es/lista-actividades.php "https://www.cnae.com.es/lista-actividades.php"), sino que dispondrán de una gestión propia y específica en el SGI.

La información de sectores de aplicación de la que se dispondrá en el SGI será la siguiente:

* Nombre: es el nombre identificativo del sector de aplicación, con el que se listará en todos los desplegables.
* Descripción: es un texto de introducción libre para disponer de una descripción ampliada del sector de aplicación.
* Activo: indicador de si el registro está activo o no. Tomará uno de estos valores: Sí o No.

#### Listado de sectores de aplicación

Al acceder a la opción de menú "Sectores de aplicación", se mostrará una pantalla con el listado de sectores de aplicación que ya estén dados de alta.

El SGI no dispondrá de una lista de sectores de aplicación cargados por defecto, sino que cada Universidad deberá definir los que considere en el momento de la implantación del producto.

Los sectores de aplicación se podrán dar de alta, modificar o dar de baja.

![](/attachments/597853705/597880523.png)

Las columnas que se mostrarán en el listado serán:

* Nombre
* Descripción
* Activo

Desde este listado el administrador/a puede realizar las siguientes acciones, disponibles en la columna "Acciones" para cada registro:

* Editar un registro
* Eliminar un registro
* Reactivar un registro

Además, desde esta misma pantalla de listado de sectores de aplicación, se podrán también dar de alta nuevos sectores.

#### Añadir sector de aplicación

El botón "Añadir Sector de Aplicación" permite crear un nuevo sector de aplicación.

Tras pulsar el botón, se abrirá una ventana emergente para la introducción de datos:

![](/attachments/597853705/597880531.png)

Los campos para dar de alta un sector de aplicación son:

* Nombre: es un campo obligatorio. Debe ser único. No se permite la existencia de dos sectores de aplicación activos con el mismo nombre.
* Descripción: es un campo obligatorio.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Añadir".

![](/attachments/597853705/597880534.png)![](/attachments/597853705/597880519.png)

En caso que se introduzca un nombre para el sector de aplicación que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880528.png)

Si la operación de creación finaliza satisfactoriamente, la pantalla de listado de sectores de aplicación se refrescará automáticamente para que se añada a la lista el nuevo sector recién creado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880530.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de sectores de aplicación y no se creará el nuevo sector.

#### Modificar sector de aplicación

Al pulsar sobre el icono modificar para un elemento de la lista, se abrirá una ventana emergente donde se cargarán los datos actuales del registro seleccionado del listado.

Los campos para modificar un sector de aplicación son:

* Nombre: es un campo obligatorio. Es modificable. Debe ser único. No se permite la existencia de dos sectores de aplicación activos con el mismo nombre.
* Descripción: es un campo obligatorio. Es modificable.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Aceptar".

En caso que se introduzca un nombre para el sector de aplicación que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880525.png)

Si la operación de modificación finaliza satisfactoriamente, la pantalla de listado de sectores de aplicación se refrescará automáticamente con los nuevos datos del sector recién modificado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880524.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de sectores de aplicación y no se modificará el sector.

#### Eliminar sector de aplicación

La entidad sector de aplicación admite "desactivación".

#### Recuperar tipo de protección

La entidad sector de aplicación admite "recuperación".

Al reactivar un sector de aplicación se validará que no exista otro sector de aplicación activo con el mismo nombre y, si es así, se mostrará un mensaje de error y no se podrá reactivar.

![](/attachments/597853705/597880597.png)

### Resultados de informe de patentabilidad

Para evaluar si una invención es "patentable" o susceptible de ser candidata a ser protegida, se suele solicitar a una entidad externa a la Universidad que realice un estudio acerca de la invención que se quiere "patentar" o proteger. Este estudio previo sirve para establecer si la invención cumple con los requisitos de "patentabilidad" o necesarios para solicitar su protección ante un organismo oficial y conocer además qué antecedentes existen respecto al objeto de la pretendida "patente" o invención a proteger. Fruto de ese estudio, se genera un informe, que podrá ser almacenado en el SGI, y ese informe además tendrá un resultado, cuyos posibles valores se podrán gestionar en el SGI.  


La información de resultados de informe de patentabilidad de la que se dispondrá en el SGI será la siguiente:

* Nombre: es el nombre identificativo del resultado de informe de patentabilidad, con el que se listará en todos los desplegables.
* Descripción: es un texto de introducción libre para disponer de una descripción ampliada del resultado de informe de patentabilidad.
* Activo: indicador de si el registro está activo o no. Tomará uno de estos valores: Sí o No.

#### Listado de resultados de informe de patentabilidad

Al acceder a la opción de menú "Resultados de informe de patentabilidad", se mostrará una pantalla con el listado de informes de patentabilidad que ya estén dados de alta.

En el momento de implantar el SGI en una Universidad, se deberán definir una lista de resultados de informes de patentabilidad a cargar. Por ejemplo, podrían ser los siguientes:

* Favorable
* Parcialmente favorable
* Desfavorable

Estos resultados de informe de patentabilidad se podrán modificar o dar de baja, y también se podrán añadir resultados nuevos.

![](/attachments/597853705/597880595.png)

Las columnas que se mostrarán en el listado serán:

* Nombre
* Descripción
* Activo

Desde este listado el administrador/a puede realizar las siguientes acciones, disponibles en la columna "Acciones" para cada registro:

* Editar un registro
* Eliminar un registro
* Reactivar un registro

Además, desde esta misma pantalla de listado de resultado de informe de patentabilidad, se podrán también dar de alta nuevos resultados.

#### Añadir resultado de informe de patentabilidad

El botón "Añadir Resultado de Informe de Patentabilidad" permite crear un nuevo resultado de informe de patentabilidad.

Tras pulsar el botón, se abrirá una ventana emergente para la introducción de datos:

![](/attachments/597853705/597880599.png)

Los campos para dar de alta un resultado de informe de patentabilidad son:

* Nombre: es un campo obligatorio. Debe ser único. No se permite la existencia de dos resultados de informe de patentabilidad activos con el mismo nombre.
* Descripción: es un campo obligatorio.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Añadir".

![](/attachments/597853705/597880590.png)![](/attachments/597853705/597880593.png)

  


En caso que se introduzca un nombre para el resultado de informe de patentabilidad que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880591.png)

Si la operación de creación finaliza satisfactoriamente, la pantalla de listado de resultados de informe de patentabilidad se refrescará automáticamente para que se añada a la lista el nuevo resultado recién creado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880586.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de resultados de informe de patentabilidad y no se creará el nuevo resultado.

#### Modificar resultado de informe de patentabilidad

Al pulsar sobre el icono modificar para un elemento de la lista, se abrirá una ventana emergente donde se cargarán los datos actuales del registro seleccionado del listado.

Los campos para modificar un resultado de informe de patentabilidad son:

* Nombre: es un campo obligatorio. Es modificable. Debe ser único. No se permite la existencia de dos resultados de informe de patentabilidad activos con el mismo nombre.
* Descripción: es un campo obligatorio. Es modificable.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Aceptar".

En caso que se introduzca un nombre para el resultado de informe de patentabilidad que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880584.png)

Si la operación de modificación finaliza satisfactoriamente, la pantalla de listado de resultados de informe de patentabilidad se refrescará automáticamente con los nuevos datos del resultado recién modificado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880609.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de resultados de informe de patentabilidad y no se modificará el resultado.

#### Eliminar resultado de informe de patentabilidad

La entidad resultado de informe de patentabilidad admite "desactivación".

![](/attachments/597853705/597880611.png)

#### Recuperar resultado de informe de patentabilidad

La entidad resultado de informe de patentabilidad admite "recuperación".

Al reactivar un resultado de informe de patentabilidad se validará que no exista otro resultado de informe de patentabilidad activo con el mismo nombre y, si es así, se mostrará un mensaje de error y no se podrá reactivar.

![](/attachments/597853705/597880606.png)

### Tipos de procedimiento

Las acciones o procedimientos que se van llevando a cabo durante el proceso de solicitar y gestionar la protección de una invención, se pueden clasificar en función de su naturaleza, dando lugar a una serie de agrupaciones lógicas que permiten que sobre estas acciones o procedimientos se aporte mayor detalle en la información, tipificándolas a la hora de gestionarse en el SGI. Estas agrupaciones serían los tipos de procedimiento.

La información de tipos de procedimiento de la que se dispondrá en el SGI será la siguiente:

* Nombre: es el nombre identificativo del tipo de procedimiento, con el que se listará en todos los desplegables.
* Descripción: es un texto de introducción libre para disponer de una descripción ampliada del tipo de procedimiento.
* Activo: indicador de si el registro está activo o no. Tomará uno de estos valores: Sí o No.

#### Listado de tipo de procedimiento

Al acceder a la opción de menú "Tipos de procedimiento", se mostrará una pantalla con el listado de tipos de procedimiento que ya estén dados de alta.

El SGI no dispondrá de una lista de tipos de procedimiento cargados por defecto.

Los tipos de procedimiento se podrán dar de alta, modificar o dar de baja.

![](/attachments/597853705/597880605.png)

Las columnas que se mostrarán en el listado serán:

* Nombre
* Descripción
* Activo

Desde este listado el administrador/a puede realizar las siguientes acciones, disponibles en la columna "Acciones" para cada registro:

* Editar un registro
* Eliminar un registro
* Reactivar un registro

Además, desde esta misma pantalla de listado de tipos de procedimiento, se podrán también dar de alta nuevos tipos.

#### Añadir tipo de procedimiento

El botón "Añadir Tipo de Procedimiento" permite crear un nuevo tipo de procedimiento.

Tras pulsar el botón, se abrirá una ventana emergente para la introducción de datos:

![](/attachments/597853705/597880608.png)

Los campos para dar de alta un tipo de procedimiento son:

* Nombre: es un campo obligatorio. Debe ser único. No se permite la existencia de dos tipos de procedimiento activos con el mismo nombre.
* Descripción: es un campo obligatorio.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Añadir".

![](/attachments/597853705/597880607.png)![](/attachments/597853705/597880602.png)

En caso que se introduzca un nombre para el tipo de procedimiento que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880600.png)

Si la operación de creación finaliza satisfactoriamente, la pantalla de listado de tipos de procedimiento se refrescará automáticamente para que se añada a la lista el nuevo tipo recién creado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880604.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de tipos de procedimiento y no se creará el nuevo tipo.

#### Modificar tipo de procedimiento

Al pulsar sobre el icono modificar para un elemento de la lista, se abrirá una ventana emergente donde se cargarán los datos actuales del registro seleccionado del listado.

Los campos para modificar un tipo de procedimiento son:

* Nombre: es un campo obligatorio. Es modificable. Debe ser único. No se permite la existencia de dos tipos de procedimiento activos con el mismo nombre.
* Descripción: es un campo obligatorio. Es modificable.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Aceptar".

En caso que se introduzca un nombre para el tipo de procedimiento que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880566.png)

Si la operación de modificación finaliza satisfactoriamente, la pantalla de listado de tipos de procedimiento se refrescará automáticamente con los nuevos datos del tipo recién modificado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880558.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de tipos de procedimiento y no se modificará el tipo.

#### Eliminar tipo de procedimiento

La entidad tipo de procedimiento admite "desactivación".

#### 

#### Recuperar tipo de procedimiento

La entidad tipo de procedimiento admite "recuperación".

Al reactivar un tipo de procedimiento se validará que no exista otro tipo de procedimiento activo con el mismo nombre y, si es así, se mostrará un mensaje de error y no se podrá reactivar.

### 

### Tramos de reparto

Como resultado de la explotación de las licencias de las invenciones a través de contratos de regalías, se generarán una serie de ingresos. Por otra parte, como resultado de la gestión y trámites relativos a la gestión de la protección de la invención se generarán también una serie de gastos. Cuando los ingresos superen a los gastos, y una vez deducidos todos esos gastos de los ingresos generados, se podrá llevar a cabo por parte de la Universidad un reparto de los beneficios netos de esa explotación de las invenciones. Este reparto, que se llevará a cabo entre la Universidad y los miembros del equipo inventor, podrá tener configurado un % de reparto recomendado por defecto. Este reparto recomendado podrá ser distinto en función de la magnitud de los beneficios, es lo que se configurará a través de los tramos de reparto.

La información de tramos de reparto de la que se dispondrá en el SGI será la siguiente:

* Tramo de reparto (desde\-hasta): representa el intervalo desde\-hasta, expresado en unidades enteras de la moneda de referencia, que marcan el tramo dinerario para referenciar los % de reparto Universidad\-Equipo inventor. Se almacenará separado en 2 campos de información:  

	+ Tramo Desde: número entero. Marca el inicio del tramo dinerario para referenciar los % de reparto. Ha de ser inferior al valor indicado en Tramo Hasta.
	+ Tramo Hasta: número entero. Marca el final del tramo dinerario para referenciar los % de reparto. Ha de ser superior al valor indicado en Tramo Desde.
* % Universidad: número decimal con 2 decimales. Es el porcentaje de los beneficios/reparto que se transfiere a la Universidad. Deberá tener un valor mayor o igual a 0 y menor o igual a 100\.
* % Equipo inventor: número decimal con 2 decimales. Es el porcentaje de los beneficios/reparto que se reparte entre los miembros del equipo inventor con los que la Universidad ha adquirido la obligación de retribuirles, de manera proporcional a su porcentaje de autoría de invención, estén vinculados o no a la Universidad.  Deberá tener un valor mayor o igual a 0 y menor o igual a 100\.
* Tipo de tramo: desplegable donde se indicará la clase de tramo configurado. Los tipos de tramo entre los que se podrá seleccionar son:
	+ Inicial: es el tramo que comienza en 1, es decir, con un valor de "Tramo Desde" 1 y finaliza donde el usuario indique como valor de "Tramo Hasta". Solo podrá haber un tramo inicial, pero no es obligatorio que lo haya.
	+ Intermedio: es un tramo que tiene un límite inferior, marcado por el fin del tramo inmediatamente anterior (si existe). Podrá haber varios tramos intermedios, pero no es obligatorio que los haya.
	+ Final: es el tramo cuyo valor "Tramo Hasta" lo determina el propio SGI con el máximo valor permitido y cuyo valor "Tramo Desde" tendrá como límite inferior el fin del tramo inmediatamente anterior (si existe). Solo podrá haber un tramo final, pero no es obligatorio que lo haya.

Los tramos de reparto no se podrán solapar entre sí.

Para un tramo de reparto dado, la suma de % Universidad y % Equipo inventor ha de ser 100\.

#### Listado de tramos de reparto

Al acceder a la opción de menú "Tramos de Reparto", se mostrará una pantalla con el listado de tramos de reparto que ya estén dados de alta.

El SGI no dispondrá de una lista de tramos de reparto cargados por defecto.

Los tramos de reparto se podrán dar de alta, modificar o dar de baja.

![](/attachments/597853705/597880559.png)

Las columnas que se mostrarán en el listado serán:

* Tramo de reparto: en el caso especial de un tipo de tramo inicial, se mostrará el símbolo "\<\=" precediendo al valor del campo "hasta" y no se mostrará el valor "desde", se supone 1\. En el caso especial de un tipo de tramo final, se mostrará el símbolo "\>\=" precediendo al valor del campo "desde" y no se mostrará el valor "hasta", se supone el máximo permitido por el sistema.
* % Universidad
* % Equipo inventor

Desde este listado el administrador/a puede realizar las siguientes acciones, disponibles en la columna "Acciones" para cada registro:

* Editar un registro
* Eliminar un registro

Además, desde esta misma pantalla de listado de tramos de reparto, se podrán también dar de alta nuevos tramos.

#### Añadir tramo de reparto

El botón "Añadir Tramo de Reparto" permite crear un nuevo tramo de reparto.

Tras pulsar el botón, se abrirá una ventana emergente para la introducción de datos:

![](/attachments/597853705/597880551.png)

Los campos para dar de alta un tramo de reparto son:

* Tipo de tramo: es un campo obligatorio. El funcionamiento varía según el tipo de tramo que se seleccione:
	+ Inicial: si se selecciona, el campo "Tramo Hasta" se mostrará en modo de solo lectura y tomará el valor 1\.
	+ Intermedio: si se selecciona, el campo "Tramo Desde" se mostrará en modo de solo lectura con el valor siguiente al valor de Tramo Hasta del tramo inicial o, si ya hay tramos intermedios, del último tramo intermedio que se haya configurado hasta el momento, para evitar que haya saltos entre tramos.
	+ Final: si se selecciona, el campo "Tramo Desde" se mostrará en modo de solo lectura con el valor siguiente al valor de Tramo Hasta del tramo inicial o, si ya hay tramos intermedios, del último tramo intermedio que se haya creado, para evitar que haya saltos entre dicho tramo y el tramo final. El campo "Tramo Hasta" tomará el valor del máximo entero permitido por el SGI, pero no se visualizará dicho valor por pantalla.
* Tramo Desde: es un campo obligatorio.
* Tramo Hasta: es un campo obligatorio.
* % Universidad: es un campo obligatorio.
* % Equipo inventor: es un campo obligatorio.

En el caso de que % Universidad o % Equipo inventor sean inferiores a 0 se mostrará un mensaje de error:

![](/attachments/597853705/597880549.png)

![](/attachments/597853705/597880581.png)

En caso de que la suma de % Universidad y % Equipo inventor del tramo de reparto sea distinto a 100 se mostrará un mensaje de error:

![](/attachments/597853705/597880578.png)

No existirán saltos ni intersecciones entre los tramos configurados, esto es, un tramo ha de comenzar donde finalice el inmediatamente anterior \+ 1, por tanto, por extensión, los tramos se han de introducir de manera secuencial y ordenada de menor a mayor rango de importes, sin solaparse entre sí. Esto será dirigido de esta forma desde la propia aplicación, evitando así errores de usuario a la hora de configurar los tramos.

Solo puede haber un tramo de tipo inicial y un tramo de tipo final en la lista, si bien, no es obligatorio que se definan ninguno de estos dos tipos de tramos ni tampoco que exista ninguno intermedio. Si no se ha configurado un reparto para algún rango dinerario, la aplicación simplemente no recomendará una distribución por defecto del reparto a la hora de realizarlo. En el caso de que se intenten añadir un tramo de tipo inicial o final habiendo otro del mismo tipo ya en la lista, se mostrará un mensaje de error:

![](/attachments/597853705/597880577.png)  


Hasta que no se cumplimenten los campos obligatorios, y se cumplan las restricciones anteriores, no se activará el botón "Añadir".

Si la operación de creación finaliza satisfactoriamente, la pantalla de listado de tramos de reparto se refrescará automáticamente para que se añada a la lista el nuevo tramo recién creado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880657.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de tramos de reparto y no se creará el nuevo tramo.

#### Modificar tramo de reparto

Al pulsar sobre el icono modificar para un elemento de la lista, se abrirá una ventana emergente donde se cargarán los datos actuales del registro seleccionado del listado.

Los campos para modificar un tipo de procedimiento son:

* Tipo de tramo: no es modificable.
* Tramo Desde: no es modificable.
* Tramo Hasta: es un campo obligatorio. Solo es modificable en caso de ser último tramo que se haya configurado, sea de tipo final o no.
* % Universidad: es un campo obligatorio. Es modificable.
* % Equipo inventor: es un campo obligatorio. Es modificable.

En el caso de que % Universidad o % Equipo inventor sean inferiores a 0 se mostrará un mensaje de error

![](/attachments/597853705/597880649.png)

En caso de que la suma de % Universidad y % Equipo inventor del tramo de reparto sea distinto a 100 se mostrará un mensaje de error:

![](/attachments/597853705/597880654.png)

Hasta que no se cumplimenten los campos obligatorios, y se cumplan las restricciones anteriores, no se activará el botón "Aceptar".

Si la operación de modificación finaliza satisfactoriamente, la pantalla de listado de tramos de reparto se refrescará automáticamente con los nuevos datos del tramo recién modificado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880652.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de tramos de reparto y no se modificará el tramo.

#### Eliminar tramo de reparto

La entidad tramo de reparto no admite "desactivación", esto es, al eliminar un tramo de reparto, desaparecerá definitivamente del sistema.

Antes de eliminar un tramo de reparto, se solicitará confirmación de la acción por parte del usuario a través de una ventana emergente:

![](/attachments/597853705/597880651.png)

Si se pulsa el botón "Aceptar", se eliminará el tramo de reparto y, si se pulsa el botón "Cancelar", se cerrará la ventana emergente de confirmación sin realizar ninguna acción.

### Vías de protección

El proceso para proteger una invención podrá llevarse a cabo de diversas formas, en diferentes momentos en el tiempo y en países distintos. Para representar todas estas posibilidades y poder tipificar las diferentes solicitudes de protección asociadas a una invención se utilizarán las vías de protección. Las vías de protección, por tanto, no son más que las diferentes maneras de clasificar las solicitudes de protección.

La información de vías de protección de la que se dispondrá en el SGI será la siguiente:

* Nombre: es el nombre identificativo de la vía de protección, con el que se listará en todos los desplegables.
* Descripción: es un texto de introducción libre para disponer de una descripción ampliada de la vía de protección.
* Tipo de Propiedad: es el tipo de propiedad asociada a la vía de protección. El tipo de propiedad que tenga asociada una invención, marcará la lista de vías de protección posibles para sus solicitudes de protección. Tendrá dos valores posibles:
	+ Propiedad Industrial
	+ Propiedad Intelectual
* Meses prioridad / plazo ent. fases nac./reg.: número entero. Representa los meses de prioridad a aplicar, cuando la solicitud es la primera de una invención, o los meses de plazo para la entrada a las fases nacionales / regionales, en el caso concreto de solicitudes que sean extensión internacional (p.ej. vía PCT).
* País Específico: marca para indicar que al ser seleccionada esta vía, en el desplegable de vías de una solicitud de protección, ha de mostrarse por pantalla el desplegable de países. Esto requerirá al usuario elegir uno específico en el que solicitar proteger la invención. Tomará uno de estos valores: Sí o No.
* Extensión Internacional: marca para indicar que al ser seleccionada esta vía, en el desplegable de vías de una solicitud de protección, ha de adaptarse el texto para los campos de "Fecha prioridad" y "Fecha fin prioridad" a los adecuados para este tipo de vías, que será respectivamente, "Fecha solicitud" y "F. fin pres. f. nac./reg.". Tomará uno de estos valores: Sí o No.
* Varios Países: marca para indicar que al ser seleccionada esta vía, en el desplegable de vías de una solicitud de protección, ha de mostrarse el listado de países en los que se ha validado la invención a través de la solicitud de protección. Tomará uno de estos valores: Sí o No.
* Activo: indicador de si el registro está activo o no. Tomará uno de estos valores: Sí o No.

#### Listado de vías de protección

Al acceder a la opción de menú "Vías de Protección", se mostrará una pantalla con el listado de vías de protección que ya estén dadas de alta.

En el momento de implantar el SGI en una Universidad, se deberán definir una lista de vías de protección a cargar para cada tipo de protección. Por ejemplo, podrían ser los siguientes:

Para las invenciones con un tipo de protección del tipo **Propiedad industrial** son:

* **España**. Lo más común es que sea la primera solicitud, aunque se puede partir de una no española.
* **PCT**. Es una extensión de 18 meses del año de prioridad. Lo normal es que sea la segunda solicitud.
* **Europea**. Esta vía tiene la particularidad de tener la validación por países.
* **País específico**.  Se escoge de la lista de códigos de país cual es elegido.

Para las invenciones con un tipo de protección del tipo **Propiedad intelectual** son:

* **Registro autonómico**.
* **Acta notarial**.
* **Registro interno**. Registro propio del la Universidad, esta solicitud no va a registrarse a ningún organismo oficial externo.

Estas vías de protección se podrán dar modificar o dar de baja, y también se podrán añadir vías nuevas.

![](/attachments/597853705/597880645.png)

Las columnas que se mostrarán en el listado serán:

* Nombre
* Descripción
* País Específico
* Extensión Internacional
* Varios Países
* Activo

Desde este listado el administrador/a puede realizar las siguientes acciones, disponibles en la columna "Acciones" para cada registro:

* Editar un registro
* Eliminar un registro
* Reactivar un registro

Además, desde esta misma pantalla de listado de vías de protección, se podrán también dar de alta nuevas vías.

#### Añadir vía de protección

El botón "Añadir Vía de Protección" permite crear una nueva vía de protección.

Tras pulsar el botón, se abrirá una ventana emergente para la introducción de datos:

![](/attachments/597853705/597880644.png)

Los campos para dar de alta una vía de protección son:

* Nombre: es un campo obligatorio. Debe ser único. No se permite la existencia de dos vías de protección activas con el mismo nombre.
* Descripción: es un campo obligatorio.
* Tipo de Propiedad: es un campo obligatorio.
* Meses prioridad / plazo ent. fases nac./reg.: este campo solo aparecerá en el caso de seleccionarse como Tipo propiedad "Propiedad industrial" y, en este caso, será obligatorio.
* País Específico: es un campo obligatorio. Por defecto, estará desmarcado.
* Extensión Internacional: es un campo obligatorio. Por defecto, estará desmarcado.
* Varios Países: es un campo obligatorio. Por defecto, estará desmarcado.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Añadir".

![](/attachments/597853705/597880647.png)

En caso que se introduzca un nombre para la vía de protección que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880646.png)

Si la operación de creación finaliza satisfactoriamente, la pantalla de listado de vías de protección se refrescará automáticamente para que se añada a la lista la nueva vía recién creada y se mostrará un mensaje informativo.

![](/attachments/597853705/597880641.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de vías de protección y no se creará la nueva vía.

#### Modificar vías de protección

Al pulsar sobre el icono modificar para un elemento de la lista, se abrirá una ventana emergente donde se cargarán los datos actuales del registro seleccionado del listado.

Los campos para modificar una vía de protección son:

* Nombre: es un campo obligatorio. Es modificable.
* Descripción: es un campo obligatorio. Es modificable.
* Tipo de Propiedad: es un campo obligatorio. Es modificable.
* Meses prioridad / plazo ent. fases nac./reg.: en caso de aparecer por pantalla, será obligatorio. Es modificable.
* País Específico: es un campo obligatorio. Es modificable.
* Extensión Internacional: es un campo obligatorio. Es modificable.
* Varios Países: es un campo obligatorio. Es modificable.

Hasta que no se cumplimenten los campos obligatorios, no se activará el botón "Aceptar".

En caso que se introduzca un nombre para la vía de protección que ya exista y esté activo, se mostrará un mensaje de error.

![](/attachments/597853705/597880639.png)

Si la operación de modificación finaliza satisfactoriamente, la pantalla de listado de resultados de vías de protección se refrescará automáticamente con los nuevos datos del resultado recién modificado y se mostrará un mensaje informativo.

![](/attachments/597853705/597880643.png)

Si se pulsa el botón  "Cancelar", se navegará automáticamente a la pantalla de listado de vías de protección y no se modificará la vía.

#### Eliminar vía de protección

La entidad vía de protección admite "desactivación".

#### Recuperar vía de protección

La entidad vía de protección admite "recuperación".

Al reactivar una vía de protección se validará que no exista otra vía de protección activa con el mismo nombre y, si es así, se mostrará un mensaje de error y no se podrá reactivar.

![](/attachments/597853705/597880670.png)




