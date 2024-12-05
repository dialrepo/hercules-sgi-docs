# Hércules : IU\-CSP\-0600\-021 \- Histórico de estados



## Formulario Timesheet \- Histórico de estados

Formulario que permite consultar el listado de estados por los que ha pasado el timesheet. Cada vez que se modifica el estado del timesheet se añadirá a la tabla de "histórico estado" el estado y la fecha del estado se corresponderá siempre con la fecha en la que se realiza la acción de "Guardar". El apartado histórico de estados comenzará a estar disponible una vez que tiene el primer cambio de estado, es decir, cuando el timesheet pasa de estado "Propuesta" a estado "Abierto" (la fecha habrá sido almacenada de forma automática por el sistema en el momento en que se guarda el timesheet por primera vez).

El histórico de estados estará disponible para:

* Responsable de proyecto: ACT\- CSP\-001\-Investigador con rol principal
* Unidades de gestión: ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Periodo | | Texto corto | Mes y año del periodo de registro de horas de dedicación |
| Estado | | Texto corto | Estado actual del timesheet |
| Histórico de estados del timesheet | | | |
| Estado | | Texto corto | Estado del timesheet.Los timesheet tendrán definido el siguiente ciclo de estados:* Propuesta * Abierto * Validado IM * Validado IP. La inclusión de estado podrá ser omitida por configuración en la implantación del SGI. * Validado unidad. * Subsanación * Cerrado |
| Fecha estado | | Fecha | Fecha en la que se ha realizado el cambio de estado del timesheet |
| Titulo proyecto | | Texto corto | Título del proyecto vinculado al timesheet |
| Nombre y apellidos IP | | Texto corto | Nombre y apellidos del IP que ha validado el timesheet del investigador.Los datos se recuperarán a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Comentario | | Texto largo | Comentario asociado al cambio de estado |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
|  |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Descripción CU |
| --- | --- | --- |
| Guardar | Guarda el timesheet con la información introducida en el formulario.Al guardar un timesheet se guarda la información de todos los apartados de definición del timesheet. | No aplica guardar ningún cambio sobre el histórico de estados, toda la información es de solo lectura. |
| Cancelar | Retorna al listado de timesheet sin salvar los posibles cambios.Al cancelar un timesheet se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones

  
  
  
  
  
  





