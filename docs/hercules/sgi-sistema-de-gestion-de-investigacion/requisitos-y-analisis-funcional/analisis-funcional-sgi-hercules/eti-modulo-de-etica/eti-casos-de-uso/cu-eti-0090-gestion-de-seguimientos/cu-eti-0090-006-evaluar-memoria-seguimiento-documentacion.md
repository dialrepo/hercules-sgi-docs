# Hércules : CU\-ETI\-0090\-006 \- Evaluar memoria seguimiento \- Documentación



### Descripción

Formulario con toda la documentación necesaria para evaluar un seguimiento de una memoria.

El informe del formulario y los documentos adjunto al formulario de seguimiento son documentos almacenados en el sistema que únicamente se descargarán para su visualización.

La ficha del evaluador es un informe que se genera al vuelo,  a partir de una plantilla y de los comentarios creados por el par de evaluadores.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de menú Seguimientos y seleccionado una memoria del listado para su evaluación.

Una vez en la evaluación de la memoria se va a la pestaña de Documentación.

Existe al menos un documento en el listado de documentos.

### Garantías de éxito (postcondiciones)

Se descarga o se visualiza el documento.

### Escenario principal (flujo básico \- descarga documento)

1. Se presenta la pantalla Seguimientos con el listado de memoria en estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones"
2. Se selecciona la memoria.
3. Se presenta la pantalla de evaluación
4. El usuario va a la pestaña de Documentación
5. El usuario selecciona el documento de informe del formulario.
6. Se descarga dicho documento para su visualización.
7. El usuario selecciona un documento de los adjuntados junto con el formulario de la memoria.
8. Se descarga dicho documento para su visualización.
9. El usuario selecciona la ficha del evaluador
10. Se genera automáticamente a partir de la plantilla y los comentarios del evaluador.




