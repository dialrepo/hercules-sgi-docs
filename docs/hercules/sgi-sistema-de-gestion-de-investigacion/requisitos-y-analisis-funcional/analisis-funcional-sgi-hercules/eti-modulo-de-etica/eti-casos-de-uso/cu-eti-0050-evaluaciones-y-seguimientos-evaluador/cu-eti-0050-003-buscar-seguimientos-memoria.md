# Hércules : CU\-ETI\-0050\-003 \- Buscar Seguimientos memoria



### Descripción

Listado de evaluaciones asociadas a memorias de seguimiento en estado "En evaluación seguimiento anual" "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones"  y asignadas al evaluador que esta entrando en la aplicación. Tiene que estar asignado como evaluador 1 o evaluador 2 de la evaluación.

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Fecha de evaluación
* Referencia de la memoria
* Convocatoria

El resultado serán todas las memorias que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Comité
* Fecha evaluación
* Referencia de la memoria
* Solicitante
* Versión
* Acciones: Evaluar

  


### Actores

#### Actor principal

ACT\-ETI\-004\-Evaluador

ACT\-ETI\-005\-Técnico

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú "Seguimientos".

Tiene que estar asignado como evaluador1 o como evaluador2 de las evaluaciones a mostrar.

### Garantías de éxito (postcondiciones)

Se listan las evaluaciones de memorias en estado "En evaluación seguimiento anual" "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" dadas de alta en el sistema, asignadas al evaluador que esta entrando en la aplicación y que cumplan con los criterios del filtrado.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Seguimientos con el listado de las evaluaciones de  seguimientos de memoria en estado "En evaluación seguimiento anual" "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" dadas de alta en el sistema y asignadas al evaluador que esta entrando en la aplicación.
2. El gestor introduce la información de los filtros y realiza la acción de buscar para poder filtrar un subconjunto de  memorias para evaluar.
3. Se presenta la pantalla Seguimientos con el subconjunto de memorias que cumplen las condiciones del filtro.




