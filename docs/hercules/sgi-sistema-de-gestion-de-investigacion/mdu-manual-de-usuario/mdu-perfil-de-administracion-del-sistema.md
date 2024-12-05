# Hércules : MDU \- Perfil de Administración del sistema



El Sistema de gestión de la investigación (SGI) de Hércules, es un sistema de información que da soporte a los procedimientos y gestión asociados a la Investigación universitaria. El uso del SGI está destinado a dos colectivos principales:

* Personal de gestión, mayoritariamente perteneciente al colectivo personal de administración y servicios de las diferentes unidades de gestión involucradas en los procedimientos de la Investigación.
* Personal de investigación, principalmente perteneciente al colectivo personal docente e investigador.

  


Sin embargo, se ha configurado un perfil adicional, restringido al personal técnico encargado de la administración del SGI, que tendrá acceso a la configuración de una serie de parámetros y datos maestros a través del interface gráfico del propio SGI. Estas opciones de configuración están disponibles en el módulo:

* Administración (ADM)

  


El módulo de Administración es un módulo adicional del SGI que solamente estará disponible para el perfil de administración del sistema (SysAdm). A efectos prácticos se presenta como un módulo funcional más.

![](/attachments/721420329/721420330.png)

  


Al acceder a este módulo de Administración se muestra el menú de Configuración:

![](/attachments/721420329/721420331.png)

  


#### 1\.1 Configuración global

En este apartado se permite la configuración de parámetros que aplican de manera global a la configuración del SGI.

![](/attachments/721420329/945389630.png)

  


Cuando se modificar el valor de un parámetros, se activará su opción de guardado. Ésta opera de forma individual sobre cada parámetro.

Cuando se modifica un valor, se activará el icono ![](/attachments/721420329/721420333.png). Deberá de pulsarse individualmente por cada parámetros que se vaya a actualizar.

  


![](/attachments/721420329/907935777.png)

  


Aquellos parámetros que se corresponden con ficheros, tendrán la opción de descarga (icono ![](/attachments/721420329/721420334.png)) del fichero que aplica en la configuración actual. Para modificar el fichero deberá pulsarse el icono ![](/attachments/721420329/721420335.png)que abrirá la opción de "examinar archivo" propia del navegador web que está siendo utilizado.

  


Uno de los aspectos que se permite personalizar a través de este menú son los logos de cabecera, pudiendo variar el número de logos entre 1 y 3, pero respetando las distribución y dimensiones de la configuración de partida.

Para personalizar los logos de cabecera, se debe de indicar en primer lugar el número de logos en el parámetro "Número de logos cabecera" (que sólo admitirá los valores 1, 2 y 3\):

![](/attachments/721420329/907935778.png)

  


Si se indica que la cabecera sólo contendrá un logo, se deshabilitarán los parámetros de configuración asociados a los logos 2 y 3\.

![](/attachments/721420329/907935779.png)

  


Cada logo de la cabecera puede subirse adaptado a tres resoluciones:

* estándar 1:1
* doble resolución 2x: 2:1
* triple resolución 3x: 3:1

  


Con una configuración de 1 logo de cabecera, se podrá modificar el fichero asociado al "logo1". Se activará el icono de guardado:

![](/attachments/721420329/907935780.png)

  


Tras pulsar el icono de guardado se mostrará un aviso informativo:

![](/attachments/721420329/907935781.png)

  


Se deberá pulsar F5 o Ctrl\+F5 para que se apliquen los cambios y se pueda ver el nuevo aspecto que tendrá la cabecera del SGI:

![](/attachments/721420329/907935782.png)

  


El nuevo aspecto de la aplicación aplicará desde este momento en todas las páginas de la aplicación y para cualquier persona que acceda a partir de entonces. 

  


Se listan a continuación todos los parámetros que están habilitados en esta página de Configuración global, indicando, a modo informativo, la tabla y campo de configuración sobre el que actúan.

  




| Parámetro | Tabla y campo | Descripción |
| --- | --- | --- |
| Nombre entidad implantación | cnf\_sgi.config.name\="entidad\-implantacion" | Nombre de la entidad donde está instalada la aplicación.Sin uso. |
| Id SGEMP entidad implantación | cnf\_sgi.config.name\="id\-entidad\-sgemp" | Identificador con el que figura en el sistema de gestión de empresas la entidad que se corresponde con la propia Universidad en la que está implantado el SGI.Este valor se utiliza para realizar la identificación de invenciones cuya titularidad corresponde a la Universidad para aplicar los baremos de de PRC  (solo se bareman las invenciones cuya titularidad en el periodo de baremación corresponde a la  Universidad de implantación)Se compara este valor con el valor del campo "titular ref" de  la tabla "periodo titularidad titular" del modelo lógico de PII. |
| Número máximo de registros en la exportación de listados | cnf\_sgi.config.name\="exp\-max\-num\-registros\-excel" | Valor general con el que se limita de forma general la exportación de listados.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en los listados de SGI. Cada listado tiene una variable de configuración propia, si la variable asociada a un listado no está informada se utilizará esta variable general para controlar el número de registros a exportar. Si esta variable general tampoco está informada, no existirá límite en la exportación. El límite funcional de forma que si el número de registros que contiene el listado es mayor o igual que el número de la variable de control, no se habilita el botón de exportación. |
| Número de logos en cabecera | cnf\_sgi.config.name\="web\-numero\-logos\-header" | Número de logos con los que se va a configurar la cabecera de la aplicación, podrá tomar los valores: 1, 2 y 3\. |
| Logo 1 cabecera | cnf\_sgi.resources.name\="web\-header\-logo\-ministerio" | Primer logo de cabecera en resolución 1:1 |
| Logo 1 cabecera (resolución 2x) | cnf\_sgi.resources.name\="web\-header\-logo\-ministerio2x" | Primer logo de cabecera en resolución 2:1 |
| Logo 1 cabecera (resolución 3x) | cnf\_sgi.resources.name\="web\-header\-logo\-ministerio3x" | Primer logo de cabecera en resolución 3:1 |
| Logo 2 cabecera | cnf\_sgi.resources.name\="web\-header\-logo\-feder" | Segundo logo de cabecera en resolución 1:1 |
| Logo 2 cabecera (resolución 2x) | cnf\_sgi.resources.name\="web\-header\-logo\-feder2x" | Segundo logo de cabecera en resolución 2:1 |
| Logo 2 cabecera (resolución 3x) | cnf\_sgi.resources.name\="web\-header\-logo\-feder3x" | Segundo logo de cabecera en resolución 3:1 |
| Logo 3 cabecera | cnf\_sgi.resources.name\="web\-header\-logo\-ue" | Tercer logo de cabecera en resolución 1:1 |
| Logo 3 cabecera (resolución 2x) | cnf\_sgi.resources.name\="web\-header\-logo\-ue2x" | Tercer logo de cabecera en resolución 2:1 |
| Logo 3 cabecera (resolución 3x) | cnf\_sgi.resources.name\="web\-header\-logo\-ue3x" | Tercer logo de cabecera en resolución 3:1 |
| Logo informes (cabecera completa) | cnf\_sgi.resources.name\="rep\-common\-header\-logo" | Logo cabecera completa informes (dimensiones imagen original 2481x304\)Logo incluido en cabecera de informes, tanto de exportación como el resto de informes del módulo ETI o CSP |
| Mensajes personalizados internacionalización idioma español | cnf\_sgi.resources.name\="web\-i18n\-es" | i18n esPermite subir el fichero con los textos de etiquetas, mensajes,etc. que se muestran por pantalla en la configuración de idioma español (pendiente de ampliar si se realizase la ampliación de internacionalización). Los textos incluidos en este fichero sobreescribirían los textos por defecto de la aplicación. Permitiría adaptar nombres de menús, etiquetas de campos, etc. Es útil sólo para el equipo de desarrollo ya que requiere conocer los nombre de las "labels" correspondientes a los textos que se deseen adaptar/modificar. |
| Integración con sistemas corporativos | | |
| Alta de personas | cnf\_sgi.config.resources\="sgp\-alta" | Permite habilitar o no la solicitud de alta de personas en el Sistema de Gestión de Personas (SGP). |
| Modificación de personas | cnf\_sgi.config.resources\="sgp\-modificacion" | Permite habilitar o no la solicitud de modificación de personas en el Sistema de Gestión de Personas (SGP). |
| Alta de empresas | cnf\_sgi.config.resources\="sgemp\-alta" | Permite habilitar o no la solicitud de alta de entidades/empresas en el Sistema de Gestión de Empreasas (SGEMP). |
| Modificación de empreas | cnf\_sgi.config.resources\="sgemp\-modificacion" | Permite habilitar o no la solicitud de modificación de entidades/empresas en el Sistema de Gestión de Empresas (SGEMP). |

#### 1\.2 Configuración CSP

En esta pantalla se podrán aplicar cambios sobre los parámetros de configuración que afectan al módulo de CSP. El mecanismo de uso es el mismo que el indicado en el apartado anterior.

![](/attachments/721420329/909967552.png)

  


A continuación se enumeran los parámetros o recursos de aplicación que pueden ser configurados en esta pantalla. Se indica, a modo informativo, la tabla y campo donde se almacena cada parámetro:



| Parámetro | Tabla y campo | Descripción |
| --- | --- | --- |
| Activación de validación/clasificación de gastos | csp\_sgi.configuracion.validacion\_clasificacion\_gastos | Permite configurar el mecanismo que se utiliza en el apartado Ejecución económica para clasificar los gastos del SGE de acuerdo a los conceptos económicos del SGI. Sólo se admite una configuración simultánea:Posibles valores:* Validación de gastos: Se activa el menú de validación de gastos.  La validación de gastos es un proceso previo a la contabilización.  Requiere la correspondiente integración con el SGE. La clasificación bajo los conceptos de gasto del SGI que se visualiza en el apartado Ejecución económica \- Facturas y gastos se realiza manualmente a la vez que el proceso de validación. El estado de la validación y la clasificación se almacenan en el SGI. * Clasificación de gastos. Se activa el menú de clasificación de gastos. Los gastos del SGE se clasifican manualmente de acuerdo a los conceptos de gastos del SGI. La clasificación bajo los conceptos de gasto del SGI que se visualiza en el apartado Ejecución económica \- Facturas y gastos se realiza manualmente. La clasificación se almacena en el SGI. * Elegibilidad. a clasificación bajo los conceptos de gasto del SGI que se visualiza en el apartado Ejecución económica \- Facturas y gastos se realiza automáticamente de acuerdo a la configuración establecida en el apartado Elegibilidad del Proyecto. Si la correspondencia del código económico del gasto y  el concepto de gasto del SGI no es única el gasto no se clasificará. |
| Texto acceso a sistema corporativo secundario de gestión de la investigación | cnf\_sgi.config.name\="nombre\-sistema\-gestion\-externo" | Nombre de la opción del menú que redirigirá a la aplicación complementaria de gestión de la investigación. Si se deja vacío, la opción de menú no se mostrará. |
| URL sistema sistema corporativo secundario de gestión de la investigación | cnf\_sgi.config.name\="url\-sistema\-gestion\-externo" | URL de la aplicación complementaria de gestión de la investigación a la que se accede desde la opción de menú anterior |
| Formato partida presupuestaria | csp\_sgi.configuracion.formato\_partida\_presupuestaria | Expresión regular con la que se realiza la validación del formato del campo partida presupuestaria |
| Plantilla para el campo partida presupuestaria | csp\_sgi.configuracion.plantilla\_formato\_partida\_presupuestaria | Plantilla que se muestra en el tooltip del campo partida presupuestaria para mostrar el formato en que se debe de introducir |
| Formato referencia interna de proyecto | csp\_sgi.configuracion.formato\_codigo\_interno\_proyecto | Expresión regular con la que se realiza la validación del formato del campo referencia interna de proyecto |
| Plantilla para el campo referencia interna de proyecto | csp\_sgi.configuracion.plantilla\_formato\_codigo\_interno\_proyecto | Plantilla que se muestra en el tooltip del campo referencia interna de proyecto para mostrar el formato en que se debe de introducir |
| Formato identificador de justificación | csp\_sgi.configuracion.formato\_identificador\_justificacion | Expresión regular con la que se realiza la validación del formato del campo identificador de justificación |
| Plantilla para el campo identificador de justificación | csp\_sgi.configuracion.plantilla\_formato\_identificador\_justificacion | Plantilla que se muestra en el tooltip del campo identificador de justificación para mostrar el formato en que se debe de introducir |
| Dedicación mínima sobre grupo de investigación | csp\_sgi.configuracion.dedicacion\_minina\_grupo | Valor con el que se valida la dedicación mínima de los miembros del equipo de un grupo de investigación |
| Plantilla informe de autorización de participación en proyecto externo | cnf\_sgi.resources.name\="rep\-csp\-certificado\-autorizacion\-proyecto\-externo\-docx" | Plantilla utilizada para la generación del informe de autorización de  participación en proyecto externo |
| Integración con sistemas corporativos | | |
| Cardinalidad relación proyecto SGI \- identificador SGE | csp\_sgi.configuracion.cardinalidad\_relacion\_sgi\_sge | Permite configurar la cardinalidad de la relación entre proyecto SGI y proyecto SGE. Sólo se admite una configuración simultánea:Posibles valores:* Un proyecto SGI sólo puede asociarse a un identificador SGE (1:1\) * Un proyecto SGI puede asociarse a diferentes identificadores SGE (1:n) * Diferentes proyectos SGI pueden estar asociados a un mismo identificador SGE (n:1\) * Diferentes proyectos SGI pueden estar asociados a diferentes identificadores SGE (n:n) |
| Sincronización alta identificador SGE | csp\_sgi.configuracion.sge\_sincronizacion\_alta\_proyecto | Permite configurar si el alta del proyecto en el SGE se realiza de forma sincrona o de forma asíncrona. Sólo se admite una configuración simultánea:Posibles valores:* Sincrona * Asíncrona |
| Sincronización modificación identificador SGE | csp\_sgi.configuracion.sge\_sincronizacion\_modificacion\_proyecto | Permite configurar si la modificación del proyecto en el SGE se realiza de forma sincrona o de forma asíncrona. Sólo se admite una configuración simultánea:Posibles valores:* Sincrona * Asíncrona |
| Ejecución económica de Grupos de investigación | csp\_sgi.configuracion.gin\_ejecucion\_economica | Permite configurar la Ejecución económica de Grupos de investigación. Sólo se admite una configuración simultánea:Posibles valores:* Sí * No |
| Obtener partidas SGE | csp\_sgi.configuracion.partidas\_presupuestarias\_SGE | Permite habilitar si la partidas presupuestarias se introducen manualmente en el SGI o se listan a través de una función del ESB que las lee del SGE. Sólo se admite una configuración simultánea:Posibles valores:* Sí * No  El valor "No" significará  que no hay integración con el SGE por lo tanto las partidas se crean en el SGI.El valor "Sí" significará que si hay integración con el SGE para recuperar el listado de partidas presupuestarias, por lo tanto no se crean en el SGI. |
| Modificación proyecto SGE | csp\_sgi.configuracion.sge\_modificacion | Permite habilitar la acción de solicitar modificación de datos del proyecto al SGE. Sólo se admite una configuración simultánea:Posibles valores:* Sí * No  El valor "Sí" significará  que se permite la modificación del proyecto SGE desde el SGI (volver a enviarle los datos del SGI y actualizar los datos propios del formly del proyecto SGE).El valor "No" significará  que no se permite la modificación del proyecto SGE desde el SGI. |
| Habilitar buscador identificador SGE | csp\_sgi.configuracion.sge\_alta\_buscador | Permite habilitar la visualización del buscador de proyectos económicos al añadir un nuevo identificador SGE para permitir relacionar el proyecto SGI con un proyecto SGE existente. Sólo se admite una configuración simultánea:Posibles valores:* Sí * No  El valor "Sí" significará  que se mostrará el buscador de proyectos económicos lo que permitirá seleccionar un proyecto SGE existente para relacionarlo con un proyecto SGI.El valor "No" significará que se no mostrará el buscador de proyectos económicos lo que no permitirá relacionar un proyecto SGI con un proyecto SGE existente. |
| Habilitar campo Sector IVA del SGE | csp\_sgi.configuracion.sge\_sector\_iva | Permite habilitar la visualización del campo "Sector IVA" proveniente de la integración con el SGE en el SGI. Sólo se admite una configuración simultánea:Posibles valores:* Sí * No  El valor "Sí" significará  que se mostrará el campo "Sector IVA" en el SGI. Su valor es recuperado del SGE a través de una integración con el SGE.El valor "No" significará que no se mostrará el campo "Sector IVA" en el SGI. |
| Integración de amortización de fondos (proyectos \- configuración económica) | csp\_sgi.configuracion.sge\_amortizacion\_fondos | Permite habilitar o no la integración de los periodos de amortización con el SGE. Sólo se admite una configuración simultánea:Posibles valores:* Sí * No  El valor "Sí" significará que al crear, modificar o eliminar un periodo de amortización en el SGI se le notificará al SGE a través de los servicios de integración definidos para ello.El valor "No" significará que al crear, modificar o eliminar un periodo de amortización en el SGI no se le notificará  nada al SGE. No existirá integración. |
| Integración calendario facturación (proyectos \- configuración económica) | csp\_sgi.configuracion.sge\_calendario\_facturacion | Permite habilitar o no la integración del calendario de facturación con el SGE. Sólo se admite una configuración simultánea:Posibles valores:* Sí * No  El valor "Sí" significará que al crear y modificar facturas previstas del calendario de facturación en el SGI se le notificará al SGE a través de los servicios de integración definidos para ello.El valor "No" significará que al crear y  modificar facturas previstas del calendario de facturación en el SGI no se le notificará  nada al SGE. No existirá integración. |
| Integración de modificaciones (ejecución económica \- detalle de operaciones) | csp\_sgi.configuracion.sge\-modificaciones | Permite habilitar o no mostrar la opción de menú de "Modificaciones" de dentro del apartado "Ejecución económica \- Detalle de operaciones". En caso de que no este habilitada no existirá dicha integración con el SGE. Sólo se admite una configuración simultánea:Posibles valores:* Sí * No  El valor "Sí" significará que se mostrará la opción de menú "Modificaciones" de dentro del apartado "Ejecución económcia \- Detalle de operaciones" y que existirá integración con el SGE para obtener los datos a mostrar.El valor "Sí" significará que no se mostrará la opción de menú "Modificaciones" de dentro del apartado "Ejecución económcia \- Detalle de operaciones" y por lo tanto no existirá integración con el SGE. |
| Añadir entrada integración gastos justificados (seguimiento justificación) | csp\_sgi.configuracion.sge\_gastos\_justificados | Permite activar/desactivar la integración de gastos justificados (apartado seguimiento de justificación)Posibles valores:* Sí * No  El valor "Sí" significará que existirá integración con un módulo de justificación que pudiera existir en la Universidad para obtener los gastos justificados (usados en el seguimiento justificación). .El valor "No" significará que no existirá integración con un sistema externo para obtener los gastos justificados (usados en el seguimiento justificación). |
| Columnas a mostrar en  Facturas y gastos (ejecución económica \- facturas y justificantes) | sge\-facturas\-columnas\-visibles | Permite indicar que columnas de las columnas fijas se desean mostrar en Facturas y gastos. Sólo se muestran aquellas columnas que  se pueden eliminar, el resto de columnas fijas que no se muestran en el desplegable es porque siempre se van a mostrar, no se da opción de hacerlas configurables.Posibles valores:* Partidas Presupuestarias * Clasificación SGE  Si se desmarca una de las dos columnas o las dos, dichas columnas no se mostrarán en la pantalla de Ejecución económica \- Facturas y Justificantes \- Facturas y gastos ni en la exportación ni en el detalle del gasto. |
| Columnas a mostrar en  Viajes y dietas  (ejecución económica \- facturas y justificantes) | sge\-viajes\-columnas\-visibles | Permite indicar que columnas de las columnas fijas se desean mostrar en Viajes y dietas. Sólo se muestran aquellas columnas que  se pueden eliminar, el resto de columnas fijas que no se muestran en el desplegable es porque siempre se van a mostrar, no se da opción de hacerlas configurables.Posibles valores:* Partidas Presupuestarias * Clasificación SGE  Si se desmarca una de las dos columnas o las dos, dichas columnas no se mostrarán en la pantalla de Ejecución económica \- Facturas y Justificantes \- Viajes y dietas ni en la exportación ni en el detalle del gasto. |
| Columnas a mostrar en Personal contratado (ejecución económica \- facturas y justificantes) | sge\-personal\-columnas\-visibles | Permite indicar que columnas de las columnas fijas se desean mostrar en Personal contratado. Sólo se muestran aquellas columnas que  se pueden eliminar, el resto de columnas fijas que no se muestran en el desplegable es porque siempre se van a mostrar, no se da opción de hacerlas configurables.Posibles valores:* Partidas Presupuestarias * Clasificación SGE  Si se desmarca una de las dos columnas o las dos, dichas columnas no se mostrarán en la pantalla de Ejecución económica \- Facturas y Justificantes \- Personal contratado ni en la exportación ni en el detalle del gasto. |
| Comunicados de convocatorias. Existirá un parámetro de configuración para cada unidad de gestión. El número de unidades de gestión será variable por implantación. Las unidades de gestión deben de  ser configuradas previamente como parte del proceso de implantación y despliegue inicial. | | |
| Destinatarios defecto CSP Convocatoria Fases de la unidad de gestión OTRIDestinatarios defecto CSP Convocatoria Fases de la unidad de gestión OPEDestinatarios defecto CSP Convocatoria Fases de la unidad de gestión UGIDestinatarios defecto CSP Convocatoria Fases de la unidad de gestión ARI | config.csp\-conv\-fases\-destinatarios\-1config.csp\-conv\-fases\-destinatarios\-2config.csp\-conv\-fases\-destinatarios\-3config.csp\-conv\-fases\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos de las fases configuradas en convocatorias que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail se almacenarán en base de datos separadas por el carácter ",". |
| Destinatarios defecto CSP Convocatoria Hito de la unidad de gestión OTRIDestinatarios defecto CSP Convocatoria Hito de la unidad de gestión OPEDestinatarios defecto CSP Convocatoria Hito de la unidad de gestión UGIDestinatarios defecto CSP Convocatoria Hito de la unidad de gestión ARI | config.csp\-conv\-hitos\-destinatarios\-1config.csp\-conv\-hitos\-destinatarios\-2config.csp\-conv\-hitos\-destinatarios\-3config.csp\-conv\-hitos\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos de los hitos configurados en convocatorias que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail se almacenarán en base de datos separadas por el carácter ",". |
| Comunicados de solicitudes.  Existirá un parámetro de configuración para cada unidad de gestión. El número de unidades de gestión será variable por implantación. Las unidades de gestión deben de  ser configuradas previamente como parte del proceso de implantación y despliegue inicial. | | |
| Destinatarios de comunicado de cambio de estado de solicitud a alegaciones de la unidad de gestión OTRIDestinatarios de comunicado de cambio de estado de solicitud a alegaciones de la unidad de gestión OPEDestinatarios de comunicado de cambio de estado de solicitud a alegaciones de la unidad de gestión UGIDestinatarios de comunicado de cambio de estado de solicitud a alegaciones de la unidad de gestión ARI | config.csp\-com\-sol\-camb\-est\-alegaciones\-destinatarios\-1config.csp\-com\-sol\-camb\-est\-alegaciones\-destinatarios\-2config.csp\-com\-sol\-camb\-est\-alegaciones\-destinatarios\-3config.csp\-com\-sol\-camb\-est\-alegaciones\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos relativos al estado  "alegación" de solicitudes que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail se almacenarán en base de datos separadas por el carácter ",". |
| Destinatarios de comunicado de cambio de estado de solicitud a solicitada de la unidad de gestión OTRIDestinatarios de comunicado de cambio de estado de solicitud a solicitada de la unidad de gestión OPEDestinatarios de comunicado de cambio de estado de solicitud a solicitada de la unidad de gestión UGIDestinatarios de comunicado de cambio de estado de solicitud a solicitada de la unidad de gestión ARI | config.csp\-com\-sol\-camb\-est\-solicitada\-destinatarios\-1config.csp\-com\-sol\-camb\-est\-solicitada\-destinatarios\-2config.csp\-com\-sol\-camb\-est\-solicitada\-destinatarios\-3config.csp\-com\-sol\-camb\-est\-solicitada\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos relativos al estado  "solicitada" de solicitudes que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail se almacenarán en base de datos separadas por el carácter ",". |
| Destinatarios defecto CSP Solicitudes Hito de la unidad de gestión OTRIDestinatarios defecto CSP Solicitudes Hito de la unidad de gestión OPEDestinatarios defecto CSP Solicitudes Hito de la unidad de gestión UGIDestinatarios defecto CSP Solicitudes Hito de la unidad de gestión ARI | config.csp\-sol\-hitos\-destinatarios\-1config.csp\-sol\-hitos\-destinatarios\-2config.csp\-sol\-hitos\-destinatarios\-3config.csp\-sol\-hitos\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos de los hitos configurados en solicitudes que pertenezcan a convocatorias de la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail se almacenarán en base de datos separadas por el carácter "," |
| Comunicados de proyectos.  Existirá un parámetro de configuración para cada unidad de gestión. El número de unidades de gestión será variable por implantación. Las unidades de gestión deben de  ser configuradas previamente como parte del proceso de implantación y despliegue inicial. | | |
| Destinatarios de comunicados al validar una factura de la unidad de gestión OTRIDestinatarios de comunicados al validar una factura de la unidad de gestión OPEDestinatarios de comunicados al validar una factura de la unidad de gestión UGIDestinatarios de comunicados al validar una factura de la unidad de gestión ARI | config.csp\-com\-cal\-fact\-validarip\-destinatarios\-1  config.csp\-com\-cal\-fact\-validarip\-destinatarios\-2  config.csp\-com\-cal\-fact\-validarip\-destinatarios\-3  config.csp\-com\-cal\-fact\-validarip\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos relativos a la validación de facturas por parte del rol IP para proyectos que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail dentro de una mismo parámetro de configuración (unidad de gestión) se almacenarán en base de datos separadas por el carácter ",". |
| Destinatarios defecto CSP Inicio/Fin Periodo Justificación Socio de la unidad de gestión OTRIDestinatarios defecto CSP Inicio/Fin Periodo Justificación Socio de la unidad de gestión OPEDestinatarios defecto CSP Inicio/Fin Periodo Justificación Socio de la unidad de gestión UGIDestinatarios defecto CSP Inicio/Fin Periodo Justificación Socio de la unidad de gestión ARI | config.csp\-inicio\-fin\-periodo\-just\-socio\-destinatarios\-1config.csp\-inicio\-fin\-periodo\-just\-socio\-destinatarios\-2config.csp\-inicio\-fin\-periodo\-just\-socio\-destinatarios\-3config.csp\-inicio\-fin\-periodo\-just\-socio\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos relativos a los periodos de justificación acordados con los socios de proyectos que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail dentro de una mismo parámetro de configuración (unidad de gestión) se almacenarán en base de datos separadas por el carácter ",". |
| Destinatarios de comunicado de inicio de presentación de justificación de gastos de la unidad de gestión OTRIDestinatarios de comunicado de inicio de presentación de justificación de gastos de la unidad de gestión OPEDestinatarios de comunicado de inicio de presentación de justificación de gastos de la unidad de gestión UGIDestinatarios de comunicado de inicio de presentación de justificación de gastos de la unidad de gestión ARI | config.csp\-com\-inicio\-presentacion\-gasto\-destinatarios\-1config.csp\-com\-inicio\-presentacion\-gasto\-destinatarios\-2config.csp\-com\-inicio\-presentacion\-gasto\-destinatarios\-3config.csp\-com\-inicio\-presentacion\-gasto\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos relativos a los periodos de justificación económica de proyectos que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail dentro de una mismo parámetro de configuración (unidad de gestión) se almacenarán en base de datos separadas por el carácter ",". |
| Destinatarios de comunicado de inicio de presentación del seguimiento científico de la unidad de gestión OTRIDestinatarios de comunicado de inicio de presentación del seguimiento científico de la unidad de gestión OPEDestinatarios de comunicado de inicio de presentación del seguimiento científico de la unidad de gestión UGIDestinatarios de comunicado de inicio de presentación del seguimiento científico de la unidad de gestión ARI | config.csp\-com\-inicio\-pres\-seg\-cientifico\-destinatarios\-1config.csp\-com\-inicio\-pres\-seg\-cientifico\-destinatarios\-2config.csp\-com\-inicio\-pres\-seg\-cientifico\-destinatarios\-3config.csp\-com\-inicio\-pres\-seg\-cientifico\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos relativos a los periodos de seguimiento científico de proyectos que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail dentro de una mismo parámetro de configuración (unidad de gestión) se almacenarán en base de datos separadas por el carácter ",". |
| Destinatarios defecto CSP Vencimiento Periodo Pago Socio de la unidad de gestión OTRIDestinatarios defecto CSP Vencimiento Periodo Pago Socio de la unidad de gestión OPEDestinatarios defecto CSP Vencimiento Periodo Pago Socio de la unidad de gestión UGIDestinatarios defecto CSP Vencimiento Periodo Pago Socio de la unidad de gestión ARI | config.csp\-vencim\-periodo\-pago\-socio\-destinatarios\-1config.csp\-vencim\-periodo\-pago\-socio\-destinatarios\-2config.csp\-vencim\-periodo\-pago\-socio\-destinatarios\-3config.csp\-vencim\-periodo\-pago\-socio\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos relativos a los periodos de pago acordados con los socios de proyectos que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail dentro de una mismo parámetro de configuración (unidad de gestión) se almacenarán en base de datos separadas por el carácter ",". |
| Destinatarios defecto CSP Proyecto Fases de la unidad de gestión OTRIDestinatarios defecto CSP Proyecto Fases de la unidad de gestión OPEDestinatarios defecto CSP Proyecto Fases de la unidad de gestión UGIDestinatarios defecto CSP Proyecto Fases de la unidad de gestión ARI | config.csp\-pro\-fases\-destinatarios\-1csp\-pro\-fases\-destinatarios\-2config.csp\-pro\-fases\-destinatarios\-3csp\-pro\-fases\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos relativos a las fases configuradas sobre los proyectos que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail dentro de una mismo parámetro de configuración (unidad de gestión) se almacenarán en base de datos separadas por el carácter ",". |
| Destinatarios defecto CSP Proyecto Hito de la unidad de gestión OTRIDestinatarios defecto CSP Proyecto Hito de la unidad de gestión OPEDestinatarios defecto CSP Proyecto Hito de la unidad de gestión UGIDestinatarios defecto CSP Proyecto Hito de la unidad de gestión ARI | config.csp\-pro\-hitos\-destinatarios\-1config.csp\-pro\-hitos\-destinatarios\-2config.csp\-pro\-hitos\-destinatarios\-3config.csp\-pro\-hitos\-destinatarios\-5 | Direcciones de mail a las que se remitirán los avisos relativos a los hitos configurados sobre los proyectos que pertenezcan a la unidad de gestión correspondiente. Cada unidad de gestión será un parámetro de configuración. Las diferentes direcciones de mail dentro de una mismo parámetro de configuración (unidad de gestión) se almacenarán en base de datos separadas por el carácter ",". |
| Comunicados de participación en proyectos externos | | |
| Destinatarios defecto CSP Modificar Autorización del estado de participación de un proyecto externo | config.csp\-pro\-ex\-mod\-aut\-participacion\-destinatarios | Direcciones de mail a las que se remitirán los avisos relativos a los cambios de estado de las solicitudes de autorización de participación en proyectos externos. |
| Destinatarios defecto CSP Recepción Notificación CVN proyecto externo | config.csp\-pro\-recep\-not\-cvn\-pext\-destinatarios | Direcciones de mail a las que se remitirán los avisos relativos a la notificación de creación de un proyecto en el CVN de una persona investigadora. La notificación será remitida desde el sistema de gestión de CVN con el que deberá estar integrado el SGI. |
| Exportación de listados | | |
| Convocatorias \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-convocatoria\-listado" | Valor  con el que se limita la exportación del listado de convocatorias.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de convocatorias. El límite funciona de forma que si el número de registros que contiene el listado de convocatorias es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Solicitudes \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-solicitud\-listado" | Valor  con el que se limita la exportación del listado de solicitudes.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de solicitudes. El límite funciona de forma que si el número de registros que contiene el listado de solicitudes es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Solicitudes \- Presupuesto \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-solicitud\-presupuesto" | Valor  con el que se limita la exportación del presupuesto de una  solicitud.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el presupuesto de solicitudes. El límite funciona de forma que si el número de registros que contiene el presupuesto es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Proyectos \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-proyecto\-listado" | Valor  con el que se limita la exportación del listado de proyectos.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de proyectos. El límite funciona de forma que si el número de registros que contiene el listado de proyectos es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Proyectos \- Presupuesto \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-proyecto\-consulta\-presupuesto" | Valor  con el que se limita la exportación del presupuesto de un proyecto.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el presupuesto de proyecto. El límite funciona de forma que si el número de registros que contiene el presupuesto es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Grupos investigación \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-grupo\-listado" | Valor  con el que se limita la exportación del listado de grupos de investigación.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de grupos de investigación. El límite funciona de forma que si el número de registros que contiene el listado de grupos de investigación es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Ejecución Presupuestaria \- Estado actual \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-ejecucion\-presupuestaria\-estado\-actual" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Estado actual.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Estado actual. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Ejecución presupuestaria \- Estado actual es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Ejecución Presupuestaria \- Gastos \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-ejecucion\-presupuestaria\-gastos" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Ejecución presupuestaria \- Gastos.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Ejecución presupuestaria \- Gastos. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Gastos es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Ejecución Presupuestaria \- Ingresos \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-ejecucion\-presupuestaria\-ingresos" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Ingresos.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Ingresos. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Ingresos es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Detalle operaciones \- Gastos \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-detalle\-operaciones\-gastos" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Detalle de operaciones \- Gastos.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Detalles de operaciones \- Gastos. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Detalle de operaciones \- Gastos es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Detalle operaciones \- Ingresos \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-detalle\-operaciones\-ingresos" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Detalle de operaciones \- Ingresos.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Detalles de operaciones \- Ingresos. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Detalle de operaciones \- Ingresos es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Detalle operaciones \- Modificaciones \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-detalle\-operaciones\-modificaciones" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Detalle de operaciones \- Modificaciones.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Detalles de operaciones \- Modificaciones. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Detalle de operaciones \- Modificaciones es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Facturas y justificantes \- Facturas y gastos \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-facturas\-gastos" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Facturas y justificantes \- Facturas y Gastos.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Detalles de operaciones \- Gastos. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Detalle de operaciones \- Gastos es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Facturas y justificantes \- Viajes y dietas \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-viajes\-dietas" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Facturas y justificantes \- Viajes y Dietas.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Detalles de operaciones \- Viajes y Dietas. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Detalle de operaciones \- Viajes y Dietas es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Facturas y justificantes \- Personal contratado  \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-personal\-contratado" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Facturas y justificantes \- Personal contratado.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Detalles de operaciones \- Personal contratado. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Detalle de operaciones \- Personal contratado es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Facturas emitidas \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-facturas\-emitidas" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Facturas emitidas.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Facturas emitidas. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Facturas emitidas es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Ejecución Económica \- Seguimiento justificación \- Gastos justificados \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="csp\-exp\-max\-num\-registros\-excel\-seguimiento\-justificacion\-resumen" | Valor  con el que se limita la exportación del listado de Ejecución económica \- Seguimiento justificación \- Gastos justificados.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de Ejecución económica \- Seguimiento justificación \- Gastos justificados. El límite funciona de forma que si el número de registros que contiene el listado de Ejecución económica \- Seguimiento justificación \- Gastos justificados es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |

#### 1\.3 Configuración ETI

En esta pantalla se podrán aplicar cambios sobre los parámetros de configuración que afectan al módulo de Ética. 

![](/attachments/721420329/779190440.png)

  


  


A continuación se enumeran los parámetros o recursos de aplicación que pueden ser configurados en esta pantalla. Se indica, a modo informativo, la tabla y campo donde se almacena cada parámetro:



| Parámetro | Tabla y campo | Descripción |
| --- | --- | --- |
| Activación integración blockchain | cnf\_sgi.config.name\="eti\-blockchain\-enable" | Permite habilitar o no la integración con un servicio de blockchain externo para los documentos de acta de reunión. |
| Plantilla informe acta reuniones evaluación | cnf\_sgi.resources.name\="rep\-eti\-acta\-docx" | Plantilla utilizada para generar el documento PDF del informe de acta de reunión. |
| Plantilla informe favorable de evaluación | cnf\_sgi.resources.name\="rep\-eti\-evaluacion\-favorable\-memoria\-nueva\-docx" | Plantilla utilizada para generar el documento PDF del informe de evaluación favorable. |
| Plantilla informe favorable de evaluación para memoria de ratificación | cnf\_sgi.resources.name\="rep\-eti\-evaluacion\-favorable\-memoria\-ratificacion\-docx" | Plantilla utilizada para generar el documento PDF del informe de evaluación favorable para memorias de tipo ratificación. |
| Plantilla informe favorable de evaluación para memoria de modificación | cnf\_sgi.resources.name\="rep\-eti\-evaluacion\-favorable\-memoria\-modificacion\-docx" | Plantilla utilizada para generar el documento PDF del informe de evaluación favorable para memorias de tipo modificación. |
| Plantilla informe favorable de evaluación de retrospectiva | cnf\_sgi.resources.name\="rep\-eti\-evaluacion\-retrospectiva\-docx" | Plantilla utilizada para generar el documento PDF del informe favorable de evaluación de retrospectiva. |
| Plantilla de informe no favorable de evaluación | cnf\_sgi.resources.name\="rep\-eti\-evaluacion\-docx" | Plantilla utilizada para generar el documento PDF del informe de evaluación no favorable (no procede evaluar, pendiente de correcciones, favorable pendiente de revisión mínima y seguimiento final \- solicitud de aclaraciones). |
| Plantilla de informe del equipo evaluador | cnf\_sgi.resources.name\="rep\-eti\-ficha\-evaluador\-docx" | Plantilla utilizada para generar el documento PDF del informe del equipo evaluador. |
| Plantilla informe documento de memoria | cnf\_sgi.resources.name\="rep\-eti\-mxx\-docx" | Plantilla utilizada para generar el documento PDF asociado a los formularios de memoria: M10, M20, M30, retrospectiva, seguimiento anual y seguimiento final. |
| Exportación de listados | | |
| Solicitudes de evaluación \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="eti\-exp\-max\-num\-registros\-excel\-peticion\-evaluacion\-listado" | Valor  con el que se limita la exportación del listado de solicitudes de evaluación.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de solicitudes de evaluación. El límite funciona de forma que si el número de registros que contiene el listado de solicitudes de evaluación es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Memorias \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="eti\-exp\-max\-num\-registros\-excel\-peticion\-evaluacion\-listado" | Valor  con el que se limita la exportación del listado de memorias.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de memorias. El límite funciona de forma que si el número de registros que contiene el listado de memorias es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Convocatorias de reunión \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="eti\-exp\-max\-num\-registros\-excel\-memoria\-listado" | Valor  con el que se limita la exportación del listado de convocatorias de reunión.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de convocatorias de reunión. El límite funciona de forma que si el número de registros que contiene el listado de convocatorias de reunión es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Evaluaciones \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="eti\-exp\-max\-num\-registros\-excel\-evaluacion\-listado" | Valor  con el que se limita la exportación del listado de evaluaciones.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de evaluaciones El límite funciona de forma que si el número de registros que contiene el listado de evaluaciones es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Seguimientos \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="eti\-exp\-max\-num\-registros\-excel\-seguimiento\-listado" | Valor  con el que se limita la exportación del listado de seguimientos.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de seguimientos. El límite funciona de forma que si el número de registros que contiene el listado de seguimientos es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Actas \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="eti\-exp\-max\-num\-registros\-excel\-acta\-listado" | Valor  con el que se limita la exportación del listado de actas.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de actas. El límite funciona de forma que si el número de registros que contiene el listado de actas es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Evaluadores \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="eti\-exp\-max\-num\-registros\-excel\-evaluador\-listado" | Valor  con el que se limita la exportación del listado de evaluadores.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de evaluadores. El límite funciona de forma que si el número de registros que contiene el listado de evaluadores es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |

  


  


#### 1\.4 Configuración PII

En esta pantalla se podrán aplicar cambios sobre los parámetros de configuración que afectan al módulo de PII. El mecanismo de uso es el mismo que el indicado en el apartado anterior.

  


![](/attachments/721420329/779190441.png)

  


A continuación se enumeran los parámetros o recursos de aplicación que pueden ser configurados en esta pantalla. Se indica, a modo informativo, la tabla y campo donde se almacena cada parámetro:



| Parámetro | Tabla y campo | Descripción |
| --- | --- | --- |
| Destinatarios comunicado aviso fin de plazo de entrada en fases nacionales/regionales de una Solicitud Protección OTRI | cnf\_sgi.config.name\="fin\-plaz\-fases\-nac\-reg\-sol\-prot\-destinatarios" | Direcciones de mail a las que se remitirán los avisos relativos a la notificación de entrada en fases nacionales/regionales de las solicitudes de protección de las invenciones. |
| Destinatarios comunicado de fecha fin prioridad de la solicitud protección OTRI | cnf\_sgi.config.name\="pii\-com\-fecha\-fin\-pri\-sol\-prot\-destinatarios" | Direcciones de mail a las que se remitirán los avisos relativos al fin de prioridad de las solicitudes de protección de las invenciones. |
| Destinatarios comunicado fecha límite de procedimiento | cnf\_sgi.config.name\="pii\-fecha\-limite\-procedimiento\-destinatarios" | Direcciones de mail a las que se remitirán los avisos relativos a la finalización de los procedimientos registrados en las invenciones. |
| Exportación de listados | | |
| Invenciones \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="pii\-exp\-max\-num\-registros\-excel\-invencion\-listado" | Valor  con el que se limita la exportación del listado de invenciones.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de invenciones. El límite funciona de forma que si el número de registros que contiene el listado de invenciones es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |
| Solicitudes de protección \- Número máximo de registros en la exportación del listado | cnf\_sgi.config.name\="pii\-exp\-max\-num\-registros\-excel\-solicitud\-proteccion" | Valor  con el que se limita la exportación del listado de solicitudes de protección de una invención.Este valor se utiliza para limitar el número de registros que se exportan a fichero xslx o csv desde la funcionalidad de exportación incluida en el listado de solicitudes de protección de una invención. El límite funciona de forma que si el número de registros que contiene el listado de solicitudes de protección es mayor o igual que el número indicado en esta variable de control, no se habilita el botón de exportación. |

  


#### 1\.5 Configuración PRC

En esta pantalla se podrán aplicar cambios sobre los parámetros de configuración que afectan al módulo de PRC. El mecanismo de uso es el mismo que el indicado en el apartado anterior.

![](/attachments/721420329/779190442.png)

  


  


A continuación se enumeran los parámetros o recursos de aplicación que pueden ser configurados en esta pantalla. Se indica, a modo informativo, la tabla y campo donde se almacena cada parámetro:



| Parámetro | Tabla y campo | Descripción |
| --- | --- | --- |
| Plantilla de informe de detalle de grupo | cnf\_sgi.resources.name\="rep\-prc\-detalle\-grupo\-docx" | Plantilla utilizada en el informe PDF de detalle de grupo |
| Plantilla de informe del resumen de puntuación de grupos | cnf\_sgi.resources.name\="rep\-prc\-resumen\-puntuacion\-grupos\-docx" | Plantilla utilizada en el informe PDF de resumen de puntuación de grupos |
| Plantilla de informe de detalle de producción de investigador/a | cnf\_sgi.resources.name\="rep\-prc\-detalle\-produccion\-investigador\-docx" | Plantilla utilizada en el informe PDF de detalle de producción científica de investigador/a |
| Comunicados | | |
| Destinatarios ejecución proceso baremación | cnf\_sgi.config.name\="prc\-proceso\-baremacion\-destinatarios" | Direcciones de mail a las que se remitirán los avisos del estado de ejecución del proceso de baremación PRC |




