# Hércules : CSP\-Notificación de presupuestos al SGE



### 1\. Introducción

Desde el apartado Notificación presupuestos SGE del menú CSP se podrán enviar al SGE (Sistema de gestión económica) las partidas de gastos e ingresos recogidas en las distintas anualidades del presupuesto de los proyectos.

Este apartado se presenta de manera independiente a la "Ejecución económica" de los proyectos, porque se enviarán a la vez las partidas de distintos proyectos. Normalmente el envío se realizará una vez al año para la anualidad siguiente, de tal manera, que si estamos en el mes de Septiembre del 2021 se envíen las partidas de gastos e ingresos de la anualidad 2022 de todos los proyectos concedidos o bien los que seleccione el usuario.

La información a enviar al SGE será:

* Identificador proyecto SGE: Identificador del proyecto en el Sistema de gestión económica.
* Anualidad: año que identifica la anualidad. Son las anualidades definidas en el presupuesto del proyecto.
* Partida presupuestaria: código de la partida presupuestaria
* Tipo: Indica si la partida presupuestaria es de Gasto o de Ingreso
* Importe concedido: suma del campo "importe concedido" de las partidas de gasto (o ingreso) de la anualidad del presupuesto del proyecto

### 2\. Listado y búsqueda de presupuestos de proyectos

El acceso a la gestión de presupuestos ocupa la séptima posición en el menú del módulo CSP.  Siguiendo la estructura general del SGI, tras pulsar en el menú "Notificación presupuestos SGE" se accede a la página inicial que contiene el listado de presupuestos de proyectos del SGI y su buscador, que sigue las normas básicas descritas en [MDU\-Manual de usuario \- 3\.2 Buscadores y listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.2Buscadoresylistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.2Buscadoresylistados").

Los proyectos mostrados en el buscador deben de cumplir los siguientes requisitos:

* Tener asociado el identificador SGE (Ver [CSP\-Proyectos\-Configuración económica \- 2 Configuración económica \- Identificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n")).
* Tener definida al menos una anualidad en el presupuesto cuyo campo "presupuestar"  tenga valor "sí", es decir, que requiere su envío al SGE (Ver [CSP\-Proyectos\-Configuración económica \- 5 Presupuesto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto")).
* Tener definida  al menos una partida de gasto o ingreso para esa anualidad.  (Ver [CSP\-Proyectos\-Configuración económica \- 4 Partidas presupuestarias](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-4.Partidaspresupuestarias "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-4.Partidaspresupuestarias")).
* Pertenecer a una de las unidades de gestión (UGI, OTRI, etc...) a las que esté vinculado el personal de gestión

![](/attachments/597853558/597879941.png)  


La tabla muestra una serie de campos significativos:

* Título proyecto: Título del proyecto.
* Acrónimo: Acrónimo del proyecto.
* Fecha inicio: Fecha de inicio del proyecto.
* Fecha fin: Fecha de finalización del proyecto.
* Estado proyecto: Estado actual del proyecto.
* Identificación SGE: Identificador del proyecto en el SGE (Sistema de Gestión Económica).
* Anualidad: Año que identifica la anualidad.
* Total gastos: Campo calculado. Sumatorio del campo importe concedido de los gastos registrados en la anualidad.
* Total ingresos: Campo calculado. Sumatorio del campo importe concedido de todos los ingresos registrados en la anualidad.
* Enviado al SGE: Indica si ya se ha enviado o no al SGE
* Acciones: Conjunto de acciones que están disponibles sobre el presupuesto del proyecto.

Los campos disponibles en el formulario de la búsqueda son:

* Anualidad.  Si se introduce un año en este filtro, se mostrarán los proyectos que tengan definida una anualidad para el año introducido.
* Título proyecto.  Si se introduce una cadena en este filtro, se mostrarán los proyectos que contengan la cadena introducida en cualquier parte del campo "título" del proyecto.
* Estado proyecto: Campo para aplicar búsquedas por el estado del proyecto. Es un desplegable con el listado de estados posible.
* Número de identificación SGE: Si se introduce una cadena en este filtro, se mostrarán los proyectos que contengan la cadena introducida en cualquier parte del campo "código identificación SGE" del proyecto.
* Fecha inicio desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los proyectos cuya fecha de inicio esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.
* Fecha fin desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los proyectos cuya fecha de finalización esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.

Una vez introducidos los filtros de búsqueda se debe pulsar el botón "Buscar". Los resultados coincidentes se mostrarán en el listado de resultados. Todos los filtros de búsqueda actuarán como una conjunción "y", es decir, los proyectos que se muestren en el listado de resultados deberán cumplir todos los filtros especificados (incluidos los requisitos mencionados anteriormente).

Se puede utilizar el botón "Limpiar" para vaciar cualquier valor introducido en cualquiera de los campos. Además de vaciar los campos de búsqueda el botón "Limpiar" vuelve a realizar la búsqueda, mostrando el listado completo de proyectos que cumplan los requisitos.

### 3\. Enviar al SGE

Para realizar el envío al SGE de las partidas presupuestarias de gastos e ingresos de los proyectos, se debe de seleccionar el presupuesto de la anualidad que se desea enviar. Se puede enviar uno o varios presupuestos a la vez, utilizando para ello el check de seleccionar/des\-seleccionar de la primera columna (antes del título del proyecto).

En la cabecera de la tabla de resultados se dispone de un check que permite seleccionar/des\-seleccionar de manera simultanea todos los checks de las filas individuales. 

![](/attachments/597853558/597880015.png)

Si se selecciona el check múltiple de la cabecera se seleccionarán todas las filas que representan a presupuestos que no han sido enviados todavía al SGE, es decir, los que tienen en la columna "Enviado al SGE" el valor "No".

![](/attachments/597853558/597880013.png)

Si se des\-selecciona el check múltiple de la cabecera se des\-seleccionarán todas las filas

![](/attachments/597853558/597880015.png)

Una vez seleccionados todos los presupuestos que se desean enviar al SGE se debe de pulsar el botón "Enviar a SGE".

Tras pulsar el botón  "Enviar a SGE" se mostrará un mensaje de confirmación.

![](/attachments/597853558/597880017.png)

Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y no se realizará el envío al SGE de los presupuestos seleccionados.

Si se pulsa el botón Aceptar el presupuesto de la anualidad será enviado al SGE, mostrándose un mensaje informativo al finalizar la operación y actualizando el valor de la columna "Enviado al SGE" a "Sí" y deshabilitndo la selección individual del presupuesto enviado al SGE.

![](/attachments/597853558/597880019.png)

Si se selecciona el check múltiple de la cabecera, no se incluirán en la selección aquellas filas (proyectos) que ya se hayan enviado al SGE, es decir, aquellos proyectos que dispongan en la columna "Enviado al SGE" el valor "Sí"

![](/attachments/597853558/597880002.png)

### 4\. Ver presupuesto

A través del icono de acción ver ![](/attachments/597853558/597880041.png)del listado de presupuesto del proyecto se realiza un cambio de contexto y se accede a la información detallada del presupuesto de la anualidad seleccionada siempre y cuando el personal de gestión tenga el permiso adecuado para acceder al presupuesto del proyecto. Ver [CSP\-Proyectos\-Configuración económica \- 5 Presupuesto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto").

  


  





