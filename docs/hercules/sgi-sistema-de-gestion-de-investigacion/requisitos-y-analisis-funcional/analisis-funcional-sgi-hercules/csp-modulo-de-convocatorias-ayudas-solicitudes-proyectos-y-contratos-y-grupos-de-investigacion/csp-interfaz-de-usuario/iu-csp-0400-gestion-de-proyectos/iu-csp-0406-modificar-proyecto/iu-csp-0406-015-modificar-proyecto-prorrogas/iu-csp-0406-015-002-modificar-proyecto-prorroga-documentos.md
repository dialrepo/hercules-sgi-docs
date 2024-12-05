# Hércules : IU\-CSP\-0406\-015\-002 \- Modificar proyecto \- Prórroga \- Documentos



## Formulario Modificar proyecto \- Prórroga \- Documentos

Formulario que permitirá indicar en el proyecto para las prórrogas del mismo, los documentos asociados.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de documentos de una prórroga de un proyecto | | |
| Árbol de documentos del proyecto | Componente gráfico de árbol | Se mostrará el árbol de documentos asociados a una prórroga, se estructurará por Tipo de documento. Si hubiera documentos sin tipo, se mostrarán agrupados al final bajo epígrafes con nombres genéricos. Al seleccionar un elemento del árbol se mostrará el detalle del documento seleccionado, permitiendo  la modificación, descarga o borrado del mismo. |
| Datos del documento seleccionado | | |
| Nombre | Texto | Nombre del documento |
| Tipo de documento | Texto corto | Nombre del tipo de documento. Listado de tipos de documento activos que estén asociados al Modelo de ejecución (ModeloTipoDocumento activos y que no tengan asociada una fase, campo modeloTipoFase \= null ) al que se haya vinculado el proyecto en el campo "Modelo ejecución" |
| Documento | Documento |  |
| Comentarios | Texto largo | Comentarios del documento |
| Visible al equipo de investigación | BooleanoValores: Sí, No | Tomará los valores Sí/No. Indica si el documento va a ser visible para los ACT\- CSP\-001\-Investigador que forman parte del equipo del proyecto o no |
| Editar documento | Botón | Acción modificar |
| Eliminar documento | Botón | Acción eliminar |
| Descargar | Icono de acción | Acción descargar el documento |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Listado de documentos de una prórroga de un proyecto | | | |
| Editar | Muestra la pantalla de Edición del documento | Muestra la pantalla [IU\-CSP\-0402\-012 \- Añadir documento a prórroga en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-012-anadir-documento-a-prorroga.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-012-anadir-documento-a-prorroga.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el documento de la prórroga | Elimina el documento de la vista del árbol de documento. Al dar a Guardar la prórroga se aplicará el cambio en base de datos eliminando el fichero del sistema documental y eliminando el registro de la tabla de documentos del periodo de seguimiento | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Descargar | Descargar el fichero seleccionado |  | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir nuevo documento | Muestra la pantalla Nuevo documento | Muestra la pantalla [IU\-CSP\-0402\-012 \- Añadir documento a prórroga en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-012-anadir-documento-a-prorroga.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-012-anadir-documento-a-prorroga.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la prórroga del proyecto con la información introducida en el formulario.Al guardar una prórroga se guarda la información de todos los apartados de definición de la prórroga. | Si hay registros de documentos eliminados, al dar a Guardar la prórroga se aplicará el cambio en base de datos eliminando el fichero del sistema documental y eliminando el registro de la tabla de documentos de la prórroga | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyecto sin salvar los posibles cambios.Al cancelar una prórroga se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |




