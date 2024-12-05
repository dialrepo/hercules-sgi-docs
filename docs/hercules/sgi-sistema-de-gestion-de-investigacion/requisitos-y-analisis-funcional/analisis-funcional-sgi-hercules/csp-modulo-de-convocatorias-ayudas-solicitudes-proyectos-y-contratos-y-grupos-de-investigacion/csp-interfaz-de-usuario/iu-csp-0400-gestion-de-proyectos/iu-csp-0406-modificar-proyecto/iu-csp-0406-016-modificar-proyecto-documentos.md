# Hércules : IU\-CSP\-0406\-016 \- Modificar proyecto \- Documentos



## Formulario Modificar proyecto \- Documentos

Formulario que permitirá mostrar y acceder a todos los documentos vinculados al proyecto (documentos generales del proyecto) y a los documentos asociados en otros apartado del proyecto (seguimiento científico, prórrogas y periodos de justificación), así cómo a los documentos asociados a la solicitud y/o convocatoria a las que pertenezca el proyecto. Tanto los documentos de las prórrogas, periodos de seguimiento científico, periodos de justificación, de la solicitud y de la convocatoria sólo se mostrarán en modo consulta sin la posibilidad de editarlos, ni eliminarlos ni crear nuevos. Para realizar la gestión de estos documentos se deberá de ir al apartado correspondiente del proyecto o a cada una de las entidades convocatoria o solicitud.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de documentos aportados al proyecto | | |
| Árbol de documentos del proyecto | Componente gráfico de árbol | Se mostrará el árbol de documentos asociados al proyecto, se estructurará por Tipos de fase y Tipo de documento. Si hubiera documentos sin tipo o sin fase, se mostrarán agrupados al final bajo epígrafes con nombres genéricos. Al seleccionar un elemento del árbol se mostrará el detalle del documento seleccionado. Para los documentos generales del proyecto se  permitirá la descarga, modificación o borrado del mismo.Los documentos de los periodos de justificación de los socios se mostrarán bajo el nodo con nombre "Socios" y luego con el nombre del socio (un nodo por cada socio con periodos de justificación con documentos), luego el número del periodo de justificación  "Periodo N" (un nodo por cada periodo de justificación con documentos) y por último el Tipo de documento o el nodo Sin tipo de documento. Los documentos de este nodo del árbol no podrán ser modificados. Tampoco se podrán añadir nuevos documentos a este nodo el árbol.Los documentos del seguimiento científico se mostrarán bajo el nodo con nombre "Periodos seguimiento científico", a continuación la agrupación será por el número del periodo "Periodo N" (un nodo por cada periodo de seguimiento con documentos), y por último el Tipo de documento o el nodo Sin tipo de documento. Se recuperarán de la tabla "proyecto periodo seguimiento documento". Los documentos de este nodo del árbol no podrán ser modificados. Tampoco se podrán añadir nuevos documentos a este nodo el árbol.Los documentos de las prórrogas se mostrarán bajo el nodo con nombre "Prórrogas" , a continuación se mostrarán agrupados por el número de la prórroga "Prórroga N" (un nodo por cada prórroga con documentos), y por último el Tipo de documento o el nodo "Sin tipo de documento". Estos documentos se recuperarán de la tabla "proyecto prórroga documento". Los documentos de este nodo del árbol no podrán ser modificados. Tampoco se podrán añadir nuevos documentos a este nodo el árbol.Si el proyecto está asociado a una solicitud (campo "solicitud" de la tabla "proyecto" está informado) y la solicitud tiene documentos asociados (tabla "solicitud documento") se deberán mostrar en el árbol de documentos del proyecto. Los documentos de la solicitud se mostrarán bajo un nodo con nombre  "Solicitud". Se recuperarán de la tabla "solicitud documento", y se mostrarán agrupados por Tipo de documento. Si hubiera documentos sin tipo se mostrarán bajo un nivel genérico "Sin tipo de documento". Los documentos de este nodo del árbol no podrán ser modificados. Tampoco se podrán añadir nuevos documentos a este nodo el árbol. Si el proyecto está asociado a una convocatoria (campo "convocatoria" de la tabla "proyecto" está informado) y la convocatoria tiene documentos asociados (tabla "convocatoria documento") se deberán mostrar en el árbol de documentos del proyecto. Los documentos de la convocatoria se mostrarán bajo un nodo con nombre  "Convocatoria". Se recuperarán de la tabla "convocatoria documento", y se mostrarán agrupados en primer nivel por Tipo de fase, y dentro de ésta por Tipo de documento. Si dentro de una fase hubiera documentos sin tipo se mostrarán bajo un nivel genérico "Sin tipo de documento", y si hubiera documentos sin fase se mostrarán de igual forma bajo un nivel genérico "Sin fase". Los documentos de este nodo del árbol no podrán ser modificados. Tampoco se podrán añadir nuevos documentos a este nodo el árbol. |
| Datos del documento seleccionado | | |
| Nombre | Texto | Nombre del documento |
| Tipo de fase | Texto corto | Nombre del tipo de fase. Procedente de la tabla "Tipo de fase" del modelo de ejecución, gestionados en [IU\-CSP\-0030 \- Gestión de tipos de fases](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821829 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821829") |
| Tipo de documento | Texto corto | Nombre del tipo de documento. Procedente de la tabla "Tipo de documento" del modelo de ejecución, gestionados en [IU\-CSP\-0040 \- Gestión de tipos de documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821831 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821831") |
| Documento | Documento |  |
| Comentarios | Texto largo | Comentarios del documento |
| Visible al equipo de investigación | BooleanoValores: Sí, No | Tomará los valores Sí/No. Indica si el documento va a ser visible para los ACT\- CSP\-001\-Investigador que forman parte del equipo del proyecto o no |
| Editar documento | Botón | La opción de edición sólo estará disponible para los documentos de la tabla de "ProyectoDocumento". Los documentos de prórrogas, periodos de justificación, periodos de seguimiento científico, solicitud y convocatoria no son gestionados desde éste árbol, sólo se muestran en modo consulta.Acción modificar |
| Eliminar documento | Botón | La opción de eliminar sólo para los documentos de la tabla de "ProyectoDocumento". Los documentos de prórrogas, periodos de justificación y periodos de seguimiento científico no son gestionados desde éste árbol, sólo se muestran en modo consulta.Acción eliminar |
| Descargar | Icono de acción | Acción descargar el documento |

  


### Acciones



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Editar | Muestra la pantalla de Edición del documento | Sólo estará disponible para los documentos de la tabla de "Proyecto documento". Los documentos de prórrogas, periodos de justificación, periodos de seguimiento científico, solicitud y convocatoria no podrán ser gestionados desde éste árbol, sólo se mostrarán en modo consulta.Muestra la pantalla [IU\-CSP\-0402\-013 \- Añadir documento en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-013-anadir-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-013-anadir-documento.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el documento de la tabla "ProyectoDocumento" | Sólo estará disponible para los documentos de la tabla de "Proyecto documento". Los documentos de prórrogas, periodos de justificación, periodos de seguimiento científico, solicitud y convocatoria no podrán ser gestionados desde éste árbol, sólo se mostrarán en modo consulta.Elimina el documento de la vista del árbol de documento. Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Descargar | Descargar el fichero seleccionado | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir nuevo documento | Muestra la pantalla Nuevo documento | Sólo podrán añadirse documentos a la tabla de "Proyecto documento". Los documentos de prórrogas, periodos de justificación,  periodos de seguimiento científico, solicitud y convocatoria no podrán ser gestionados desde éste árbol, sólo se mostrarán en modo consulta.Muestra la pantalla [IU\-CSP\-0402\-013 \- Añadir documento en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-013-anadir-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-013-anadir-documento.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| **Acciones** | **Descripción** | **Enlace CU.** | **Permisos** |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | En caso de eliminación de un documento, se aplicará el cambio en base de datos eliminando el fichero del sistema documental y eliminando el registro de la tabla de documentos del proyecto.Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




