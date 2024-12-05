# Hércules : IU\-CSP\-0306\-003 \- Modificar solicitud \- Tutor/a \- Unidad de gestión



## Formulario Modificar solicitud \- Tutor/a \- Unidad de gestión

Formulario de modificación de solicitud de RRHH, apartado Tutor/a, para ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador, independientemente de si la solicitud hubiera sido creada por el propio solicitante o por la unidad de gestión.  


  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Este apartado "Tutor" y, en general, todo del bloque "Datos solicitudes RRHH" solamente se hará visible cuando el campo "formulario solicitud" de la tabla "solicitud" toma valor "RRHH" | | |
| Seleccione tutor/a del trabajo | ReferenciaTextoObligatorio | Nombre del investigador que hará el trabajo de ser tutor/a del solicitante de la solicitud. Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia almacenada en el campo "tutor ref" de la tabla "solicitud RRHH".Para modificar el valor se hará uso del buscador común de personas [IU\-GEN\-0060 \- Búsqueda de personas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"), resuelto por medio del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos"). Las condiciones de invocación a este buscador se especifican en la tabla de acciones. |
| Nombre | TextoConsulta | Campo "nombre" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "tutor ref" de la tabla "solicitud RRHH". |
| Apellidos | TextoConsulta | Campo "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "tutor ref" de la tabla "solicitud RRHH". |
| Categoría | TextoConsulta | Campo "nombre" de la entidad "tipo documento" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "solicitanteRef" de la tabla "solicitud". |
| Departamento | TextoConsulta | Campo "número documento" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "solicitanteRef" de la tabla "solicitud". |
| Centro | TextoConsulta | Campo "nombre" de la "sexo" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referenciada indicada en el campo "solicitanteRef" de la tabla "solicitud". |
| Teléfonos | | |
| Teléfono | TextoConsulta | Campo "telefonos" recuperado a través de [REQ\-INT\-0020\-SGP\-0032 \- Consultar datos de contacto de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0032-consultar-datos-de-contacto-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0032-consultar-datos-de-contacto-de-persona.md") para la referenciada indicada en el campo "tutor ref" de la tabla "solicitud RRHH".Cada elemento de la lista de "telefonos" se dibuja en una fila de la tabla. |
| E\-mails | | |
| E\-mail | TextoConsulta | Campo "emails" recuperado a través de [REQ\-INT\-0020\-SGP\-0032 \- Consultar datos de contacto de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0032-consultar-datos-de-contacto-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0032-consultar-datos-de-contacto-de-persona.md") para la referenciada indicada en el campo "tutor ref" de la tabla "solicitud RRHH".Cada elemento de la lista de "emails" se dibuja en una fila de la tabla. |
|  | | |
| Mensaje informativo | Texto largo | Este mensaje solo se mostrará si la solicitud se encuentra en estado borrador (campo "estado" de la tabla "solicitud").Se mostrará con los estilos de aviso informativo el siguiente mensaje "Para que la solicitud pueda ser validad por su tutor/a debe cambiar el estado de la misma a "Solicitada"". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (Tutor/a) | Muestra la pantalla de búsqueda para seleccionar el tutor/a. | Se hará uso del buscador común de personas [IU\-GEN\-0060 \- Búsqueda de personas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"), resuelto por medio del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos"). Se le deberá pasar a este buscador el tipo de colectivo "tutor csp". | No se necesita permiso adicional para realizar esta búsqueda |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar la solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todos los apartados de definición de la solicitud. | El campo "tutor/a" es obligatorioVer precondiciones en [CU\-CSP\-1100\-001 Modificar solicitud \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md"). | CSP\-SOL\-INV\-ERCSP\-SOL\-ECSP\-SOL\-E\_UO |
| Cancelar | Retorna al listado de Solicitud sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




