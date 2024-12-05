# Hércules : CU\-ETI\-0060\-001 \- Buscar Mis Peticiones de evaluación \- Creador



### Descripción

El investigador o usuario externo accederá dentro del módulo de ética a la funcionalidad de "**Mis peticiones de evaluación**"  y podrás visualizar todas las peticiones de evaluación creadas por ellos.

Se muestra un buscador para poder filtrar por lo campos:

* Código
* Título proyecto
* Comité

El resultado de la búsqueda será un listado de las peticiones del investigador que cumplen los criterios de la búsqueda y creadas por el investigador o solicitante logado en el sistema. Las columnas mostradas son:

* Código
* Título proyecto
* Fuente financiación
* Fecha inicio
* Fecha fin
* Acciones: Editar, Eliminar

También habrá un botón para añadir una nueva solicitud de petición de evaluación.

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de Mis peticiones de evaluación.

### Garantías de éxito (postcondiciones)

Se listan las peticiones del investigador o solicitante creadas por él mismo y que cumplan con los criterios del filtrado.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todos las peticiones de evaluación creadas por la persona que se esta logado en el sistema
2. El usuario introduce la información de los filtros y realiza la acción de buscar para poder filtrar un subconjunto de Mis peticiones de evaluación.
3. Se presenta la pantalla Mis peticiones de evaluación con el subconjunto de peticiones de evaluación que cumplen las condiciones del filtro.




