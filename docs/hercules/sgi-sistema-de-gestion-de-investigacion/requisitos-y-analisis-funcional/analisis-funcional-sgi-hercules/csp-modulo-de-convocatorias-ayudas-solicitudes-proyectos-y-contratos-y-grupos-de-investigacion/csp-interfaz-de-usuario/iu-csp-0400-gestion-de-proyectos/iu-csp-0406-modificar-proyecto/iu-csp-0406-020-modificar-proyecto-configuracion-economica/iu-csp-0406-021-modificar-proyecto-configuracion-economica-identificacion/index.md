# Hércules : IU\-CSP\-0406\-021 \- Modificar proyecto \- Configuración económica \- Identificación



## Formulario Modificar proyecto \- Configuración económica \- Identificación

Formulario que permite establecer la correspondencia del proyecto/contrato del SGI con el SGE. Se registrará el código con el que se identifica el proyecto/contrato en el SGE, normalmente será un único código aunque se permite añadir varios identificadores. A partir de los identificadores se recuperarán las operaciones contables que se registren en el SGE.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de identificación de la configuración económica (registros de la tabla "proyecto proyecto SGE") | | |
| Código de identificación SGE | Texto corto | Identificador del proyecto en el SGE (campo "proyectoSGERef" de la tabla "proyecto proyecto SGE") |
| Sector IVA | Boolean | Sector IVA del proyecto SGE , recuperado  por medio de [REQ\-INT\-0010\-SGE\-0082 \- Consultar datos proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0082-consultar-datos-proyecto-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0082-consultar-datos-proyecto-economico.md").Valores:* Sí (true) * No (false) |
| Eliminar | Icono de acción | Acción "Eliminar" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar | Elimina la relación del proyecto SGI con el identificador SGE. | Sólo se podrá eliminar si no se ha creado el presupuesto ni se ha validado ningún gasto (no existen registros en las tablas "AnuliadadGasto", "AnualidadIngreso" ni en "GastoProyecto")Se elimina el registro del listadoVer documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir identificación SGE | Muestra la pantalla de Añadir identificador de SGE al proyecto. | Muestra la pantalla [IU\-CSP\-0406\-019\-001 \- Búsqueda de proyectos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md") ( es la pantalla de búsqueda de identificadores SGE, integración con el ESB SGE para obtener dicho listado). Desde esa misma pantalla también se podrá solicitar el alta del proyecto en caso de no existir [REQ\-INT\-0010\-SGE\-0080 \- Solicitar alta proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0081-solicitar-alta-proyecto-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0081-solicitar-alta-proyecto-economico.md") o relacionar el proyecto SGI con un proyecto económico SGE ya dado de alta anteriormente [REQ\-INT\-0010\-SGE\-0083 \- Solicitar relación con un proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0083-solicitar-relacion-con-un-proyecto-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0083-solicitar-relacion-con-un-proyecto-economico.md")Se podrá buscar un identificador y seleccionarlo. | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Se podría dar el caso de que un mismo identificador del SGE exista en dos proyectos del SGI, por lo tanto, no se hará ninguna comprobación.Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




