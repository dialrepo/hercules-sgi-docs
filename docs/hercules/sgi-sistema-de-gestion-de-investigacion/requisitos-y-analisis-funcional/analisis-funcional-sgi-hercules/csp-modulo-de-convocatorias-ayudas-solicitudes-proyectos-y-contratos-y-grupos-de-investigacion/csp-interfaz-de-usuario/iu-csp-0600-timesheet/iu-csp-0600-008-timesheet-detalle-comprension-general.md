# Hércules : IU\-CSP\-0600\-008 \- Timesheet \- Detalle \- Comprensión general



## Formulario Timesheet \- Detalle

Formulario que muestra el timesheet de un investigador y mes. El timesheet incluirá los proyectos en los que participe el investigador (de acuerdo al periodo del mismo) y que tengan marcada la característica de "Requiere timesheet" (apartado "Datos generales" del proyecto). Si además el proyecto está desglosado en paquetes de trabajo (apartado Datos generales del proyecto), cada línea de proyecto se desglosará en los paquetes de trabajo en los que participe el investigador (de acuerdo a la duración de los mismos). De esta forma en cada timesheet mensual se podrá detallar la dedicación diaria del investigador para cada proyecto y/o paquete de trabajo en los que participe.

Existirá un timesheet por cada investigador y mes natural.

En cada timesheet figurarán además otras actividades comunes, ajenas a los proyectos de investigación y que formen parte de la dedicación del investigador.  Ejemplos de este tipo de actividades son: festivos, vacaciones, docencia, bajas, otras ausencias. Estas actividades deberán ser identificadas en el periodo de implantación del SGI y vinculadas a servicios de integración, de los incluidos en el SGI, Sistema de docencia y Sistema de RRHH, a partir de los que se va a obtener el detalle de su dedicación diaria.

En caso de que no sea posible disponer de una integración con estos sistemas de forma que se obtenga una dedicación diaria para estas actividades comunes, ésta deberá ser introducida manualmente en cada uno de los timesheet con las excepciones de festivos y vacaciones que serán gestionados en el  apartado de Configuración del módulo CSP.

Los timesheet tendrán definido el siguiente ciclo de estados:

* Propuesta:
	+ Estado inicial de un timesheet.
	+ Propuesta inicial de la distribución de horas de dedicación de cada investigador a cada proyecto.
	+ Mientras el timesheet permanezca en este estado aún no será visible para los investigadores.
* Abierto:
	+ El timesheet estará visible para los investigadores a través del acceso que éstos tendrán habilitado al SGI.
	+ El investigador podrá modificar la dedicación diaria a cada uno de los proyectos/paquetes de trabajo que figuren en el timesheet y poner el timesheet en estado "Validado IM" (investigador miembro).
* Validado IM:
	+ El investigador propietario no podrá realizar modificaciones.
	+ El paso a este estado supondrá la creación de un aviso que será gestionado por el módulo global del SGI [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md"). Este aviso será recepcionado por el ACT\- CSP\-001\-Investigador que actúe como IP del proyecto o por los ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente, en caso que no esté activado el estado "validado IP".
* Validado IP:
	+ La inclusión de estado podrá ser omitida por configuración en la implantación del SGI. En caso que por configuración se establezca no hacer uso del estado "Validado IP", el timesheet podrá pasar desde "Validado IM" a "Validado unidad"
	+ El timesheet no podrá pasar a este estado hasta que todos los proyectos alcancen el estado "validado IP".
	+ El paso a estado "Validado IP" supondrá la generación de un aviso en el módulo [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md"). Este aviso será remitido al miembro al que pertenece el timesheet validado.
	+ Cuando el timesheet alcance el estado "validado IP" para todos los proyectos que incluya, se creará un nuevo aviso en [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") para ser recibido por los ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente.
* Validado unidad:
	+ Los gestores de la unidad serán los encargados de pasar el timesheet a este estado.
	+ Ya se podrán generar las hojas de firma.
* Subsanación:
	+ Estado al que se puede llegar desde los estados "Validado IM", "Validado IP" o "Validado unidad" en caso de que sea necesario realizar correcciones por parte del investigador propietario del timesheet.
* Cerrado:
	+ Estado final.
	+ El timesheet ya no puede ser modificado.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Datos generales de la justificación del periodo | | | |
| Investigador | | Texto corto | Nombre y apellidos del investigador propietario del timesheet.Se mostrará para los actores ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador, ACT\-CSP\-005\-Visor cuando lleguen al detalle del timesheet a través de [IU\-CSP\-0500\-001 \- Búsqueda y listado de timesheet \- Unidades de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-001-busqueda-y-listado-de-timesheet-unidades-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-001-busqueda-y-listado-de-timesheet-unidades-de-gestion.md") |
| Periodo | | Texto corto | Mes y año del periodo de registro de horas de dedicación |
| Estado | | SelectorTexto cortoOpcional | * El ACT\- CSP\-001\-Investigador (propietario del timesheet) podrá modificar la dedicación diaria a cada uno de los proyectos/paquetes de trabajo que figuren en el timesheet mientras el estado sea: 	+ Abierto 	+ Subsanación  Una vez vez haya introducido las horas, podrá asignar al timesheet el estado "Validado IM" y ya no podrá realizar ninguna modificación. El paso a estado "Validado IM"  supondrá la creación de un aviso que será gestionado por el módulo global del SGI [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md"). Este aviso será recepcionado por el ACT\- CSP\-001\-Investigador que actúe como IP del proyecto o por los ACT\-CSP\-003\-Gestor de la unidad de gestión correspondiente, en caso que no esté activado el estado "validado IP".* El ACT\-CSP\-001\-Investigador (IP) podrá modificar el estado del timesheet a "Validado IP" o "Subsanación", en caso de  mientras el estado sea: 	+ Validado IM  No podrá realizar modificaciones sobre la dedicación introducida por el ACT\- CSP\-001\-Investigador (propietario del timesheet).* El ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán modificar el estado del timesheet que figuren en el timesheet mientras el estado sea: 	+ Validado IM 	+ Validado IP: La inclusión de estado podrá ser omitida por configuración en la implantación del SGI. 	+ Validado unidad 	+ Subsanación * El ACT\-CSP\-005\-Visor verá la pantalla en modo consulta, es decir, no podrá modificar ni el estado ni la dedicación de horas. |
| Comentario | | Texto largoOpcional | Comentario asociado al cambio de estado* El ACT\- CSP\-001\-Investigador (propietario del timesheet) podrá ver el comentario en modo lectura. * El ACT\- CSP\-001\-Investigador (IP), ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir un comentario al pasar el timesheet a estado "Subsanación" dando las indicaciones necesarias al ACT\- CSP\-001\-Investigador (propietario del timesheet) para que realice las correcciones oportunas sobre el registro de horas |
| Validado IP | | BooleanoTexto corto | Indica si el proyecto ya ha sido validado por el IP.Tomará los valores "Sí"/"No" |
| Titulo proyecto | | Texto corto | Título del proyecto vinculado al timesheet |
| Paquete | | Texto corto | Paquetes de trabajo en los que ha sido desglosado el proyecto (apartado "Datos generales" del proyecto) |
| Días | | Numérico entero genérico | Para cada paquete de trabajo, de cada proyecto, se mostrarán las columnas correspondientes a los días del mes del periodo de timesheet que permitirán la introducción de la dedicación diaria |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
|  |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Guarda el timesheet con la información introducida en el formulario.Al guardar un timesheet se guarda la información de todos los apartados de definición del timesheet. |  |
| Cancelar | Retorna al listado de timesheet sin salvar los posibles cambios.Al cancelar un timesheet se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones

  
  
  
  
  
  





