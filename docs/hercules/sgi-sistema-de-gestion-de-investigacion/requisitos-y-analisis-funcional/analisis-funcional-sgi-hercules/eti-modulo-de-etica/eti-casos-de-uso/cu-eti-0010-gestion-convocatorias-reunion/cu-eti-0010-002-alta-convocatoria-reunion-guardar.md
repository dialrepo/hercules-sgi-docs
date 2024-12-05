# Hércules : CU\-ETI\-0010\-002 \- Alta Convocatoria reunión \- Guardar



### Descripción

Para dar de alta una nueva convocatoria de reunión se necesitan los siguiente campos:

* Comité: desplegable con los valores:   

	+ CEISH
	+ CEEA
	+ CEIAB
* Fecha evaluación: calendario para marcar el día
* Fecha límite: calendario para marcar el día (por defecto una semana antes de la reunión)
* Convocatoria: desplegable con los valores:
	+ Ordinaria
	+ Extraordinaria
	+ Seguimiento
* Hora de inicio: reloj para marcar la hora exacta: 00:00\.
* Lugar: caja de texto con el lugar de la reunión.
* Orden del día: caja de texto para escribir el orden del día.
* Listado de convocantes: será el listado de todos los miembros activos del comité seleccionado (NIF, nombre, apellidos). Se autocompleta automáticamente al seleccionar el comité. Aunque se deja poder modificar sobre dicha lista por si se necesita borrar a alguien del listado.

Se puede ir o no a la pestaña de asignación de memorias para ir asignando las memorias a reunión de convocatoria, pero no tiene porque hacerse a la hora de la creación.

Una vez que se da al botón Guardar, se crea la convocatoria de reunión, y se vuelve a la pantalla de listado de Convocatorias reunión.

Al crear la convocatoria se genera un código de convocatoria con el formato ACTAsecuencial/YYYY/COMITE , donde COMITE es el comité elegido, YYYY es el año de la fecha de evaluación y secuencial es el número del acta que corresponde a la convocatoria, es un secuencial por comité. Hay tres secuenciales uno por cada comité (no es por año). (Al crear el acta asociada se le debe de poner este número de acta). Ejemplo: ACTA125/2020/CEISH

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Convocatorias reunión y pulsar sobre el botón de Nueva convocatoria.

### Garantías de éxito (postcondiciones)

Se da de alta una nueva convocatoria en el sistema.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Convocatorias reunión con el listado de todas las Convocatorias de reunión dadas de alta en el sistema y que no se hayan borrado.
2. El gestor pulsa sobre el botón de Nueva convocatoria
3. Se presenta la pantalla de nueva convocatoria en la pestaña de Datos Generales con todos los datos a cumplimentar.
4. El usuario rellena los campos obligatorios y/o opcionales.
5. El usuario selecciona la acción Guardar.
6. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
7. El usuario es informado del resultado positivo de la acción.
8. Se presenta el listado de Convocatorias de reunión.

### Escenario principal (flujos alternativos) \- Se introducen los datos en asignación de memorias

1. Se presenta la pantalla Convocatorias reunión con el listado de todas las Convocatorias de reunión dadas de alta en el sistema y que no se hayan borrado.
2. El gestor pulsa sobre el botón de Nueva convocatoria
3. Se presenta la pantalla de nueva convocatoria en la pestaña de Datos Generales con todos los datos a cumplimentar.
4. El usuario rellena los campos obligatorios y/o opcionales.
5. El usuario va a la pestaña de Asignación de memorias.
6. El usuario selecciona Añadir nueva memoria.
7. El usuario en la pantalla de Nueva memoria selecciona una memoria, un evaluador 1 y un evaluador 2
8. El usuario selecciona la acción Añadir.
9. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
10. Se presentan la memoria añadida en el  listado de memorias de la reunión de convocatoria.
11. El usuario selecciona la acción Guardar.
12. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
13. Se modifica el estado de la memoria a "En evaluación".
14. Se notifica  al investigador/solicitante de la fecha de convocatoria de su evaluación [CU\-COM\-0020 \- Generar comunicado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado").
15. El usuario es informado del resultado positivo de la acción.
16. Se presenta el listado de Convocatorias de reunión.

### Extensiones (flujos alternativos) \- Error durante el guardado

1. Si se ha producido algún error de validación.
2. El usuario modifica la información necesaria para realizar de forma correcta la creación de la Convocatoria.
3. El usuario selecciona la acción Guardar.
4. El usuario es informado del resultado positivo de la acción.
5. Se presenta el listado de Convocatorias de reunión.




