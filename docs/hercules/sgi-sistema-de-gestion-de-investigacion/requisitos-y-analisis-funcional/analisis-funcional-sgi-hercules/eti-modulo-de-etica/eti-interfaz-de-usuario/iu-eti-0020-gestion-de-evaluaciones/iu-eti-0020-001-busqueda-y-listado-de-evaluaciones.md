# Hércules : IU\-ETI\-0020\-001 Búsqueda y listado de evaluaciones



## Formulario de Búsqueda y listado de evaluaciones

Pantalla que muestra un formulario, que permite aplicar filtros sobre el listado de evaluaciones de tipo memoria asociadas a memorias en estado "En evaluación" o "En secretaria revisión mínima" , y evaluaciones de tipo retrospectiva asociadas a memoria con el campo estado de retrospectiva en "En evaluación".

El listado de evaluaciones a mostrar se obtiene buscando las memorias en estado "En evaluación" o "En secretaria revisión mínima", para esas memorias sacar la evaluación de la versión mayor (que será la que no esta evaluada y se tiene que evaluar); para evaluaciones de tipo Memoria y para las evaluaciones de tipo Retrospectiva son aquellas evaluaciones asociadas a memoria cuyo estado de retrospectiva sea "En evaluación".



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Comité | DesplegableabreviaturaOpcional | Listado con los tres comités: CEISH, CEEA y CEIAB |
| Tipo de evaluación | DesplegableOpcional | Listado con los valores:* Memoria * Retrospectiva |
| Fecha evaluación(desde \- hasta) | fechaOpcional | Rango de fechas por las que se busca la fecha de dictamen.Fecha dictamen mayor o igual a fecha desdeFecha dictamen menor o igual a fecha hasta |
| Referencia memoria | referenciasOpcional | Identifica a una memoria. Tiene un formato Mxx/YYYY/secuenciaO:* xx es 10,20 o 30 dependiente del comité. CEISH es 10, CEEA es 20 y CEIAB es 30 * YYYY es el año * secuencia en un código secuencial desde 000 hasta 999 por año y comité. * O: puede ser vacío si la memoria es de tipo "Nueva", R si es de tipo ratificación "R" o MR si es de tipo "Modificación relevante" |
| Convocatoria | DesplegableTexto cortoOpcional | Listado con los valores: Ordinaria, Extraordinaria y Seguimiento |
| Solicitante | Botón buscarTexto cortoOpcional | Se tendrá que hacer una búsqueda entre las personas solicitantes de peticiones de evaluación. Se muestra la pantalla de búsqueda de personas común al SGI [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"). |
| Listado de resultados | | |
| Comité | abreviatura | Comité de la memoria. |
| Tipo  evaluación | Texto corto | Tipo de evaluación. Valores posibles:* Memoria * Retrospectiva |
| Tipo  memoria | Texto corto | Tipo de memoria. Valores posibles:* Nueva * Modificación * Ratificación |
| Fecha evaluación | fecha | Día de la reunión de evaluación. Es la fecha dictamen |
| Referencia memoria | referencias | Referencia memoria a evaluar o evaluada. |
| Solicitante | Texto corto | Nombre y apellidos de la persona solicitante de la petición de evaluación, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Dictamen | Texto corto | Resultado de la evaluación de la memoria. |
| Versión | Numérico entero genérico | Número de versión de la evaluación. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar solicitante | Se muestra la pantalla de búsqueda de personas de donde seleccionar el solicitante.A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md").  El listado de solicitantes disponible se obtendrá del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md").Se le deberá pasar a este buscador el tipo de colectivo que haya sido identificado en periodo de implantación como personal de investigación que crea las solicitudes de evaluación de ética ("Solicitante ética"). |  | No se necesita permiso para abrir la pantalla de búsqueda de personas. |
| Buscar | Aplica los filtros introducidos sobre la lista de Memorias en evaluación mostrando las que cumplen las condiciones | [CU\-ETI\-0020\-001 \- Buscar Evaluaciones memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-001-buscar-evaluaciones-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0020-gestion-de-evaluaciones/cu-eti-0020-001-buscar-evaluaciones-memoria.md") | ETI\-EVC\-VETI\-EVC\-EVAL |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Memorias en evaluación (Evaluaciones) |  |  |
| Evaluar | Se va a la pantalla de evaluar para asignarle un dictamen y un informe (favorable, informe favorable pendiente de modificaciones mínimas o informe pendiente de correcciones) |  | ETI\-EVC\-EVAL |
| Exportar | Genera el informe asociado al listado de evaluaciones pendientes | Muestra la pantalla [IU\-ETI\-0020\-005 \- Exportación listado de evaluaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-005-exportacion-listado-de-evaluaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-005-exportacion-listado-de-evaluaciones.md") | ETI\-EVC\-VETI\-EVC\-EVAL |
| Notificar | Esta acción solo estará disponible si la evaluación es de revisión mínima y figura en estado "en secretaría revisión mínima" tras haber sido remitida por su solicitante tras haber incorporado los cambios solicitados.Al realizar esta acción, el gestor notifica los miembros del comité que actúen como "evaluador1" y "evaluador2" de la memoria, que ya está disponible para ser revisada [Comunicados](#IUETI0020001Búsquedaylistadodeevaluaciones-comunicados "#IUETI0020001Búsquedaylistadodeevaluaciones-comunicados"). |  | ETI\-EVC\-EVAL |

### Comunicados

Al pulsar la acción "Notificar",  se creará la entrada correspondiente en el módulo de comunicados para avisar a los miembros del comité activos de que el investigador ya ha realizado los cambios necesarios en la memoria y que la ha enviado a secretaría para que se evalúe de nuevo.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Evaluaciones \- Recepción de cambios en memoria pendiente de revisión mínima**dentro de [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




