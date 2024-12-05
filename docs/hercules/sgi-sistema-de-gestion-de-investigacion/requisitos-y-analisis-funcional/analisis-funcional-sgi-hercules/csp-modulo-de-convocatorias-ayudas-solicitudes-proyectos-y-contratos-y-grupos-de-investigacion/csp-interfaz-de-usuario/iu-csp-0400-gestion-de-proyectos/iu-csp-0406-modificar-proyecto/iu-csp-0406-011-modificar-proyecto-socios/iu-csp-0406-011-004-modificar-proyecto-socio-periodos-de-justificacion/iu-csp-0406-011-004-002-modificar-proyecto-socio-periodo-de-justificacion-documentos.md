# Hércules : IU\-CSP\-0406\-011\-004\-002 \- Modificar proyecto \- Socio \- Periodo de justificación \- Documentos



## Formulario Modificar proyecto \- Socio \- Periodo de justificación \- Documentos

Formulario que permitirá mostrar los documentos asociados a un periodo de justificación de un socio dentro de un proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de documentos. Se obtiene a partir de la tabla "socio periodo justificación documento". | | |
| Árbol de documentos del proyecto | Componente gráfico de árbol | Se mostrará el árbol de documentos asociados a un periodo de justificación, se estructurará en base al Tipo de documento. Si hubiera documentos sin tipo, se mostrarán agrupados al final bajo un epígrafe con el nombre genérico "Sin tipo documento". Al seleccionar un elemento del árbol se mostrará, a la derecha,  el detalle del documento seleccionado, permitiendo  la modificación, descarga o borrado del mismo. |
| Datos del documento seleccionado | | |
| Nombre | Texto | Nombre del documento.Se corresponde con el campo "nombre" de la tabla "socio periodo justificación documento". |
| Tipo de documento | SelectorTexto corto | Nombre del tipo de documento. El valor se seleccionará de un desplegable contendrá el listado de tipos de documento activos (campo "nombre" de la tabla "tipo documento" de registros con campo "activo" a "true") que estén asociados al Modelo de ejecución ( registros de la tabla "modelo tipo documento" con campo "activo" a "true" y que no tengan asociada una fase, campo "modelo tipo fase" a "null" ) al que se haya vinculado el proyecto (a través del campo "modelo ejecución" de la tabla "proyecto").Se almacenará la referencia al tipo de documento seleccionado se almacenará sobre el campo "tipo documento" de la tabla socio periodo justificación documento". |
| Documento | Documento | Fichero físico.La referencia al fichero físico se almacenará sobre el campo "documento ref." de la tabla "socio periodo justificación documento". |
| Comentarios | Texto largo | Comentarios del documento.Se corresponde con el campo "comentario" de la tabla "socio periodo justificación documento". |
| Visible al equipo de investigación | BooleanoValores: Sí, No | Tomará los valores Sí/No. Indica si el documento va a ser visible para los ACT\- CSP\-001\-Investigador que forman parte del equipo del proyecto o no.Se corresponde con el campo "visible" de la tabla "socio periodo justificación documento". |
| Editar documento | Botón | Acción modificar |
| Eliminar documento | Botón | Acción eliminar |
| Descargar | Icono de acción | Acción descargar el documento |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Editar | Muestra la pantalla de Edición del documento | Muestra la pantalla [IU\-CSP\-0402\-008 \- Añadir documento a periodo de justificación de socio en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-008-anadir-documento-a-periodo-de-justificacion-de-socio.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-008-anadir-documento-a-periodo-de-justificacion-de-socio.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el documento del periodo de justificación | Elimina el documento de la vista del árbol de documento. Al realizar la operación "Guardar" del periodo de justificación se aplicará el cambio en base de datos eliminando el fichero físico y eliminando el registro de la tabla "socio periodo justificación documento". | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Descargar | Descargar el fichero seleccionado |  | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir nuevo documento | Muestra la pantalla Nuevo documento | Muestra la pantalla [IU\-CSP\-0402\-008 \- Añadir documento a periodo de justificación de socio en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-008-anadir-documento-a-periodo-de-justificacion-de-socio.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-008-anadir-documento-a-periodo-de-justificacion-de-socio.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Añade/modifica el periodo de justificación del socio , teniendo en cuenta la información de todos los apartados de definición del periodo de justificación. | Se inserta/modifica el registro correspondiente sobre la tabla "socio periodo justificación documento".Si hay registros de documentos eliminados, al realizar la operación "Guardar" del periodo de justificación se aplicará el cambio en base de datos eliminando el fichero físico y eliminando el registro de la tabla de documentos del periodo de justificación. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de periodos de justificación sin salvar los posibles cambios.Al cancelar un periodo de justificación se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |




