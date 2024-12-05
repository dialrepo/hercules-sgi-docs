# Hércules : IU\-GEN\-0050 \- Búsqueda de convocatorias







## Formulario de búsqueda de convocatorias

Pantalla emergente que muestra un formulario que, mediante unos filtros de búsqueda, muestra un listado de las convocatorias registradas



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Título | Texto (1000 caracteres)Opcional | Campo para introducir la cadena de texto por la que se aplicará la búsqueda sobre el campo título" de la tabla "Convocatoria". |
| Identificación | TextoOpcional | Código identificativo o referencia de la convocatoria. Campo "código" de la tabla "convocatoria" (que no es el identificador único interno de la tabla). |
| Fecha publicación desdeFecha publicación hasta | FechaOpcional | Los valores introducidos en estos campos se aplicarán como rango de búsqueda  sobre la fecha de publicación de la convocatoria (campo "fecha publicación" de la tabla "convocatoria"), de forma que ésta deba estar comprendida entre los valores indicados. |
| Abierto plazo de presentación de solicitudes | CheckBooleanoValores: Abierto plazo de presentación de solicitudes / Cerrado plazo de presentación de solicitudes | Indica si está abierto el plazo de presentación de las solicitudes. Es decir, si la fecha actual está comprendida entre las fechas de inicio y fin de presentación de solicitudes, campos de la tabla "Configuración solicitud". |
| Listado de Convocatorias | | |
| Título | Texto (1000 caracteres) | Titulo de la convocatoria. Campo "título" de la tabla "convocatoria". Es un alfanumérico de 1000 caracteres. |
| Identificación | Texto | Código de identificación o referencia (interna o externa) de la convocatoria. Campo "código" de la tabla "convocatoria". |
| Fecha inicio de solicitud | Fecha | Campo fecha inicio de presentación de solicitudes del apartado "configuración solicitud" de la convocatoria. |
| Fecha fin de solicitud | Fecha | Campo fecha fin de presentación de solicitudes del apartado "configuración solicitud" de la convocatoria. |
| Entidad convocante | Texto | Nombre de la Entidad convocante. Si la convocatoria tiene más de una entidad convocante se mostrará solo una.Las entidades convocantes de la convocatoria se recuperarán de la tabla "convocatoria entidad convocante". Si la convocatoria tiene más de una entidad convocante se recuperará la primera. Para la entidad recuperada, se obtendrá su nombre a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| Plan investigación | Texto | Nombre del plan de investigación que tenga asociada la entidad convocante mostrada. Se deberá recuperar, en la tabla "programa", el nodo raíz (aquel cuyo campo "padre" tome valor "null") para el programa especificado en la tabla "convocatoria entidad convocante" (campo "programa") asociado a la entidad mostrada en el campo anterior. Se mostrará el nombre (campo "nombre") de este nodo raíz. |
| Entidad financiadora | Texto | Nombre de la Entidad financiadora. Si la Convocatoria tiene más una entidad financiadora se mostrará solo una de ellas.Las entidades financiadoras de la convocatoria se recuperarán de la tabla "convocatoria entidad financiadora". Si la convocatoria tiene más de una entidad financiadora se recuperará la primera. Para la entidad recuperada, se obtendrá su nombre a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| Fuente financiación | Texto | Nombre de la fuente de financiación que tenga asociada la entidad financiadora mostrada.Se mostrará el campo "nombre" de la tabla "fuente financiación" a partir del campo "fuente financiación" de la tabla "convocatoria entidad financiadora" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Invoca a la función de búsqueda de convocatorias aplicando los filtros introducidos y muestra el listado de resultados. | Se aplicarán los filtros recogidos en el formulario y los siguientes filtros implícitos:Para ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\- Administrador:* Filtro por unidad de gestión, de forma que, la lista de unidades de gestión por las que, adicionalmente, se han de filtrar las convocatorias, deberá venir informada desde el formulario que invoca a este formulario de búsqueda de convocatorias. * Campo "activo" de la tabla "convocatoria" deberá tomar valor "true". * Estado de la convocatoria deberá ser "registrada": campo "estado" de la tabla "convocatoria" debe tomar valor "registrada".  Para ACT\-CSP\-001\-Investigador:* Campo "activo" de la tabla "convocatoria" deberá tomar valor "true". * Estado de la convocatoria deberá ser "registrada": campo "estado" de la tabla "convocatoria" debe tomar valor "registrada". * Campo "tramitación  SGI" de la tabla "configuración solicitud" deberá tomar el valor "true"  Ver [CSP\-CON \- Servicios API](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-csp/csp-con-convocatorias/csp-con-servicios-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-csp/csp-con-convocatorias/csp-con-servicios-api.md") donde se describe a más bajo nivel el servicio indicado. | No se necesita permiso, cualquier usuario que haya podido acceder puede realizar la búsqueda. |
| Seleccionar | Selecciona la convocatoria del listado. | Tras seleccionar una convocatoria, se devuelve la misma al módulo que invoca al buscador y se cierra el buscador. |  |

### Interfaces y casos de uso relacionados





















### Permisos







