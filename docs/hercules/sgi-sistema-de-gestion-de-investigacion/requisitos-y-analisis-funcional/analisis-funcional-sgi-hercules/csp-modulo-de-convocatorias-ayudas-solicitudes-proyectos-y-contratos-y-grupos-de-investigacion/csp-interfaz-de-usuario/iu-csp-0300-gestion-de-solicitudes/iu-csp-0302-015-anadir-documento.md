# Hércules : IU\-CSP\-0302\-015 \- Añadir documento



## Formulario Añadir documento

Formulario que permite añadir un documento a la solicitud.

Los documentos se añaden desde la pestaña de "Documentos" de la solicitud [IU\-CSP\-0304\-009 \- Modificar Solicitud \- Documentos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-009-modificar-solicitud-documentos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-009-modificar-solicitud-documentos.md")



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Nombre del documento | Texto cortoObligatorio | Nombre del documento |
| Tipo de documento | SelectorTextoOpcional | Nombre del tipo de documento. Procedente de la tabla "Tipo de documento" a través del identificador del tipo de documento. Los tipos disponibles serán los tipos de documento asociados a la fase de presentación de solicitudes configurada en la pantalla de "Configuración Solicitud de la Convocatoria". En caso de estar creando una solicitud no vinculada a una convocatoria del SGI o que no se haya definido dicha fase se mostrará el combo vacío.Aunque la solicitud esté vinculad a una convocatoria del SGI, no será obligatorio que un documento subido tenga obligatoriamente uno de los tipos de documentos del listado (podrá seleccionarse el valor vacío sobre él). En este caso el documento será uno de los que se visualice en el árbol bajo la rama genérica "sin tipo documento" |
| Documento | DocumentoObligatorio | Documento a adjuntar |
| Comentarios | Texto largoOpcional | Indicaciones u observaciones sobre el documento subido almacenado de la tabla "Solicitud Documento" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Acción "Subir documento" | Muestra pantalla de búsqueda para seleccionar documento a adjuntar, sobrescribiendo el fichero previo |  |
| Aceptar | Añade el documento a la solicitud, se visualiza en el árbol |  |
| Cancelar | Retorna al formulario de la solicitud, sin salvar los posibles cambios |  |

  
  
  
  
  
  





