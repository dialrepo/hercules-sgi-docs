# Hércules : CU\-ETI\-0060\-002 \- Buscar Mis Peticiones de evaluación \- Responsable



### Descripción

El responsable de la memoria accederá dentro del módulo de ética a la funcionalidad de "**Mis peticiones de evaluación**" y podrá visualizar todas las peticiones de evaluación que tenga al menos una memoria asignada a la persona logada en el sistema.

Se muestra un buscador para poder filtrar por lo campos:

* Código
* Título proyecto
* Comité

El resultado de la búsqueda será un listado de las peticiones del investigador que cumplen los criterios de la búsqueda y que tenga al menos una memoria asignada a la persona logada en el sistema. Las columnas mostradas son:

* Código
* Título proyecto
* Fuente financiación
* Fecha inicio
* Fecha fin
* Acciones: Editar

### Actores

#### Actor principal

ACT\-ETI\-006\-Responsable memoria

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de Mis peticiones de evaluación.

### Garantías de éxito (postcondiciones)

Se listan las peticiones de evaluación que tiene al menos una memoria asignada a la persona que está logada en el sistema y que cumplan con los criterios del filtrado.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación  con el listado de todos las peticiones de evaluación que tienen al menos una memoria asignada a la persona que está logada en el sistema
2. El usuario introduce la información de los filtros y realiza la acción de buscar para poder filtrar un subconjunto de Mis peticiones de evaluación.
3. Se presenta la pantalla Mis peticiones de evaluación con el subconjunto de peticiones de evaluación que cumplen las condiciones del filtro.




