# Hércules : IU\-CSP\-0560\-006 \- Periodo justificación \- Viajes y dietas



## Formulario Ejecución económica \- Periodo justificación \- Viajes y dietas

Formulario que permite añadir el listado de gastos de viajes y dietas que van a ser incluidos en el periodo de justificación. Los gastos de viajes y dietas disponibles serán los que figuren en el apartado "Facturas y justificantes" \- "Viajes y dietas" de la sección "Ejecución económica" del proyecto que, a su vez, habrán sido recuperados del SGE por medio de los servicios de integración correspondientes.  

Por defecto, el SGI realizará una selección automática a partir de las fechas de inicio y fin del periodo de justificación y de la fecha del gasto (debiendo ser este campo identificado en periodo de implantación y siendo indispensable que figure entre los campos de detalle recogidos a partir de la integración con el SGE).

Para las facturas y justificantes de gastos de viajes incluidos en el periodo de justificación, siempre y cuando los servicios de integración del SGE lo permitan, se recuperará el documento de factura o justificante asociado para ser incorporado al apartado Documentación del periodo de justificación.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Listado de gastos de viajes y dietas incluidos en la justificación del periodo | | | |
| Estado del periodo de justificación | | Texto corto | Estado en que se encuentra el periodo de justificación |
| Anualidad | | Numérico entero genérico | Año de la anualidad |
| Número justificante gasto | | Texto corto | Número justificante del gasto |
| Proveedor | | Texto corto | Proveedor del gasto |
| Número factura | | Texto corto | Número factura del gasto |
| Fecha devengo | | Fecha | Fecha de devengo |
| Importe Imputado | | Económico | Importe imputado de la factura |
| Origen | | Texto corto | Origen del viaje |
| Destino | | Texto corto | Destino del viaje |
| Fecha ida | | Fecha | Fecha de ida |
| Fecha vuelta | | Fecha | Fecha de vuelta |
| Motivo rechazo | | Texto corto | Motivo de rechazo del justificante |
| Comentario rechazo | | Texto largo | Comentario sobre el motivo de rechazo |
| Modificar | | Icono de acción | Acción "Modificar" |
| Eliminar | | Icono de acción | Acción "Eliminar" |
| Añadir viajes y dietas a la justificación | | Icono de acción | Acción "Añadir viajes y dietas a la justificación" |
| Exportar | | Icono de acción | Acción "Exportar" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de rechazo del gasto | Solo estará disponibles si el periodo de justificación se encuentra en uno de los estados siguientes:* Entregada * Subsanación  Muestra una pantalla similar a la de rechazo de gastos, [IU\-CSP\-0405\-005 \- Rechazar gasto en justificación de ejecución económica en proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-012-rechazar-gasto-en-periodo-de-justificacionn.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-012-rechazar-gasto-en-periodo-de-justificacionn.md") |
| Eliminar | Elimina el gasto de viajes o dietas del periodo de justificación | Solo estará disponibles si el periodo de justificación se encuentra en uno de los estados siguientes:* Entregada * Subsanación |
| Añadir viajes y dietas a la justificación | Muestra la pantalla para añadir un nuevo gasto de viajes o dietas | Se podrán añadir o eliminar justificantes de gastos y dietas al periodo de justificación mientras éste figure en los estados:* Pendiente * Elaboración * Subsanación  Muestra la pantalla [IU\-CSP\-0405\-006 \- Añadir gasto de viaje/dieta a la justificación en ejecución económica de proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-011-anadir-viajedieta-a-periodo-de-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-011-anadir-viajedieta-a-periodo-de-justificacion.md") |
| Exportar | Exporta a .csv la información mostrada en la tabla de gastos de viajes y dietas del periodo de justificación |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Guarda la justificación del periodo con la información introducida en el formulario.Al guardar una justificación del periodo se guarda la información de todos los apartados de definición del proyecto. |  |
| Cancelar | Retorna al listado de Justificaciones sin salvar los posibles cambios.Al cancelar una justificación del periodo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones

  
  
  
  
  
  





