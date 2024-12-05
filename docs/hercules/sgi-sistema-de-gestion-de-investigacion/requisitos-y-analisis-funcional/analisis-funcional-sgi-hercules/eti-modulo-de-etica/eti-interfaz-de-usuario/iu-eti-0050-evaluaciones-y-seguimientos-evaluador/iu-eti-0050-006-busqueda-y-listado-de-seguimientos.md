# Hércules : IU\-ETI\-0050\-006 Búsqueda y listado de seguimientos



## Formulario de Búsqueda y listado de seguimientos

Pantalla que muestra un formulario, que permite aplicar filtros sobre el listado de seguimientos asociadas a memorias en estado "En evaluación seguimiento anual"  "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" y asignadas al evaluador o técnico evaluador o que el evaluador sea miembro activo del comité siempre y cuando no tenga conflicto de interés con ninguna persona asignada a la memoria (asignación de tareas)

El listado de evaluaciones de tipo seguimiento a mostrar se obtiene buscando las memorias en estado "En evaluación seguimiento anual"  "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" y para esas memorias sacar la evaluación de la versión mayor (que será la que no esta evaluada y se tiene que evaluar) y asignadas al evaluador que está entrando en la aplicación o que sea miembro activo del comité. Tiene que estar asignado como evaluador 1 o evaluador 2 de la evaluación o bien ser miembro activo del comité (tabla "evaluador" sin fecha baja o con fecha baja mayor de la actual del comité de la evaluación) y que en su lista de conflicto de interés no este ninguna persona del equipo asignada a la memoria (tabla "tarea").

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Comité | Desplegableabreviatura | Listado con los tres comités: CEISH, CEEA y CEIAB |
| Tipo de evaluación | DesplegableOpcional | Listado con los valores:* Seguimiento anual * Seguimiento final |
| Fecha evaluación(desde \- hasta) | fechaOpcional | Rango de fechas por las que se busca la fecha de dictamen.Fecha dictamen mayor o igual a fecha desdeFecha dictamen menor o igual a fecha hasta |
| Referencia memoria | referenciasOpcional | Identifica a una memoria. Tiene un formato Mxx/YYYY/secuenciaO:* xx es 10,20 o 30 dependiente del comité. CEISH es 10, CEEA es 20 y CEIAB es 30 * YYYY es el año * secuencia en un código secuencial desde 000 hasta 999 por año y comité. * O: puede ser vacío si la memoria es de tipo "Nueva", R si es de tipo ratificación "R" o MR si es de tipo "Modificación relevante" |
| Listado de resultados | | |
| Comité | abreviatura | Comité de la convocatoria. |
| Tipo evaluación | Texto corto | Tipo de evaluación. Valores posibles:* Seguimiento anual * Seguimiento final |
| Tipo memoria | Texto corto | Tipo de memoria. Valores posibles:* Nueva * Modificación * Ratificación |
| Fecha evaluación | fecha | Fecha dictamen. |
| Referencia memoria | referencias | Referencia memoria a evaluar o evaluada. |
| Solicitante | Texto corto | Nombre y apellidos de la persona solicitante de la petición de evaluación, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Versión | Numérico decimal genérico | Número de versión de la memoria. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica los filtros introducidos sobre la lista de Memorias en evaluación mostrando las que cumplen las condiciones | [CU\-ETI\-0050\-003 \- Buscar Seguimientos memoria](http://CU-ETI-0050-003 - Buscar Seguimientos memoria "http://CU-ETI-0050-003 - Buscar Seguimientos memoria") | ETI\-EVC\-VRETI\-EVC\-INV\-VRETI\-EVC\-EVALRETI\-EVC\-INV\-EVALR |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Memorias en evaluación (Seguimientos) |  |  |
| Evaluar | Se va a la pantalla de evaluar del evaluador. Consiste en crear los comentarios oportunos.En caso de que entre la fecha actual mas tres días es igual o mayor a la fecha de evaluación no le saldrá esta acción activada para las memorias en estado "En evaluación seguimiento anual"  "En evaluación seguimiento final". A un evaluador se le deja evaluar una memoria hasta 3 días antes de la evaluación.En caso de que entre la fecha actual mas X días es igual o mayor a la fecha de convocatoria no le saldrá esta acción activada. |  | ETI\-EVC\-EVALRETI\-EVC\-INV\-EVALR |
| Exportar | Genera el informe asociado al listado de seguimientos pendientes | Muestra la pantalla [IU\-ETI\-0100\-004 \- Exportación listado de seguimientos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=131863299 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=131863299") | ETI\-EVC\-VRETI\-EVC\-EVALRETI\-EVC\-INV\-VRETI\-EVC\-INV\-EVALR |

### Acciones

#### Por actor

#### Todos los permisos de acceso




