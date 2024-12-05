# Hércules : CU\-ETI\-0010\-001 \- Buscar Convocatorias reunión



### Descripción

Se muestra la lista de convocatorias de reunión creadas por los gestores de cada uno de los comités.

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Fecha de evaluación (desde, hasta)
* Convocatoria: ordinarias, extraordinarias y de seguimiento

El resultado serán todas las convocatorias de reunión que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Comité
* Fecha de evaluación
* Código
* Hora
* Lugar
* Convocatoria
* Fecha de envío
* Acciones: Editar, Envío, Borrar

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de Convocatorias reunión.

### Garantías de éxito (postcondiciones)

Se listan las convocatorias de reunión dadas de alta en el sistema y que cumplan con los criterios del filtrado.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Convocatorias con el listado de todos las convocatorias existentes en el sistema.
2. El gestor introduce la información de los filtros y realiza la acción de buscar para poder filtrar un subconjunto de Convocatorias de reunión.
3. Se presenta la pantalla Convocatorias reunión con el subconjunto de convocatorias de reunión que cumplen las condiciones del filtro.




