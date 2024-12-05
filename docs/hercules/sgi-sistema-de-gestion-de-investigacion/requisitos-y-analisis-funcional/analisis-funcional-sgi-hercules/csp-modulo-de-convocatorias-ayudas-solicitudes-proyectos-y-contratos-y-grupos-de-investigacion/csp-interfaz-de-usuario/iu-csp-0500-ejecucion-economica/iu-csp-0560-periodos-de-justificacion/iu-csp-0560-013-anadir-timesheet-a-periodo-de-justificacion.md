# Hércules : IU\-CSP\-0560\-013 \- Añadir timesheet a periodo de justificación



## Formulario Añadir timesheet a periodo de justificación

Formulario que permite añadir uno o varios timesheet a la justificación de un periodo.

Los timesheet disponibles registrados desde la sección CSP \- Timesheet.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Añadir timesheet a la justificación del periodo | | | |
| Periodo | Año | Numérico entero genéricoOpcional | Intervalo de fechas entre las que se debe encontrar el periodo de timesheet |
| Mes | Numérico entero genéricoOpcional |
| Persona | | ReferenciaTextoOpcional | Persona vinculada al periodo de timesheet.Pendiente de profundización de análisis. Este buscador podría pasar a ser un combo con el listado de personas que figuren en el equipo de proyecto y que tengan un rol del grupo "equipo investigación",  ya que son las únicas cuyo timesheet puede ser añadido a la justificación.La búsqueda se realizará a través del formulario [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") donde será resuelta a través de los mecanismos de integración proporcionados por el SGI hacia el sistema de gestión de personas corporativo [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")[.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") |
| Buscar | | Icono de acción | Acción "Buscar" |
| Filtrar | | Icono de acción | Acción "Filtrar" |
| Listado de facturas y justificantes | | | |
|  | | CheckBooleano | Permite seleccionar los timesheet a incluir en el periodo de justificación de forma individual, marcando el check de la columna, o seleccionar todos los timesheet, marcando el check de la cabecera de la tabla. |
| Periodo timesheet | | Texto corto | Mes y año del periodo de registro de horas de dedicación |
| Persona | | Texto corto | Nombre y apellidos de la persona vinculada al periodo de timesheet |
| NIF | | Texto corto | NIF de la persona vinculada al periodo de timesheet |
| Horas | | Numérico entero genérico | Número de horas de dedicación registradas para la persona y periodo indicados |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Muestra la pantalla de búsqueda para seleccionar una persona. | Pendiente de profundización de análisis. Este buscador podría pasar a ser un combo con el listado de personas que figuren en el equipo de proyecto y que tengan un rol del grupo "equipo investigación",  ya que son las únicas cuyo timesheet puede ser añadido a la justificación.La búsqueda se realizará a través del formulario [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") haciendo uso del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")[.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")Pendiente de profundización de análisis: Se le deberá pasar a este buscador los colectivos asociados en la tabla "rol proyecto colectivo" a cualquier rol activo de la tabla "rol proyecto" que sea del tipo "equipo investigación" (campo "equipo") . |  |
| Filtrar | Aplica los filtros introducidos sobre la lista de timesheet mostrando las que cumplen las condiciones |  |  |
| Guardar | Añade el/los timesheets seleccionados a la justificación del periodo |  |  |
| Cancelar | Retorna al formulario de justificación sin salvar los posibles cambios |  |  |

### Acciones

  
  
  
  
  
  





