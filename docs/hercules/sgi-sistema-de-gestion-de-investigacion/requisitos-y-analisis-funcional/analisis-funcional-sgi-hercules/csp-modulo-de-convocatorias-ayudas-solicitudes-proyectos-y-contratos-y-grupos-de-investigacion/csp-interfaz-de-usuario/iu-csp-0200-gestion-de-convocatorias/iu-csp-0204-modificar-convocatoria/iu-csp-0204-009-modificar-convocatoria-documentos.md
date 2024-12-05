# Hércules : IU\-CSP\-0204\-009 \- Modificar convocatoria \- Documentos



## Formulario Modificar convocatoria \- Documentos

### Formulario con el listado de Documentos

**La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")**



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")** | | |
| Listado de documentos de la convocatoria | | |
| Árbol de documentos del proyecto | Componente gráfico de árbol | Se mostrará el árbol de documentos de la convocatoria, se estructurará por Fases y dentro de éstas por Tipo de documento. Si hubiera documentos sin fase o sin tipo, se mostrarán agrupados al final bajo epígrafes con nombres genéricos. Al seleccionar un elemento del árbol se mostrará el detalle del documento seleccionado, permitiendo la  modificación, descarga o borrado del mismo. |
| Datos del documento seleccionado | | |
| Nombre | Texto | Nombre del documento |
| Documento | Documento |  |
| Tipo de fase | Texto corto | Nombre del tipo de fase. Procedente de la tabla "Tipo de fase" del modelo de ejecución, gestionados en [IU\-CSP\-0030 \- Gestión de tipos de fases](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821829 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821829") |
| Tipo de documento | Texto corto | Nombre del tipo de documento. Procedente de la tabla "Tipo de documento" del modelo de ejecución, gestionados en [IU\-CSP\-0040 \- Gestión de tipos de documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821831 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821831") |
| Observaciones | Texto largo | Observaciones del documento |
| Público | BooleanoValores: Sí, No | Tomará los valores Sí/No. Indica si el documento va a ser visible para los ACT\- CSP\-001\-Investigador |
| Editar documento | Botón | Acción modificar |
| Eliminar documento | Botón | Acción eliminar |
| Descargar | Icono de acción | Acción descargar el documento |

  
  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Editar | Muestra la pantalla de Edición del documento | Muestra la pantalla definida en el formulario de abajo. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Eliminar | Elimina el documento de la convocatoria | Elimina el documento de la vista del árbol de documento. Al dar a Guardar la convocatoria se aplicará el cambio en base de datos eliminando el fichero del sistema documental y eliminando el registro de la tabla de documentos de la convocatoria. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Descargar | Descargar el fichero seleccionado |  |  |
| Añadir nuevo documento | Muestra la pantalla Nuevo documento | Muestra la pantalla [IU\-CSP\-202\-010 \- Añadir documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-010-anadir-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-010-anadir-documento.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |

  


### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica la Convocatoria con la información introducida en el formulario.Al guardar una convocatoria se guardar la información de todas las pestañas de la pantalla. | En caso de añadir un nuevo documento  habrá que subir dicho documento al sistema documental (ESB GDOC) y almacenar e registro en al tabla de documentos de convocatoria.En caso de eliminar un documento se eliminará el fichero del sistema documental y se eliminará el registro de la tabla de documentos de la convocatoria.En caso de modificar un documento, se actualizará el registro en la base de datos, pero si se modifica el fichero habrá que eliminar el anterior y subir el nuevo al sistema documental.Ver detalle en documentación asociada en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

  


### Formulario para modificar los documentos de una convocatoria



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")** | | |
| Nombre del documento | Texto cortoObligatorio | Nombre del documento |
| Documento | DocumentoObligatorio | Documento a adjuntar |
| Fase | SelectorTexto cortoOpcional | Listado con los tipos de fase activos que estén asociados al Modelo de ejecución (ModeloTipoFase activos) al que se haya vinculado la convocatoria en el campo "Modelo ejecución". |
| Tipo de documento | SelectorTexto cortoOpcional | Si el campo "Fase" tiene una valor:* Listado de tipos de documento activos que estén asociados al Modelo de ejecución (ModeloTipoDocumento activos) al que se haya vinculado la convocatoria en el campo "Modelo ejecución" y que en modeloTipoFase tenga la fase seleccionada en el campo anterior Fase  Si el campo "Fase" esta vacío:* Listado de tipos de documento activos que estén asociados al Modelo de ejecución (ModeloTipoDocumento activos y que no tengan asociada una fase, campo modeloTipoFase \= null ) al que se haya vinculado la convocatoria en el campo "Modelo ejecución" |
| Público | SelectorBooleanoValores: Sí, NoObligatorio | Tomará los valores Sí/No.  Indica si el documento va a ser visible para los ACT\- CSP\-001\-Investigador |
| Observaciones | Texto largoOpcional | Observaciones del documento |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Examinar | Muestra pantalla de búsqueda para seleccionar documento a adjuntar |  |  |
| Guardar | Actualiza el registro en base de datos | Se guardarán los cambios del documento en el árbol de la izquierda.Ver detalle en documentación asociada en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se tendrán en cuenta los cambios indicados en el formulario y se volverá al árbol de documentos de la convocatoria |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




