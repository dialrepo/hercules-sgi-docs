# Hércules : SGI \- Vistas Timesheet



## TS\_PROYECTO\_JUSTIFICABLE

Listado de proyectos del SGI que cumplen las siguientes condiciones:

* activos: campo "activo" con valor "true"
* estado que no sea BORRADOR: campo "estado actual" valor distinto a "BORRADOR"
* fecha fin mayor al año 2013: si campo "fecha fin definitiva" distinto de null "fecha fin definitiva" \>\= "01/01/2013", sino "fecha fin" es null o "fecha fin" \>\= "01/01/2013"
* con identificador SGE: existe registro en la tabla "Proyecto proyecto SGE"



| **Campo** | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | **Comentario** |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | PROYECTO | CSP\_SGI | Identificador único del proyecto. Clave primaria. |
| CONVOCATORIA | VARCHAR(50\) | NO | CODIGO | CONVOCATORIA | CSP\_SGI | Campo "identificación" de la convocatoria asociada al proyecto en caso de tenerla. |
| REFERENCIA | VARCHAR(50\) | NO | CODIGO\_EXTERNO | PROYECTO | CSP\_SGI | Campo "referencia en entidad convocante" del proyecto. |
| TITULO | VARCHAR(250\) | SI | TITULO | PROYECTO | CSP\_SGI | Campo "título" del proyecto. |
| ACRONIMO | VARCHAR2(50\) | NO | ACRONIMO | PROYECTO | CSP\_SGI | Campo "acrónimo" del proyecto. |
| FECHA\_INICIO | TIMESTAMP | SI | FECHA\_INICIO | PROYECTO | CSP\_SGI | Campo "fecha inicio" del proyecto. |
| FECHA\_FIN | TIMESTAMP | SI | FECHA\_FIN O FECHA\_FIN\_DEFINITIVA | PROYECTO | CSP\_SGI | Si esta informada "fecha fin definitiva" se enviará "fecha fin definitiva", sino la "fecha de fin" del proyecto. |
| ESTADO | VARCHAR2(50\) | SI | NOMBRE | ESTADO\_PROYECTO | CSP\_SGI | Estado actual del proyecto. Se sacará el campo "estado" de la tabla ESTADO\_PROYECTO del estado actual del proyecto.Posibles valores:* CONCEDIDO * RENUNCIADO * RESCINDIDO |
| MODELO\_EJECUCION\_ID | NUMBER (38,0\) | SI | MODELO\_EJECUCION\_ID | PROYECTO | CSP\_SGI | Identificador único del modelo de ejecución asociado al proyecto. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJCUCION\_NOMBRE | VARCHAR2(50\) | SI | NOMBRE | MODELO\_EJECUCION | CSP\_SGI | Nombre del modelo de ejecución asociado al proyecto. |
| TIPO\_FINALIDAD\_ID | NUMBER (38,0\) | NO | TIPO\_FINALIDAD\_ID | PROYECTO | CSP\_SGI | Identificador único del tipo de finalidad asociado al proyecto. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | VARCHAR2(100\) | NO | NOMBRE | TIPO\_FINALIDAD | CSP\_SGI | Nombre del tipo de finalidad asociado al proyecto. |
| AMBITO\_ID | NUMBER (38,0\) | NO | TIPO\_AMBITO\_GEOGRAFICO\_ID | PROYECTO | CSP\_SGI | Identificador único del tipo de ámbito geográfico asociado al proyecto. Los tipos  de ámbitos geográficos son configurables en el SGI. |
| AMBITO\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | TIPO\_AMBITO\_GEOGRAFICO | CSP\_SGI | Nombre del tipo de ámbito geográfico asociado al proyecto. |
| FECHA\_CONCESION | TIMESTAMP | NO | FECHA\_ESTADO | ESTADO\_SOLICITUD | CSP\_SGI | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear proyecto" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el proyecto tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| IMPORTE\_SOLICITADO | NUMBER (19,2\) | NO |  |  | CSP\_SGI | Si el campo "importe presupuesto" o "importe presupuesto costes indirectos" del proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe presupuesto" de todos los gastos del proyecto (tabla ANUALIDAD\_GASTO). |
| IMPORTE\_CONCEDIDO | NUMBER (19,2\) | NO |  |  | CSP\_SGI | Si el campo "importe concedido" o "importe concedido costes indirectos" del proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe concedido" de todos los gastos del proyecto (tabla ANUALIDAD\_GASTO). |
| COSTES\_INDIRECTOS | NUMBER (19,2\) | NO |  |  | CSP\_SGI | Si el campo "importe concedido" o "importe concedido costes indirectos" del proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe concedido" de todos los gastos del proyecto (tabla ANUALIDAD\_GASTO).Será el campo "importe concedido" esta informado, en caso contrario será la suma del campo "importe concedido" de todos los gastos del proyecto que se correspondan con conceptos de gastos configurados como costes indirectos (tabla ANUALIDAD\_GASTO del proyecto cuyos CONCEPTO\_GASTO tenga el flag de COSTES\_INDIRECTOS a true). |
| OBSERVACIONES | VARCHAR2(2000\) | NO | OBSERVACIONES | PROYECTO | CSP\_SGI | Campo "observaciones" del proyecto. |
| UNIDAD\_GESTION\_REF | VARCHAR2(50\) | SI | UNIDAD\_GESTION\_REF | PROYECTO | CSP\_SGI | Identificador único de la unidad de gestión asociada al proyecto. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | VARCHAR2(50\) | SI | NOMBRE | UNIDAD | USR\_SGI | Nombre de la unidad de gestión asociada al proyecto. |

**TS\_PROYECTO\_JUSTIFICABLE**

```
SELECT p.ID,c.CODIGO AS CONVOCATORIA,p.CODIGO_EXTERNO AS REFERENCIA,p.TITULO,p.ACRONIMO,p.FECHA_INICIO
, CASE WHEN p.FECHA_FIN_DEFINITIVA IS NOT NULL THEN p.FECHA_FIN_DEFINITIVA ELSE p.FECHA_FIN END FECHA_FIN
,ep.ESTADO , p.MODELO_EJECUCION_ID ,me.NOMBRE AS MODELO_EJECUCION_NOMBRE, p.TIPO_FINALIDAD_ID , tf.NOMBRE AS TIPO_FINALIDAD_NOMBRE
, p.TIPO_AMBITO_GEOGRAFICO_ID AS AMBITO_ID ,tag.NOMBRE AS AMBITO_NOMBRE
, (SELECT MIN(es.FECHA_ESTADO) FROM CSP_SGI.ESTADO_SOLICITUD es WHERE es.SOLICITUD_ID = p.SOLICITUD_ID AND (es.ESTADO = 'CONCEDIDA' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL_ALEGADA' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL_NO_ALEGADA')) AS FECHA_CONCESION
, CASE WHEN p.IMPORTE_PRESUPUESTO IS NOT NULL OR p.IMPORTE_PRESUPUESTO_COSTES_INDIRECTOS IS NOT NULL THEN p.IMPORTE_PRESUPUESTO + p.IMPORTE_PRESUPUESTO_COSTES_INDIRECTOS
ELSE (SELECT SUM(ag.IMPORTE_PRESUPUESTO) FROM CSP_SGI.ANUALIDAD_GASTO ag INNER JOIN CSP_SGI.PROYECTO_ANUALIDAD pa ON ag.PROYECTO_ANUALIDAD_ID = pa.ID WHERE pa.PROYECTO_ID = p.ID) END IMPORTE_SOLICITADO
, CASE WHEN p.IMPORTE_CONCEDIDO IS NOT NULL OR p.IMPORTE_CONCEDIDO_COSTES_INDIRECTOS IS NOT NULL THEN p.IMPORTE_CONCEDIDO + p.IMPORTE_CONCEDIDO_COSTES_INDIRECTOS
ELSE (SELECT SUM(ag.IMPORTE_CONCEDIDO) FROM CSP_SGI.ANUALIDAD_GASTO ag INNER JOIN CSP_SGI.PROYECTO_ANUALIDAD pa ON ag.PROYECTO_ANUALIDAD_ID = pa.ID WHERE pa.PROYECTO_ID = p.ID) END IMPORTE_CONCEDIDO
, CASE WHEN p.IMPORTE_CONCEDIDO_COSTES_INDIRECTOS IS NOT NULL THEN p.IMPORTE_CONCEDIDO_COSTES_INDIRECTOS
ELSE (SELECT SUM(ag.IMPORTE_CONCEDIDO) FROM CSP_SGI.ANUALIDAD_GASTO ag INNER JOIN CSP_SGI.PROYECTO_ANUALIDAD pa ON ag.PROYECTO_ANUALIDAD_ID = pa.ID INNER JOIN CSP_SGI.CONCEPTO_GASTO cg ON ag.CONCEPTO_GASTO_ID = cg.ID WHERE pa.PROYECTO_ID = p.ID AND cg.COSTES_INDIRECTOS = 1) END COSTES_INDIRECTOS
, p.OBSERVACIONES , p.UNIDAD_GESTION_REF ,u.NOMBRE AS UNIDAD_GESTION_NOMBRE
FROM CSP_SGI.PROYECTO p
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
INNER JOIN CSP_SGI.MODELO_EJECUCION me ON p.MODELO_EJECUCION_ID = me.ID
LEFT JOIN CSP_SGI.TIPO_FINALIDAD tf ON p.TIPO_FINALIDAD_ID = tf.ID 
LEFT JOIN CSP_SGI.TIPO_AMBITO_GEOGRAFICO tag ON p.TIPO_AMBITO_GEOGRAFICO_ID = tag.ID
LEFT JOIN CSP_SGI.CONVOCATORIA c ON p.CONVOCATORIA_ID = c.ID 
LEFT JOIN USR_SGI.UNIDAD u ON p.UNIDAD_GESTION_REF = u.ID
WHERE p.ACTIVO = 1 AND ep.ESTADO <> 'BORRADOR'
AND ((p.FECHA_FIN_DEFINITIVA IS NOT NULL AND p.FECHA_FIN_DEFINITIVA >= TO_DATE('01/01/2013','dd/mm/yyyy'))
OR (p.FECHA_FIN_DEFINITIVA IS NULL AND p.FECHA_FIN >= TO_DATE('01/01/2013','dd/mm/yyyy')))
AND p.id IN (SELECT pps.PROYECTO_ID FROM CSP_SGI.PROYECTO_PROYECTO_SGE pps)
```

  


## TS\_PROYECTO\_ENT\_FIN

Listado de entidades financiadores de los proyectos del SGI que cumplen las siguientes condiciones:

* activos: campo "activo" con valor "true"
* estado que no sea BORRADOR: campo "estado actual" valor distinto a "BORRADOR"
* fecha fin mayor al año 2013: si campo "fecha fin definitiva" distinto de null "fecha fin definitiva" \>\= "01/01/2013", sino "fecha fin" es null o "fecha fin" \>\= "01/01/2013"
* con identificador SGE: existe registro en la tabla "Proyecto proyecto SGE"

Por cada proyecto se mostrarán los siguientes campos de una entidad financiadora:

* identificador de la entidad (el SGI no almacena información de la entidad, únicamente su identificador)
* fuente de financiación
* tipo de financiación



| **Campo** | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | **Comentario** |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | PROYECTO\_ENTIDAD\_FINANCIADORA | CSP\_SGI | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | NUMBER (38,0\) | SI | PROYECTO\_ID | PROYECTO\_ENTIDAD\_FINANCIADORA | CSP\_SGI | Identificador del proyecto. |
| ENTIDAD\_REF | VARCHAR2(50\) | SI | ENTIDAD\_REF | PROYECTO\_ENTIDAD\_FINANCIADORA | CSP\_SGI | Identificador de la entidad en el sistema de gestión de empresas de la Universidad. |
| FUENTE\_FINANCIACION\_ID | NUMBER (38,0\) | NO | FUENTE\_FINANCIACION\_ID | PROYECTO\_ENTIDAD\_FINANCIADORA | CSP\_SGI | Identificador único de la fuente de financiación asociada a la entidad financiadora. Las fuentes de financiación son configurables en el SGI. |
| FUENTE\_FINANCIACION\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | FUENTE\_FINANCIACION | CSP\_SGI | Nombre de la fuente de financiación asociada a la entidad financiadora. |
| TIPO\_FINANCIACION\_ID | NUMBER (38,0\) | NO | TIPO\_FINANCIACION\_ID | PROYECTO\_ENTIDAD\_FINANCIADORA | CSP\_SGI | Identificador único del tipo de financiación asociada a la entidad financiadora. Los tipos de financiación son configurables en el SGI. |
| TIPO\_FINANCIACION\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | TIPO\_FINANCIACION | CSP\_SGI | Nombre del tipo de financiación asociado a la entidad financiadora. |
| AJENA | NUMBER (1,0\) | SI | AJENA | PROYECTO\_ENTIDAD\_FINANCIADORA | CSP\_SGI | Indica si la entidad financiadora es ajena o no a la convocatoria |

**TS\_PROYECTO\_ENT\_FIN**

```
SELECT pef.ID, pef.PROYECTO_ID, pef.ENTIDAD_REF, pef.FUENTE_FINANCIACION_ID, ff.NOMBRE AS FUENTE_FINANCIACION_NOMBRE, 
pef.TIPO_FINANCIACION_ID, tf.NOMBRE AS TIPO_FINANCIACION_NOMBRE, pef.AJENA
FROM CSP_SGI.PROYECTO_ENTIDAD_FINANCIADORA pef 
INNER JOIN CSP_SGI.PROYECTO p ON pef.PROYECTO_ID = p.ID 
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
INNER JOIN CSP_SGI.FUENTE_FINANCIACION ff ON pef.FUENTE_FINANCIACION_ID = ff.ID
INNER JOIN CSP_SGI.TIPO_FINANCIACION tf ON pef.TIPO_FINANCIACION_ID = tf.ID
WHERE p.ACTIVO = 1 AND ep.ESTADO <> 'BORRADOR'
AND ((p.FECHA_FIN_DEFINITIVA IS NOT NULL AND p.FECHA_FIN_DEFINITIVA >= TO_DATE('01/01/2013','dd/mm/yyyy'))
OR (p.FECHA_FIN_DEFINITIVA IS NULL AND p.FECHA_FIN >= TO_DATE('01/01/2013','dd/mm/yyyy')))
AND p.id IN (SELECT pps.PROYECTO_ID FROM CSP_SGI.PROYECTO_PROYECTO_SGE pps)
```

## TS\_PROYECTO\_ENT\_CONV

Listado de entidades convocantes de los proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE

Por cada proyecto se mostrarán los siguientes campos de una entidad convocante:

* identificador de la entidad (el SGI no almacena información de la entidad, únicamente su identificador)
* programa de la convocatoria: puede ser el plan de investigación o el programa o el subprograma de la convocatoria asociada al proyecto
* programa del proyecto: puede ser plan de investigación o el programa o el subprograma o la modalidad seleccionada en el proyecto



| Campo | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | Comentario |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | PROYECTO\_ENTIDAD\_CONVOCANTE | CSP\_SGI | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | NUMBER (38,0\) | SI | PROYECTO\_ID | PROYECTO\_ENTIDAD\_CONVOCANTE | CSP\_SGI | Identificador del proyecto. |
| ENTIDAD\_REF | VARCHAR2(50\) | SI | ENTIDAD\_REF | PROYECTO\_ENTIDAD\_CONVOCANTE | CSP\_SGI | Identificador de la entidad en el sistema de gestión de empresas de la Universidad. |
| PROGRAMA\_CONVOCATORIA\_ID | NUMBER (38,0\) | NO | PROGRAMA\_CONVOCATORIA\_ID | PROYECTO\_ENTIDAD\_CONVOCANTE | CSP\_SGI | Identificador único del plan o del programa o del subprograma definido en la convocatoria asociada al proyecto. Los planes de investigación junto con sus programa, subprograma y modalidades son configurables en el SGI en una estructura de árbol. |
| PROGRAMA\_CONVOCATORIA\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | PROGRAMA | CSP\_SGI | Nombre del plan o del programa o del subprograma definido en la convocatoria asociada al proyecto. |
| PROGRAMA\_ID | NUMBER (38,0\) | NO | PROGRAMA\_ID | PROYECTO\_ENTIDAD\_CONVOCANTE | CSP\_SGI | Identificador único del plan o del programa o del subprograma o de la modalidad seleccionada en el proyecto. Los planes de investigación junto con sus programa, subprograma y modalidades son configurables en el SGI en una estructura de árbol. |
| PROGRAMA\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | PROGRAMA | CSP\_SGI | Nombre del plan o del programa o del subprograma o de la modalidad seleccionada en el proyecto. |

**TS\_PROYECTO\_ENT\_CONV**

```
SELECT pec.ID, pec.PROYECTO_ID, pec.ENTIDAD_REF, pec.PROGRAMA_CONVOCATORIA_ID, 
(SELECT p2.NOMBRE FROM CSP_SGI.PROGRAMA p2 WHERE p2.ID = pec.PROGRAMA_CONVOCATORIA_ID) AS PROGRAMA_CONVOCATORIA_NOMBRE
,pec.PROGRAMA_ID, (SELECT p3.NOMBRE FROM CSP_SGI.PROGRAMA p3 WHERE p3.ID = pec.PROGRAMA_ID) AS PROGRAMA_NOMBRE
FROM CSP_SGI.PROYECTO_ENTIDAD_CONVOCANTE pec 
INNER JOIN CSP_SGI.PROYECTO p ON pec.PROYECTO_ID = p.ID 
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
WHERE p.ACTIVO = 1 AND ep.ESTADO <> 'BORRADOR'
AND ((p.FECHA_FIN_DEFINITIVA IS NOT NULL AND p.FECHA_FIN_DEFINITIVA >= TO_DATE('01/01/2013','dd/mm/yyyy'))
OR (p.FECHA_FIN_DEFINITIVA IS NULL AND p.FECHA_FIN >= TO_DATE('01/01/2013','dd/mm/yyyy')))
AND p.id IN (SELECT pps.PROYECTO_ID FROM CSP_SGI.PROYECTO_PROYECTO_SGE pps)
```

## TS\_PROYECTO\_SGE

Listado de identificadores SGE (Sistema gestión económico) de los proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE

Por cada proyecto se mostrará el identificador SGE (un proyecto SGI puede tener más de uno identificador SGE asociado, aunque la normal general es que sea único)



| Campo | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | Comentario |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | PROYECTO\_PROYECTO\_SGE | CSP\_SGI | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | NUMBER (38,0\) | SI | PROYECTO\_ID | PROYECTO\_PROYECTO\_SGE | CSP\_SGI | Identificador del proyecto. |
| PROYECTO\_SGE\_REF | VARCHAR2(50\) | SI | PROYECTO\_SGE\_REF | PROYECTO\_PROYECTO\_SGE | CSP\_SGI | Identificador del proyecto económico en el sistema de gestión económico de la Universidad |

**TS\_PROYECTO\_SGE**

```
SELECT pps.ID, pps.PROYECTO_ID, pps.PROYECTO_SGE_REF 
FROM CSP_SGI.PROYECTO_PROYECTO_SGE pps
INNER JOIN CSP_SGI.PROYECTO p ON pps.PROYECTO_ID = p.ID 
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
WHERE p.ACTIVO = 1 AND ep.ESTADO <> 'BORRADOR'
AND ((p.FECHA_FIN_DEFINITIVA IS NOT NULL AND p.FECHA_FIN_DEFINITIVA >= TO_DATE('01/01/2013','dd/mm/yyyy'))
OR (p.FECHA_FIN_DEFINITIVA IS NULL AND p.FECHA_FIN >= TO_DATE('01/01/2013','dd/mm/yyyy')))
```

## TS\_PROYECTO\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de los proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE

Por cada proyecto se mostrarán los siguientes campos de un miembro del equipo:

* identificador de la persona (el SGI no almacena información de la persona, únicamente su identificador)
* fecha de inicio de la participación en el equipo
* fecha de finalización de la participación en el equipo
* rol con el que participa en el equipo
* si el rol tiene marcado el flag de principal o no
* en caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| PERSONA\_REF | Identificador de la persona en el sistema de personas de la Universidad |
| FECHA\_INICIO | Fecha de inicio de la participación en el equipo. |
| FECHA\_FIN | Fecha de finalización de la participación en el equipo. |
| ROL\_PROYECTO\_ID | Identificador del rol del miembro en el equipo. |
| ROL\_PROYECTO\_ABREVIATURA | Abreviatura o código identificativo del rol del miembro en el equipo. |
| ROL\_PRINCIPAL | Si el rol es un rol principal o no. |
| ORDEN | En caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO |

**TS\_PROYECTO\_EQUIPO**

```
SELECT pe.ID,pe.PROYECTO_ID,pe.PERSONA_REF,pe.FECHA_INICIO,pe.FECHA_FIN,pe.ROL_PROYECTO_ID,rp.ABREVIATURA AS ROL_PROYECTO_ABREVIATURA
,rp.ROL_PRINCIPAL,rp.ORDEN
FROM CSP_SGI.PROYECTO_EQUIPO pe 
INNER JOIN CSP_SGI.PROYECTO p ON pe.PROYECTO_ID = p.ID
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
INNER JOIN CSP_SGI.ROL_PROYECTO rp ON pe.ROL_PROYECTO_ID = rp.ID
WHERE p.ACTIVO = 1 AND ep.ESTADO <> 'BORRADOR'
AND ((p.FECHA_FIN_DEFINITIVA IS NOT NULL AND p.FECHA_FIN_DEFINITIVA >= TO_DATE('01/01/2013','dd/mm/yyyy'))
OR (p.FECHA_FIN_DEFINITIVA IS NULL AND p.FECHA_FIN >= TO_DATE('01/01/2013','dd/mm/yyyy')))
AND p.id IN (SELECT pps.PROYECTO_ID FROM CSP_SGI.PROYECTO_PROYECTO_SGE pps)
```

## TS\_PROYECTO\_PAQUETE\_TRABAJO

Listado de paquetes de trabajo de los proyectos del SGI que cumplen las siguientes condiciones:

* activos
* estado que no sea BORRADOR
* fecha fin mayor al año 2013
* con identificador SGE

Por cada proyecto se mostrarán los siguientes campos de un paquete de trabajo:

* nombre
* fecha inicio
* fecha fin
* persona mes
* descripción



| Campo | Comentario |
| --- | --- |
| ID | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | Identificador del proyecto. |
| NOMBRE | Nombre del paquete de trabajo. |
| FECHA\_INICIO | Fecha de inicio del paquete de trabajo. |
| FECHA\_FIN | Fecha de fin del paquete de trabajo. |
| PERSONA\_MES | Persona mes del paquete de trabajo. |
| DESCRIPCION | Descripción del paquete de trabajo. |

**TS\_PROYECTO\_PAQUETE\_TRABAJO**

```
SELECT ppt.ID,ppt.PROYECTO_ID,ppt.NOMBRE,ppt.FECHA_INICIO,ppt.FECHA_FIN,ppt.PERSONA_MES,ppt.DESCRIPCION
FROM CSP_SGI.PROYECTO_PAQUETE_TRABAJO ppt
INNER JOIN CSP_SGI.PROYECTO p ON ppt.PROYECTO_ID = p.ID
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
WHERE p.ACTIVO = 1 AND ep.ESTADO <> 'BORRADOR'
AND ((p.FECHA_FIN_DEFINITIVA IS NOT NULL AND p.FECHA_FIN_DEFINITIVA >= TO_DATE('01/01/2013','dd/mm/yyyy'))
OR (p.FECHA_FIN_DEFINITIVA IS NULL AND p.FECHA_FIN >= TO_DATE('01/01/2013','dd/mm/yyyy')))
AND p.id IN (SELECT pps.PROYECTO_ID FROM CSP_SGI.PROYECTO_PROYECTO_SGE pps)
```

## TS\_GRUPO\_JUSTIFICABLE

Listado de grupos de investigación del SGI que cumplen las siguientes condiciones:

* activos
* fecha fin no tiene o mayor al año 2013
* con identificador SGE



| Campo | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | Comentario |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | GRUPO | CSP\_SGI | Identificador único del grupo de investigación. Clave primaria. |
| CONVOCATORIA | VARCHAR(50\) | NO | CODIGO | CONVOCATORIA | CSP\_SGI | Campo "identificación" de la convocatoria asociada a la solicitud de constitución del grupos en caso de que se creara a partir de una solicitud el grupo. |
| REFERENCIA | VARCHAR(50\) | SI | CODIGO | GRUPO | CSP\_SGI | Campo "código" del grupo. |
| TITULO | VARCHAR(250\) | SI | NOMBRE | GRUPO | CSP\_SGI | Campo "nombre" del grupo. |
| ID\_GESTION\_ECONOMICA | VARCHAR(250\) | SI | PROYECTO\_SGE\_REF | GRUPO | CSP\_SGI | Identificación SGE (sistema de gestión económico) |
| FECHA\_INICIO | TIMESTAMP | SI | FECHA\_INICIO | GRUPO | CSP\_SGI | Campo "fecha inicio" del grupo. |
| FECHA\_FIN | TIMESTAMP | NO | FECHA\_FIN | GRUPO | CSP\_SGI | Campo "fecha fin" del grupo. |
| MODELO\_EJECUCION\_ID | NUMBER (38,0\) | NO | MODELO\_EJECUCION\_ID | CONVOCATORIA | CSP\_SGI | Identificador único del modelo de ejecución asociado a la convocatoria de constitución del grupo. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJCUCION\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | MODELO\_EJCUCION | CSP\_SGI | Nombre del modelo de ejecución asociado a la solicitud de constitución del grupo. |
| TIPO\_FINALIDAD\_ID | NUMBER (38,0\) | NO | TIPO\_FINALIDAD\_ID | CONVOCATORIA | CSP\_SGI | Identificador único del tipo de finalidad asociado a la convocatoria de constitución del grupo. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | TIPO\_FINALIDAD | CSP\_SGI | Nombre del tipo de finalidad asociado a la solicitud de constitución del grupo. |
| FECHA\_CONCESION | TIMESTAMP | NO | FECHA\_ESTADO | ESTADO\_SOLICITUD | CSP\_SGI | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear grupo" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el grupo tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| UNIDAD\_GESTION\_REF | VARCHAR2(50\) | NO | UNIDAD\_GESTION\_REF | CONVOCATORIA | CSP\_SGI | Identificador único de la unidad de gestión asociada a la convocatoria de constitución del grupo. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | UNIDAD | USR\_SGI | Nombre de la unidad de gestión asociada a la solicitud de constitución del grupo. |

**TS\_GRUPO\_JUSTIFICABLE**

```
SELECT g.ID,c.CODIGO AS CONVOCATORIA,g.CODIGO AS REFERENCIA,g.NOMBRE AS TITULO,g.PROYECTO_SGE_REF AS ID_GESTION_ECONOMICA,g.FECHA_INICIO,g.FECHA_FIN
,c.MODELO_EJECUCION_ID,me.NOMBRE AS MODELO_EJECUCION_NOMBRE,c.TIPO_FINALIDAD_ID,tf.NOMBRE AS TIPO_FINALIDAD_NOMBRE,
(SELECT MIN(es.FECHA_ESTADO) FROM CSP_SGI.ESTADO_SOLICITUD es WHERE es.SOLICITUD_ID = g.SOLICITUD_ID AND 
(es.ESTADO = 'CONCEDIDA' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL_ALEGADA' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL_NO_ALEGADA')) AS FECHA_CONCESION
,c.UNIDAD_GESTION_REF,u.NOMBRE AS UNIDAD_GESTION_NOMBRE
FROM CSP_SGI.GRUPO g
LEFT JOIN CSP_SGI.SOLICITUD s ON g.SOLICITUD_ID = s.ID
LEFT JOIN CSP_SGI.CONVOCATORIA c ON s.CONVOCATORIA_ID = c.ID
LEFT JOIN CSP_SGI.MODELO_EJECUCION me ON c.MODELO_EJECUCION_ID = me.ID
LEFT JOIN CSP_SGI.TIPO_FINALIDAD tf ON c.TIPO_FINALIDAD_ID = tf.ID
LEFT JOIN USR_SGI.UNIDAD u ON c.UNIDAD_GESTION_REF = u.ID
WHERE g.ACTIVO = 1 
AND (g.FECHA_FIN >= TO_DATE('01/01/2013','dd/mm/yyyy') OR g.FECHA_FIN IS NULL)
AND g.PROYECTO_SGE_REF  IS NOT NULL
```

## TS\_GRUPO\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de los grupos del SGI que cumplen las siguientes condiciones:

* activos
* fecha fin no tiene o mayor al año 2013
* con identificador SGE

Por cada grupo se mostrarán los siguientes campos de un miembro del equipo:

* identificador de la persona (el SGI no almacena información de la persona, únicamente su identificador)
* fecha de inicio de la participación en el equipo
* fecha de finalización de la participación en el equipo
* rol con el que participa en el equipo
* si el rol tiene marcado el flag de principal o no
* en caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO



| Campo | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | Comentario |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | GRUPO | CSP\_SGI | Identificador único del registro. Clave primaria. |
| GRUPO\_ID | NUMBER (38,0\) | SI | GRUPO\_ID | GRUPO\_EQUIPO | CSP\_SGI | Identificador del grupo. |
| PERSONA\_REF | VARCHAR2(50\) | SI | PERSONA\_REF | GRUPO\_EQUIPO | CSP\_SGI | Identificador de la persona en el sistema de personas de la Universidad |
| FECHA\_INICIO | TIMESTAMP | SI | FECHA\_INICIO | GRUPO\_EQUIPO | CSP\_SGI | Fecha de inicio de la participación en el equipo. |
| FECHA\_FIN | TIMESTAMP | NO | FECHA\_FIN | GRUPO\_EQUIPO | CSP\_SGI | Fecha de finalización de la participación en el equipo. |
| ROL\_PROYECTO\_ID | NUMBER (38,0\) | SI | ROL\_PROYECTO\_ID | GRUPO\_EQUIPO | CSP\_SGI | Identificador del rol del miembro en el equipo. |
| ROL\_PROYECTO\_ABREVIATURA | VARCHAR2(5\) | SI | ABREVIATURA | ROL\_PROYECTO | CSP\_SGI | Abreviatura o código identificativo del rol del miembro en el equipo. |
| ROL\_PRINCIPAL | NUMBER (1,0\) | SI | ROL\_PRINCIPAL | ROL\_PROYECTO | CSP\_SGI | Si el rol es un rol principal o no. |
| ROL\_ORDEN | VARCHAR2(255\) | NO | ORDEN | ROL\_PROYECTO | CSP\_SGI | En caso de que el rol tenga marcado el flag principal se indica si el orden es:* PRIMARIO * SECUNDARIO |

**TS\_GRUPO\_EQUIPO**

```
SELECT ge.ID,ge.GRUPO_ID,ge.PERSONA_REF,ge.FECHA_INICIO,ge.FECHA_FIN,ge.ROL_PROYECTO_ID,rp.ABREVIATURA AS ROL_PROYECTO_ABREVIATURA
,rp.ROL_PRINCIPAL,rp.ORDEN AS ROL_ORDEN
FROM CSP_SGI.GRUPO_EQUIPO ge
INNER JOIN CSP_SGI.GRUPO g ON ge.GRUPO_ID = g.ID
INNER JOIN CSP_SGI.ROL_PROYECTO rp ON ge.ROL_PROYECTO_ID = rp.ID
WHERE g.ACTIVO = 1 
AND (g.FECHA_FIN >= TO_DATE('01/01/2013','dd/mm/yyyy') OR g.FECHA_FIN IS NULL)
AND g.PROYECTO_SGE_REF IS NOT NULL


```




