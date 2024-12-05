# Hércules : CSP \- Timesheet



### Descripción

La sección Timesheet del módulo CSP dispondrá de un acceso independiente a Proyectos si bien desde cada proyecto se podrá acceder al listado de los timesheet que tenga vinculados. Existirá un timesheet por cada investigador y mes natural. En cada timesheet se mostrarán los proyectos en los que participe el investigador (de acuerdo al periodo del mismo) y que tengan marcada la característica de "Requiere timesheet" (apartado Datos generales del proyecto). Si además el proyecto está desglosado en paquetes de trabajo (apartado Datos generales del proyecto), cada línea de proyecto se desglosará en los paquetes de trabajo en los que participe el investigador (de acuerdo a la duración de los mismos). De esta forma en cada timesheet mensual se podrá detallar la dedicación diaria del investigador para cada proyecto y/o paquete de trabajo en los que participe.

  


Para incluir los proyectos/paquetes en cada timesheet de cada investigador se tendrán en cuenta que el periodo del timesheet (mes\-año) esté dentro de los rangos de fechas:

* Fecha de inicio y fin que tenga asignadas la participación del investigador dentro del equipo de proyecto.
* Fecha de inicio y fin que tenga asignadas el investigador en la distribución de cada paquete de trabajo del proyecto.

  


En cada timesheet figurarán además otras actividades comunes, ajenas a los proyectos de investigación y que formen parte de la dedicación del investigador.  Ejemplos de este tipo de actividades son: festivos, vacaciones, docencia, bajas, otras ausencias. Estas actividades deberán ser identificadas en el periodo de implantación del SGI y vinculadas a servicios de integración, de los incluidos en el SGI, a partir de los que se va a obtener el detalle de su dedicación diaria. Los servicios de integración de los que el SGI estará provisto para este fin serán:

* Sistema de docencia. El sistema de gestión académica deberá proporcionar las horas de dedicación diaria entre un rango de fechas. El total de  horas diarias incluirá no solo la docencia, sino tutorías y/o actividad de gestión derivada. Es decir, se debe proporcionar  al SGI el total de horas diario que no podrá ser dedicado a tareas de investigación.
* Sistema de RRHH. El sistema de RRHH debe proporcionar las ausencias diarias en un rango de fechas. El sistema de RRHH debe proporcionar las ausencias con una tipología que permita asociarlas a los tipos de actividades comunes identificadas, detallando el número de horas de ausencia en caso que no aplique para la jornada completa. Se entienden como ausencias (vacaciones, festivos, bajas temporales, ausencias parciales, permisos, etc.) [REQ \- NF \- INT \- 0130 \- SGRRHH \- 0120 \- Detalle de ausencias y vacaciones](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0130+-+SGRRHH+-+0120+-+Detalle+de+ausencias+y+vacaciones&linkCreation=true&fromPageId=597853751 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0130+-+SGRRHH+-+0120+-+Detalle+de+ausencias+y+vacaciones&linkCreation=true&fromPageId=597853751")

  


En caso de que no sea posible disponer de una integración con estos sistemas de forma que se obtenga una dedicación diaria para estas actividades comunes, ésta deberá ser introducida manualmente en cada uno de los timesheet con las siguientes excepciones:

* Festivos. Podrán ser cargados por los ACT\-CSP\-004\-Administrador desde el apartado de Configuración del módulo CSP. Los festivos aplicarán de manera común para todos timesheet independientemente del proyecto y/o investigador.
* Vacaciones. Se podrá establecer en la configuración del SGI el número de jornadas de vacaciones para cada uno de los tipos de contrato que puedan existir y que a su vez deberán recuperarse a partir de la integración con el sistema de RRHH. Además se establecerá un periodo estándar para disfrute de las mismas. Este periodo será utilizado de manera común en todos los timesheets de todos los investigadores.

  


### Estados y ciclo de vida

Los timesheet tendrán definido el siguiente ciclo de estados:

* Propuesta
* Abierto
* Validado IM
* Validado IP. La inclusión de estado podrá ser omitida por configuración en la implantación del SGI.
* Validado unidad.
* Subsanación
* Cerrado

  


Es importante destacar que este estado hace referencia al timesheet completo, es decir, a un periodo mensual de un investigador, incluyendo todos los proyectos que pueda incluir. Es decir, el SGI implementa un mecanismo de gestión de timesheet en base  a periodos mensuales completos y no de forma individualizada por proyecto (salvo para el estado "validado IP"). Esto no debe confundirse con la generación de las hojas de firma de timesheet, que sí podrán ser generadas para cada mes y proyecto particular, pero siempre teniendo en cuenta el estado del timesheet completo con las horas imputadas en todos los proyectos que contenga el timesheet.

De acuerdo a lo anterior, y teniendo en cuenta la activación en la configuración del SGI del estado "Validado IP",  un timesheet solamente podrá pasar a estado "Validado unidad de gestión" cuando hubiera sido validado individualmente por cada IP de todos los proyectos incluidos en el periodo.

El estado inicial de un timesheet será el estado "propuesta". Mientras el timesheet permanezca en este estado aún no será visible para los investigadores. El paso del estado "propuesta" a "abierto" podrá realizarse de forma automática y/o manual por parte de los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador. El paso en modo automático estará activado o no de acuerdo a un parámetro de configuración de la implantación del SGI que conllevará además la especificación del periodo de antelación con el que se producirá este cambio. Este periodo se tomará siempre en referencia al primer día del mes/año con el que se corresponda el timesheet, y será el mismo para todos los timesheet.

Una vez que el timesheet figure en estado "abierto", estará visible para los investigadores a través del acceso que éstos tendrán habilitado al SGI. En este estado, el investigador podrá modificar la dedicación diaria a cada uno de los proyectos/paquetes de trabajo que figuren en el timesheet. Será el investigador quien deba poner el timesheet en estado "Validado IM" (investigador miembro). Una vez que haya indicado este estado no podrá modificar el timesheet. 

El paso a estado "Validado IM"  supondrá la creación de un aviso que será gestionado por el módulo global del SGI [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md"). Este aviso será recepcionado por el ACT\- CSP\-001\-Investigador que actúe como IP del proyecto o por los ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente, en caso que no esté activado el estado "validado IP".

Del estado "validado IM" el timesheet podrá pasar a estado "validado IP", si así lo establece la configuración del SGI. En este caso la validación debe de ser realizada por cada ACT\-CSP\-001\-Investigador responsable (rol principal) de cada proyecto incluido en el timesheet, de forma que, hasta que no se alcance el estado "Validado IP" para cada uno de los proyectos, el timesheet no  podrá pasar al siguiente estado. El IP solamente podrá realizar el cambio de estado del timesheet (en este caso afectando únicamente al proyecto que le corresponda), no podrá modificar las  horas del timesheet de otro miembro del equipo. Cualquier corrección que desee precisar sobre las horas aportadas por el miembro en el timesheet deberá ser recogido a través del campo comentario que estará disponible en la pantalla de validación del timesheet. La modificación deberá ser introducida por el miembro volviendo a desencadenar el flujo de validación con IP. En caso de requerir esta corrección el estado indicado por ACT\-CSP\-001\-Investigador responsable (rol principal) será "Subsanación"

El paso a estado "Validado IP" supondrá la generación de un aviso en el módulo [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md"). Este aviso será remitido al miembro al que pertenece el timesheet validado.

Cuando el timesheet alcance el estado "validado IP" para todos los proyectos que incluya, se creará un nuevo aviso en [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") para ser recibido por los ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente.

En caso que por configuración se establezca no hacer uso del estado "validado IP", el timesheet podrá pasar desde "validado IM" a "validado unidad". Los ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente serán los responsables de poner cada timesheet en estado "Validado unidad" o "Subsanación", aportando en este caso el comentario correspondiente, dirigido hacia  ACT\-CSP\-001\-Investigador a quien corresponde el timesheet.

Ya sea desde "Validado IP" o "Validado IM" (en función de si está o no activada la revisión por parte de IP) o desde "Validado Unidad", la Unidad de gestión podrá pasar el timesheet a estado "Subsanación" o "Validado Unidad", llevando siempre la "Subsanación" a que sea el ACT\-CSP\-001\-Investigador titular del TS quien  realice los cambios sobre el mismo. Este ciclo desde "Validado Unidad" a "Subsanación" será posible de forma iterativa hasta que la Unidad de gestión marque el timesheet con el estado "Cerrado".

  


### Hojas de firma de timesheet

La generación de las hojas de firma de timesheet podrá ser realizada por cada miembro del equipo a través de su acceso al SGI. Un timesheet podrá derivar en la generación de varias hojas de firma, una por cada uno de los proyectos que estén incluidos en el timesheet. Las hojas de firma solamente podrán ser generadas si el timesheet se encuentra en estado "Validado unidad" o "Cerrado".

El flujo de firma de las hojas de timesheet se establecerá a través de la integración del SGI con el sistema de firma digital corporativo [REQ \- NF \- INT \- 0110 \- SFIDI \- 001 \- Hojas de firma de timesheet](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0110+-+SFIDI+-+001+-+Hojas+de+firma+de+timesheet&linkCreation=true&fromPageId=597853751 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0110+-+SFIDI+-+001+-+Hojas+de+firma+de+timesheet&linkCreation=true&fromPageId=597853751"). De acuerdo a la capacidad de integración y posibilidad de configuración de un flujo de firma variable (en función del IP y unidad de gestión), el proceso de firma de los timesheet podrá estar más o menos automatizado. El sistema de firma digital deberá informar al SGI el momento en el que el flujo de firma definido ha finalizado, devolviendo al SGI el documento final firmado por todos los involucrados en el flujo definido. El documento ya firmado podrá ser descargado desde el SGI.

La plantilla de hoja de firma deberá ser establecida en la configuración de cada proyecto (Datos generales), y será generada haciendo uso del módulo común del SGI de generación de informes [wip\_REP\-CSP\-003\-Informe de hoja de firma](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=wip_REP-CSP-003-Informe+de+hoja+de+firma&linkCreation=true&fromPageId=597853751 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=wip_REP-CSP-003-Informe+de+hoja+de+firma&linkCreation=true&fromPageId=597853751")

  


### Distribución de timesheet

En función de un parámetro que se establecerá en configuración, el SGI podrá realizar un propuesta inicial de la distribución de horas de dedicación de cada investigador a cada proyecto. Para ello se tendrán en cuenta los parámetros de cada proyecto así cómo de la relación laboral del investigador con la Universidad. Los parámetros implicados serán:

* Los proyectos que tengan marcado "requiere timesheet" con el valor "No", no figurarán en el timesheet ni darán lugar a la generación de hojas de firma pero sí se tendrán en cuenta las horas de dedicación al mismo para la distribución
* Las horas de dedicación de los proyectos que tengan marcado "paquetes de trabajo" con el valor "No", vendrán determinadas por el valor "horas totales dedicación" que se especifique en el equipo de trabajo junto con las fechas de participación (inicio y fin) en el equipo.
* Las horas de dedicación de los proyectos que tengan marcado "paquetes de trabajo" con el valor "Sí", vendrán determinadas por el valor persona/mes del paquete de trabajo, por las horas totales de dedicación del miembro en el paquete de trabajo y por las fechas de participación en el mismo.
* Número de horas diarias y anuales que le corresponden al investigador de acuerdo a su contrato laboral.

  


Los timesheet resultantes de esta distribución estarán en estado "propuesto" para continuar a partir del mismo el ciclo de estados definido.

  


  


### Vista ACT\-CSP\-001\-Investigador miembro de equipo

Los ACT\-CSP\-001\-Investigador tendrán acceso a la información de sus timesheet. El timesheet de cada periodo (mes natural) incluirá los proyectos para los que el ACT\-CSP\-001\-Investigador esté incluido en el Equipo, de acuerdo a las fechas de pertenencia al mismo. Los proyectos disponibles en el timesheet serán aquellos que tuvieran marcada la opción "requiere timesheet" en sus Datos generales. Por defecto  el listado de timesheet de un ACT\-CSP\-001 estará precargado con aquellos que estén en estado "Abierto" o "Subsanación". Para acceder al resto de timesheets el ACT\-CSP\-001\-Investigador debe utilizar el filtro de búsqueda. 

Los timesheet en estado "Abierto" o "Subsanación" podrán ser modificado por el ACT\-CSP\-001\-Investigador, que podrá modificar el número de horas diarias de dedicación a cada uno de los proyectos/paquetes de trabajo que estén incluidos en el timesheet (no podrá añadir nuevos proyectos/paquetes de trabajo), ni modificar la base del timesheet (desglose de actividades comunes, festivos, etc.)

El ACT\-CSP\-001 deberá pasar cada timesheet a estado "Validado IM" para desencanedar el flujo de aprobación reflejado en apartado de Estados y ciclo de vida.

El ACT\-CSP\-001\-Investigador tendrá acceso a las hojas de firma derivadas de sus timesheet, y será el encargado de iniciar el flujo de firma de las mismas, que será resuelto a través de la integración son el sistema de firma digital  [REQ \- NF \- INT \- 0110 \- SFIDI \- 001 \- Hojas de firma de timesheet](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0110+-+SFIDI+-+001+-+Hojas+de+firma+de+timesheet&linkCreation=true&fromPageId=597853751 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0110+-+SFIDI+-+001+-+Hojas+de+firma+de+timesheet&linkCreation=true&fromPageId=597853751").

  


### Vista ACT\-CSP\-001\-Investigador con rol principal

Los ACT\-CSP\-001\-Investigador con rol principal tendrán acceso a la  información de sus timesheet y a la validación de los timesheet de los miembros de los equipos de aquellos proyectos en los que actúan con rol principal. Como rol IP tendrán visibilidad de los timesheet de todos los miembro del equipo una vez que éstos los hubieran pasado individualmente a "Validado IM".  IP  no podrá modificar las horas del timesheet sino solamente marcar el estado de validación:

* "Subsanación". El timesheet deberá volver a ser revisado por el miembro del equipo a partir de las observaciones introducidas por IP.
* "Validado IP". El timesheet podrá avanzar al siguiente paso en el ciclo de estados, pasando a estar disponible para los ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente.

Del mismo modo ACT\-CSP\-001\-Investigador con rol principal  accederá a las hojas de firma de todos los timesheet de los miembros del equipo de proyecto de acuerdo al flujo marcado por el sistema de firma digital [REQ \- NF \- INT \- 0110 \- SFIDI \- 001 \- Hojas de firma de timesheet](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0110+-+SFIDI+-+001+-+Hojas+de+firma+de+timesheet&linkCreation=true&fromPageId=597853751 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0110+-+SFIDI+-+001+-+Hojas+de+firma+de+timesheet&linkCreation=true&fromPageId=597853751").

  





