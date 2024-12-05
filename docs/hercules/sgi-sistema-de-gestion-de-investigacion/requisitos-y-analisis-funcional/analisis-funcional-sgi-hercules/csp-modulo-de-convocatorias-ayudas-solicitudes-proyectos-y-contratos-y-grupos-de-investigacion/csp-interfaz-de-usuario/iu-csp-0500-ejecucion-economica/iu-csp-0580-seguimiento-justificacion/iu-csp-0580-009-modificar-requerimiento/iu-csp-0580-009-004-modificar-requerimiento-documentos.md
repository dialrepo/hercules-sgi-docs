# Hércules : IU\-CSP\-0580\-009\-004 \- Modificar requerimiento \- Documentos



## Formulario Modificar requerimiento \- Documentos

Formulario de modificación de requerimiento. Apartado Documentos



| **Vista del listado (árbol) de documentos****Vista de la acción  "añadir documento"****Vista del detalle de un documento****Vista de la acción  "editar documento"** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Vista del lista de documentos | | |
| Árbol de documentos del requerimiento | Componente gráfico árbol de documentos | Se mostrará el árbol de documentos asociados al requerimiento (tabla "documento requerimiento"). El árbol se estructurará por tipos de documento (campo "tipo documento ref" de la tabla "documento requerimiento"). Todos los documentos que no tengan ningún valor en el campo "tipo documento" se mostrarán agrupados en un nodo "Sin tipo de documento" que se mostrará como último nodo del árbol.Colgando de cada nodo "tipo documento" se mostrarán los documentos clasificados bajo este tipo. Se mostrará el nombre del documento (campo "nombre documento"). |
|  | Acción ver documento | Icono de acción. Al seleccionar esta opción se mostrará la vista de detalle de documento, en la misma ventana, a la derecha del árbol de documentos. Desde esta vista de detalle se dará opción a descargar, editar o eliminar el documento. |
| Vista de la acción añadir o modificar documento | | |
| Nombre documento | TextoObligatorio | Campo para recoger el nombre del documento, es un nombre descriptivo que no tiene por qué ser el nombre del fichero en sí.Es un campo obligatorio.Se corresponde con el campo "nombre documento" de la tabla "documento requerimiento". |
| Tipo documento | SelectorTextoOpcional | Tipo de documento. Los tipos de documento serán los disponibles en el modelo de ejecución al que esté asociado el proyecto SGI para el que se crea el requerimiento.El desplegable mostrará un listado de tipos de documento recuperado como sigue:* Con el proyecto SGI al que pertenece el requerimiento se obtendrá de la tabla "proyecto" el campo "modelo de ejecución" * Con el modelo de ejecución se obtendrán de la tabla "modelo tipo documento" los registros con el campo "activo" a "true" para los que el campo "modelo tipo fase" tome valor "null" (es decir, los tipos de documento del modelo de ejecución que no estén vinculados a una fase concreta) * Para los tipos de documento recuperados se mostrará el campo "nombre" recuperado de la tabla "tipo documento" siempre que el tipo de documento tenga a su vez el flag "activo" a "true" (es decir, siempre que sea un tipo de documento activo)  Es un campo opcional.Con el tipo de documento seleccionado se informará el campo "tipo documento ref" de la tabla "documento requerimiento". |
| Documento | FicheroComponente de selección de archivoObligatorio | Campo donde se recoge el fichero seleccionado, para ello el campo irá provisto de un botón a través del que se dará lugar al componente de explorador de disco y selección de archivo.Es un campo obligatorio.El fichero se almacenará en el repositorio documental a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0010 \- Añadir\-modificar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0010-anadir-modificar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0010-anadir-modificar-documento.md"). La referencia al mismo quedará almacenada en el campo "documento ref" de la tabla "documento requerimiento" |
| Comentarios | Texto largoOpcional | Campo para introducir cualquier comentario sobre el documento.Es un campo opcional.Se corresponde con el campo "comentarios" de la tabla "documento requerimiento". |
| Vista del detalle de documento | | |
| Nombre documento | TextoObligatorio | Nombre descriptivo que se ha dado al  documento.Se corresponde con el campo "nombre documento" de la tabla "documento requerimiento". |
| Tipo documento | TextoOpcional | Tipo de documento asignado.Se mostrará el campo "nombre" obtenido de la tabla "tipo documento" para la referencia establecida por el campo "tipo documento ref" de tabla "documento requerimiento". |
| Documento | TextoObligatorio | Fichero.Nombre y extensión del fichero recuperado del SGDOC, [REQ\-INT\-0100\-SGDOC\-0050 \- Consultar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0050-consultar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0050-consultar-documento.md"), a partir de la referencia establecida desde el campo "documento ref" de la tabla "documento requerimiento". |
| Comentarios | TextoOpcional | Comentarios que se hubieran añadido al documento.Se corresponde con el campo "comentarios" de la tabla "documento requerimiento". |
| Descargar | Botón | Acción "descargar" |
| Editar documento | Botón | Acción "modificar" |
| Eliminar documento | Botón | Acción "eliminar" |



| Acciones | Descripción | Enlace CU. | Permiso |
| --- | --- | --- | --- |
| Listado (árbol) de documentos | | | |
| Ver documento | Permite ver el detalle de un documento | Muestra el detalle del documento a la derecha del árbol de documentos (vista detalle de documento) desde donde se podrá descargar el documento, modificar o eliminar | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Añadir documento | Permite añadir un nuevo documento. | Muestra en la parte derecha del árbol de documentos la vista "añadir documento". | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Vista de detalle de un documento | | | |
| Descargar fichero | Permite descargar el fichero asociado al documento. | Se mostrará solamente desde la vista "detalle de documento".Se descargará el fichero a la unidad local a través del componente estándar del navegador web. El fichero a descargar se recuperará del SGDOC, a través de [REQ\-INT\-0100\-SGDOC\-0020 \- Ver\-descargar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0020-ver-descargar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0020-ver-descargar-documento.md") a partir del "documento ref" de la tabla "documento requerimiento" | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Editar documento | Permite modificar los datos del documento. | Se mostrará solamente desde la vista "detalle de documento".Se mostrará la vista "detalle de documento" cargando los datos recuperados de la tabla "documento requerimiento"Los datos del fichero asociado al documento se consultarán del repositorio documental a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0050 \- Consultar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0050-consultar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0050-consultar-documento.md"). | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Eliminar documento | Permite eliminar el documento. | Se mostrará solamente desde la vista "detalle de documento".Se elimina el registro correspondiente de la tabla "documento requerimiento"Se eliminará el fichero asociado del SGDOC, a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0040 \- Eliminar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0040-eliminar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0040-eliminar-documento.md") | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Vista de añadir o editar un documento | | | |
| Examinar | Permite mostrar el componente de búsqueda y selección de fichero del sistema de archivos | Se mostrará únicamente en las vistas de "añadir documento" y "editar documento".Abre el explorador de archivos para seleccionar el fichero a asociar al documento. | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Aceptar | Crea o modifica el documento | Se mostrará únicamente en las vistas de "añadir documento" y "editar documento".Se validará la obligatoriedad de los siguientes campos:* Nombre documento * Documento  Se insertará o modificará el registro correspondiente en la tabla "documento requerimiento." Se añadirá o modificará, según corresponda, el fichero al repositorio documental a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0010 \- Añadir\-modificar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0010-anadir-modificar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0010-anadir-modificar-documento.md")Tras realizar la operación se cierra la ventana  de "añadir documento" o "editar documento" y se permanece en el árbol de documentos. | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Cancelar | Cancela la operación | Se mostrará únicamente en las vistas de "añadir documento" y "editar documento".Cancela la creación o modificación del documento descartando los datos o cambios introducidos. Se cierra la ventana  de "añadir documento" o "editar documento" y se permanece en el árbol de documentos. |  |

  


### Botones generales de la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar requerimiento | Se almacenan los cambio introducidos en cualquiera de las pestañas | Inserta, actualiza o elimina los registros correspondientes en la tabla "documento requerimiento".Además se almacenará los cambios que correspondan al resto de apartados del requerimiento  (datos generales, gastos y respuesta/alegación), puesto que la acción afecta a todos ellos.Tras realizar la operación de guardado se mantiene al usuario en esta página. | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Cancelar | Se descartan los cambios introducidos en cualquiera de las entidades de las tablas de esta ventana. | No se realiza ningún cambio sobre ninguna entidad.Se vuelve al listado de requerimientos [IU\-CSP\-0580\-006 \- Listado de requerimientos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-006-listado-de-requerimientos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-006-listado-de-requerimientos.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  
  





