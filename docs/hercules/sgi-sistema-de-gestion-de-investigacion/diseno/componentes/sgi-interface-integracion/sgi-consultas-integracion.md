# Hércules : SGI \- Consultas integración



### Consultas para notificar cambios de categoría en RRHH

Cuando una persona cambie de categoría a nivel de RRHH en los sistemas de la Universidad, y pertenezca a un grupo de investigación y/o equipo de proyecto del SGI, los gestores del SGI solicitan que les sea comunicado dicho cambio, por si ven necesario modificar, de manera manual, el rol de dicha persona dentro del grupo o equipo de proyecto al que pertenece en el SGI.

El aviso será remitido por los sistemas de la Universidad.

Para detectar qué avisos se deben enviar, desde la Universidad se deberá consultar si la persona o personas que cambian de categoría están vinculadas a un equipo de proyecto o a un grupo de investigación en el SGI en el momento actual, usando para ello las siguientes consultas o variantes de las mismas en función de cómo se quiera enfocar la solución en la Universidad.

IMPORTANTE

Las queries están planteadas y probadas sobre una BBDD Oracle a modo de ejemplo, por lo que, para poder aplicarlas en otros motores (PostgreSQL, SQLServer, ...) puede ser necesario realizar adaptaciones en algunos casos.



| Descripción | Consulta | Variantes |
| --- | --- | --- |
| Consulta que devolverá los identificadores de todas las personas que se encuentran en el equipo de algún grupo de investigación del SGI en la actualidad junto con el nombre de dicho grupo.Los identificadores de las personas son los mismos que los de la Universidad, por lo que será el punto de integración.Se restringe a los grupos activos. | ImportanteCONECTARSE A LA BBDD/ESQUEMA **CSP\_SGI****Consulta de vinculación a proyecto**  ``` SELECT GE.PERSONA_REF, G.NOMBRE   FROM GRUPO_EQUIPO GE INNER JOIN GRUPO G ON (GE.GRUPO_ID = G.ID AND G.ACTIVO = 1) WHERE SYSDATE >= GE.FECHA_INICIO AND (SYSDATE <= GE.FECHA_FIN OR GE.FECHA_FIN IS NULL)  --AND GE.PERSONA_REF = ?? --AND GE.PERSONA_REF IN ?? ``` | 1. Añadir restricción para consultar una persona concreta (GE.PERSONA\_REF \= ??) 2. Añadir restricción para consultar por un conjunto de identificadores de persona concretos (GE.PERSONA\_REF IN ??) |
| Consulta que devolverá los identificadores de todas las personas que se encuentran en el equipo de algún proyecto/contrato/ayuda/beca del SGI en la actualidad junto con el título de dicho proyecto.Los identificadores de las personas son los mismos que los de la Universidad, por lo que será el punto de integración.Se restringe a los proyectos activos. | ImportanteCONECTARSE A LA BBDD/ESQUEMA **CSP\_SGI****Consulta de vinculación a proyecto**  ``` SELECT PE.PERSONA_REF, P.TITULO   FROM PROYECTO_EQUIPO PE INNER JOIN PROYECTO P ON (PE.PROYECTO_ID = P.ID AND P.ACTIVO = 1) WHERE SYSDATE >= PE.FECHA_INICIO AND (SYSDATE <= PE.FECHA_FIN OR PE.FECHA_FIN IS NULL)   --AND PE.PERSONA_REF = ?? --AND PE.PERSONA_REF IN ?? ``` | 1. Añadir restricción para consultar una persona concreta (PE.PERSONA\_REF \= ??) 2. Añadir restricción para consultar por un conjunto de identificadores de persona concretos (PE.PERSONA\_REF IN ??) 3. Combinar esta consulta con la anterior mediante un UNION. |

### Consulta para obtener las facturas previstas del calendario de facturación

Esta consulta será el utilizado en el SGE en la pantalla de creación de factura emitida para mostrar el listado de items del calendario de facturación creados en el SGI (tendrán que eliminar aquellos items del calendario del SGI que ya tienen factura emitida relacionada o creada).



| Descripción | Consulta | Variantes |
| --- | --- | --- |
| Consulta que devolverá el listado de todas las facturas previstas, registradas en el SGI validadas por el IP y con fecha de conformidad (tanto si ya tienen la factura emitida creada en el SGE como sino).La relación entre el calendario de facturación del SGI y las facturas emitidas se establecerá en el SGE y la relación factura emitida (SGE) \- número previsión (SGI) se almacenará en el SGE.El SGE también dispone de referencias a los identificadores de proyecto del SGI almacenando las relaciones entre los proyectos de ambos sistemas SGE\-SGI.Por cada factura prevista se devolverán los siguientes campos:* Número previsión (identificador de la factura prevista en el SGI) * Identificador del proyecto en el SGI * Fecha de emisión * Importe base * Comentarios del gestor a la factura * Comentarios del IP a la validación de la factura  Se restringe a los proyectos activos. | ImportanteCONECTARSE A LA BBDD/ESQUEMA **CSP\_SGI****Consulta de vinculación a proyecto**  ``` SELECT PF.NUMERO_PREVISION, PF.PROYECTO_ID, PF.FECHA_EMISION, PF.IMPORTE_BASE,  PF.COMENTARIO COMENTARIOS_FACTURA, EVIP.COMENTARIO COMENTARIOS_IP, EVIP.ESTADO   FROM PROYECTO_FACTURACION PF INNER JOIN PROYECTO P ON (PF.PROYECTO_ID=P.ID AND P.ACTIVO=1) INNER JOIN ESTADO_VALIDACION_IP EVIP ON (PF.ESTADO_VALIDACION_IP_ID = EVIP.ID)  WHERE EVIP.ESTADO = 'VALIDADA'  AND PF.FECHA_CONFORMIDAD IS NOT NULL  --AND PF.NUMERO_PREVISION = ?? AND PF.PROYECTO_ID = ?? ``` | 1. Añadir restricción para consultar por número de previsión (PF.NUMERO\_PREVISION \= ??) 2. Añadir restricción para consultar por proyecto SGI (PF.PROYECTO\_ID \= ??) |

### Consulta para obtener las invenciones

Esta consulta será utilizada para poder relacionar las invenciones con sus gastos en el SGE de la Universidad.



| Descripción | Consulta | Variantes |
| --- | --- | --- |
| Consulta que devolverá el listado de todas las invenciones del SGI.Los identificadores de las invenciones son los mismos que los de la Universidad, por lo que será el punto de integración.Para cada invención se devolverá:* Número de invención * Título de la invención  Se restringe a las invenciones activas. | ImportanteCONECTARSE A LA BBDD/ESQUEMA **PII\_SGI****Consulta de vinculación a proyecto**  ``` SELECT I.ID, I.TITULO  FROM INVENCION I WHERE I.ACTIVO = 1 --AND I.ID = ?? ``` | 1. Añadir restricción para consultar por número de invención (I.ID \= ??) |

### Consultas para obtener los periodos de seguimiento y de justificación

Estas consultas serán utilizadas para poder visualizar en la herramienta de Justificaciones de la Universidad el listado de periodos de seguimiento y/o de justificación de los proyectos SGI vinculados al proyecto SGE que se quiere justificar.

IMPORTANTE

Las queries están planteadas y probadas sobre una BBDD Oracle a modo de ejemplo, por lo que, para poder aplicarlas en otros motores (PostgreSQL, SQLServer, ...) puede ser necesario realizar adaptaciones en algunos casos.



| Descripción | Consulta | Variantes |
| --- | --- | --- |
| Consulta que devolverá los periodos de justificación de los proyectos SGI vinculados a proyectos SGE | ImportanteCONECTARSE A LA BBDD/ESQUEMA **CSP\_SGI****Consulta de periodos de justificación**  ``` SELECT PPJ.ID, PPJ.FECHA_INICIO, PPJ.FECHA_FIN, PPJ.FECHA_INICIO_PRESENTACION, PPJ.FECHA_FIN_PRESENTACION , PPJ.OBSERVACIONES, PPS.PROYECTO_ID, PPS.PROYECTO_SGE_REF  FROM PROYECTO_PERIODO_JUSTIFICACION PPJ  INNER JOIN PROYECTO_PROYECTO_SGE PPS ON PPS.PROYECTO_ID = PPJ.PROYECTO_ID -- WHERE  (SYSDATE >= PPJ.FECHA_INICIO_PRESENTACION OR PPJ.FECHA_INICIO_PRESENTACION IS NULL) AND (SYSDATE <= PPJ.FECHA_FIN_PRESENTACION OR PPJ.FECHA_FIN_PRESENTACION IS NULL) -- AND PPS.PROYECTO_SGE_REF  = '?' -- AND PPJ.FECHA_PRESENTACION_JUSTIFICACION IS NOT NULL ``` | 1. Añadir restricción para consultar aquellos periodos cuya fecha actual este en el rango de presentación del periodo (SYSDATE \>\= PPJ.FECHA\_INICIO\_PRESENTACION OR PPJ.FECHA\_INICIO\_PRESENTACION IS NULL) AND (SYSDATE \<\= PPJ.FECHA\_FIN\_PRESENTACION OR PPJ.FECHA\_FIN\_PRESENTACION IS NULL) 2. Añadir restricción para consultar por un proyecto SGE concreto (PPS.PROYECTO\_SGE\_REF \= '?') 3. Añadir restricción para consultar los periodos de justificación que ya se han justificado (PPJ.FECHA\_PRESENTACION\_JUSTIFICACION IS NOT NULL) |
| Consulta que devolverá los periodos de seguimiento científico de los proyectos SGI vinculados a proyectos SGE | ImportanteCONECTARSE A LA BBDD/ESQUEMA **CSP\_SGI****Consulta de periodos de justificación**  ``` SELECT PPSG.ID, PPSG.FECHA_INICIO, PPSG.FECHA_FIN, PPSG.FECHA_INICIO_PRESENTACION, PPSG.FECHA_FIN_PRESENTACION , PPSG.OBSERVACIONES, PPS.PROYECTO_ID, PPS.PROYECTO_SGE_REF  FROM PROYECTO_PERIODO_SEGUIMIENTO PPSG INNER JOIN PROYECTO_PROYECTO_SGE PPS ON PPS.PROYECTO_ID = PPSG.PROYECTO_ID -- WHERE  (SYSDATE >= PPSG.FECHA_INICIO_PRESENTACION OR PPSG.FECHA_INICIO_PRESENTACION IS NULL) AND (SYSDATE <= PPSG.FECHA_FIN_PRESENTACION OR PPSG.FECHA_FIN_PRESENTACION IS NULL) -- AND PPS.PROYECTO_SGE_REF  = '33939' -- AND PPSG.FECHA_PRESENTACION_JUSTIFICACION IS NOT NULL ``` | 1. Añadir restricción para consultar aquellos periodos cuya fecha actual este en el rango de presentación del periodo (SYSDATE \>\= PPSG.FECHA\_INICIO\_PRESENTACION OR PPSG.FECHA\_INICIO\_PRESENTACION IS NULL) AND (SYSDATE \<\= PPSG.FECHA\_FIN\_PRESENTACION OR PPSG.FECHA\_FIN\_PRESENTACION IS NULL) 2. Añadir restricción para consultar por un proyecto SGE concreto (PPS.PROYECTO\_SGE\_REF \= '?') 3. Añadir restricción para consultar los periodos de seguimiento que ya se han justificado (PPSG.FECHA\_PRESENTACION\_JUSTIFICACION IS NOT NULL) |




