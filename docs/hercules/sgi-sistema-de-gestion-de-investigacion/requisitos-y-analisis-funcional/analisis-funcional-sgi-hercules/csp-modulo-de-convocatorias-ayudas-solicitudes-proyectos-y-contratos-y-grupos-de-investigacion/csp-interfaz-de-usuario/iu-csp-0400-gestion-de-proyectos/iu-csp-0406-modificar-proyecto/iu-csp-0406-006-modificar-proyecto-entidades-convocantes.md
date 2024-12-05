# Hércules : IU\-CSP\-0406\-006 \- Modificar proyecto \- Entidades convocantes



## Formulario Modificar proyecto \- Entidades \- Convocantes

Formulario que muestra el listado de entidades convocantes. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán ver la información de cada entidad convocante y podrán añadir el programas/subprograma/modalidad/submodalidad asociado al Plan de investigación. Podrán eliminar la relación con la entidad convocante y crear nuevas entidades convocantes.

Por defecto se cargarán automáticamente en el listado las entidades convocantes que vengan de la solicitud y/o de la convocatoria asociadas al proyecto (se hace al crear el proyecto). Se muestran las entidades dadas de alta en la tabla "ProyectoEntidadConvocante". Desde el proyecto se podrá seleccionar una modalidad o modificar la existente para cada un de las entidades convocantes.

En el caso de añadir una nueva entidad convocante directamente en el proyecto la columna de "Programa convocatoria" se mostrará vacía.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de entidades convocantes | | |
| Nombre | Texto | Nombre de la entidad convocante, recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Plan | Texto | Nombre del plan de investigación (se obtiene a partir del campo "programaConvocatoria" de la tabla "ProyectoEntidadConvocante" en caso de existir , y en caso de no existir, del campo "modalidad", es el nodo raíz de dichos programas). Si ninguno de los dos campos están informados se muestra vacío el campo, quiere decir que sólo se ha elegido la entidad en la creación de la misma. |
| Programa convocatoria | Texto | Nombre del programa seleccionado en la convocatoria (en caso de que venga de una convocatoria, sino estará vacío el campo, campo "programaConvocatoria" de la tabla "ProyectoEntidadConvocante") |
| Modalidad | Texto | Nombre del item de la tabla Programa seleccionado. Puede corresponderse con un subprograma, una modalidad o una submodalidad (campo "programa" de la tabla "ProyectoEntidadConvocante") |
| Seleccionar modalidad | Icono de acción | Acción "Seleccionar modalidad".  Solo estará disponible si el programa de la convocatoria o la modalidad solicitada no son nulas. |
| Eliminar | Icono de acción | Acción "Eliminar". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Seleccionar modalidad | Muestra la pantalla de edición de modalidad de una entidad convocante permitiendo añadir o modificar la modalidad asociada al plan. | Muestra la pantalla [IU\-CSP\-0402\-003 \- Añadir/modificar modalidad sobre entidad convocante](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-003-anadir-modificar-modalidad-sobre-entidad-convocante.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-003-anadir-modificar-modalidad-sobre-entidad-convocante.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina la relación del proyecto con la entidad convocante | Elimina el registro de la tabla de "Entidades convocantes" del proyecto.Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir entidad convocante | Muestra la pantalla de Nueva entidad convocante | Muestra la pantalla [IU\-CSP\-0402\-002 \- Añadir entidad convocante](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-002-anadir-entidad-convocante.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-002-anadir-entidad-convocante.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  





