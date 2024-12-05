# Hércules : IU\-CSP\-0302\-016 \- Modificar documento



## Formulario Modificar documento

Formulario que permite modificar un documento seleccionado en el árbol de documentos de una solicitud.

Los documentos se modifican desde la pestaña de "Documentos" de la solicitud [IU\-CSP\-0304\-009 \- Modificar Solicitud \- Documentos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-009-modificar-solicitud-documentos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-009-modificar-solicitud-documentos.md")



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Nombre del documento | TextoObligatorio | Nombre del documento |
| Tipo de documento | Texto cortoModo consulta | Nombre del tipo de documento. Procedente de la tabla "Tipo de documento" a través del identificador del tipo de documento. Los tipos disponibles serán los tipos de documento asociados a la fase de presentación de solicitudes configurada en la pantalla de Configuración Solicitud de la Convocatoria.NO se puede modificar |
| Documento | DocumentoObligatorio | Documento a adjuntar |
| Icono descarga | Icono descargaSi existe el fichero | Se visualiza el fichero en caso de existir |
| Comentarios | Texto largoOpcional | Indicaciones u observaciones sobre el documento subido procedentes de la tabla "Documentos solicitud" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Examinar | Muestra pantalla de búsqueda para seleccionar documento a adjuntar, sobrescribiendo el fichero previo |  |
| Aceptar | Se modifican los datos del documento, en el árbol de documentos de la solicitud |  |
| Cancelar | Retorna al formulario de la solicitud, sin salvar los posibles cambios |  |

  
  
  
  
  
  





