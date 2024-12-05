# Hércules : CSP \- Ejecución económica



### Descripción

La ejecución económica de los proyectos/contratos/becas/ayudas, si bien estará accesible desde el detalle de cada proyecto, constituye un acceso independiente dentro del módulo CSP. Los datos disponibles en este apartado están sujetos a la integración con el SGE.

Como ya se ha se recogido en el apartado Configuración económica de [CSP Proyectos, contratos, becas y ayudas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-proyectos-contratos-becas-y-ayudas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-proyectos-contratos-becas-y-ayudas.md"), los proyectos/contratos/becas/ayudas registrados en el SGI deberán disponer del identificador de correspondencia en el SGE. En función de los procedimientos establecidos en las diferentes Universidades, podría darse el caso de que varios proyectos del SGI compartan un mismo identificador en el SGE. Esto implicará que en el SGI no se pueda distinguir qué operaciones y/o documentos contables se corresponden con cada proyecto particular del SGI que comparte el mismo identificador SGE. Es decir, el SGI recibirá el detalle de las operaciones a través del código de identificación del SGE y de las aplicaciones presupuestarias, si ambos datos son compartidos por varios proyectos del SGI, no será posible realizar la discriminación hacia uno u otro, mostrándose de manera unificada en este apartado de Ejecución económica. Desde el detalle de cada uno de los proyectos que compartan el mismo código identificador en el SGE se accederá al mismo detalle de Ejecución económica.

El acceso a los datos de ejecución económica podrá realizarse:

* Desde el detalle de cada proyecto/contrato.
* Desde el buscador habilitado en este bloque funcional de "Ejecución económica". Este buscador incorporará filtros por:
	+ Título del proyecto
	+ Rango de fechas de inicio y fin del proyecto
	+ Identificador SGE

  


Los apartados incluidos en este bloque de Ejecución económica son:

* Listado de proyectos
* Ejecución presupuestaria
* Detalle de operaciones
* Facturas y justificantes
* Validación de gastos
* Justificaciones
* Facturas emitidas

### Listado de proyectos

Debido a la casuística  comentada en el párrafo inicial (varios proyectos SGI comparten el mismo identificador en el SGE), en este listado se informará de todos los proyectos que están vinculados al identificador SGE para el que se va a mostrar el detalle económico. Todos los proyectos incluidos en el listado compartirán la misma información económica.

Desde este listado de proyectos se podrá acceder al detalle de cada uno de ellos.

### Ejecución presupuestaria

En este apartado se verá el balance de la situación de las aplicaciones presupuestarias que hubieran sido incluidas en el presupuesto del o los proyectos que estén vinculados al identificador SGE para el que se está consultando la información. Este balance de las aplicaciones presupuestarias se presentará desglosado en tres bloques:

* Anualidades
* Gastos
* Ingresos

  


La información mostrada será la íntegramente recuperada del SGE a través del mecanismo de integración establecido teniendo en cuenta la configuración establecida en el periodo de implantación.

#### Anualidades

En esta sección se podrá consultar el balance de situación de una, varias o todas las anualidades del proyecto. Para cada anualidad se mostrarán todas las aplicaciones presupuestarias y para cada aplicación presupuestaria las columnas configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico. Se distinguirán las partidas de gasto de las de ingreso.

El listado podrá ser exportado a .csv.

#### Gastos

En esta sección se mostrará el balance de las aplicaciones presupuestarias de gasto. Se permitirá la visualización de las mismas para una o varias anualidades del proyecto. Las aplicaciones presupuestarias mostradas serán las incluidas en el presupuesto del proyecto. Las columnas de detalle mostradas para cada aplicación presupuestaria serán las configuradas en fase de implantación, de acuerdo a lo devuelto por el sistema externo económico.

El listado podrá ser exportado a .csv.

#### Ingresos

En esta sección se mostrará el balance de las aplicaciones presupuestarias de ingreso. Se permitirá la visualización de las mismas para una o varias anualidades del proyecto. Las aplicaciones presupuestarias mostradas serán las incluidas en el presupuesto del proyecto. Las columnas de detalle mostradas para cada aplicación presupuestaria serán las configuradas en fase de implantación, de acuerdo a lo devuelto por el sistema externo económico.

El listado podrá ser exportado a .csv.

### Detalle de operaciones

En este apartado se listará el detalle de operaciones contables asociadas a las aplicaciones presupuestarias que hubieran sido incluidas en el presupuesto del o los proyectos que estén vinculados al identificador SGE para el que se está consultando la información económica. Este detalle de las operaciones contables se presentará desglosado en tres bloques:

* Gastos
* Ingresos
* Modificaciones

  


La información mostrada será la íntegramente recuperada del SGE a través del mecanismo de integración establecido teniendo en cuenta la configuración establecida en el periodo de implantación.

#### Gastos

El listado de operaciones se presentará agrupado por anualidades y aplicación presupuestaria. Para cada operación se mostrarán los campos configurados en periodo de implantación de acuerdo a lo devuelto por el sistema externo económico.

El listado podrá ser exportado a .csv.

#### Ingresos

El listado de operaciones se presentará agrupado por anualidades y aplicación presupuestaria. Para cada operación se mostrarán los campos configurados en periodo de implantación de acuerdo a lo devuelto por el sistema externo económico.

El listado podrá ser exportado a .csv.

#### Modificaciones

El listado de operaciones se presentará agrupado por anualidades. Se presupone que de la información recogida del SGE se  podrá identificar:

* Tipo de modificación
* Aplicación presupuestaria de origen
* Aplicación presupuestaria de destino

En función de si es la aplicación presupuestaria de origen o destino la que se corresponde con una de las incluidas en el presupuesto del proyecto se determinará el sentido de la modificación presupuestario (origen o destino).

Además para cada operación de modificación se mostrarán los campos configurados en periodo de implantación del SGI de acuerdo a lo devuelto por el sistema externo económico.

El listado podrá ser exportado a .csv.

### Facturas y justificantes

En este apartado se centralizarán los listados de los justificantes de gasto que estarán asociados a la fase de justificación y que procederán de la integración con el SGE. La información se agrupará en tres bloques:

* Facturas y gastos
* Viajes y dietas
* Nóminas

#### Facturas y gastos

Como toda la información económica del proyecto se presentará agrupada por anualidad (siempre que en el proyecto se hubiera recogido el desglose por anualidad), de forma que  se podrán seleccionar una o varias anualidades para las que recuperar el detalle de las facturas y justificantes de gasto.

Además de por anualidad el listado se podrá clasificar por:

* Agrupación de gasto (si se han indicado para el proyecto)
* Concepto de gasto
* Aplicación presupuestaria

El detalle de campos a recoger de cada justificante/factura será común a todos ellos y deberá ser configurado en tiempo de implantación, pues esta información debe ser recuperada desde el SGE por medio de los mecanismos de integración disponibles. Se parte de la base que los campos básicos a recuperar son:

* Número del justificante de gasto
* Proveedor
* Número de factura
* Fecha de emisión
* Estado
* Importe total
* Importe imputado
* Porcentaje IVA (si aplica)

La disponibilidad de todos estos campos será dependiente del SGE, ninguno de estos campos será gestionado de manera particular por el SGI.

El listado de factura y justificantes de gastos será exportable a formato .csv.

#### Viajes y dietas

Los justificantes de gastos asociados  a viajes y dietas estará agrupado en un apartado independiente debido a sus particularidades que exigen. Como en todos los detalles económicos el listado podrá ser agrupado por anualidad. Si bien los campos disponibles serán dependientes del SGE se presuponen campos a recuperar de este sistema:

* Número del justificante de gasto
* Proveedor
* Número factura
* Fecha emisión
* Estado
* Importe total
* Importe imputado
* Origen
* Destino
* Fecha de ida (incluyendo hora)
* Fecha de vuelta (incluyendo hora)

Como en el caso de cualquier detalle económico, todos los campos deberán haber sido detallados en el SGE durante el registro del gasto.

El listado disponible podrá ser exportado a formato .csv.

  


#### Personal contratado

En este apartado se recopilarán los gastos asociados a las nóminas de personal. El detalle disponible de las nóminas será recuperado en el SGI una vez se hubiera realizado la imputación correspondiente desde el SGRRHH al SGE, es decir, el SGI recuperará esta información desde el SGE y no directamente del SGRRHH. El SGI realizará la extracción de esta información de la misma forma que el resto de datos económicos: consultando al SGE por medio de la aplicación presupuestaria. Por tanto, si un proyecto requiere la justificación del coste de personal se deben haber incluido todos los conceptos de gasto correspondientes (coste laboral, seguridad social, etc.) junto con las aplicaciones presupuestarias asociadas.  La integración entre los sistemas de gestión de RRHH y de gestión económica será independiente al SGI. Se parte del supuesto que el Sistema de RRHH  va a vincular la nómina con el identificador del proyecto SGE correspondiente, desglosando la nómina en las partidas de formaque estén asociadas a la aplicación presupuestaria correspondiente. El SGI extraerá el detalle que haya sido imputado a las aplicaciones presupuestarias del proyecto por medio de los mecanismos de integración con el SGE.

Si bien los campos que vayan a ser recuperados dependerá de las estructura de información de cada SGE, debiendo ser definidos y configurados en tiempo de implantación, se presupone que serán campos indispensables para la justificación y que, por tanto, deben ser recuperados del SGE:

* Nombre y apellidos de la persona
* Número de identificación personal
* Importe
* Fecha del pago

  


El listado disponible podrá ser exportado a formato .csv.

  


### Validación de gastos

El apartado de validación de gastos está destinado a que los ACT\-CSP\-003\-Gestor validen, de acuerdo a la elegibilidad y estado de las partidas económicas del proyecto, las imputaciones de gastos realizadas sobre las mismas. Los gastos objetivo de este apartado son aquellos que aún no han entrado en fase de contabilización, aún no han desencadenado la contabilización del documento contable asociado.  Las imputaciones de gasto deberán haber sido realizadas en el SGE a una de las aplicaciones presupuestarias configuradas en el presupuesto del proyecto y, como en todos los apartados de Ejecución económica, la información disponible en el SGI será extraída desde el SGE. En la fase de configuración se debe de establecer el estado en el que deben de figurar estos documentos en el SGE (ya vinculados a una aplicación presupuestaria) para que sean recuperados por el SGI para poder mostrarlos en este apartado. La viabilidad de este módulo en el SGI será dependiente de los servicios de integración que puedan ser facilitados por el SGE.

Se presupone que será posible recoger del SGE:

* Tipo de documento
* Número de documento
* Descripción del gasto
* Proveedor
* Fecha
* Importe imputado

  


Se dispondrá de un filtro para listar los gastos pendientes de validación y/o que estén dentro de un determinado rango de fechas.

Para cada gasto los ACT\-CSP\-003\-Gestor podrán:

* Cambiar el estado, pasando el cargo del gasto a:  

	+ Validado
	+ Rechazado
	+ Bloqueado
* Recoger un comentario asociado al cambio de estado

  


Se podrá ver el histórico de estados  por los que ha pasado el gasto. Los estados validado, rechazado y bloqueado son propios del SGI. La información de este estado será notificado al SGE a través del mecanismo de integración que se determine. Serán ya los procedimientos y flujos del SGE los que operen con el estado de validación remitidos desde el SGI para realizar la contabilización. Una vez que el gasto avance en el flujo de registro propio del SGE ya no cumplirá los filtros para ser mostrado en este apartado de Validación de gastos. La operación contable derivada de la contabilización del gasto será recogida por los servicios de integración correspondientes pasando a ser mostrado en los apartados de Ejecución presupuestaria, Detalle de operaciones y/o Facturas y justificantes de gasto.

El estado bloqueado será un estado propio del SGI que permitirá no remitir de vuelta el gasto al SGE, se marca con este estado temporalmente hasta poder asignarle uno de los estados:

* Validado
* Rechazado

Que implicarán que el cambio sea notificado al SGE con el estado de validación incorporado en el SGI.

  


  


### Justificaciones

El apartado Justificaciones partirá del calendario introducido en Configuración económica. Desde el calendario se podrá enlazar cada justificación con su detalle que constará de los siguientes bloques o apartados:

* Datos generales
* Histórico de estados
* Documentación
* Facturas y justificantes de gastos
* Viajes y dietas
* Personal contratado
* Horas de timesheet

#### Datos generales

Este apartado tomará sus datos de los introducidos en el Calendario de justificaciones, se mostrarán a modo de resumen para tenerlos accesibles mientras se gestiona la justificación.

* Número de periodo
* Tipo de periodo: periódico o final.
* Periodo a justificar, delimitado por:
	+ Mes inicial
	+ Mes final
* Fechas del periodo a justificar:
	+ Fecha inicio
	+ Fecha fin
* Periodo de entrega de la justificación:
	+ Fecha inicio
	+ Fecha fin
* Observaciones

  


Estos datos se mostrarán en esta pantalla a modo de consulta, si fuese necesario modificarlos se deberá acceder al apartado Configuración económica \- Calendario de justificaciones del proyecto. 

Además de los campos anteriores se añadirá el estado de la justificación. Los estados por los que puede pasar una justificación serán:

* Pendiente. Es el estado inicial, en el que se crea el periodo de justificación cuando es añadido en el Calendario de justificaciones  de Configuración económica.
* Elaboración. Los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador podrán poner el periodo de justificación en este estado, para indicar que se está trabajando sobre él.
* Entregada. Estado para indicar que el periodo de justificación ha sido remitido a la entidad gestora del proyecto.
* Subsanación. Estado para indicar que la entidad gestora ha remitido alguna indicación sobre la justificación.
* Cerrada. Estado para indicar que la entidad gestora ya ha aceptado la justificación y ésta pasa a estar cerrada, sin que se pueda ya modificar ninguno de sus datos.

El cambio de estado será siempre manual, a realizar por los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador del proyecto, desde este apartado de Datos generales. Cada vez que se realice un cambio de estado, se podrá registrar un comentario asociado al mismo.

El estado "Entregada" junto con el periodo de entrega de la justificación (fecha fin), supondrá la creación de un aviso a través del módulo [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md"), de forma que, si no se registra el estado antes de la fecha fin, se notificará el aviso correspondiente. Este aviso será un refuerzo al ya generado a partir de la fecha de inicio del periodo de justificación (identificado en el apartado Configuración económica \- Calendario de justificación).

#### Histórico de estados

Apartado informativo donde se mostrará el listado de estados por los que ha ido pasando la justificación. La información disponible será la que se ha ido recogiendo desde el apartado anterior de Datos generales, de forma que el listado de Histórico de estados contendrá:

* Estado. De acuerdo al listado indicado en el apartado anterior.
* Fecha del estado. Fecha en la que se registra el estado, teniendo en cuenta que el primer estado ("Pendiente") tomará la fecha en la que se registra el periodo en el Calendario de justificaciones del proyecto.
* Comentario. Comentario asociado al cambio de estado. El primer estado ("pendiente") no tendrá un comentario asociado.

#### Documentación

Para cada periodo de justificación se podrá recoger la documentación asociada. Un periodo podrá tener asociados varios documentos, y por cada documento que se adjunte se podrá indicar:

* Tipo de documento. El tipo de documento será uno de los disponibles en el modelo de ejecución al que se haya vinculado el proyecto/contrato. No será obligatorio indicar un tipo de documento. El tipo de documento permitirá mostrar de forma agrupada la documentación en el apartado general "Documentos" del proyecto.
* Comentarios al documento. Campo de texto libre para recoger cualquier aclaración sobre el documento.

Una vez adjuntado, el documento podrá ser descargado, modificado o eliminado.

  


#### Facturas y justificantes de gastos

En este apartado se añadirán las facturas y justificantes de gastos que van a ser incluidos en el periodo de justificación. Será un subconjunto de las disponibles en el apartado Facturas y justificantes \- Facturas y gastos de la Ejecución económica del proyecto. En el apartado Facturas y justificantes \- Facturas y gastos de la Ejecución económica del proyecto se dispondrá de todas las facturas y justificantes de gastos recuperados del SGE, de forma que en este apartado de Justificaciones se pueda seleccionar cuáles de ellos van a ser incluidos en la justificación. Por defecto, el SGI realizará una selección automática a partir de las fechas de inicio y fin del periodo de justificación y de la fecha del gasto (debiendo ser este campo identificado en periodo de implantación y siendo indispensable que figure entre los campos de detalle recogidos a partir de la integración con el SGE). 

Se podrán añadir o eliminar facturas y justificantes de gastos al periodo de justificación mientras éste figure en los estados:

* Pendiente
* Elaboración
* Subsanación

Para las facturas y justificantes de gastos incluidas en el periodo de justificación, siempre y cuando los servicios de integración del SGE lo permitan, se recuperará el documento de factura o justificante asociado para ser incorporado al apartado Documentación del periodo de justificación.

Como parte de la información asociada al periodo de justificación, podrá registrarse para cada justificante un motivo de rechazo y un comentario sobre el mismo (en caso que el gasto no hubiera sido aceptado tras la entrega de la justificación). Ambos campos solo estarán disponibles si el periodo de justificación se encuentra en uno de los estados siguientes:

* Entregada
* Subsanación

en cualquier otro estado los campos "motivo de rechazo" y "comentario de rechazo" estarán visibles pero no podrán ser modificados. No se mantendrá un histórico para estos campos, solo se permitirá un único valor para los mismos, siendo sobre\-escrito en caso de que sea modificado.

  


#### Viajes y dietas

Este apartado seguirá la misma operativa que el anterior, Facturas y justificantes de gastos. La finalidad será recoger el listado de gastos de viajes y dietas que van a ser incluidos en el periodo de justificación. Los gastos de viajes y dietas disponibles serán los que figuren en el apartado Facturas y justificantes \- Viajes y dietas de la sección Ejecución económica del proyecto que, a su vez, habrán sido recuperados del SGE por medio de los servicios de integración correspondientes.  Por defecto, el SGI realizará una selección automática a partir de las fechas de inicio y fin del periodo de justificación y de la fecha del gasto (debiendo ser este campo identificado en periodo de implantación y siendo indispensable que figure entre los campos de detalle recogidos a partir de la integración con el SGE). 

Se podrán añadir o eliminar justificantes de gastos y dietas al periodo de justificación mientras éste figure en los estados:

* Pendiente
* Elaboración
* Subsanación

Para las facturas y justificantes de gastos de viajes incluidos en el periodo de justificación, siempre y cuando los servicios de integración del SGE lo permitan, se recuperará el documento de factura o justificante asociado para ser incorporado al apartado Documentación del periodo de justificación.

Como parte de la información asociada al periodo de justificación, podrá registrarse para cada justificante un motivo de rechazo y un comentario sobre el mismo (en caso que el gasto no hubiera sido aceptado tras la entrega de la justificación). Ambos campos solo estarán disponibles si el periodo de justificación se encuentra en uno de los estados siguientes:

* Entregada
* Subsanación

en cualquier otro estado los campos "motivo de rechazo" y "comentario de rechazo" estarán visibles pero no podrán ser modificados. No se mantendrá un histórico para estos campos, solo se permitirá un único valor para los mismos, siendo sobre\-escrito en caso de que sea modificado.

#### Personal contratado

Apartado equivalente a los dos anteriores, donde se recogerá el listado de gastos de personal contratado que van a ser incluidos en el periodo de justificación. Los gastos de personal disponibles para ser incluidos en la justificación serán los que figuren en el apartado  Facturas y justificantes \- Personal contratado de la sección Ejecución económica del proyecto que, a su vez, habrán sido recuperados del SGE por medio de los servicios de integración correspondientes.  Por defecto, el SGI realizará una selección automática a partir de las fechas de inicio y fin del periodo de justificación y de la fecha del gasto (debiendo ser este campo identificado en periodo de implantación y siendo indispensable que figure entre los campos de detalle recogidos a partir de la integración con el SGE). 

Se podrán añadir o eliminar justificantes de gastos y dietas al periodo de justificación mientras éste figure en los estados:

* Pendiente
* Elaboración
* Subsanación

Para los gastos de personal incluidos en el periodo de justificación, siempre y cuando los servicios de integración con el SGE y SG RRHH lo permitan, se recuperará el documento de nómina asociado para ser incorporado al apartado Documentación del periodo de justificación. Deberá existir una forma directa de obtener la persona titular y el periodo de nómina concreto a partir de los campos de detalle del gasto recuperados del SGE, solo de esta forma el SGI podrá solicitar al SG RRHH el documento de nómina concreto correspondiente al gasto incluido en la justificación.

Como parte de la información asociada al periodo de justificación, podrá registrarse para cada gasto un motivo de rechazo y un comentario sobre el mismo (en caso que el gasto no hubiera sido aceptado tras la entrega de la justificación). Ambos campos solo estarán disponibles si el periodo de justificación se encuentra en uno de los estados siguientes:

* Entregada
* Subsanación

en cualquier otro estado los campos "motivo de rechazo" y "comentario de rechazo" estarán visibles pero no podrán ser modificados. No se mantendrá un histórico para estos campos, solo se permitirá un único valor para los mismos, siendo sobre\-escrito en caso de que sea modificado.

#### Horas de timesheet

El objetivo de este apartado es vincular los timesheet, registrados desde la sección CSP \- Timesheet, con el periodo de justificación. Por defecto el SGI incluirá en primera instancia los timesheet que dispongan de horas registradas para el proyecto y periodo con los que se corresponde el periodo de justificación. Adicionalmente podrán añadirse de forma manual otros timesheet, siempre que hubieran sido registrados en la sección CSP\-Timesheet. De la misma forma podrá eliminarse cualquiera de los timesheet incluidos por defecto.

Se podrán añadir o eliminar horas de timesheet al periodo de justificación mientras éste figure en los estados:

* Pendiente
* Elaboración
* Subsanación

  


El importe asociado a las  horas de timesheet será calculado en base al coste/hora de cada investigador y las horas imputadas en el timesheet al proyecto. En cada implantación se determinará si este coste/hora:

* Será informado desde el sistema de RRHH con lo cual deberá ser un dato común para todos los proyectos.
* Será un dato a calcular en el SGI. En este caso el cálculo del coste/hora se realizará por proyecto, considerando:
	+ Coste personal de acuerdo a la nómina. Que deberá ser informada por el SGRRHH ya desglosada en los conceptos de gasto de acuerdo a los que se desglosa el presupuesto (cada uno con su código económico).
	+ Horas productivas anuales. Las horas productivas estarán vinculadas al proyecto (Datos generales) de forma que se establezca para ellas una de las siguientes configuraciones:
		- Valor fijo. Que será introducido en los Datos generales del proyecto. Este valor podrá venir impuesto por la entidad financiadora o por la propia Universidad. Aplicará el mismo valor para todos los miembros del equipo, independientemente de su relación laboral con la Universidad. Se contemplará que pueda ser diferente por cada anualidad del proyecto.
		- Valor fijo dependiente de la relación laboral que cada investigador tenga establecida con la Universidad. Cada tipo de contrato deberá tener asociado un número de horas anual, este dato debe de venir informado desde el sistema de RRHH.  Se contemplará que pueda ser un valor diferente por cada anualidad del contrato.
		- Valor variable o real, de acuerdo a las horas imputadas en timesheet por el propio investigador, a las que se sumarán las horas de dedicación teóricas sobre aquellos proyectos/contrato en los que participe y no figuren en timesheet por tener en su configuración "requiere timesheet" a "no".

Las hojas de firma de los timesheet asociadas al periodo de justificación serán añadidos al apartado Documentación, de forma que ya estén disponibles como parte de los documentos a recopilar para remitir a la entidad gestora.

Como parte de la información asociada al periodo de justificación, podrá registrarse para cada timesheet un motivo de rechazo y un comentario sobre el mismo (en caso que el gasto no hubiera sido aceptado tras la entrega de la justificación). Ambos campos solo estarán disponibles si el periodo de justificación se encuentra en uno de los estados siguientes:

* Entregada
* Subsanación

en cualquier otro estado los campos "motivo de rechazo" y "comentario de rechazo" estarán visibles pero no podrán ser modificados. No se mantendrá un histórico para estos campos, solo se permitirá un único valor para los mismos, siendo sobre\-escrito en caso de que sea modificado.

  


#### Informes

Si bien desde cada uno de apartados:

* Facturas y justificantes de gasto
* Viajes y dietas
* Personal contratado
* Horas timesheet

se dispondrá de la opción de "exportar" generando un fichero en formato .csv con el detalle de los gastos incluidos en la justificación, el SGI contempla la elaboración de un informe propio para la justificación a partir de la integración con el módulo de BI. Este informe deberá partir de un modelo predefinido. Los diferentes modelos de informe de justificación deberán estar preconfigurados en el BI.

### Facturas emitidas

Desde este apartado se recuperará la información relativa a las facturas emitidas, cuyo calendario ha sido configurado en [Configuración Económica \- Calendario de facturación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-proyectos-contratos-becas-y-ayudas.md#CSPProyectos,contratos,becasyayudas-Calendariodefacturaci%C3%B3n "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-proyectos-contratos-becas-y-ayudas.md#CSPProyectos,contratos,becasyayudas-Calendariodefacturaci%C3%B3n"). Desde el SGI se podrá registrar el calendario de facturación previsto en el contrato pero el ciclo de facturación será siempre realizado desde el sistema de gestión económica (SGE). Ambos sistemas, SGI y SGE, dispondrán del mecanismo de integración correspondiente para que los items de facturación previstos en el calendario de facturación y la factura finalmente registrada en el SGE queden vinculadas. Desde este apartado de Ejecución económica el SGI recuperará del SGE la información relativa a las facturas finalmente registradas en el SGE mostrando el estado de cobro de las mismas (si bien este campo dependerá de las posibilidades de integración que ofrezca el SGE corporativo).

  


### Vista ACT\-CSP\-001\-Investigador con rol principal

El detalle de la ejecución económica de un proyecto estará disponible solo para los ACT\-CSP\-001\-Investigador durante el periodo en que actúen con un rol que tenga categoría de "rol principal" o "rol responsable económico". Los bloques de la ejecución económica de un proyecto disponibles para el "rol principal" serán:

* Ejecución presupuestaria
* Detalle de operaciones
* Facturas y justificantes
* Facturas emitidas

  


### Vista ACT\-CSP\-001\-Investigador con rol responsable económico

El detalle de la ejecución económica de un proyecto estará disponible solo para los ACT\-CSP\-001\-Investigador durante el periodo en que actúen con un rol que tenga categoría de "rol principal" o "rol responsable económico". Los bloques de la ejecución económica de un proyecto disponibles para el "rol responsable económico" serán:

* Ejecución presupuestaria
* Detalle de operaciones
* Facturas y justificantes
* Validación de gastos
* Justificaciones
* Facturas emitidas

  





