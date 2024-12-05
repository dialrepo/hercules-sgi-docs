# Hércules : IU\-PII\-0011\-002 \- Añadir\-modificar documento



## Formulario Añadir\-modificar documento

Pantalla que muestra el formulario para añadir un nuevo documento o modificar los datos de un documento asociado a una invención en una ventana emergente.



| | *Formulario en modo "Añadir"* | *Formulario en modo "Modificar"* | | --- | --- |    | *Vista desde el alta de invención* | *Vista desde la modificación de la invención* | | --- | --- | | | |
| --- | --- | --- | --- | --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario Nuevo documento general | | |
| Nombre | TextoObligatorioModificable | Nombre del documento asociado o que se asociará a la invención. |
| Fichero | TextoObligatorioSolo consulta | Nombre del fichero físico del documento asociado o que se asociará a la invención.Para añadir un nuevo documento se deberá seleccionar un archivo a asociar como documento de la invención.Si estamos en una modificación, se mostrará el nombre del fichero físico ya asociado a la invención, obtenido a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0050 \- Consultar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0050-consultar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0050-consultar-documento.md").No se podrá modificar el fichero asociado, el cambio de un fichero ha de gestionarse desde la pantalla que contiene el listado de documentos (desde la que se ha accedido a este popoup) eliminando primero el documento que se quiere descartar y añadiendo a continuación uno nuevo.Tampoco se podrá modificar la fecha en la que se adjuntó, puesto que en el momento de añadirlo habrá quedado registrada por parte del SGDOC y no se podrá variar. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Examinar | Al pulsar sobre este botón, se abrirá el explorador de archivos para poder seleccionar el documento a adjuntar desde el equipo del usuario. |  |
| Añadir | Añade el documento seleccionado a la invención.Al añadir un documento a la invención, se guardará la fecha en la que se añadió el mismo, que será la que se muestre en el listado de documentos asociados a la invención.Se hará uso del requisito de integración [REQ\-INT\-0100\-SGDOC\-0010 \- Añadir\-modificar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0010-anadir-modificar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0100-sgdoc-integracion-con-sistema-gestion-documental/req-int-0100-sgdoc-0010-anadir-modificar-documento.md"). |  |
| Aceptar | Modifica el nombre del documento seleccionado y vuelve a la pantalla que contiene el listado de documentos. |  |
| Cancelar | Vuelve a la pantalla que contiene el listado de documentos sin añadir el documento. |  |




