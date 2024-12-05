# Hércules : IU\-CSP\-0560\-007 \- Periodo justificación \- Personal contratado



## Formulario Ejecución económica \- Periodo justificación \- Personal contratado

Formulario que permite el listado de gastos de personal contratado que van a ser incluidos en el periodo de justificación. Los gastos de personal disponibles para ser incluidos en la justificación serán los que figuren en el apartado  "Facturas y justificantes" \- "Personal contratado" de la sección "Ejecución económica" del proyecto que, a su vez, habrán sido recuperados del SGE por medio de los servicios de integración correspondientes.

Por defecto, el SGI realizará una selección automática a partir de las fechas de inicio y fin del periodo de justificación y de la fecha del gasto (debiendo ser este campo identificado en periodo de implantación y siendo indispensable que figure entre los campos de detalle recogidos a partir de la integración con el SGE).

Para los gastos de personal incluidos en el periodo de justificación, siempre y cuando los servicios de integración con el SGE y SGRRHH lo permitan, se recuperará el documento de nómina asociado para ser incorporado al apartado "Documentación" del periodo de justificación. Deberá existir una forma directa de obtener la persona titular y el periodo de nómina concreto a partir de los campos de detalle del gasto recuperados del SGE, solo de esta forma el SGI podrá solicitar al SGRRHH el documento de nómina concreto correspondiente al gasto incluido en la justificación.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Listado de gastos de personal contratado de la justificación periodo | | | |
| Estado del periodo de justificación | | Texto corto | Estado en que se encuentra el periodo de justificación |
| Anualidad | | Numérico entero genérico | Año de la anualidad |
| Agrupación gasto | | Texto corto | Agrupación de gasto asociada a la anualidad |
| Concepto de gasto | | Texto corto | Concepto de gasto asociado a la agrupación de gasto |
| Aplicación presupuestaria (inc. código económico) | | Texto corto | Aplicación presupuestaria asociada al concepto de gasto |
| Persona | | Texto | Nombre y apellidos de la persona titular de la nómina.Se recuperará a partir del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| NIF | | Texto corto | NIF de la persona titular de la nómina.Se recuperará a partir del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Fecha pago | | Fecha | Fecha de pago de la nómina |
| Importe | | Económico | Importe de la nómina |
| Motivo rechazo | | Texto corto | Motivo de rechazo el justificante |
| Comentario rechazo | | Texto corto | Comentario sobre el motivo de rechazo |
| Modificar | | Icono de acción | Acción "Modificar" |
| Eliminar | | Icono de acción | Acción "Eliminar" |
| Añadir gastos a la justificación | | Icono de acción | Acción "Añadir gastos a la justificación" |
| Exportar | | Icono de acción | Acción "Exportar" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de rechazo del gasto | Solo estará disponible si el periodo de justificación se encuentra en uno de los estados siguientes:* Entregada * Subsanación  Muestra una pantalla similar a la de rechazo de gastos, [IU\-CSP\-0405\-005 \- Rechazar gasto en justificación de ejecución económica en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-012-rechazar-gasto-en-periodo-de-justificacionn.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-012-rechazar-gasto-en-periodo-de-justificacionn.md") |
| Eliminar | Elimina la factura o justificante del periodo de justificación | Solo estará disponible si el periodo de justificación se encuentra en uno de los estados siguientes:* Entregada * Subsanación |
| Añadir gastos a la justificación | Muestra la pantalla para añadir un nuevo gasto al periodo de justificación | Se podrán añadir o eliminar gastos de personal al periodo de justificación mientras éste figure en los estados:* Pendiente * Elaboración * Subsanación  Muestra la pantalla [IU\-CSP\-0405\-007 \- Añadir gasto personal contratado a la justificación en ejecución económica de proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-014-anadir-gasto-de-personal-contratado-a-periodo-de-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-014-anadir-gasto-de-personal-contratado-a-periodo-de-justificacion.md") |
| Exportar | Exporta a .csv la información mostrada en la tabla de gastos de personal del periodo de justificación |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Guarda la justificación del periodo con la información introducida en el formulario.Al guardar una justificación del periodo se guarda la información de todos los apartados de definición del proyecto. |  |
| Cancelar | Retorna al listado de Justificaciones sin salvar los posibles cambios.Al cancelar una justificación del periodo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones




