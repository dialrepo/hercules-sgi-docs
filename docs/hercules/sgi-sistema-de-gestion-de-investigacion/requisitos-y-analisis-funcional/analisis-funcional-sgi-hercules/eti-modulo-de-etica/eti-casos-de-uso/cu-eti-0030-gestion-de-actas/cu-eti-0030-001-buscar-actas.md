# Hércules : CU\-ETI\-0030\-001 \- Buscar Actas



### Descripción

Listado de las actas de las reuniones de evaluación.

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Fecha de evaluación (desde , hasta)
* Número de acta
* Estado

El resultado serán todas las actas que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Comité
* Fecha de evaluación
* Número de acta
* Convocatoria
* Nº de evaluaciones (iniciales)
* Nº de revisiones
* Nº total
* Estado
* Acciones: Editar / Ver acta / Finalizar

El estado de una acta puede tomar dos valores:

* En elaboración: cuando se crea el acta y se esta modificando.
* Finalizada: cuando todas las memorias han sido evaluadas (tienen un dictamen asignado) y se ha seleccionado la acción de Finalizar.

  


### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú "Actas".

### Garantías de éxito (postcondiciones)

Se listan las actas dadas de alta en el sistema y que cumplan con los criterios del filtrado.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Actas con el listado de las actas dadas de alta en el sistema.
2. El gestor introduce la información de los filtros y realiza la acción de buscar para poder filtrar un subconjunto de actas.
3. Se presenta la pantalla Actas con el subconjunto de actas que cumplen las condiciones del filtro.




