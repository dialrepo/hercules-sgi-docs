# Hércules : IU\-PII\-0020\-0030\-002 Ver detalle\-modificar solicitud de protección \- Procedimientos



## Formulario Ver detalle\-modificar solicitud de protección \- Procedimientos

Pantalla con el formulario de ver detalle y/o modificación de solicitudes de protección de una invención. Pestaña "Procedimientos".

Se muestra un listado de procedimientos y otro de documentos asociados a cada procedimiento, de forma que al seleccionar un procedimiento de la lista, se muestren automáticamente los documentos asociados a dicho procedimiento.

La vista de la pestaña de procedimientos es idéntica para todos los tipos de solicitud y vías de protección.

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| *Listado de procedimientos \- Al seleccionar un procedimiento de la lista, se mostrarán automáticamente los documentos asociados a dicho procedimiento.* | | |
| Fecha | Fecha (sin hora) | Fecha en la que se registra el procedimiento. |
| Tipo de procedimiento | Texto | Tipo de procedimiento. |
| Acción a tomar | Texto | Acciones a tomar en el procedimiento. |
| Fecha límite | Fecha | Fecha límite del procedimiento. |
| *Listado de documentos \- Al cambiar el procedimiento seleccionado en el listado de procedimientos, se refrescará este listado con los documentos del procedimiento que se seleccione.* | | |
| Fecha añadido | Fecha (sin hora) | Fecha en la que se añadió el documento asociado a la invención. |
| Nombre | Texto | Nombre que se ha dado al documento asociado a la invención. |
| Fichero | Texto | Nombre del fichero físico asociado a la invención como documento.Será recuperado a través del requisito de integración [REQ\-INT\-0100\-SGDOC\-0050 \- Consultar documento](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0100-SGDOC-0050+-+Consultar+documento "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0100-SGDOC-0050+-+Consultar+documento"). |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar (procedimiento) | Muestra la pantalla de ver detalle/modificación del procedimiento seleccionado del listado [IU\-PII\-0021\-001 \- Añadir\-modificar procedimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0021-gestion-de-solicitudes-de-invencion-popups-auxiliares/iu-pii-0021-001-anadir-modificar-procedimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0021-gestion-de-solicitudes-de-invencion-popups-auxiliares/iu-pii-0021-001-anadir-modificar-procedimiento.md") en una ventana emergente. |  | PII\-INV\-E |
| Eliminar (procedimiento) | Elimina el procedimiento seleccionado del listado.Al eliminar un procedimiento, se eliminarán sus documentos asociados.Si el procedimiento tuviese asociado un aviso y/o una tarea programada, ambas cosas se deberán eliminar también, invocando a los métodos correspondientes del API de los módulos de comunicados [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente. |  | PII\-INV\-E |
| Añadir procedimiento | Muestra la pantalla para dar de alta un nuevo procedimiento [IU\-PII\-0021\-001 \- Añadir\-modificar procedimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0021-gestion-de-solicitudes-de-invencion-popups-auxiliares/iu-pii-0021-001-anadir-modificar-procedimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0021-gestion-de-solicitudes-de-invencion-popups-auxiliares/iu-pii-0021-001-anadir-modificar-procedimiento.md") en una ventana emergente. |  | PII\-INV\-E |
| Modificar (documento) | Al pulsar este botón se abrirá el formulario [IU\-PII\-0011\-002 \- Añadir\-modificar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108607686 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108607686") para modificar los datos de un documento. |  | PII\-INV\-E |
| Descargar (documento) | Al pulsar este botón se abrirá el diálogo para la descarga del documento del repositorio documental, que hará uso del requisito de integración [REQ\-INT\-0100\-SGDOC\-0020 \- Ver documento](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0100-SGDOC-0020+-+Ver+documento "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0100-SGDOC-0020+-+Ver+documento"). |  | PII\-INV\-E |
| Eliminar (documento) | Elimina el documento asociado al procedimiento de la solicitud de invención del repositorio documental.Se hará uso del requisito de integración [REQ\-INT\-0100\-SGDOC\-0040 \- Eliminar documento](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0100-SGDOC-0040+-+Eliminar+documento "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0100-SGDOC-0040+-+Eliminar+documento"). |  | PII\-INV\-E |
| Añadir documento | Permite añadir un nuevo documento al listado de documentos del procedimiento asociado a la solicitud de invención.Al pulsar este botón se abrirá el formulario [IU\-PII\-0011\-002 \- Añadir\-modificar documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108607686 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108607686") para añadir un nuevo documento, que hará uso del requisito de integración [REQ \- NF \- INT \- 0030 \- SGDOC \- 0010 \- Añadir documento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=89620962 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=89620962"). |  | PII\-INV\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar solicitud de protección | Guarda los cambios realizados en la solicitud de protección y retorna al listado de solicitudes de protección asociadas a la invención.Al guardar los cambios además habrá que tener en cuenta los comunicados y tareas programadas asociados que se deben generar/eliminar/modificar en función de los cambios realizados según se describe en el apartado [Comunicados](#IUPII00200030002VerdetallemodificarsolicituddeprotecciónProcedimientos-comunicados "#IUPII00200030002VerdetallemodificarsolicituddeprotecciónProcedimientos-comunicados") y en las acciones "Eliminar (procedimiento)" de esta pantalla de listado y "Añadir/Aceptar" del popup [IU\-PII\-0021\-001 \- Añadir\-modificar procedimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0021-gestion-de-solicitudes-de-invencion-popups-auxiliares/iu-pii-0021-001-anadir-modificar-procedimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0021-gestion-de-solicitudes-de-invencion-popups-auxiliares/iu-pii-0021-001-anadir-modificar-procedimiento.md"). |  | PII\-INV\-E |
| Cancelar | Retorna a la pantalla listado de solicitudes, sin salvar los posibles cambios. |  |  |

### Comunicados

En el caso de que se marque el check "Generar aviso" de algún procedimiento que previamente no lo tuviese marcado, se desmarque dicho check de algún procedimiento que sí lo tuviese previamente marcado o que se modifiquen los datos del propio aviso, será necesario dar de alta, de baja o modificar respectivamente, los datos del comunicado y/o de la tarea programada, que se hubiesen generado con motivo del aviso asociado a dicho hito, en los módulos de comunicados [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente.  


La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Fecha límite de procedimiento** dentro de [PII \- Comunicados](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=PII+-+Comunicados&linkCreation=true&fromPageId=597852522 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=PII+-+Comunicados&linkCreation=true&fromPageId=597852522") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




