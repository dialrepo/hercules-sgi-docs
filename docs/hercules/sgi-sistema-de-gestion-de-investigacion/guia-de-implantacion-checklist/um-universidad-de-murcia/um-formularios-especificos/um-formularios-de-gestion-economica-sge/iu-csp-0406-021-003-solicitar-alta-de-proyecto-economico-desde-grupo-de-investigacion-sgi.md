# Hércules : IU\-CSP\-0406\-021\-003\- Solicitar alta de proyecto económico desde Grupo de investigación SGI







## Formulario de datos generales de solicitud de alta de proyecto económico

Pantalla que muestra el formulario de datos generales para la solicitud de alta de un proyecto económico a partir de los datos de un grupo de investigación.

Se abrirá en una ventana emergente o popup desde el popup de búsqueda de proyectos económicos [IU\-CSP\-0406\-019\-001 \- Búsqueda de proyectos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md")



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Identificador grupo SGI | TextoObligatorio | Es el identificador interno del grupo del SGI (se obtiene del campo "id" de la tabla "grupo investigación")Modo consulta |
| Título del proyecto | TextoObligatorio | Nombre del grupo del grupo (se obtiene del campo "nombre" de la tabla "grupo investigación")Modo consulta |
| Fecha inicio | Fecha (con hora)Obligatorio | Fecha de inicio del grupo (se obtiene del campo "fecha inicio" de la tabla "grupo investigación")Modo consulta |
| Fecha fin | Fecha (con hora)Obligatorio | Fecha de finalización del grupo (se obtiene del campo "fecha fin" de la tabla "grupo investigación")Modo consulta |
| Identificador número de documento del responsable | TextoOpcional | Identificador número de documento del responsable económico actual. * Se corresponde con el  "persona ref" de la  tabla "grupo responsable económico"  de forma que se cumpla que la fecha actual esté comprendida en el rango de las fechas recogidas en los campos "fecha inicio" y "fecha fin" de la tabla. Si no existe un registro que cumpla esta condición: * Se tomará el "persona ref" de la  tabla "grupo equipo"  que cumpla las dos condiciones siguientes: 	+ El campo "rol" de la  tabla "grupo equipo" deberá estar marcado con el flag "rol principal" a "true" y el campo "orden" a "primario" en la tabla "rol proyecto" 	+ La fecha actual debe estar contenida en el rango delimitado por los campos "fecha inicio" (mayor o igual) y "fecha fin" (menor o igual) de la tabla "grupo equipo" |
| Modelo de ejecución | TextoObligatorio | Modelo de ejecución del proyecto  (se podrá el que corresponde con "Recursos propios", el id 3 )Modo consulta |
| Tipo de finalidad | TextoObligatorio | Tipo de finalidad del proyecto  (se podrá el que corresponde con "Grupo de investigación o proyecto de fondos propios", el id 17 )Modo consulta |
| Importe total previsto de gastos | DecimalOpcional | Estará vacío el campo.El campo es editable y se puede modificar su valor. |
| Importe total previsto de ingresos | DecimalOpcional | Estará vacío el campo.El campo es editable y se puede modificar su valor. |
| % IVA | Decimal (porcentaje)Opcional | Estará vacío el campo. |
| Causa exención | TextoSelector | Estará vacío el campo. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Solicitar alta | Se solicita el alta del proyecto económico a partir de los datos introducidos.A partir de los datos introducidos se invocará al servicio de integración del ESB que resolverá la solicitud de alta de proyecto económico [REQ\-INT\-0010\-SGE\-0080 \- Solicitar alta proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0081-solicitar-alta-proyecto-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0081-solicitar-alta-proyecto-economico.md") |  | ESB\-PRO\-C |
| Cancelar | No se realiza ninguna operación y se cierra el popup dejando al usuario en el popup de búsqueda de proyectos [IU\-CSP\-0406\-019\-001 \- Búsqueda de proyectos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md") |  |  |

### Interfaces y casos de uso relacionados



















### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso







