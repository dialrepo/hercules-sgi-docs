# Hércules : IU\-EER\-0010\-0030\-002 \- Ver detalle\-modificar empresa de explotación de resultados \- Documentos



## Formulario Ver detalle/Modificar empresa de explotación de resultados \- Documentos

Pantalla que muestra el formulario de detalle y/o modificación de una empresa de explotación de resultados. Apartado de Documentos de la empresa.



| ***Árbol de documentos******Acción de "Añadir documento"******Selección de un documento del árbol con el icono "Ver"******Acción de "Editar documento"*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de documentos aportados a la empresa de explotación de resultados | | |
| Árbol de documentos de la empresa de explotación de resultados | Componente gráfico de árbol | Se mostrará el árbol de documentos asociados a la empresa de explotación de resultados, se estructurará por Tipo de documento y Subtipo de documento. Si hubiera documentos sin tipo o sin subtipo, se mostrarán agrupados al final bajo epígrafes con nombres genéricos. Al seleccionar un elemento del árbol se mostrará el detalle del documento seleccionado.Para todos los documentos se  permitirá la descarga, modificación o borrado del mismo. |
| Datos del documento | | |
| Nombre | Texto | Nombre del documento |
| Tipo de documento | Texto corto | Tipo de documento. |
| Subtipo de documento | Texto corto | Subtipo de documento. |
| Documento | Documento | Nombre del documento. |
| Comentarios | Texto Largo | Comentarios del documento. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver (documento) | Mostrará los datos del documento seleccionado en el formulario de datos del documento, a la derecha del árbol. |  | EER\-EER\-VEER\-EER\-E |
| Añadir documento | Permitirá activar el formulario de datos del documento para dar de alta uno nuevo.Se mostrarán los botones "Aceptar" y "Cancelar" de dicho formulario. |  | EER\-EER\-E |
| Examinar (fichero de documento) | Se mostrará únicamente cuando el formulario de datos del documento está en modo alta o modificación.Abre el explorador de archivos para seleccionar el fichero a asociar al documento. |  | EER\-EER\-E |
| Aceptar (alta/modificación de documento) | Se mostrará solamente cuando el formulario de datos del documento está en modo alta o modificación.Creará o modificará el documento asociado a la empresa de explotación de resultados.Se validará la obligatoriedad de los siguientes campos:* Nombre * Documento  En el alta o en la modificación, si se modificase el fichero asociado al documento, éste se subirá al repositorio documental a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0010 \- Añadir\-modificar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0010-anadir-modificar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0010-anadir-modificar-documento.md"). |  | EER\-EER\-E |
| Cancelar (alta/modificación de documento) | Se mostrará solamente cuando el formulario de datos del documento está en modo alta o modificación.Cancela la creación o modificación del documento descartando los datos o cambios introducidos. |  |  |
| Descargar fichero | Se mostrará solamente cuando el formulario de datos del documento está en modo consulta.Acción de descargar el fichero asociado al documento.Se realizará a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0020 \- Ver\-descargar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0020-ver-descargar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0020-ver-descargar-documento.md"). |  | EER\-EER\-VEER\-EER\-E |
| Editar documento | Se mostrará solamente cuando el formulario de datos del documento está en modo consulta.Permite la modificación de los datos del documento seleccionado en el formulario de datos del documento, a la derecha del árbol.Los datos del fichero asociado al documento se consultarán del repositorio documental a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0050 \- Consultar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0050-consultar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0050-consultar-documento.md"). |  | EER\-EER\-E |
| Borrar documento | Se mostrará solamente cuando el formulario de datos del documento está en modo consulta.Elimina el documento seleccionado.Se realizará a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0040 \- Eliminar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0040-eliminar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0040-eliminar-documento.md"). |  | EER\-EER\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar empresa de explotación de resultados | Modifica los datos de la empresa de explotación de resultados.Al guardar la empresa, se guardará la información de todos los formularios de la pantalla de modificación de empresa de explotación de resultados. |  | EER\-EER\-E |
| Cancelar | Retorna al listado de empresas de explotación de resultados sin salvar los posibles cambios.Al cancelar la modificación de la empresa de explotación de resultados, se cancela el guardado de la información de todo los formularios de la pantalla. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




