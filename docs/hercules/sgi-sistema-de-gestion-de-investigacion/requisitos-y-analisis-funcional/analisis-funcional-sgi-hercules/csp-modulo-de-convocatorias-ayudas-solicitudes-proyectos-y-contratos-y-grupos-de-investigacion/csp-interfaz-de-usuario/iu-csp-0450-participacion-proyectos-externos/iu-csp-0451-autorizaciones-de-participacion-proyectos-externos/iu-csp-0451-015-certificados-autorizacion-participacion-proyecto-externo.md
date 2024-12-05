# Hércules : IU\-CSP\-0451\-015 \- Certificados autorización participación proyecto externo



## Formulario Certificados autorización participación proyecto externo

Formulario que muestra el listado con los documentos que certifican la autorización para la participación en el proyecto externo. Se podrán generar tantos documentos como se desee pero sólo uno podrá estar marcado como público. 



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de certificados generados para la solicitud de autorización de participación en proyecto externo (tabla "certificado autorización"). | | |
| Nombre | Texto | Nombre del certificado.Se corresponde con el campo "nombre" de la tabla "certificado autorización". |
| Público | Booleano | Indicador de si el certificado se ha marcado como público. El certificado marcado como "público" será el que pueda ser descargado por el ACT\-CSP\-001\-Investigador solicitante.Se corresponde con el campo "visible" de la tabla "certificado autorización". |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |
| Descargar | Icono de acción | Acción decargar |

### Acciones



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Permite modificar los datos del documento. | Muestra la pantalla [IU\-CSP\-0451\-016 \- Añadir\-modificar certificado autorización participación proyecto externo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-016-anadir-modificar-certificado-autorizacion-participacion-proyecto-externo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-016-anadir-modificar-certificado-autorizacion-participacion-proyecto-externo.md") | CSP\-AUT\-E |
| Eliminar | Permite eliminar el documento. | Se elimina el registro correspondiente de la tabla "certificado autorización". | CSP\-AUT\-E |
| Descargar | Permite descargar el documento. | Se realiza la descarga del documento a la unidad de disco local. | CSP\-AUT\-E |
| Añadir certificado | Permite añadir un nuevo documento certificado. | Este botón solo estará disponible si el estado de la solicitud de autorización es "autorizada" (el campo "estado" de la tabla "autorización" referencia a un registro de la tabla "estado autorización" cuyo campo "estado" toma el valor "autorizada"  sobre el enumerado "tipo estado autorización").Muestra la pantalla [IU\-CSP\-0451\-016 \- Añadir\-modificar certificado autorización participación proyecto externo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-016-anadir-modificar-certificado-autorizacion-participacion-proyecto-externo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-016-anadir-modificar-certificado-autorizacion-participacion-proyecto-externo.md") | CSP\-AUT\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Realiza la operación de guardado sobre la autorización afectando a todos los apartados de la misma en los que se haya realizado la modificación de algún dato | Se actualiza el registro correspondiente sobre la tabla "autorización".Se comprobará que solo un certificado esté marcado como "público": la solicitud de autorización solo puede tener un registro en la tabla "certificado autorización" con el campo "visible" a "true".Al guardar los cambios, se ha de tener en cuenta que se podrá generar en algunos casos un comunicado según se describe en el apartado [Comunicados](#IUCSP0451015Certificadosautorizaciónparticipaciónproyectoexterno-comunicados "#IUCSP0451015Certificadosautorizaciónparticipaciónproyectoexterno-comunicados"). | CSP\-AUT\-E |
| Cancelar | Retorna a la pantalla de Datos generales de la autorización. |  |  |

### Comunicados

Al marcar un certificado como "público", que previamente no lo era, por parte del usuario gestor o administrador, se creará la entrada correspondiente en el módulo de comunicados para avisar al investigador solicitante de la autorización de participación en un proyecto externo de que ya tiene disponible el certificado de autorización de participación en dicho proyecto.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Añadir\-modificar certificado autorización participación proyecto externo** dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




