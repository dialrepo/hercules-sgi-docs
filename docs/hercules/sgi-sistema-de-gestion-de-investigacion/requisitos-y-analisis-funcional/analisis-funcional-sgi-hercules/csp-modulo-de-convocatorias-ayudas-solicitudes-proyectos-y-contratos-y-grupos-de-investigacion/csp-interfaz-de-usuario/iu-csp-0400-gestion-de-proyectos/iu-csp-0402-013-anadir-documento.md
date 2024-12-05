# Hércules : IU\-CSP\-0402\-013 \- Añadir documento



## Formulario Añadir documento

Formulario que permite añadir un documento al proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario para añadir documentos a un proyecto | | |
| Nombre del documento | Texto cortoObligatorio | Nombre del documento |
| Documento | DocumentoObligatorio | Documento a adjuntar |
| Tipo de fase | SelectorTexto cortoOpcional | Listado con los tipos de fase activos que estén asociados al Modelo de ejecución (ModeloTipoFase activos) al que se haya vinculado la convocatoria en el campo "Modelo ejecución". |
| Tipo de documento | SelectorTexto cortoOpcional | Si el campo "Tipo de fase" tiene un valor:* Listado de tipos de documento activos que estén asociados al Modelo de ejecución (ModeloTipoDocumento activos) al que se haya vinculado el proyecto en el campo "Modelo ejecución" y que en modeloTipoFase tenga la fase seleccionada en el campo anterior "Tipo de fase"  Si el campo "Tipo de fase" esta vacío:* Listado de tipos de documento activos que estén asociados al Modelo de ejecución (ModeloTipoDocumento activos y que no tengan asociada una fase, campo modeloTipoFase \= null ) al que se haya vinculado el proyecto en el campo "Modelo ejecución" |
| Visible | SelectorBooleanoValores: Sí, NoObligatorio | Tomará los valores Sí/No.  Indica si el documento va a ser visible para los ACT\- CSP\-001\-Investigador que forman parte del equipo del proyecto.Por defecto que este seleccionado el valor "Sí". |
| Comentarios | Texto largoOpcional | Comentarios del documento |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Examinar | Muestra pantalla de búsqueda para seleccionar documento a adjuntar |  |  |
| Aceptar | Añade el documento al proyecto | Se muestra el documento en el árbol de la izquierda. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al formulario de proyecto sin salvar los posibles cambios |  |  |




