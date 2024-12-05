# Hércules : IU\-CSP\-0406\-008 \- Modificar proyecto \- Entidades financiadoras



## Formulario Modificar proyecto \- Entidades financiadoras

Formulario que muestra el listado de entidades financiadoras de la convocatoria y las ajenas a la convocatoria. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán editar la información de cada entidad financiadora, eliminar la relación y añadir nuevas entidades financiadoras de la convocatoria o ajenas. Se podrá visualizar el desglose del presupuesto recuperado de la solicitud vinculada al proyecto, registrada con anterioridad en el SGI.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de entidades financiadoras de la convocatoria (registros de la tabla "Proyecto entidad financiadora" para los que el campo "ajena" tome el valor "false") | | |
| Nombre | Texto | Nombre de la entidad financiadora del proyecto, recuperada a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| CIF | Texto | Número de identificación de la entidad financiadora. Se recuperará a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Fuente de financiación | Texto | Fuente de financiación de la entidad financiadoraCampo "nombre" de  la tabla "fuente financiación" recuperado a partir del campo "fuente financiación" de la tabla "proyecto entidad financiadora" |
| Ámbito | Texto corto | Ámbito geográfico de la Fuente de financiaciónCampo "nombre" de la tabla "tipo ámbito geográfico" recuperado a partir del campo "tipo ámbito geográfico" de la tabla "fuente financiación" para la fuente de financiación indicada en "proyecto entidad financiadora" |
| Tipo de financiación | Texto corto | Tipo de financiación de la entidad financiadoraCampo "nombre" de la tabla "tipo financiación" recuperado a partir del campo "tipo financiación" de la tabla "proyecto entidad financiadora" |
| Porcentaje de financiación | Numérico porcentaje | Porcentaje de financiación de la entidad financiadora Campo "porcentaje financiación" de la tabla "proyecto entidad financiadora" |
| Importe financiación | Económico | Importe de financiación con el que participa la entidad financiadoraCampo "importe financiación" de la tabla "proyecto entidad financiadora" |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Presupuesto | Icono de acción | Acción "Presupuesto" |
| Listado de entidades financiadoras ajenas a la convocatoria (registros de la tabla "proyecto entidad financiadora" para los que el campo "ajena" tome el valor "true") | | |
| Nombre | Texto | Nombre de la entidad financiadora del proyecto, recuperada a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| CIF | Texto | Número de identificación de la entidad financiadora. Se recuperará a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Fuente de financiación | Texto | Fuente de financiación de la entidad financiadoraCampo "nombre" de  la tabla "fuente financiación" recuperado a partir del campo "fuente financiación" de la tabla "proyecto entidad financiadora" |
| Ámbito | Texto corto | Ámbito geográfico de la Fuente de financiaciónCampo "nombre" de la tabla "tipo ámbito geográfico" recuperado a partir del campo "tipo ámbito geográfico" de la tabla "fuente financiación" para la fuente de financiación indicada en "proyecto entidad financiadora" |
| Tipo de financiación | Texto corto | Tipo de financiación de la entidad financiadoraCampo "nombre" de la tabla "tipo financiación" recuperado a partir del campo "tipo financiación" de la tabla "proyecto entidad financiadora" |
| Porcentaje financiación | Numérico porcentaje | Porcentaje de financiación de la entidad financiadoraCampo "porcentaje financiación" de la tabla "proyecto entidad financiadora" |
| Importe financiación | Económico | Importe de financiación con el que participa la entidadCampo "importe financiación" de la tabla "proyecto entidad financiadora" |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la entidad seleccionada del listado de entidades financiadoras | Se resuelve con la pantalla [IU\-CSP\-0402\-004 \- Añadir entidad financiadora en proyecto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91014012 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=91014012").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina la relación entre el proyecto y la entidad financiadora | Elimina el registro de la tabla de "Entidades financiadoras" del proyecto.Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir nueva entidad | Muestra la pantalla de Nueva entidad financiadora | Muestra la pantalla [IU\-CSP\-0402\-004 \- Añadir entidad financiadora en proyecto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91014012 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=91014012").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Presupuesto | Muestra la pantalla de desglose del presupuesto recuperado de la solicitud vinculada al proyecto. | Se mostrará solo si el proyecto está vinculado a una solicitud registrada en el SGI en la que se hayan introducido entidades con su correspondiente desglose de presupuesto en partidas de ingreso o gasto.Se mostrará en una ventana modal el desglose del presupuesto de la solicitud filtrado por la entidad y si es ajena o no. La pantalla a mostrar será [IU\-CSP\-0302\-014 \- Presupuesto completo de la solicitud (por entidades)](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-014-presupuesto-completo-de-la-solicitud-por-entidades.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-014-presupuesto-completo-de-la-solicitud-por-entidades.md") | CSP\-PRO\-VCSP\-PRO\-V\_UOCSP\-PRO\-ECSP\-PRO\-E\_UOCSP\-PRO\-INV\-VR |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




