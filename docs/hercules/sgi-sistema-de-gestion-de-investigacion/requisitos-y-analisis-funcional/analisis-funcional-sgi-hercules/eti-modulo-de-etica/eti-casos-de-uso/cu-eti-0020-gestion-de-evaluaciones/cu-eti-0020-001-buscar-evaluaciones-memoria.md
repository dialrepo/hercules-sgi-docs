# Hércules : CU\-ETI\-0020\-001 \- Buscar Evaluaciones memoria



### Descripción

Listado de memorias en estado "En evaluación".

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Fecha de evaluación (desde , hasta)
* Referencia de la memoria
* Solicitante: se muestra un botón para poder buscar entre los solicitantes de peticiones de evaluación por número de documento, nombre y apellidos.
* Convocatoria

El resultado serán todas las memorias que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Comité
* Fecha evaluación
* Referencia de la memoria
* Solicitante
* Dictamen
* Versión
* Acciones: Evaluar

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú "Evaluaciones".

### Garantías de éxito (postcondiciones)

Se listan las memoria en estado "En evaluación" dadas de alta en el sistema y que cumplan con los criterios del filtrado.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Evaluaciones con el listado de las memorias en estado "En evaluación" dadas de alta en el sistema.
2. El gestor introduce la información de los filtros y realiza la acción de buscar para poder filtrar un subconjunto de memorias para evaluar.
3. Se presenta la pantalla Evaluaciones con el subconjunto de memorias que cumplen las condiciones del filtro.




