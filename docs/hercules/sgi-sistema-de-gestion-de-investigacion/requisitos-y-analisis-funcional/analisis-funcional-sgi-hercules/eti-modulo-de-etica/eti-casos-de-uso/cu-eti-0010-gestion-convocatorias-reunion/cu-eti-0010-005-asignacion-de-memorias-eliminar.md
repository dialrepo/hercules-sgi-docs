# Hércules : CU\-ETI\-0010\-005 \- Asignación de memorias \- Eliminar



### Descripción

Formulario de listado de asignación de memorias.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Convocatorias reunión y seleccionado una convocatoria del listado para su edición.

Una vez en la edición  de la convocatoria se va a la pestaña de Asignación de memorias.

Existan memorias en el listado de memorias a evaluar en la convocatoria.

### Garantías de éxito (postcondiciones)

Se elimina la memoria del listado de memorias a evaluar en la convocatoria.

Los cambios únicamente se realizan en memoria.

### Escenario principal (flujo básico )

1. Se presenta la pantalla Convocatorias con el listado de todas las Convocatorias dadas de alta en el sistema y que no se hayan borrado.
2. Se selecciona la convocatoria.
3. Se presenta la pantalla de edición de convocatoria.
4. El usuario va a la pestaña de Asignación de memorias.
5. Del listado de memorias a evaluar en la convocatoria el usuario selecciona el icono de eliminar sobre una de ellas.
6. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
7. Se elimina del listado de memorias de la reunión de convocatoria.

### Extensiones (flujos alternativos) \- Memoria ya comenzada a evaluar

1. Se presenta la pantalla Convocatorias con el listado de todas las Convocatorias dadas de alta en el sistema y que no se hayan borrado.
2. Se selecciona la convocatoria.
3. Se presenta la pantalla de edición de convocatoria.
4. El usuario va a la pestaña de Asignación de memorias.
5. Del listado de memorias a evaluar en la convocatoria el usuario selecciona el icono de eliminar sobre una de ellas.
6. La fecha actual es igual o mayor a la fecha de la reunión o existen comentarios asociados a la evaluación o el campo dictamen tiene un valor.
7. Se muestra un mensaje de que no se puede eliminar.




