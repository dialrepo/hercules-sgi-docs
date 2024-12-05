# Hércules : CU\-ETI\-0040\-001 \- Buscar Evaluadores



### Descripción

Listado de evaluadores que forman o han formado parte de los comités.

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Estado
* Número de documento
* Nombre

El resultado serán todas los evaluadores que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Nombre y los apellidos: nombre y apellidos del evaluador
* Nº de documento:Número de documento del evaluador
* Comité: comité al que pertenece
* Cargo que desempeña en el comité: puede tomar tres valores: sin valor, vocal o presidente
* Fecha de Alta: fecha a partir de la cual forma parte del comité de ética
* Fecha de Baja: fecha en la que se dio de baja como perteneciente al comité de ética
* Estado:   

	+ Activo: si  no tiene fecha baja o fecha baja es mayor a la actual
	+ Inactivo: si fecha baja es menor a la fecha actual
* Acciones: Editar / Borrar

También habrá un botón para añadir un nuevo evaluador.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de Evaluadores

### Garantías de éxito (postcondiciones)

Se listan los evaluadores dados de alta en el sistema y que cumplan con los criterios del filtrado.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Evaluadores con el listado de evaluadores dados de alta en el sistema.
2. El gestor introduce la información de los filtros y realiza la acción de buscar para poder filtrar un subconjunto de Evaluadores
3. Se presenta la pantalla Evaluadores con el subconjunto de evaluadores que cumplen las condiciones del filtro.




