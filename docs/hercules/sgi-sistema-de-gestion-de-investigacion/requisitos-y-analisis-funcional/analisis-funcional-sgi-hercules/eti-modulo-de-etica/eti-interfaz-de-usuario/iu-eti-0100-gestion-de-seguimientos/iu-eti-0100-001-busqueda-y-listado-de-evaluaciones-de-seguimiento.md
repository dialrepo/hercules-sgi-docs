# Hércules : IU\-ETI\-0100\-001 Búsqueda y listado de evaluaciones de seguimiento



## Formulario de Búsqueda y listado de evaluaciones de seguimiento

Pantalla que muestra un formulario, que permite aplicar filtros sobre el listado de evaluaciones asociadas a seguimiento de memoria en estado "En evaluación seguimiento anual"  o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones".

El listado de evaluaciones a mostrar se obtiene buscando las memorias en estado "En evaluación seguimiento anual"  o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" y para esas memorias sacar la evaluación de la versión mayor (que será la que no esta evaluada y se tiene que evaluar) de tipo Seguimiento anual (si la memoria esta en estado "En evaluación seguimiento anual") o de tipo Seguimiento final (si la memoria esta en estado "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones")



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Comité | DesplegableabreviaturaOpcional | Listado con los tres comités: CEISH, CEEA y CEIAB |
| Tipo de evaluación | DesplegableOpcional | Listado con los valores:* Seguimiento anual * Seguimiento final |
| Fecha evaluación(desde \- hasta) | fechaOpcional | Rango de fechas por las que se busca la fecha de dictamen.Fecha dictamen mayor o igual a fecha desdeFecha dictamen menor o igual a fecha hasta |
| Referencia memoria | referenciasOpcional | Identifica a una memoria. Tiene un formato Mxx/YYYY/secuenciaO:* xx es 10,20 o 30 dependiente del comité. CEISH es 10, CEEA es 20 y CEIAB es 30 * YYYY es el año * secuencia en un código secuencial desde 000 hasta 999 por año y comité. * O: puede ser vacío si la memoria es de tipo "Nueva", R si es de tipo ratificación "R" o MR si es de tipo "Modificación relevante" |
| Convocatoria | DesplegableTexto cortoOpcional | Listado con los valores: Ordinaria, Extraordinaria y Seguimiento |
| Solicitante | Botón buscarTexto cortoOpcional | Se tendrá que hacer una búsqueda entre las personas solicitantes de peticiones de evaluación. Se muestra la pantalla de búsqueda de personas común a todo el SGI [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"). |
| Listado de resultados | | |
| Comité | abreviatura | Comité de la memoria. |
| Tipo  evaluación | Texto corto | Tipo de evaluación. Valores posibles:* Seguimiento anual * Seguimiento final |
| Tipo  memoria | Texto corto | Tipo de memoria. Valores posibles:* Nueva * Modificación * Ratificación |
| Fecha evaluación | fecha | Día de la reunión de evaluación. Es la fecha dictamen |
| Referencia memoria | referencias | Referencia memoria a evaluar o evaluada. |
| Solicitante | Texto corto | Nombre y apellidos de la persona solicitante de la petición de evaluación, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Dictamen | Texto corto | Resultado de la evaluación de la memoria. |
| Versión | Numérico entero genérico | Número de versión de la evaluación. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar solicitante | A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md").  El listado de investigadores disponible se obtendrá del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md").Se le deberá pasar a este buscador el tipo de colectivo que haya sido identificado en periodo de implantación como personal de investigación que crea las solicitudes de evaluación de ética ("Solicitante ética"). |  | No se necesita permiso para abrir la pantalla de búsqueda de personas |
| Buscar | Aplica los filtros introducidos sobre la lista de Memorias en evaluación de seguimientos mostrando las que cumplen las condiciones | [CU\-ETI\-0090\-001 \- Buscar Seguimientos memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0090-gestion-de-seguimientos/cu-eti-0090-001-buscar-seguimientos-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0090-gestion-de-seguimientos/cu-eti-0090-001-buscar-seguimientos-memoria.md") | ETI\-EVC\-VETI\-EVC\-EVAL |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Memorias en evaluación (Evaluaciones) |  |  |
| Evaluar | Se va a la pantalla de evaluar para asignarle un dictamen y un informe (favorable, informe favorable pendiente de modificaciones mínimas o informe pendiente de correcciones) |  | ETI\-EVC\-EVAL |
| Exportar | Genera el informe asociado al listado de seguimientos pendientes | Muestra la pantalla [IU\-ETI\-0100\-004 \- Exportación listado de seguimientos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0100-gestion-de-seguimientos/iu-eti-0100-004-exportacion-listado-de-seguimientos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0100-gestion-de-seguimientos/iu-eti-0100-004-exportacion-listado-de-seguimientos.md") | ETI\-EVC\-VETI\-EVC\-EVAL |

### Acciones

#### Por actor

#### Todos los permisos de acceso




