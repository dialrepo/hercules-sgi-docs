# Hércules : IU\-CSP\-0406\-011\-004 \- Modificar proyecto \- Socio \- Periodos de justificación



## Formulario Modificar proyecto \- Socio \- Periodos de justificación

Formulario que permitirá indicar los periodos de justificación a los que se compromete el socio con la Universidad. Los periodos de justificación aplicarán cuando el coordinador del proyecto sea la Universidad (campo "coordinar externo" de la tabla "proyecto" toma el valor "no").



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de periodos de justificación del socio del proyecto. Este apartado solo estará disponible cuando el campo "coordinador externo" de la tabla "proyecto" esté marcado a "no" (es decir, el coordinador del proyecto es la Universidad). El listado de periodos de justificación de un socio de proyecto se obtiene de la tabla "proyecto socio periodo justificación". | | |
| Nº Periodo | SecuenciaNumérico entero genérico | Número secuencial dentro del proyecto que asignará directamente el sistema en función de la ordenación de la fecha de inicio.Se corresponde con el campo "num. periodo" de la tabla "proyecto socio periodo justificación". |
| Fecha inicio | Fecha | Fecha inicial del periodo a justificar (queda a criterio de la unidad de gestión utilizar un plazo de justificación diferente al periodo de justificación que marca la entidad convocante, en caso de querer establecer un plazo interno entre socio y Universidad).Se corresponde con el campo "fecha inicio" de la tabla "proyecto socio periodo justificación". |
| Fecha fin | Fecha | Fecha final del periodo a justificar (queda a criterio de la unidad de gestión utilizar un plazo de justificación diferente al periodo de justificación que marca la entidad convocante, en caso de querer establecer un plazo interno entre socio y Universidad).Se corresponde con el campo "fecha fin" de la tabla "proyecto socio periodo justificación". |
| Fecha inicio presentación | Fecha \+ hora | Fecha y hora de inicio del plazo de presentación de la justificación por parte del socio (queda a criterio de la unidad de gestión utilizar un plazo de presentación diferente al periodo de justificación que marca la entidad convocante, en caso de querer establecer un plazo interno para que el socio presente la información de justificación a la universidad). Se corresponde con el campo "fecha inicio presentación" de la tabla "proyecto socio periodo justificación". Se muestra en formato fecha \+ hora. |
| Fecha fin presentación | Fecha \+ hora | Fecha y hora de fin del plazo de presentación de la justificación por parte del socio (queda a criterio de la unidad de gestión utilizar un plazo de presentación diferente al periodo de justificación que marca la entidad convocante, en caso de querer establecer un plazo interno para que el socio presente la información de justificación a la universidad). Se corresponde con el campo "fecha fin presentación" de la tabla "proyecto socio periodo justificación". Se muestra en formato fecha \+ hora. |
| Documentación recibida | BooleanoValores: Sí, No | Permitir indicar si la Universidad ha recibido, por parte del socio, la documentación necesaria para realizar la justificación a la entidad convocante.Se corresponde con el campo "doc. recibida" de la tabla "proyecto socio periodo justificación". |
| Fecha recepción | Fecha \+ Hora | Fecha en la que ha sido recepcionada, por parte de la Universidad, la documentación de justificación remitida por el socio.Se corresponde con el campo "fecha recepción" de la tabla "proyecto socio periodo justificación".  Se muestra en formato fecha \+ hora. |
| Importe justificado | Económico | Permite recoger el importe finalmente justificado a la entidad convocante correspondiente al socio.Se corresponde con el campo "importe justificado "proyecto socio periodo justificación". |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir periodo de justificación | Icono de acción | Acción "Añadir periodo de justificación" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Produce un cambio de contexto al periodo de justificación seleccionado del listado de periodos | Se resuelve con la pantalla [IU\-CSP\-0406\-011\-004\-001 \- Modificar proyecto \- Socio \- Periodo de justificación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-004-modificar-proyecto-socio-periodos-de-justificacion/iu-csp-0406-011-004-001-modificar-proyecto-socio-periodo-de-justificacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-004-modificar-proyecto-socio-periodos-de-justificacion/iu-csp-0406-011-004-001-modificar-proyecto-socio-periodo-de-justificacion-datos-generales.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el periodo de justificación del proyecto | Se realizará un borrado físico del registro en la tabla "Periodo justificación". Se eliminarán en cascada los documentos vinculados al periodo de justificaciónSi hay registros en la tabla "socio periodo justificación documento" del periodo de justificación de un socio que se desea eliminar, mostrar en el propio mensaje de confirmación de la acción de eliminar el siguiente texto: "Existen documentos asociados a este periodo de justificación que también serán eliminados, ¿desea continuar?" | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir periodo de justificación | Produce un cambio de contexto y muestra la pantalla "Añadir nuevo periodo de justificación" | Muestra la pantalla [IU\-CSP\-0406\-011\-004\-001 \- Modificar proyecto \- Socio \- Periodo de justificación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-004-modificar-proyecto-socio-periodos-de-justificacion/iu-csp-0406-011-004-001-modificar-proyecto-socio-periodo-de-justificacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-004-modificar-proyecto-socio-periodos-de-justificacion/iu-csp-0406-011-004-001-modificar-proyecto-socio-periodo-de-justificacion-datos-generales.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Comunicados

Se enviarán avisos/comunicados relativos al inicio y/o final de los períodos de presentación de justificación de los socios a la Universidad, que serán gestionados externamente a esta gestión por parte del módulo de tareas programadas y del de comunicados (o envío de emails).

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Proyectos \- Periodos de justificación socios** dentro de [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md").

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea/modifica el socio vinculado al proyecto, teniendo en cuenta la información de todos los apartados de definición del socio. | Se añade/modifica el registro correspondiente sobre la tabla "proyecto socio periodo justificación".En caso de eliminación de una periodo de justificación de un socio, se realizará un borrado físico del registro en la tabla "proyecto socio periodo justificación". Se eliminarán en cascada los documentos, vinculados a la prórroga (tabla "socio periodo justificación documento") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Al cancelar un socio se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios.Retorna al listado de Socios sin salvar los posibles cambios. |  |  |




