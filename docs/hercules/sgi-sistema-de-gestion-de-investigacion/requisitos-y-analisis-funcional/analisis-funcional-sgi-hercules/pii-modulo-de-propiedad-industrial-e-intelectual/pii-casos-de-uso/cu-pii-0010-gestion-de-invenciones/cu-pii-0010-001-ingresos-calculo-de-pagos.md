# Hércules : CU\-PII\-0010\-001\- Ingresos \- Cálculo de pagos



### Descripción

La finalidad de esta pantalla es posibilitar al usuario Gestor de OTRI una herramienta para poder calcular el reparto de dinero generado por los acuerdos de licencia de una invención protegida entre la Universidad y sus inventores

En esta pantalla se muestra una fecha desde, una fecha hasta y un botón Buscar.

Una vez introducidos un rango de fecha y pulsado el botón se muestra:

* La lista de gastos asociados a la invención en ese rango de fechas.
* La lista de ingresos asociados a la invención en ese rango de fechas.
* Balance de gastos e ingresos. Cifra resultado de la suma de todas las cifras.
* Si el resultado es negativo o cero. No hay pagos que calcular.
* Si el resultado es positivo.
	+ El rango de reparto entre Universidad e inventores en que se encuadra la cifra de resultado.
	+ La cifra que le corresponde a la Universidad.
	+ Listado de los inventores no externos con:
		- sus datos identificativos.
		- porcentaje de invención.
		- un selector para indicar a donde se paga la cantidad.
		- la cifra. Esta cifra es la parte proporcional de la invención aplicada a la parte proporcional de reparto entre la Universidad y los inventores.

En la parte final aparece un botón para Imprimir a PDF de este cálculo.

### Actores

#### Actor principal

ACT\-PII\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo PII.

Haber accedido a la opción de Invenciones y dentro de una invención haber accedido a Ingresos y pulsar el botón de Cálculo pagos.

### Garantías de éxito (postcondiciones)

El usuario se descarga el documento PDF con los cálculos para el rango de fechas seleccionado.

### Escenario principal (flujo básico) \- ACT\-PII\-001\-Gestor

1. Se presenta la pantalla de cálculo de pagos con una fecha desde, una fecha hasta y un botón Buscar.
2. El gestor pulsa sobre el botón de Buscar.
3. Se presentan los datos de gastos, ingresos, resultado y reparto.
4. En caso de que el resultado sea positivo el usuario ha de seleccionar a dónde se le paga a los inventores.
5. El usuario selecciona la acción Imprimir a PDF.
6. Se descarga el documento. ([REP\-PII\-0040\- Balances y pagos de regalías a la Universidad y los inventores](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__REP-PII-0040-+Balances+y+pagos+de+regal%C3%ADas+a+la+Universidad+y+los+inventores&linkCreation=true&fromPageId=597853196 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__REP-PII-0040-+Balances+y+pagos+de+regal%C3%ADas+a+la+Universidad+y+los+inventores&linkCreation=true&fromPageId=597853196"))

### Extensiones (flujos alternativos)

N/A

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

### Acciones

  


  





