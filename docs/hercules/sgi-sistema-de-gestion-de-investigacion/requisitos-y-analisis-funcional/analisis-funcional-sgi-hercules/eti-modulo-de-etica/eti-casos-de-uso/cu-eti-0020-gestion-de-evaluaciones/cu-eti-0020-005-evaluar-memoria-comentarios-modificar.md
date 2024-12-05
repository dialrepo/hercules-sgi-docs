# Hércules : CU\-ETI\-0020\-005 \- Evaluar memoria \- Comentarios \- Modificar



### Descripción

Formulario de modificación de comentario en una evaluación de memoria

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Evaluaciones y seleccionado una memoria del listado para su evaluación.

Una vez en la evaluación de la memoria se va a la pestaña de Comentarios.

Existe al menos un comentario en el listado de comentarios.

### Garantías de éxito (postcondiciones)

Se modifica el comentario a la lista de comentarios de la evaluación.

Los cambios únicamente se realizan en memoria.

### Escenario principal (flujo básico \- modificar comentario)

1. Se presenta la pantalla Evaluaciones con el listado de memoria en estado "En evaluación"
2. Se selecciona la memoria.
3. Se presenta la pantalla de evaluación
4. El usuario va a la pestaña de Comentarios
5. Selecciona un comentario a través de la acción Editar del listado.
6. Los datos del comentario se muestran en una nueva pantalla.
7. El usuario modifica uno de los campos.
8. El usuario selecciona la acción Modificar.
9. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
10. Se modifica el comentario en el  listado de comentarios.




