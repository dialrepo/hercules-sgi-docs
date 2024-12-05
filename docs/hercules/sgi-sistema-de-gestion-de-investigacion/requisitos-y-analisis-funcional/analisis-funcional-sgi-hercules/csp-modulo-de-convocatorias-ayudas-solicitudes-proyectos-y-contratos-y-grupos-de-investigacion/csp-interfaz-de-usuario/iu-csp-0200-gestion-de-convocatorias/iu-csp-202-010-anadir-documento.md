# Hércules : IU\-CSP\-202\-010 \- Añadir documento



## Formulario Añadir documento

Pantalla que muestra un formulario, que permite añadir un nuevo documento a  una convocatoria.

Los documentos se añaden desde la pestaña de "Documentos" de la convocatoria [IU\-CSP\-0201\-009 \- Crear convocatoria \- Documentos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-009-crear-convocatoria-documentos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-009-crear-convocatoria-documentos.md").



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Nombre del documento | Texto cortoObligatorio | Nombre del documento |
| Documento | DocumentoObligatorio | Documento a adjuntar |
| Fase | SelectorTexto cortoOpcional | Listado con los tipos de fase activos que estén asociados al Modelo de ejecución (ModeloTipoFase activos) al que se haya vinculado la convocatoria en el campo "Modelo ejecución". |
| Tipo de documento | SelectorTexto cortoOpcional | Si el campo "Fase" tiene una valor:* Listado de tipos de documento activos que estén asociados al Modelo de ejecución (ModeloTipoDocumento activos) al que se haya vinculado la convocatoria en el campo "Modelo ejecución" y que en modeloTipoFase tenga la fase seleccionada en el campo anterior Fase  Si el campo "Fase" esta vacío:* Listado de tipos de documento activos que estén asociados al Modelo de ejecución (ModeloTipoDocumento activos y que no tengan asociada una fase, campo modeloTipoFase \= null ) al que se haya vinculado la convocatoria en el campo "Modelo ejecución" |
| Publico | SelectorBooleanoValores: Sí, NoObligatorio | Tomará los valores Sí/No.  Indica si el documento va a ser visible para los ACT\- CSP\-001\-Investigador.Por defecto que este seleccionado el valor "Sí". |
| Observaciones | Texto largoOpcional | Observaciones del documento |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Examinar | Muestra pantalla de búsqueda para seleccionar documento a adjuntar |  |
| Guardar | Añade el documento a la convocatoria. | Se muestra el documento en el árbol de la izquierda. |
| Cancelar | Retorna al formulario de la convocatoria, sin salvar los posibles cambios. |  |




