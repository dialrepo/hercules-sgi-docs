# Hércules : IU\-CSP\-0406\-011 \- Modificar proyecto \- Socios



## Formulario Modificar proyecto \- Socios

Formulario que permitirá indicar los socios que colaborarán en el desarrollo en el proyecto.

Si en la pantalla de "Ficha general" en el campo "Proyecto coordinado" tiene el valor "No" no se podrán añadir socios. Se mostrará un mensaje que indique "En la Ficha general del proyecto se ha indicado que el proyecto no es coordinado, por lo que no existirán socios en el proyecto."



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de socios colaboradores del proyecto. Se obtiene de la tabla "proyecto socio".Si el campo "coordinador externo" de la tabla "proyecto" toma valor "true" se realizará  la comprobación verificando que se haya indicado el socio coordinador. Para ello deberá cumplirse que uno de los socios tenga un rol (campo "rol socio") que esté configurado con la característica de coordinador (campo "coordinador" de la tabla "rol socio" a true"). En caso contrario se mostrará un mensaje informativo en la cabecera de esta página "No se ha indicado el socio que actuará como coordinador del proyecto.Verifique el rol de cada socio.". | | |
| Identificador fiscal | Texto corto | Número de identificación fiscal del socio de proyecto, recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). La entidad para la que se debe obtener el dato se obtiene del campo "empresa ref." de la tabla "proyecto socio". |
| Nombre | Texto | Nombre  del socio, recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). La entidad para la que se debe obtener el dato se obtiene del campo "empresa ref." de la tabla "proyecto socio". |
| Rol | Texto corto | Rol con el que participará el socio.Se mostrará el nombre del rol, que se obtendrá del campo "nombre" de la tabla "Rol socio" a partir de la referencia establecida desde el campo "rol socio" de la tabla "proyecto socio". |
| Núm. investigadores | Numérico entero genérico | Número de investigadores que forman parte del equipo del socio. Se corresponde con el campo "num. investigadores" de la tabla "proyecto socio". |
| Fecha inicio participación | Fecha | Fecha de inicio de la colaboración del socio en el proyectoSe corresponde con el campo "fecha inicio" de la tabla "proyecto socio". |
| Fecha fin participación | Fecha | Fecha de fin de la colaboración del socio en el proyecto.Se corresponde con el campo "fecha fin" de la tabla "proyecto socio". |
| Importe presupuesto | Económico | Importe del presupuesto disponible por el socio para el desarrollo de su parte del proyecto.Se corresponde con el campo "importe presupuesto" de la tabla "proyecto socio". |
| Importe concedido | Económico | Importe  concedido que le corresponde al socio para el desarrollo de su parte del proyecto.Se corresponde con el campo "importe concedido" de la tabla "proyecto socio". |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Produce un cambio de contexto al socio colaborador seleccionado del listado de socios | Se resuelve con la pantalla [IU\-CSP\-0406\-011\-001 \- Modificar proyecto \- Añadir\-modificar socio \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-001-modificar-proyecto-anadir-modificar-socio-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-001-modificar-proyecto-anadir-modificar-socio-datos-generales.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el socio del proyecto | Se elimina el socio del listado. Antes de eliminar sacar pantalla de confirmación de eliminación.Si hay registros en las tablas  "proyecto socio equipo", "proyecto socio periodo pago" ,"socio periodo justificación documento" y/o "proyecto socio periodo justificación"  del socio que se desea eliminar, mostrar en el propio mensaje de confirmación de la acción de eliminar el siguiente texto: "Existe información de detalle vinculada a este socio, ¿desea continuar?".Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir nuevo socio | Produce un cambio de contexto y muestra la pantalla "Añadir nuevo socio" | Muestra la pantalla [IU\-CSP\-0406\-011\-001 \- Modificar proyecto \- Añadir\-modificar socio \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-001-modificar-proyecto-anadir-modificar-socio-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-001-modificar-proyecto-anadir-modificar-socio-datos-generales.md").Si el campo "coordinador externo" de la tabla "proyecto" toma valor "true":* Se comprobará  que uno de los socios tenga un rol (campo "rol socio") que esté configurado con la característica de coordinador (campo "coordinador" de la tabla "rol socio" a true"). En caso contrario se mostrará un mensaje informativo en la cabecera de esta página "No se ha indicado el socio que actuará como coordinador del proyecto.Verifique el rol de cada socio.".  Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | En caso de que se elimine un registro, se realizará un borrado físico del registro en la tabla "proyecto socio". Se eliminarán en cascada los miembros del equipo, los periodos de pago y los periodos de justificación (incluidos los documentos) de la tablas "proyecto  socio equipo", "proyecto socio periodo pago" y "socio periodo justificación documento" y "proyecto socio periodo justificación" respectivamente, vinculados al socio colaborador.Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




