# Hércules : CSP \- Notificación presupuesto SGE



### Descripción

Desde el apartado Notificación presupuestos SGE del menú CSP se podrán enviar al SGE las partidas de gastos e ingresos recogidas en las distintas anualidades del presupuesto de los proyectos.

Este apartado se presenta de manera independiente a la Ejecución económica de los proyectos, porque se enviarán a la vez las partidas de distintos proyectos. Normalmente el envío se realizará una vez al año para la anualidad siguiente, de tal manera, que si estamos en el mes de Septiembre del 2021 se envíen las partidas de gastos e ingresos de la anualidad 2022 de todos los proyectos concedidos o bien los que seleccione el usuario.

La información a enviar al SGE será:

* Identificador proyecto SGE: Identificador del proyecto en el Sistema de gestión económica.
* Anualidad: año que identifica la anualidad. Son las anualidades definidas en el presupuesto del proyecto
* Partida presupuestaria: código de la partida presupuestaria
* Tipo: Indica si la partida presupuestaria es de Gasto o de Ingreso
* Importe concedido: se recupera del campo "importe concedido" de las partidas de gasto (o ingreso) de la anualidad del presupuesto del proyecto

El acceso será a través de una pantalla de Búsqueda que permitirá hacer un filtrado de los presupuestos de los proyectos.

#### Buscador

Pantalla que muestra el formulario de búsqueda, que permite aplicar filtros sobre los presupuestos de los proyectos a enviar al SGE. Se notificarán al SGE las partidas de gastos e ingresos definidas en los presupuestos de los proyectos seleccionados.

Los resultados devueltos además de los filtros aplicados dependerán siempre de la Unidad de gestión a la que se hubiera vinculado el proyecto.

Automáticamente, el SGI siempre aplicará el filtro de la unidad de gestión, de forma que un usuario solo podrá acceder al presupuesto de los proyectos de las unidades de gestión a las que esté vinculado con alguno de los roles ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador y el filtro sobre las anualidades de los presupuestos en los que se ha marcado el check de presupuestar, es decir, sobre aquellas anualidades que si se quieren enviar al SGE.

Los campos por lo que se podrá filtrar serán:

* Anualidad: Campo obligatorio
* Título del proyecto
* Estado del proyecto
* Identificador SGE
* Rango de fechas de inicio y fin del proyecto

### Vista ACT\-CSP\-001\-Investigador

La funcionalidad "Notificación presupuestos SGE" solo estará disponible para los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrado.  Los usuarios ACT\-CSP\-001\-Investigador, sea cual sea su rol de participación en un proyecto, no podrán acceder al apartado de "Notificación presupuestos SGE".

### Vista ACT\-CSP\-005\-Visor

La funcionalidad "Notificación presupuestos SGE" solo estará disponible para los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrado.  Los usuarios ACT\-CSP\-005\-Visor no podrán acceder al apartado de "Notificación presupuestos SGE".




