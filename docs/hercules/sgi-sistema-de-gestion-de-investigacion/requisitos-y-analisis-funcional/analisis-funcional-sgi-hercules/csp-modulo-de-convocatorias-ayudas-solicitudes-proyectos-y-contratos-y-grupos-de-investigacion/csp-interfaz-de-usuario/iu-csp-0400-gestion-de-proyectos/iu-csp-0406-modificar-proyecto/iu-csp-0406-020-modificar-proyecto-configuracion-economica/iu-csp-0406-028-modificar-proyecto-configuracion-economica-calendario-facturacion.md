# Hércules : IU\-CSP\-0406\-028 \- Modificar proyecto \- Configuración económica \- Calendario facturación



## Formulario Modificar proyecto \- Configuración económica \- Calendario facturación

Formulario que permite introducir el calendario de facturación previsto.

No se realizará notificación de la previsión de facturación al SGE. La relación entre el calendario de facturación y facturas emitidas se establecerá en el SGE. En la pantalla de creación de factura emitida del SGE se mostrará el listado de items del calendario de facturación creados en el SGI (se dispondrán de la función correspondiente de integración). La relación factura emitida (SGE) \- número factura prevista (SGI) se almacenará en el SGE.

Se necesitará hacer una integración con el SGE para los items que tengan Fecha conformidad comprobar si en el SGE existe la factura emitida creada, se realiza a través de la integración [REQ\-INT\-0010\-SGE\-0153 \- Buscar facturas previstas emitidas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0153-buscar-facturas-previstas-emitidas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0153-buscar-facturas-previstas-emitidas.md"). Se hará una llamada pasando como parámetro el identificador del proyecto SGI, y luego con ese listado se irá rellenando el listado recuperado de ProyectoFacturación mirando el número de previsión y obteniendo el número de factura del SGE.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Calendario de previsión de facturación (listado obtenido de la tabla "proyecto facturación") | | |
| Número previsión | Entero | Es un secuencial que se calcula teniendo en cuenta la fecha de creación, es decir, el ítem con la fecha de creación mas pequeña tendrá el valor 1, el ítem con la siguiente fecha de creación el valor 2 y así sucesivamente. Al crear un nuevo ítem se mirará el último número de previsión del proyecto y se sumará uno. Es relativo a cada proyecto.Se obtiene del campo "número previsión" de la tabla "proyecto facturación" |
| Fecha de emisión | Fecha | Fecha en la que debe ser emitida la factura.Se obtiene del campo "fecha emisión" de la tabla "proyecto facturación" |
| Importe base | Económico | Importe base de la factura.Se obtiene del campo "importe base" de la tabla "proyecto facturación" |
| % IVA | Numérico entero genérico | Porcentaje de IVA a aplicar en la factura.Se obtiene del campo "porcentaje IVA" de la tabla "proyecto facturación" |
| Importe total | Económico | Valor calculado a partir del importe base y el porcentaje de IVA.Se obtiene a partir de los datos "importe base"  y  "porcentaje IVA" de la tabla "proyecto facturación".Importe total \=(importe base \* (100 \+ porcentaje IVA) ) / 100 |
| Comentario | Texto largo | Texto libre con el que se podrá dejar cualquier comentario que se considere que debe de ser tenido en cuenta por los gestores económico.Se obtiene del campo "comentario" de la tabla "proyecto facturación" |
| Tipo facturación | SelectorTexto corto | Indica el hito a cumplir o el trabajo que hay que realizar para que se pueda emitir la factura, por ejemplo realizar un informe, un trabajo , un análisis, etc..Desplegable con los valores de la tabla "Tipo facturación". (En cada Universidad podrán tener sus propios valores)Se obtiene del campo "tipo facturación" de la tabla "proyecto facturación". Será el nombre del tipo de facturación. |
| Fecha conformidad | Fecha (sin hora) | Será la fecha que marque que la factura ya puede ser creada en el SGE y, por tanto, emitida. Al SGE únicamente se enviarán los items de facturación que tienen informado este campo.Se obtiene del campo "fecha conformidad" de la tabla "proyecto facturación". |
| Nº factura emitida | Texto corto | Será un dato a consultar al SGE. Se obtiene a través de la integración [REQ\-INT\-0010\-SGE\-0153 \- Buscar facturas previstas emitidas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0153-buscar-facturas-previstas-emitidas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0153-buscar-facturas-previstas-emitidas.md"). Se hará una llamada pasando como parámetro el identificador del proyecto SGI, y luego con ese listado se irá rellenando el listado recuperado de la tabla "proyecto facturación" mirando el número de previsión y obteniendo el número de factura del SGE. |
| Validación IP | Texto | Estado del flujo de validación del IP.Se obtiene del campo "estado validación IP" de la tabla "proyecto facturación". Se saca el nombre del estado. |
| Modificar | Icono de acción | Acción "Modificar". |
| Eliminar | Icono de acción | Acción "Eliminar".Sólo se mostrará el icono de "Eliminar" mientras el IP/Responsable económico no la haya validado. Si esta Validada no se podrá eliminar. |
| Notificar IP | Icono de acción | Acción "Notificar IP".Sólo se mostrará el icono de "Notificar IP" si el campo "Validación IP" es "Pendiente" o "Rechazada" |
| Validar IP | Icono de acción | Acción "Validar IP".Sólo se mostrará el icono de "Validar IP" si el campo "Validación IP" es "Notificada" |
| Histórico IP | Icono de acción | Acción "Histórico IP". |
| Añadir ítem de facturación | Icono de acción | Acción "Añadir ítem de facturación". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Calendario previsión de facturación | | | |
| Modificar | Muestra la pantalla de modificación del ítem de facturación seleccionado del listado de items | Se resuelve con la pantalla [IU\-CSP\-0402\-024 \- Añadir\-modificar ítem de facturación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-024-anadir-modificar-item-de-facturacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-024-anadir-modificar-item-de-facturacion.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el ítem de facturación del calendario de facturación del proyecto | Una vez añadido un ítem de facturación al calendario, éste podrá ser eliminado mientras el campo "Validación IP" no sea "Validada".Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Notificar IP |  | Se podrá notificar la necesidad de validar por parte del IP el ítem.Sólo saldrá visible el icono si el campo "Validación IP" es "Pendiente" o "Rechazada".Se actualizará el estado a "Notificada". | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Validar IP |  | Se resuelve con la pantalla [IU\-CSP\-0402\-032 \- Calendario facturación \- Validar IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-032-calendario-facturacion-validar-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-032-calendario-facturacion-validar-ip.md").Sólo saldrá visible el icono si el campo "Validación IP" es "Notificada". | CSP\-PRO\-ECSP\-PRO\-E\_UOCSP\-PRO\-INV\-VR |
| Histórico IP | Muestra el histórico de los estados por los que ha pasado el flujo de validación del IP | Se resuelve con la pantalla [IU\-CSP\-0402\-031 \- Calendario facturación \- Histórico IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-031-calendario-facturacion-historico-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-031-calendario-facturacion-historico-ip.md") | CSP\-PRO\-ECSP\-PRO\-E\_UOCSP\-PRO\-INV\-VR |
| Añadir ítem de facturación | Muestra la pantalla para añadir nuevo ítem de facturación al calendario de facturación | Muestra la pantalla [IU\-CSP\-0402\-024 \- Añadir\-modificar ítem de facturación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-024-anadir-modificar-item-de-facturacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-024-anadir-modificar-item-de-facturacion.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Por cada ítem creado se guardará un registro en la tabla "proyecto facturación".Al guardar los cambios habrá que tener en cuenta los comunicados que se deben generar/eliminar/modificar en función de los cambios realizados según se describe en el apartado [Comunicados](#IUCSP0406028ModificarproyectoConfiguracióneconómicaCalendariofacturación-comunicados "#IUCSP0406028ModificarproyectoConfiguracióneconómicaCalendariofacturación-comunicados"). | CSP\-PRO\-ECSP\-PRO\-E\_UOCSP\-PRO\-INV\-VR |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Comunicados

#### Notificar IP

En el caso de que se haga el cambio de estado a "Notificada" por parte de un gestor, a través de la acción "Notificar IP",  se creará la entrada correspondiente en el módulo de comunicados para avisar al/los investigador/es principal/es y al responsable económico del proyecto que tiene/n que validar el ítem de facturación económica.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Proyectos \- Calendario de facturación \- Notificar IP** dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md").

#### Validar IP

En el caso de que se haga el cambio de estado a "Validada" o "Rechazada", por parte de un investigador a través de la acción "Validar IP", se creará la entrada correspondiente en el módulo de comunicados para avisar a los gestores de que el IP ha validado o rechazado el item.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Proyectos \- Calendario de facturación \- Validar IP** dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




