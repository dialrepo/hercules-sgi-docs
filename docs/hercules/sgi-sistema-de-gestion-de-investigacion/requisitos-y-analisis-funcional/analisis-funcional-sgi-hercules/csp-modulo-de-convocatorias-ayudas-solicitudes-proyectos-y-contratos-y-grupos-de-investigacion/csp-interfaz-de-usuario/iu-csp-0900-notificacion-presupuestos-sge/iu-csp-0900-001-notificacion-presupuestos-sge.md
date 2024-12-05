# Hércules : IU\-CSP\-0900\-001 \- Notificación presupuestos SGE



## Formulario Notificación presupuestos SGE

Pantalla que muestra el formulario de búsqueda, que permite aplicar filtros sobre los presupuestos de los proyectos a enviar al SGE. Se notificarán al SGE las partidas de gastos e ingresos definidas en los presupuestos de los proyectos seleccionados.

Los resultados devueltos además de los filtros aplicados dependerán siempre de la Unidad de gestión a la que se hubiera vinculado el proyecto.

Automáticamente, el SGI siempre aplicará el filtro de la unidad de gestión, de forma que un usuario solo podrá acceder al presupuesto de los proyectos de las unidades de gestión a las que esté vinculado con alguno de los roles  ACT\-CSP\-003\-Gestor o  ACT\-CSP\-004\-Administrador y el filtro sobre las anualidades de los presupuestos en los que se ha  marcado el check de presupuestar, es decir, sobre aquellas anualidades que si se quieren enviar al SGE.

  


  




|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Formulario de búsqueda.  La búsqueda se hará sobre la tabla "proyecto anualidad" y llevará implícito los siguientes filtros:* el filtro por las unidades de gestión a las que esté asociado ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador de forma que el proyecto deba estar vinculado a una de las unidades de gestión del usuario (campo "unidad de gestión" de la tabla "proyecto"). * el filtro por el campo "presupuestar" a true de la tabla "proyecto anualidad" | | | |
| Anualidad | | Número enteroObligatorio | Campo para introducir la anualidad por la que se aplicará el filtro de búsqueda sobre el campo "anualidad" de la tabla "proyecto anualidad" |
| Título de proyecto | | TextoOpcional | Campo para introducir la cadena de texto por la que se aplicará el filtro de búsqueda sobre el campo "título" de la tabla "proyecto" |
| Estado | | SelectorTextoOpcional | Listado con los valores del enumerado "Tipo estado proyecto":* Borrador * Concedido * Renunciado * Rescindido |
| Número identificación SGE | | Texto Opcional | Identificador del proyecto en el SGE (Sistema de Gestión Económica). Aplicará sobre el campo "proyectoSGERef" de la tabla "Proyecto proyecto SGE" |
| Fecha de inicio | Desde | Intervalo de FechasOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar la fecha de inicio del proyecto. Aplicará sobre el campo "fecha inicio" de la tabla "Proyecto" |
| Hasta |
| Fecha fin | Desde | Intervalo de FechasOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar la fecha de fin del proyecto. Aplicará sobre el campo "fecha fin" de la tabla "Proyecto" |
| Hasta |
| Buscar | | Botón | Acción "Buscar" |
| Limpiar | | Enlace | Acción "Limpiar" |
| Listado de anualidades de proyectos que cumplen las condiciones indicadas en el filtro y además están asociados a una de las unidades de gestión a las que está vinculado el ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador y el campo "presupuestar" este a "true". El listado se recuperará a partir de la tabla "proyecto anualidad". | | | |
| Seleccionar | |  | Columna para seleccionar el presupuesto a enviar al SGE.En la cabecera de la tabla se dispondrá de un check que permita seleccionar/des\-seleccionar de manera simultanea todos los check de las filas individuales. Para cada proyecto listado, si el campo "enviado SGE" de la tabla "Proyecto Anualidad" tiene valor "true" la opción de selección individual estará deshabilitada.Si se selecciona el check múltiple de la cabecera, no se incluirán en la selección aquellas filas (proyectos) que ya se hayan enviado al SGE, es decir, aquellos proyectos que dispongan del campo "enviado SGE" de la tabla "Proyecto Anualidad" a valor "true". |
| Título proyecto | | Texto | Título del proyecto, recuperado del campo "título" de la tabla "proyecto" |
| Acrónimo | | Texto corto | Acrónimo del proyecto, recuperado del campo "acrónimo" de la tabla "proyecto" |
| Fecha inicio | | Fecha | Fecha de inicio del proyecto, recuperado del campo "fecha inicio" de la tabla "proyecto" |
| Fecha fin | | Fecha | Fecha de finalización del proyecto, recuperado del campo "fecha fin" de la tabla "proyecto" |
| Estado proyecto | | Texto corto | Estado del proyecto. Nombre del estado actual del proyecto, recuperado del enumerado "Tipo estado proyecto" marcado en la tabla "Estado proyecto" desde la referencia establecida por el campo "estado" de la tabla "Proyecto" |
| Identificación SGE | | Texto corto | Identificador del proyecto en el SGE (Sistema de Gestión Económica), recuperado del campo "proyectoSGERef" de la tabla "Proyecto proyecto SGE" |
| Anualidad | | Número entero | Anualidad del proyecto, recuperado del campo "anualidad" de la tabla "proyecto anualidad"En los casos de que el desglose del presupuesto en el SGI no se haga por anualidades, este campo se mostrará vacío. |
| Total gastos | | Económico | Campo calculado. Sumatorio del campo importe concedido de los gastos registrados en la anualidad (suma del campo "importe concedido" de la tabla "anualidad gasto" para el proyecto y anualidad concreta). |
| Total ingresos | | Económico | Campo calculado. Sumatorio del campo importe concedido de todos los ingresos registrados en la anualidad (suma del campo "importe concedido" de la tabla "anualidad ingreso" para el proyecto y anualidad concreta). |
| Enviado al SGE | | Boolean | Sacar el valor del campo "enviadoSGE" de la tabla "ProyectoAnualidad"  (valores Sí/No) |
| Ver presupuesto anualidad | | Icono de acción | Acción "Ver presupuesto anualidad" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver presupuesto anualidad | Acceso a la información detallada del presupuesto de la anualidad seleccionada | Produce un cambio de contexto al presupuesto de la anualidad de la fila seleccionada.Muestra la pantalla [IU\-CSP\-0406\-025\-001 \- Modificar proyecto \- Configuración económica \- Presupuesto \- Anualidad \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-025-modificar-proyecto-configuracion-economica-presupuesto/iu-csp-0406-025-001-modificar-proyecto-configuracion-economica-presupuesto-anualidad-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-025-modificar-proyecto-configuracion-economica-presupuesto/iu-csp-0406-025-001-modificar-proyecto-configuracion-economica-presupuesto-anualidad-datos-generales.md") | CSP\-EJEC\-ECSP\-EJEC\-E\_UO |
| Buscar | Aplica los filtros introducidos sobre la lista de anualidades de proyectos mostrando los que cumplen las condiciones | La búsqueda se realizará aplicando los filtros sobre la tabla "Proyecto" y "Proyecto anualidad". | CSP\-EJEC\-ECSP\-EJEC\-E\_UO |
| Enviar al SGE | Realiza la llamada al servicio de integración correspondiente (ESB del SGE) | Se mostrará una mensaje de confirmación con el mensaje "Se enviará la notificación de presupuestos al Sistema de gestión económica ¿desea continuar?"Sólo si la respuesta es afirmativa se continuará con las acciones:* Por cada anualidad seleccionada se recuperarán sus partidas de gastos e ingresos y se llamará al servicio del API. En los casos de que el desglose del presupuesto en el SGI no se haga por anualidades, se enviará la anualidad del año de inicio del proyecto. * Se producirá una notificación al SGE a través del requisito de integración [REQ\-INT\-0010\-SGE\-0090 \- Notificar presupuesto de proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0090-notificar-presupuesto-de-proyecto-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0090-notificar-presupuesto-de-proyecto-economico.md"). El importe que se debe de notificar al SGE es el importe concedido de cada una de las partidas presupuestarias de las anualidades seleccionadas. * Si la llamada al API ha sigo correcta, se actualizará el campo "enviado SGE" de la tabla "proyecto anualidad" de cada proyecto/anualidad seleccionada. | CSP\-EJEC\-ECSP\-EJEC\-E\_UO |
| Limpiar | Limpia los filtros de búsqueda. | Se vacían todos los valores establecidos en los campos del formulario de búsqueda |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




