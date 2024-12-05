# Hércules : CU\-ETI\-0080\-001 \- Buscar Peticiones de evaluación



### Descripción

El gestor podrá visualizar todas las peticiones de evaluación dadas de alta en el sistema.

Se muestra un buscador para poder filtrar por lo campos:

* Código
* Título proyecto
* Comité
* Solicitante
* Estado memoria

El resultado de la búsqueda será un listado de las peticiones del investigador que cumplen los criterios de la búsqueda. Las columnas mostradas son:

* Solicitante
* Código
* Título proyecto
* Fuente financiación
* Fecha inicio
* Fecha fin
* Acciones: Ver

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de Peticiones de evaluación.

### Garantías de éxito (postcondiciones)

Se listan las peticiones de evaluación y que cumplan con los criterios del filtrado.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Peticiones de evaluación con el listado de todos las peticiones de evaluación creadas en el sistema.
2. El usuario introduce la información de los filtros y realiza la acción de buscar para poder filtrar un subconjunto de Peticiones de evaluación.
3. Se presenta la pantalla Peticiones de evaluación con el subconjunto de peticiones de evaluación que cumplen las condiciones del filtro.




