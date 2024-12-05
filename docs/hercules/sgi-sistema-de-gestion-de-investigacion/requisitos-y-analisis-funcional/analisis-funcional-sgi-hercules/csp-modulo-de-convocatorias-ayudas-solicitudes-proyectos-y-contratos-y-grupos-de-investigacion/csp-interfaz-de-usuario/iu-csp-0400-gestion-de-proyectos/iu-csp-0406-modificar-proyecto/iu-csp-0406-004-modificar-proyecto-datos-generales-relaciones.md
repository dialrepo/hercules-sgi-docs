# Hércules : IU\-CSP\-0406\-004 \- Modificar proyecto \- Datos generales \- Relaciones



## Formulario Modificar proyecto \- Datos generales \- Relaciones

Formulario de modificación de un proyecto, apartado de Datos generales \- Relaciones.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de entidades relacionadas: se recuperan los registros de la tabla "relacion" del módulo REL en el que el identificador del proyecto que se esta editando existe en uno de los campos "entidadOrigenRef" o "entidadDestinoRef" | | |
| Relación con | Texto corto | Objeto con la que se relaciona el proyecto. Podrá tomar los valores: "Proyecto", "Convocatoria" o "Invención" |
| Objeto relacionado | Texto corto | Título del objeto relacionado con el proyecto. Un proyecto puede relacionarse con otros proyectos/contratos y convocatorias registrados en sus correspondientes módulos del SGI o bien con Invenciones registradas en el módulo módulo [PII \- Módulo de Propiedad industrial e intelectual](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/index.md") (siempre y cuando disponga del permiso adecuado).En el caso de Invenciones si dispone del permiso PII\-INV\-MOD\-V se le mostrará el título de la invención. Para convocatorias y proyectos se le mostrará el título.Si además el usuario tiene permisos Visor  o Gestor sobre la acción de Ver detalle de la entidad relacionada se mostrará el link el cual abrirá en una nueva pantalla con el detalle de la entidad. |
| Ref. entidad convocante | Texto | Referencia que la entidad convocante asigna al proyecto.Esta columna solo contendrá valor cuando el objeto relacionado sea de tipo "proyecto" (campo "tipo entidad destino" de la tabla "relación" toma el valor "proyecto").Se corresponde con el campo "código externo" de la tabla "proyecto" para el proyecto referenciado por el campo "entidad destino ref" de la tabla "relación" |
| Código SGE | Texto corto | Código de identificación del proyecto económico del SGE con el que se vincula el proyecto SGI.Esta columna solo contendrá valor cuando el objeto relacionado sea de tipo "proyecto" (campo "tipo entidad destino" de la tabla "relación" toma el valor "proyecto")..Se corresponde con  el campo "proyecto SGE ref" de la tabla "proyecto proyecto SGE" para el proyecto referenciado por el campo "entidad destino ref" de la tabla "relación". |
| Observaciones | Texto largo | Se corresponde con el campo "observaciones" de la tabla "relación". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del objeto relacionado seleccionado del listado de relaciones del proyecto | Se resuelve con la pantalla [IU\-CSP\-0402\-001 \- Añadir relación en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-001-anadir-modificar-relacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-001-anadir-modificar-relacion.md").Únicamente se puede modificar el campo "Observaciones".Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | REL\-E |
| Eliminar | Eliminar la relación entre el objeto relacionado y el proyecto | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | REL\-B |
| Añadir relación | Muestra la pantalla para añadir una nueva relación | Muestra la pantalla [IU\-CSP\-0402\-001 \- Añadir relación en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-001-anadir-modificar-relacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-001-anadir-modificar-relacion.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | REL\-C |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578") | REL\-EREL\-BREL\-C |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




