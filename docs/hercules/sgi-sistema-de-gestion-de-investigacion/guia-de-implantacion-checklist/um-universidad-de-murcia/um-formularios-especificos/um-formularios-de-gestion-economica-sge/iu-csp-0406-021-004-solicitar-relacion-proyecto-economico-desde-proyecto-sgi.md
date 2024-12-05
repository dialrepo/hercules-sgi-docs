# Hércules : IU\-CSP\-0406\-021\-004\- Solicitar relación proyecto económico desde Proyecto SGI







## Formulario de datos generales de solicitud de relación con proyecto económico

Pantalla que muestra el formulario de datos generales para la solicitud de relación con un proyecto económico (cuando el proyecto SGE ya existe en el Sistema de gestión económica y se quiere asignarle otro proyecto SGI)

Se abrirá en una ventana emergente o popup desde el popup de búsqueda de proyectos económicos [IU\-CSP\-0406\-019\-001 \- Búsqueda de proyectos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md")



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Identificador proyecto SGI | TextoObligatorio | Es el identificador interno del proyecto del SGI (se obtiene del campo "id" de la tabla "Proyecto")Modo consulta |
| Identificador proyecto SGE | TextoObligatorio | Es el identificador del  proyecto SGE (el que se ha seleccionado en el resultado de la búsqueda)Modo consulta |
| Título del proyecto | TextoObligatorio | Título del proyecto (se obtiene del campo "titulo" de la tabla "Proyecto")Modo consulta |
| Fecha inicio | Fecha (con hora)Obligatorio | Fecha de inicio del proyecto (se obtiene del campo "fechaInicio" de la tabla "Proyecto")Modo consulta |
| Fecha fin | Fecha (con hora)Obligatorio | Fecha de finalización del proyecto (se obtiene del campo "fechaFin" de la tabla "Proyecto")Modo consulta |
| Identificador número de documento del responsable | TextoOpcional | Identificador número de documento del responsable económico actual. * Se corresponde con el  "persona ref" de la  tabla "proyecto responsable económico"  de forma que se cumpla que la fecha actual esté comprendida en el rango de las fechas recogidas en los campos "fecha inicio" y "fecha fin" de la tabla. Si no existe un registro que cumpla esta condición: * Se tomará el "persona ref" de la  tabla "proyecto equipo"  que cumpla las dos condiciones siguientes: 	+ El campo "rol proyecto" de la  tabla "proyecto equipo" deberá estar marcado con el flag "rol principal" a "true" y el campo "orden" a "primario" en la tabla "rol proyecto" 	+ La fecha actual debe estar contenida en el rango delimitado por los campos "fecha inicio" (mayor o igual) y "fecha fin" (menor o igual) de la tabla "proyecto equipo" |
| Modelo de ejecución | TextoObligatorio | Modelo de ejecución del proyecto  (se obtiene del campo "modeloEjecucion" de la tabla "Proyecto")Modo consulta |
| Tipo de finalidad | TextoObligatorio | Tipo de finalidad del proyecto  (se obtiene del campo "finalidad" de la tabla "Proyecto")Modo consulta |
| Importe total previsto de gastos | DecimalOpcional | El valor puede ser obtenido de distintos campos origen, en función de cual de ellos sea el primero que se obtenga informado. Debe seguirse el orden indicado a continuación:1\) Campo importe presupuesto Universidad de la pantalla Configuración económica \- Presupuesto (campo "importe presupuesto" de la tabla "Proyecto").2\) Si el proyecto tiene una solicitud asociada (campo "solicitud" de la tabla "proyecto" está informado) se cogerá el valor del campo importe presupuestado Universidad de la pantalla Presupuesto de la solicitud (campo "importe presupuestado" de la tabla "solicitud proyecto" para la solicitud referenciada desde el campo "solicitud" de la tabla "proyecto").3\) Si el proyecto tiene una solicitud asociada (campo "solicitud" de la tabla "proyecto" está informado) se obtendrá la suma del importe presupuestado para todos los conceptos de gasto en los que se desglosa el presupuesto de la solicitud (suma del campo "importe presupuestado" de todos los registros de la tabla "solicitud proyecto presupuesto" para la solicitud referenciada desde el campo "solicitud" de la tabla "proyecto")4\) Si no se puede obtener un valor a través de ninguna de las opciones anteriores, el campo se mostrará sin valor.El campo es editable y se puede modificar su valor. |
| Importe total previsto de ingresos | DecimalOpcional | Se inicializará con el mismo valor que el campo "Importe total previsto de gastos".El campo es editable y se puede modificar su valor. |
| % IVA | Decimal (porcentaje)Opcional | Campo porcentaje IVA (se obtiene del campo "iva"  de la entidad "Proyecto IVA" para el registro de esta tabla referenciado desde el campo "iva" de la tabla "Proyecto"). |
| Causa exención | TextoSelector | Causa de exención del IVA (se obtiene del campo "causa exención" de la tabla "proyecto"). |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Solicitar relación | Se solicita la relación con el proyecto económico SGEA partir de los datos introducidos se invocará al servicio de integración del ESB que resolverá la solicitud de relación con un proyecto económico [REQ\-INT\-0010\-SGE\-0083 \- Solicitar relación con un proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0083-solicitar-relacion-con-un-proyecto-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0083-solicitar-relacion-con-un-proyecto-economico.md") |  | ESB\-PRO\-C |
| Cancelar | No se realiza ninguna operación y se cierra el popup dejando al usuario en el popup de búsqueda de proyectos [IU\-CSP\-0406\-019\-001 \- Búsqueda de proyectos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md") |  |  |

### Interfaces y casos de uso relacionados



















### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso







