# Hércules : IU\-CSP\-0306\-007 \- Modificar solicitud \- Memoria



## Formulario Modificar solicitud \- Memoria

Formulario de modificación de solicitud de RRHH, apartado Memoria, para todos los perfiles:  ACT\-CSP\-001\-Investigador, ACT\-CSP\-002\-InvestigadorExterno (usuario externo) o para los perfiles propios de la unidad de gestión (ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador)  


 ACT\-CSP\-001\-Investigador y ACT\-CSP\-002\-InveestigadorExterno únicamente podrá modificar la solicitud mientras ésta se encuentre en estado "**Borrador**" y "**Rechazada**"

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Este apartado "Memoria" y, en general, todo del bloque "Datos solicitudes RRHH" solamente se hará visible cuando el campo "formulario solicitud" de la tabla "solicitud" toma valor "RRHH" | | |
| Título del trabajo | TextoObligatorio | Título del trabajo que se propone desarrollar. Deberá ser un alfanumérico de 1000 caracteres.Campo "título trabajo" de la tabla "solicitud RRHH". |
| Resumen | Texto largoObligatorio | Resumen del trabajo con el que se opta a la solicitud. Deberá ser un alfanumérico de 4000 caracteres.Campo "resumen" de la tabla "solicitud RRHH" |
| Observaciones | Texto largoOpcional | Observaciones del trabajo presentado por el solicitante.Campo "observaciones" de la tabla "solicitud RRHH" |
| Mensaje informativo | Texto largo | Este mensaje solo se mostrará si la solicitud se encuentra en estado borrador (campo "estado" de la tabla "solicitud").Se mostrará con los estilos de aviso informativo el siguiente mensaje "Para que la solicitud pueda ser validad por su tutor/a debe cambiar el estado de la misma a "Solicitada"". |

  


### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar la solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todos los apartados de definición de la solicitud. | Los campos "Título del trabajo" y "Resumen" son obligatoriosVer precondiciones en [CU\-CSP\-1100\-001 Modificar solicitud \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md"). | CSP\-SOL\-INV\-ERCSP\-SOL\-ECSP\-SOL\-E\_UO |
| Cancelar | Retorna al listado de Solicitud sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




