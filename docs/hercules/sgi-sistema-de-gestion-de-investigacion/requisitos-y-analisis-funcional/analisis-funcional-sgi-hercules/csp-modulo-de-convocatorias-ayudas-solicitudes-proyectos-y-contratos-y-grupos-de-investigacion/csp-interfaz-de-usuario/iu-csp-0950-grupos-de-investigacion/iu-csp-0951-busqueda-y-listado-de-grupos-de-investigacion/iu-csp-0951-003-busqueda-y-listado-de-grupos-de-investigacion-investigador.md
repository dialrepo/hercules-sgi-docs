# Hércules : IU\-CSP\-0951\-003 \- Búsqueda y listado de grupos de investigación \- Investigador



## Formulario Búsqueda y listado de grupos de investigación \- Investigador

Formulario que muestra los filtros que se pueden establecer para realizar una búsqueda con filtros sobre los grupos de investigación para los que el ACT\-CSP\-001\-Investigador figura en miembro del equipo, sea una persona autorizada o el responsable económico.

  




|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Formulario de búsqueda de grupos de investigación. De manera implícita esta búsqueda llevará establecido un filtro que limite los grupos a los activos (campo "activo" a "true") y un filtro que establezca que ACT\-CSP\-001\-Investigador deba figurar como miembro del equipo del grupo ( exista en la tabla "grupo equipo"), sea una persona autorizada ( exista en la tabla "grupo persona autorizada" en la fecha actual) o sea un responsable económico (exista en la tabla "grupo responsable económico" en la fecha actual) | | | |
| Nombre | | Texto largoOpcional | Campo para introducir la cadena de texto por la que se aplicará la búsqueda sobre el campo "nombre" de la tabla "grupo" |
| Código | | Texto cortoOpcional | Código alfanumérico generado automáticamente por el SGI al crear el grupo (aunque puede ser modificado por el ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador.)Filtro a aplicar sobre el campo "código" de la tabla "grupo". |
| Código identificación SGE | | Texto cortoOpcional | Código de identificación del proyecto económico del SGE con el que se vincula el grupo de investigación SGI. Podrá ser alfanumérico.Filtro a aplicar sobre el campo "proyecto SGE ref" de la tabla "grupo". |
| Buscar | | Botón | Acción "Buscar" |
| Limpiar | | Enlace | Acción "Limpiar" |
| Listado de grupos de investigación que cumplen las condiciones indicadas en el filtro. La tabla de resultados se mostrada ordenada por defecto por ID interno, en orden de mayor a menor. | | | |
| Nombre | | Texto largo | Nombre del grupo de investigación.Se corresponde con el campo "nombre" de la tabla "grupo". |
| Investigador/a principal | | Texto | Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") del investigador/a principal, es decir, de todos los miembros del grupo de investigación (tabla "grupo equipo") aquel que **actualmente** (a fecha actual) tiene el "rol" con el flag "principal" a true. En caso de existir mas de una persona, se mostrará el que tenga el mayor porcentaje de dedicación al grupo (campo "participación" de la tabla "grupo equipo"). Y en caso de coincidir se mostrarán separados por coma. |
| Código | | Texto corto | Código del grupo de investigaciónSe corresponde con el campo "código" de la tabla "grupo". |
| Fecha inicio | | Fecha | Fecha de inicio del grupo de investigación. Campo "fecha inicio"  de la tabla "grupo". |
| Fecha fin | | Fecha | Fecha de finalización del grupo de investigación. Campo "fecha fin"  de la tabla "grupo". |
| Tipo grupo | | Texto corto | Nombre del Tipo de grupo actual, extraído del enumerado "Tipo grupo" de la tabla "Grupo tipo", a partir del campo "tipo" de la tabla "grupo" |
| Ver | | Icono de acción | Acción "Ver" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Formulario de búsqueda | | | |
| Buscar | Realiza la búsqueda | Se deben aplicar todos los filtros introducidos y los siguientes filtro implícitos:* Grupo con campo "activo" a "true" * ACT\-CSP\-001\-Investigador debe pertenecer al equipo del grupo sin tener en cuenta las fechas de participación. El campo "persona ref" asociado a ACT\-CSP\-001\-Investigador debe figurar en la tabla "grupo equipo" o sea una persona autorizada ( exista en la tabla "grupo persona autorizada" en la fecha actual) o sea un responsable económico (exista en la tabla "grupo responsable económico" en la fecha actual)  Cada uno de los campos de filtrado aplicará de acuerdo a lo establecido a nivel individual. Todos los filtros aplicarán entre sí como una condición "y". | CSP\-GIN\-INV\-VR |
| Limpiar | Se limpia el formulario de búsqueda | Vacía el valor de cualquiera de campo del formulario |  |
| Listado de grupos de investigación que cumplen las condiciones indicadas en el filtro. | | | |
| Ver | Ver el detalle del grupo en modo "solo lectura" | Da acceso al detalle del grupo, en modo solo lectura, cargando el apartado inicial [IU\-CSP\-0953\-001 \- Modificar\-consultar grupo investigación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-001-modificar-consultar-grupo-investigacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-001-modificar-consultar-grupo-investigacion-datos-generales.md") | CSP\-GIN\-INV\-VR |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




