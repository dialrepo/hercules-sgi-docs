# Hércules : SGI \- Vistas Estadísticas



## ES\_PROYECTO

Listado de proyectos del SGI que cumplen las siguientes condiciones:

* activos: campo "activo" con valor "true"



| **Campo** | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | **Comentario** |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | PROYECTO | CSP\_SGI | Identificador único del proyecto. Clave primaria. |
| SOLICITUD\_ID | NUMBER (38,0\) | NO | SOLICITUD\_ID | PROYECTO | CSP\_SGI | Identificador de la solicitud de proyecto en caso de que el proyecto se haya creado a partir de dicha solicitud. |
| UNIDAD\_GESTION\_REF | VARCHAR2(50\) | SI | UNIDAD\_GESTION\_REF | PROYECTO | CSP\_SGI | Identificador único de la unidad de gestión asociada al proyecto. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | VARCHAR2(50\) | SI | NOMBRE | UNIDAD | USR\_SGI | Nombre de la unidad de gestión asociada al proyecto. |
| CONVOCATORIA | VARCHAR(50\) | NO | CODIGO | CONVOCATORIA | CSP\_SGI | Campo "identificación" de la convocatoria asociada al proyecto en caso de tenerla. |
| ESTADO | VARCHAR2(50\) | SI | NOMBRE | ESTADO\_PROYECTO | CSP\_SGI | Estado actual del proyecto. Se sacará el campo "estado" de la tabla ESTADO\_PROYECTO del estado actual del proyecto.Posibles valores:* CONCEDIDO * RENUNCIADO * RESCINDIDO |
| TITULO | VARCHAR(250\) | SI | TITULO | PROYECTO | CSP\_SGI | Campo "título" del proyecto. |
| IMPORTE\_CONCEDIDO | NUMBER (19,2\) | NO |  |  | CSP\_SGI | Si el campo "importe concedido" o "importe concedido costes indirectos" del proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe concedido" de todos los gastos del proyecto (tabla ANUALIDAD\_GASTO). |
| FECHA\_PRESENTACION | TIMESTAMP | NO | FECHA\_ESTADO | ESTADO\_SOLICITUD | CSP\_SGI | Fecha en la que la solicitud pase a estado SOLICITADA. |
| FECHA\_CONCESION | TIMESTAMP | NO | FECHA\_ESTADO | ESTADO\_SOLICITUD | CSP\_SGI | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear proyecto" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el proyecto tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| FECHA\_INICIO | TIMESTAMP | SI | FECHA\_INICIO | PROYECTO | CSP\_SGI | Campo "fecha inicio" del proyecto. |
| FECHA\_FIN | TIMESTAMP | SI | FECHA\_FIN O FECHA\_FIN\_DEFINITIVA | PROYECTO | CSP\_SGI | Si esta informada "fecha fin definitiva" se enviará "fecha fin definitiva", sino la "fecha de fin" del proyecto. |
| COORDINADO | NUMBER (1,0\) | NO | COORDINADO | PROYECTO | CSP\_SGI | Indica si el proyecto se realizará de forma coordinada con otros socios. |
| COLABORATIVO | NUMBER (1,0\) | NO | COLABORATIVO | PROYECTO | CSP\_SGI | Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| COORDINADOR\_EXTERNO | NUMBER (1,0\) | NO | COORDINADOR\_EXTERNO | PROYECTO | CSP\_SGI | Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| MODELO\_EJECUCION\_ID | NUMBER (38,0\) | SI | MODELO\_EJECUCION\_ID | PROYECTO | CSP\_SGI | Identificador único del modelo de ejecución asociado al proyecto. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJECUCION\_NOMBRE | VARCHAR2(50\) | SI | NOMBRE | MODELO\_EJECUCION | CSP\_SGI | Nombre del modelo de ejecución asociado al proyecto. |
| TIPO\_FINALIDAD\_ID | NUMBER (38,0\) | NO | TIPO\_FINALIDAD\_ID | PROYECTO | CSP\_SGI | Identificador único del tipo de finalidad asociado al proyecto. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | VARCHAR2(100\) | NO | NOMBRE | TIPO\_FINALIDAD | CSP\_SGI | Nombre del tipo de finalidad asociado al proyecto. |
| AMBITO\_ID | NUMBER (38,0\) | NO | TIPO\_AMBITO\_GEOGRAFICO\_ID | PROYECTO | CSP\_SGI | Identificador único del tipo de ámbito geográfico asociado al proyecto. Los tipos  de ámbitos geográficos son configurables en el SGI. |
| AMBITO\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | TIPO\_AMBITO\_GEOGRAFICO | CSP\_SGI | Nombre del tipo de ámbito geográfico asociado al proyecto. |

**ES\_PROYECTO**

```
SELECT p.ID,p.SOLICITUD_ID,p.UNIDAD_GESTION_REF ,u.NOMBRE AS UNIDAD_GESTION_NOMBRE,c.CODIGO AS CONVOCATORIA,ep.ESTADO,p.TITULO
,CASE WHEN p.IMPORTE_CONCEDIDO IS NOT NULL OR p.IMPORTE_CONCEDIDO_COSTES_INDIRECTOS IS NOT NULL THEN p.IMPORTE_CONCEDIDO + p.IMPORTE_CONCEDIDO_COSTES_INDIRECTOS
ELSE (SELECT SUM(ag.IMPORTE_CONCEDIDO) FROM CSP_SGI.ANUALIDAD_GASTO ag INNER JOIN CSP_SGI.PROYECTO_ANUALIDAD pa ON ag.PROYECTO_ANUALIDAD_ID = pa.ID WHERE pa.PROYECTO_ID = p.ID) END IMPORTE_CONCEDIDO
,(SELECT MIN(es.FECHA_ESTADO) FROM CSP_SGI.ESTADO_SOLICITUD es WHERE es.SOLICITUD_ID = p.SOLICITUD_ID AND es.ESTADO = 'SOLICITADA') AS FECHA_PRESENTACION
,(SELECT MIN(es.FECHA_ESTADO) FROM CSP_SGI.ESTADO_SOLICITUD es WHERE es.SOLICITUD_ID = p.SOLICITUD_ID AND (es.ESTADO = 'CONCEDIDA' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL_ALEGADA' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL_NO_ALEGADA')) AS FECHA_CONCESION
,p.FECHA_INICIO,CASE WHEN p.FECHA_FIN_DEFINITIVA IS NOT NULL THEN p.FECHA_FIN_DEFINITIVA ELSE p.FECHA_FIN END FECHA_FIN
,p.COORDINADO,p.COLABORATIVO,p.COORDINADOR_EXTERNO
,p.MODELO_EJECUCION_ID ,me.NOMBRE AS MODELO_EJECUCION_NOMBRE, p.TIPO_FINALIDAD_ID , tf.NOMBRE AS TIPO_FINALIDAD_NOMBRE,p.TIPO_AMBITO_GEOGRAFICO_ID AS AMBITO_ID ,tag.NOMBRE AS AMBITO_NOMBRE
FROM CSP_SGI.PROYECTO p
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
INNER JOIN CSP_SGI.MODELO_EJECUCION me ON p.MODELO_EJECUCION_ID = me.ID
LEFT JOIN CSP_SGI.TIPO_FINALIDAD tf ON p.TIPO_FINALIDAD_ID = tf.ID
LEFT JOIN CSP_SGI.TIPO_AMBITO_GEOGRAFICO tag ON p.TIPO_AMBITO_GEOGRAFICO_ID = tag.ID
LEFT JOIN CSP_SGI.CONVOCATORIA c ON p.CONVOCATORIA_ID = c.ID
LEFT JOIN USR_SGI.UNIDAD u ON p.UNIDAD_GESTION_REF = u.ID
WHERE p.ACTIVO = 1
```

  


## ES\_PROYECTO\_ENT\_FIN

Listado de entidades financiadores de los proyectos del SGI que cumplen las siguientes condiciones:

* activos: campo "activo" con valor "true"

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

**ES\_PROYECTO\_ENT\_FIN**

```
SELECT pef.ID, pef.PROYECTO_ID, pef.ENTIDAD_REF, pef.FUENTE_FINANCIACION_ID, ff.NOMBRE AS FUENTE_FINANCIACION_NOMBRE, 
pef.TIPO_FINANCIACION_ID, tf.NOMBRE AS TIPO_FINANCIACION_NOMBRE, pef.AJENA
FROM CSP_SGI.PROYECTO_ENTIDAD_FINANCIADORA pef 
INNER JOIN CSP_SGI.PROYECTO p ON pef.PROYECTO_ID = p.ID 
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
INNER JOIN CSP_SGI.FUENTE_FINANCIACION ff ON pef.FUENTE_FINANCIACION_ID = ff.ID
INNER JOIN CSP_SGI.TIPO_FINANCIACION tf ON pef.TIPO_FINANCIACION_ID = tf.ID
WHERE p.ACTIVO = 1 
```

## ES\_PROYECTO\_ENT\_CONV

Listado de entidades convocantes de los proyectos del SGI que cumplen las siguientes condiciones:

* activos

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
| PROGRAMA\_ID | NUMBER (38,0\) | NO | PROGRAMA\_ID | PROYECTO\_ENTIDAD\_CONVOCANTE | CSP\_SGI | Identificador único del plan o del programa o del subprograma o de la modalidad seleccionda en el proyecto. Los planes de investigación junto con sus programa, subprograma y modalidades son configurables en el SGI en una estructura de árbol. |
| PROGRAMA\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | PROGRAMA | CSP\_SGI | Nombre del plan o del programa o del subprograma o de la modalidad seleccionada en el proyecto. |

**ES\_PROYECTO\_ENT\_CONV**

```
SELECT pec.ID, pec.PROYECTO_ID, pec.ENTIDAD_REF, pec.PROGRAMA_CONVOCATORIA_ID, 
(SELECT p2.NOMBRE FROM CSP_SGI.PROGRAMA p2 WHERE p2.ID = pec.PROGRAMA_CONVOCATORIA_ID) AS PROGRAMA_CONVOCATORIA_NOMBRE
,pec.PROGRAMA_ID, (SELECT p3.NOMBRE FROM CSP_SGI.PROGRAMA p3 WHERE p3.ID = pec.PROGRAMA_ID) AS PROGRAMA_NOMBRE
FROM CSP_SGI.PROYECTO_ENTIDAD_CONVOCANTE pec 
INNER JOIN CSP_SGI.PROYECTO p ON pec.PROYECTO_ID = p.ID 
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
WHERE p.ACTIVO = 1
```

## ES\_PROYECTO\_SGE

Listado de identificadores SGE (Sistema gestión económico) de los proyectos del SGI que cumplen las siguientes condiciones:

* activos

Por cada proyecto se mostrará el identificador SGE (un proyecto SGI puede tener más de uno identificador SGE asociado, aunque la normal general es que sea único)



| Campo | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | Comentario |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | PROYECTO\_PROYECTO\_SGE | CSP\_SGI | Identificador único del registro. Clave primaria. |
| PROYECTO\_ID | NUMBER (38,0\) | SI | PROYECTO\_ID | PROYECTO\_PROYECTO\_SGE | CSP\_SGI | Identificador del proyecto. |
| PROYECTO\_SGE\_REF | VARCHAR2(50\) | SI | PROYECTO\_SGE\_REF | PROYECTO\_PROYECTO\_SGE | CSP\_SGI | Identificador del proyecto económico en el sistema de gestión económico de la Universidad |

**ES\_PROYECTO\_SGE**

```
SELECT pps.ID, pps.PROYECTO_ID, pps.PROYECTO_SGE_REF 
FROM CSP_SGI.PROYECTO_PROYECTO_SGE pps
INNER JOIN CSP_SGI.PROYECTO p ON pps.PROYECTO_ID = p.ID 
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
WHERE p.ACTIVO = 1
```

## ES\_PROYECTO\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de los proyectos del SGI que cumplen las siguientes condiciones:

* activos

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

**ES\_PROYECTO\_EQUIPO**

```
SELECT pe.ID,pe.PROYECTO_ID,pe.PERSONA_REF,pe.FECHA_INICIO,pe.FECHA_FIN,pe.ROL_PROYECTO_ID,rp.ABREVIATURA AS ROL_PROYECTO_ABREVIATURA
,rp.ROL_PRINCIPAL,rp.ORDEN
FROM CSP_SGI.PROYECTO_EQUIPO pe 
INNER JOIN CSP_SGI.PROYECTO p ON pe.PROYECTO_ID = p.ID
INNER JOIN CSP_SGI.ESTADO_PROYECTO ep ON p.ESTADO_PROYECTO_ID = ep.ID
INNER JOIN CSP_SGI.ROL_PROYECTO rp ON pe.ROL_PROYECTO_ID = rp.ID
WHERE p.ACTIVO = 1
```

## ES\_GRUPO

Listado de grupos de investigación del SGI que cumplen las siguientes condiciones:

* activos



| Campo | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | Comentario |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | GRUPO | CSP\_SGI | Identificador único del grupo de investigación. Clave primaria. |
| SOLICITUD\_ID | NUMBER (38,0\) | NO | SOLICITUD\_ID | GRUPO | CSP\_SGI | Identificador de la solicitud de constitución de grupo en caso de que el grupo se haya creado a partir de dicha solicitud. |
| UNIDAD\_GESTION\_REF | VARCHAR2(50\) | NO | UNIDAD\_GESTION\_REF | CONVOCATORIA | CSP\_SGI | Identificador único de la unidad de gestión asociada a la convocatoria de constitución del grupo. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | UNIDAD | USR\_SGI | Nombre de la unidad de gestión asociada a la solicitud de constitución del grupo. |
| CONVOCATORIA | VARCHAR(50\) | NO | CODIGO | CONVOCATORIA | CSP\_SGI | Campo "identificación" de la convocatoria asociada a la solicitud de constitución del grupo en caso de que se creara a partir de una solicitud el grupo. |
| ID\_GESTION\_ECONOMICA | VARCHAR(250\) | SI | PROYECTO\_SGE\_REF | GRUPO | CSP\_SGI | Identificación SGE (sistema de gestión económico) |
| TITULO | VARCHAR(250\) | SI | NOMBRE | GRUPO | CSP\_SGI | Campo "nombre" del grupo. |
| FECHA\_PRESENTACION | TIMESTAMP | NO | FECHA\_ESTADO | ESTADO\_SOLICITUD | CSP\_SGI | Fecha en la que la solicitud pase a estado SOLICITADA. |
| FECHA\_CONCESION | TIMESTAMP | NO | FECHA\_ESTADO | ESTADO\_SOLICITUD | CSP\_SGI | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear grupo" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el grupo tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| FECHA\_INICIO | TIMESTAMP | SI | FECHA\_INICIO | GRUPO | CSP\_SGI | Campo "fecha inicio" del grupo. |
| FECHA\_FIN | TIMESTAMP | NO | FECHA\_FIN | GRUPO | CSP\_SGI | Campo "fecha fin" del grupo. |
| MODELO\_EJECUCION\_ID | NUMBER (38,0\) | NO | MODELO\_EJECUCION\_ID | CONVOCATORIA | CSP\_SGI | Identificador único del modelo de ejecución asociado a la convocatoria de constitución del grupo. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJCUCION\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | MODELO\_EJCUCION | CSP\_SGI | Nombre del modelo de ejecución asociado a la solicitud de constitución del grupo. |
| TIPO\_FINALIDAD\_ID | NUMBER (38,0\) | NO | TIPO\_FINALIDAD\_ID | CONVOCATORIA | CSP\_SGI | Identificador único del tipo de finalidad asociado a la convocatoria de constitución del grupo. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | TIPO\_FINALIDAD | CSP\_SGI | Nombre del tipo de finalidad asociado a la solicitud de constitución del grupo. |

**ES\_GRUPO**

```
SELECT g.ID,g.SOLICITUD_ID,c.UNIDAD_GESTION_REF,u.NOMBRE AS UNIDAD_GESTION_NOMBRE,c.CODIGO AS CONVOCATORIA,g.PROYECTO_SGE_REF AS ID_GESTION_ECONOMICA,g.NOMBRE AS TITULO
,(SELECT MIN(es.FECHA_ESTADO) FROM CSP_SGI.ESTADO_SOLICITUD es WHERE es.SOLICITUD_ID = g.SOLICITUD_ID AND es.ESTADO = 'SOLICITADA') AS FECHA_PRESENTACION
,(SELECT MIN(es.FECHA_ESTADO) FROM CSP_SGI.ESTADO_SOLICITUD es WHERE es.SOLICITUD_ID = g.SOLICITUD_ID AND 
(es.ESTADO = 'CONCEDIDA' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL_ALEGADA' OR es.ESTADO = 'CONCEDIDA_PROVISIONAL_NO_ALEGADA')) AS FECHA_CONCESION
,g.FECHA_INICIO,g.FECHA_FIN,c.MODELO_EJECUCION_ID,me.NOMBRE AS MODELO_EJECUCION_NOMBRE,c.TIPO_FINALIDAD_ID,tf.NOMBRE AS TIPO_FINALIDAD_NOMBRE
FROM CSP_SGI.GRUPO g
LEFT JOIN CSP_SGI.SOLICITUD s ON g.SOLICITUD_ID = s.ID
LEFT JOIN CSP_SGI.CONVOCATORIA c ON s.CONVOCATORIA_ID = c.ID
LEFT JOIN CSP_SGI.MODELO_EJECUCION me ON c.MODELO_EJECUCION_ID = me.ID
LEFT JOIN CSP_SGI.TIPO_FINALIDAD tf ON c.TIPO_FINALIDAD_ID = tf.ID
LEFT JOIN USR_SGI.UNIDAD u ON c.UNIDAD_GESTION_REF = u.ID
WHERE g.ACTIVO = 1
```

## ES\_GRUPO\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de los grupos del SGI que cumplen las siguientes condiciones:

* activos

Por cada grupo se mostrarán los siguientes campos de un miembro del equipo:

* identificador de la persona (el SGI no almacena información de la persona, únicamente su identificador)
* fecha de inicio de la participación en el equipo
* fecha de finalización de la participación en el equipo
* rol con el que participa en el equipo
* si el rol tiene marcado el flag de principal o no
* en caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO



| Campo | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | Comentario |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | GRUPO\_EQUIPO | CSP\_SGI | Identificador único del registro. Clave primaria. |
| GRUPO\_ID | NUMBER (38,0\) | SI | GRUPO\_ID | GRUPO\_EQUIPO | CSP\_SGI | Identificador del grupo. |
| PERSONA\_REF | VARCHAR2(50\) | SI | PERSONA\_REF | GRUPO\_EQUIPO | CSP\_SGI | Identificador de la persona en el sistema de personas de la Universidad |
| FECHA\_INICIO | TIMESTAMP | SI | FECHA\_INICIO | GRUPO\_EQUIPO | CSP\_SGI | Fecha de inicio de la participación en el equipo. |
| FECHA\_FIN | TIMESTAMP | NO | FECHA\_FIN | GRUPO\_EQUIPO | CSP\_SGI | Fecha de finalización de la participación en el equipo. |
| ROL\_PROYECTO\_ID | NUMBER (38,0\) | SI | ROL\_PROYECTO\_ID | GRUPO\_EQUIPO | CSP\_SGI | Identificador del rol del miembro en el equipo. |
| ROL\_PROYECTO\_ABREVIATURA | VARCHAR2(5\) | SI | ABREVIATURA | ROL\_PROYECTO | CSP\_SGI | Abreviatura o código identificativo del rol del miembro en el equipo. |
| ROL\_PRINCIPAL | NUMBER (1,0\) | SI | ROL\_PRINCIPAL | ROL\_PROYECTO | CSP\_SGI | Si el rol es un rol principal o no. |
| ROL\_ORDEN | VARCHAR2(255\) | NO | ORDEN | ROL\_PROYECTO | CSP\_SGI | En caso de que el rol tenga marcado el flag principal se indica si el orden es:* PRIMARIO * SECUNDARIO |

**ES\_GRUPO\_EQUIPO**

```
SELECT ge.ID,ge.GRUPO_ID,ge.PERSONA_REF,ge.FECHA_INICIO,ge.FECHA_FIN,ge.ROL_PROYECTO_ID,rp.ABREVIATURA AS ROL_PROYECTO_ABREVIATURA
,rp.ROL_PRINCIPAL,rp.ORDEN AS ROL_ORDEN
FROM CSP_SGI.GRUPO_EQUIPO ge
INNER JOIN CSP_SGI.GRUPO g ON ge.GRUPO_ID = g.ID
INNER JOIN CSP_SGI.ROL_PROYECTO rp ON ge.ROL_PROYECTO_ID = rp.ID
WHERE g.ACTIVO = 1

```

## ES\_SOLICITUD

Listado de solicitudes de convocatorias del SGI que cumplen las siguientes condiciones:

* activas: campo "activo" con valor "true"



| **Campo** | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | **Comentario** |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | SOLICITUD | CSP\_SGI | Identificador único de la solicitud. Clave primaria. |
| UNIDAD\_GESTION\_REF | VARCHAR2(50\) | SI | UNIDAD\_GESTION\_REF | SOLICITUD | CSP\_SGI | Identificador único de la unidad de gestión asociada a la solicitud. Las unidades de gestión son configurables en el SGI por implantación. |
| UNIDAD\_GESTION\_NOMBRE | VARCHAR2(50\) | SI | NOMBRE | UNIDAD | USR\_SGI | Nombre de la unidad de gestión asociada a la solicitud. |
| CONVOCATORIA | VARCHAR(50\) | NO | CODIGO | CONVOCATORIA | CSP\_SGI | Campo "identificación" de la convocatoria asociada a la solicitud. |
| ESTADO | VARCHAR2(50\) | SI | NOMBRE | ESTADO\_SOLICITUD | CSP\_SGI | Estado actual de la solicitud. Se sacará el campo "estado" de la tabla ESTADO\_SOLICITUD del estado actual de la solicitud.Posibles valores:* ADMITIDA\_DEFINITIVA * ADMITIDA\_PROVISIONAL * ALEGACION\_FASE\_ADMISION * ALEGACION\_FASE\_PROVISIONAL * BORRADOR * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA * DENEGADA * DENEGADA\_PROVISIONAL * DENEGADA\_PROVISIONAL\_ALEGADA * DENEGADA\_PROVISIONAL\_NO\_ALEGADA * DESISTIDA * EXCLUIDA\_DEFINITIVA * EXCLUIDA\_PROVISIONAL * FIRMADA * NEGOCIACION * PRESENTADA\_SUBSANACION * RECURSO\_FASE\_ADMISION * RECURSO\_FASE\_CONCESION * RENUNCIADA * RESERVA * RESERVA\_PROVISIONAL * SOLICITADA * SUBSANACION * RECHAZADA * VALIDADA |
| TITULO | VARCHAR(250\) | NO | TITULO | SOLICITUD | CSP\_SGI | Campo "título" de la solicitud. |
| IMPORTE\_SOLICITADO | NUMBER (19,2\) | NO |  |  | CSP\_SGI | Si el campo "importe solicitado" o "importe solicitado costes indirectos" de la solicitud de proyecto están informados, será la suma de ellos, en caso de que no estén informados será la suma del campo "importe solicitado" de todos los gastos del presupuesto de la solicitud (tabla SOLICITUD\_PROYECTO\_PRESUPUESTO). |
| FECHA\_PRESENTACION | TIMESTAMP | NO | FECHA\_ESTADO | ESTADO\_SOLICITUD | CSP\_SGI | Fecha en la que la solicitud pase a estado SOLICITADA. |
| FECHA\_CONCESION | TIMESTAMP | NO | FECHA\_ESTADO | ESTADO\_SOLICITUD | CSP\_SGI | Fecha en la que la solicitud pase a estado CONCEDIDA. En el SGI se considera estado CONCEDIDA (cuando sale el botón de "Crear proyecto" a partir de la Solicitud, en uno de los siguientes estados "Concedida provisional", "Concedida provisional alegada", "Concedida provisional no alegada" o "Concedida"En el caso de que el proyecto tenga relacionada una solicitud, se irá a la tabla del histórico de estados y se buscará la fecha de estado mas antigua de los estados: * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA |
| DURACION | NUMBER (38,0\) | NO | DURACION | SOLICITUD\_PROYECTO | CSP\_SGI | Campo "duración" de la solicitud. Las solicitudes no tienen fecha de inicio ni de fin, únicamente una duración en meses. |
| COORDINADO | NUMBER (1,0\) | NO | COORDINADO | SOLICITUD\_PROYECTO | CSP\_SGI | Indica si el proyecto se realizará de forma coordinada con otros socios. |
| COLABORATIVO | NUMBER (1,0\) | NO | COLABORATIVO | SOLICITUD\_PROYECTO | CSP\_SGI | Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| COORDINADOR\_EXTERNO | NUMBER (1,0\) | NO | COORDINADOR\_EXTERNO | SOLICITUD\_PROYECTO | CSP\_SGI | Indica quién actúa como coordinador del proyecto. Un valor "No" indicará  que es la propia universidad quien actúa en calidad de coordinador del proyecto. En caso que quien coordine el proyecto no sea la universidad sino uno de los socios,  se indicaría en este campo el valor "Sí". |
| MODELO\_EJECUCION\_ID | NUMBER (38,0\) | NO | MODELO\_EJECUCION\_ID | CONVOCATORIA | CSP\_SGI | Identificador único del modelo de ejecución asociado a la convocatoria. Los modelos de ejecución son configurables en el SGI. |
| MODELO\_EJECUCION\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | MODELO\_EJECUCION | CSP\_SGI | Nombre del modelo de ejecución asociado a la convocatoria. |
| TIPO\_FINALIDAD\_ID | NUMBER (38,0\) | NO | TIPO\_FINALIDAD\_ID | CONVOCATORIA | CSP\_SGI | Identificador único del tipo de finalidad asociado a la convocatoria. Los tipos de finalidad son configurables en el SGI. |
| TIPO\_FINALIDAD\_NOMBRE | VARCHAR2(100\) | NO | NOMBRE | TIPO\_FINALIDAD | CSP\_SGI | Nombre del tipo de finalidad asociado a la convocatoria. |
| AMBITO\_ID | NUMBER (38,0\) | NO | TIPO\_AMBITO\_GEOGRAFICO\_ID | CONVOCATORIA | CSP\_SGI | Identificador único del tipo de ámbito geográfico asociado a la convocatoria. Los tipos  de ámbitos geográficos son configurables en el SGI. |
| AMBITO\_NOMBRE | VARCHAR2(50\) | NO | NOMBRE | TIPO\_AMBITO\_GEOGRAFICO | CSP\_SGI | Nombre del tipo de ámbito geográfico asociado a la convocatoria. |

**ES\_SOLICITUD**

```
SELECT s.ID,s.UNIDAD_GESTION_REF,u.NOMBRE AS UNIDAD_GESTION_NOMBRE,c.CODIGO AS CONVOCATORIA,es.ESTADO,s.TITULO
,CASE WHEN sp.IMPORTE_SOLICITADO IS NOT NULL OR sp.IMPORTE_SOLICITADO_COSTES_INDIRECTOS IS NOT NULL THEN sp.IMPORTE_SOLICITADO + sp.IMPORTE_SOLICITADO_COSTES_INDIRECTOS
ELSE (SELECT SUM(spp.IMPORTE_SOLICITADO) FROM CSP_SGI.SOLICITUD_PROYECTO_PRESUPUESTO spp LEFT JOIN CSP_SGI.SOLICITUD_PROYECTO_ENTIDAD spe ON spe.ID = spp.SOLICITUD_PROYECTO_ENTIDAD_ID
WHERE spp.SOLICITUD_PROYECTO_ID = sp.ID OR spe.SOLICITUD_PROYECTO_ID = sp.ID) END IMPORTE_SOLICITADO
,(SELECT MIN(es1.FECHA_ESTADO) FROM CSP_SGI.ESTADO_SOLICITUD es1 WHERE es1.SOLICITUD_ID = s.ID AND es1.ESTADO = 'SOLICITADA') AS FECHA_PRESENTACION
,(SELECT MIN(es1.FECHA_ESTADO) FROM CSP_SGI.ESTADO_SOLICITUD es1 WHERE es1.SOLICITUD_ID = s.ID AND (es1.ESTADO = 'CONCEDIDA' OR es1.ESTADO = 'CONCEDIDA_PROVISIONAL' OR es1.ESTADO = 'CONCEDIDA_PROVISIONAL_ALEGADA' OR es1.ESTADO = 'CONCEDIDA_PROVISIONAL_NO_ALEGADA')) AS FECHA_CONCESION
,sp.DURACION,sp.COORDINADO,sp.COLABORATIVO,sp.COORDINADOR_EXTERNO
,c.MODELO_EJECUCION_ID ,me.NOMBRE AS MODELO_EJECUCION_NOMBRE,c.TIPO_FINALIDAD_ID,tf.NOMBRE AS TIPO_FINALIDAD_NOMBRE
,c.TIPO_AMBITO_GEOGRAFICO_ID AS AMBITO_ID,tag.NOMBRE AS AMBITO_NOMBRE
FROM CSP_SGI.SOLICITUD s
INNER JOIN CSP_SGI.ESTADO_SOLICITUD es ON s.ESTADO_SOLICITUD_ID = es.ID
INNER JOIN CSP_SGI.SOLICITUD_PROYECTO sp ON s.ID = sp.ID
INNER JOIN USR_SGI.UNIDAD u ON s.UNIDAD_GESTION_REF = u.ID
LEFT JOIN CSP_SGI.CONVOCATORIA c ON s.CONVOCATORIA_ID = c.ID
LEFT JOIN CSP_SGI.MODELO_EJECUCION me ON c.MODELO_EJECUCION_ID = me.ID
LEFT JOIN CSP_SGI.TIPO_FINALIDAD tf ON c.TIPO_FINALIDAD_ID = tf.ID
LEFT JOIN CSP_SGI.TIPO_AMBITO_GEOGRAFICO tag ON c.TIPO_AMBITO_GEOGRAFICO_ID = tag.ID
WHERE s.ACTIVO = 1
```

## ES\_SOLICITUD\_EQUIPO

Listado con los investigadores que forman o han formado parte del equipo de investigación de las solicitudes del SGI que cumplen las siguientes condiciones:

* activas: campo "activo" con valor "true"

Por cada solicitud se mostrarán los siguientes campos de un miembro del equipo:

* identificador de la persona (el SGI no almacena información de la persona, únicamente su identificador)
* mes de inicio de la participación en el equipo
* mes de finalización de la participación en el equipo
* rol con el que participa en el equipo
* si el rol tiene marcado el flag de principal o no
* en caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO



| **Campo** | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | **Comentario** |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | SOLICITUD\_EQUIPO | CSP\_SGI | Identificador único del registro. Clave primaria. |
| SOLICITUD\_ID | NUMBER (38,0\) | SI | GRUPO\_ID | SOLICITUD\_EQUIPO | CSP\_SGI | Identificador de la solicitud. |
| PERSONA\_REF | VARCHAR2(50\) | SI | PERSONA\_REF | SOLICITUD\_EQUIPO | CSP\_SGI | Identificador de la persona en el sistema de personas de la Universidad |
| MES\_INICIO | TIMESTAMP | SI | FECHA\_INICIO | SOLICITUD\_EQUIPO | CSP\_SGI | Mes de inicio de la participación en el equipo. |
| MES\_FIN | TIMESTAMP | NO | FECHA\_FIN | SOLICITUD\_EQUIPO | CSP\_SGI | Mes de finalización de la participación en el equipo. |
| ROL\_PROYECTO\_ID | NUMBER (38,0\) | SI | ROL\_PROYECTO\_ID | SOLICITUD\_EQUIPO | CSP\_SGI | Identificador del rol del miembro en el equipo. |
| ROL\_PROYECTO\_ABREVIATURA | VARCHAR2(5\) | SI | ABREVIATURA | ROL\_PROYECTO | CSP\_SGI | Abreviatura o código identificativo del rol del miembro en el equipo. |
| ROL\_PRINCIPAL | NUMBER (1,0\) | SI | ROL\_PRINCIPAL | ROL\_PROYECTO | CSP\_SGI | Si el rol es un rol principal o no. |
| ORDEN | VARCHAR2(255\) | NO | ORDEN | ROL\_PROYECTO | CSP\_SGI | En caso de que el rol tenga marcado el flag principal se indica si el orden es PRIMARIO o SECUNDARIO |

**ES\_SOLICITUD\_EQUIPO**

```
SELECT spe.ID,spe.SOLICITUD_PROYECTO_ID AS SOLICITUD_ID,spe.PERSONA_REF,spe.MES_INICIO,spe.MES_FIN,spe.ROL_PROYECTO_ID,rp.ABREVIATURA AS ROL_PROYECTO_ABREVIATURA
,rp.ROL_PRINCIPAL,rp.ORDEN AS ROL_ORDEN
FROM CSP_SGI.SOLICITUD_PROYECTO_EQUIPO spe
INNER JOIN CSP_SGI.SOLICITUD s ON spe.SOLICITUD_PROYECTO_ID = s.ID 
INNER JOIN CSP_SGI.ROL_PROYECTO rp ON spe.ROL_PROYECTO_ID = rp.ID
WHERE s.ACTIVO = 1
```

## ES\_INVENCION

Listado de invenciones del SGI que cumplen la siguiente condición:

* activas

En el SGI se registran invenciones donde un tipo de ellas son las Patentes.



| **Campo** | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | **Comentario** |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | INVENCION | PII\_SGI | Identificador único de la invención. Clave primaria. |
| TIPO\_PROTECCION\_ID | NUMBER (38,0\) | SI | TIPO\_PROTECCION\_ID | INVENCION | PII\_SGI | Identificador del tipo de protección. Los tipos de protección en el SGI son configurables.Una patente puede ser un tipo de protección de Propiedad industrial. |
| TIPO\_PROTECCION\_NOMBRE | VARCHAR2(50\) | SI | NOMBRE | TIPO\_PROTECCION | PII\_SGI | Nombre del tipo de protección. |
| TITULO | VARCHAR2(250\) | SI | TITULO | INVENCION | PII\_SGI | Título de la invención |
| FECHA\_COMUNICACION | TIMESTAMP | SI | FECHA\_COMUNICACION | INVENCION | PII\_SGI | Fecha de la comunicación de la invención |

**ES\_INVENCION**

```
SELECT i.ID,i.TIPO_PROTECCION_ID,tp.NOMBRE  AS TIPO_PROTECCION_NOMBRE,i.TITULO,i.FECHA_COMUNICACION
FROM PII_SGI.INVENCION i
INNER JOIN PII_SGI.TIPO_PROTECCION tp ON i.TIPO_PROTECCION_ID = tp.ID
WHERE i.ACTIVO = 1
```

## ES\_INVENCION\_SOL\_PROTECCION

Listado de solicitudes de protección de las distintas invenciones del SGI que cumplen la siguiente condición:

* activas



| **Campo** | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | **Comentario** |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | SOLICITUD\_PROTECCION | PII\_SGI | Identificador único de la solicitud de protección. Clave primaria. |
| INVENCION\_ID | NUMBER (38,0\) | SI | INVENCION\_ID | SOLICITUD\_PROTECCION | PII\_SGI | Identificador de la invención a la que pertenece. |
| NUMERO\_SOLICITUD | VARCHAR2(24\) | SI | NUMERO\_SOLICITUD | SOLICITUD\_PROTECCION | PII\_SGI | Número de la solicitud que es comunicada por el organismo donde se solicita. |
| FECHA\_INICIO\_PRIORIDAD | TIMESTAMP | SI | FECHA\_PRIORIDAD\_SOLICITUD | SOLICITUD\_PROTECCION | PII\_SGI | Fecha de la solicitud o fecha de prioridad.Hay dos casuísticas que determinan el texto a mostrar como nombre para este campo:1. Para cualquier vía asociada a tipos de protección de "Propiedad industrial" excepto las vías del tipo extensión internacional (PCT p.ej.), y solo en caso de que sea la primera solicitud, el texto a mostrar como nombre del campo será "Fecha de prioridad". 2. Para cualquier vía asociada a tipos de protección de "Propiedad intelectual", para las vías del tipo extensión internacional (PCT p.ej.) y para solicitudes posteriores a la primera que se encuentren en el caso descrito en el punto 1, el texto a mostrar como nombre del campo será "Fecha de solicitud". |
| FECHA\_FIN\_PRIORIDAD | TIMESTAMP | NO | FECHA\_FIN\_PRIOR\_PRES\_FAS\_NAC\_REC | SOLICITUD\_PROTECCION | PII\_SGI | Fecha de finalización de la prioridad de la solicitud o de fin del plazo de presentación de solicitudes en fases nacionales/regionales. Si la solicitud NO es la primera solicitud de la invención, este campo no será visible (no se informará) salvo que la vía de protección sea del tipo extensión internacional \= "Sí" (PCT p.ej.). |

**ES\_INVENCION\_SOL\_PROTECCION**

```
SELECT sp.ID,sp.INVENCION_ID,sp.NUMERO_SOLICITUD,sp.FECHA_PRIORIDAD_SOLICITUD AS FECHA_INICIO_PRIORIDAD,sp.FECHA_FIN_PRIOR_PRES_FAS_NAC_REC AS FECHA_FIN_PRIOIDAD
FROM PII_SGI.SOLICITUD_PROTECCION sp
INNER JOIN PII_SGI.INVENCION i ON sp.INVENCION_ID = i.ID
WHERE i.ACTIVO = 1
```

## ES\_ARTICULO

Listado de publicaciones cuyo campo tipo de publicación es "Artículo científico" y que han sido enviados al módulo de Producción científica del SGI para su baremación. La publicación debe cumplir las siguientes condiciones:

* tipo publicación "Artículo científico"



| **Campo** | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | **Comentario** |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | PRODUCCION\_CIENTIFICA | PRC\_SGI | Identificador único de la publicación. Clave primaria |
| TITULO | VARCHAR2(250\) | NO | VALOR | VALOR\_CAMPO | PRC\_SGI | Título del artículo científico, se correponde con el campo CVN “060\.010\.010\.030” de la Fecyt. |
| FECHA\_PUBLICACION | VARCHAR2(250\) | NO | VALOR | VALOR\_CAMPO | PRC\_SGI | Fecha de publicación del artículo científico, se correponde con el campo CVN “060\.010\.010\.140” de la Fecyt. |
| REVISTA | VARCHAR2(250\) | NO | VALOR | VALOR\_CAMPO | PRC\_SGI | Nombre de la publicación (revista), se correponde con el campo CVN “060\.010\.010\.210” de la Fecyt. |
| INTERNACIONAL | VARCHAR2(250\) | NO | VALOR | VALOR\_CAMPO | PRC\_SGI | Indica si el artículo es internacional o no. Posibles valores:* true * false |
| PERTENECE\_GRUPO | NUMBER(1,0\) | NO |  | Calculado | PRC\_SGI | Será 1 si al menos uno de los autores a fecha 31 de diciembre de la fecha de publicación pertenecia a un grupo de investigación del SGI. |

**ES\_ARTICULO**

```
SELECT pc.ID, (SELECT vc2.VALOR FROM PRC_SGI.VALOR_CAMPO vc2 
INNER JOIN PRC_SGI.CAMPO_PRODUCCION_CIENTIFICA cpc2 ON vc2.CAMPO_PRODUCCION_CIENTIFICA_ID = cpc2.ID
WHERE cpc2.CODIGO_CVN = '060.010.010.030' AND vc2.ORDEN = 1 AND cpc2.PRODUCCION_CIENTIFICA_ID = pc.ID) AS TITULO
,(SELECT vc2.VALOR FROM PRC_SGI.VALOR_CAMPO vc2 
INNER JOIN PRC_SGI.CAMPO_PRODUCCION_CIENTIFICA cpc2 ON vc2.CAMPO_PRODUCCION_CIENTIFICA_ID = cpc2.ID
WHERE cpc2.CODIGO_CVN = '060.010.010.140' AND vc2.ORDEN = 1 AND cpc2.PRODUCCION_CIENTIFICA_ID = pc.ID) AS FECHA_PUBLICACION
,(SELECT vc2.VALOR FROM PRC_SGI.VALOR_CAMPO vc2 
INNER JOIN PRC_SGI.CAMPO_PRODUCCION_CIENTIFICA cpc2 ON vc2.CAMPO_PRODUCCION_CIENTIFICA_ID = cpc2.ID
WHERE cpc2.CODIGO_CVN = '060.010.010.210' AND vc2.ORDEN = 1 AND cpc2.PRODUCCION_CIENTIFICA_ID = pc.ID) AS REVISTA
,(SELECT vc2.VALOR FROM PRC_SGI.VALOR_CAMPO vc2 
INNER JOIN PRC_SGI.CAMPO_PRODUCCION_CIENTIFICA cpc2 ON vc2.CAMPO_PRODUCCION_CIENTIFICA_ID = cpc2.ID
WHERE cpc2.CODIGO_CVN = 'INTERNACIONAL' AND vc2.ORDEN = 1 AND cpc2.PRODUCCION_CIENTIFICA_ID = pc.ID) AS INTERNACIONAL
, CASE WHEN EXISTS (SELECT * FROM PRC_SGI.AUTOR_GRUPO ag INNER JOIN PRC_SGI.AUTOR a ON ag.AUTOR_ID = a.ID WHERE a.PRODUCCION_CIENTIFICA_ID = pc.ID) 
THEN 1 ELSE 0 END PERTENECE_GRUPO
FROM PRC_SGI.PRODUCCION_CIENTIFICA pc 
WHERE pc.CONVOCATORIA_BAREMACION_ID IS NULL AND pc.EPIGRAFE_CVN ='060.010.010.000'
AND EXISTS (SELECT * FROM PRC_SGI.CAMPO_PRODUCCION_CIENTIFICA cpc 
INNER JOIN PRC_SGI.VALOR_CAMPO vc ON cpc.ID = vc.CAMPO_PRODUCCION_CIENTIFICA_ID 
WHERE cpc.CODIGO_CVN = '060.010.010.010' AND vc.VALOR = '020' AND cpc.PRODUCCION_CIENTIFICA_ID = pc.ID)
```

## ES\_ARTICULO\_INDICE\_IMPACTO

Listado de los índices de impacto de un artículo científico. Una artículo puede tener varios índices de impacto con fuente de impactos distintas (SJE, JCR, etc...) y en años distintos.



| **Campo** | **Tipo** | **Obligatorio** | **Campo del SGI** | **Tabla del SGI** | **Esquema del SGI** | **Comentario** |
| --- | --- | --- | --- | --- | --- | --- |
| ID | NUMBER (38,0\) | SI | ID | INDICE\_IMPACTO | PRC\_SGI | Identificador único del registro. Clave primaria |
| ARTICULO\_ID | NUMBER (38,0\) | SI | PRODUCCION\_CIENTIFICA\_ID | INDICE\_IMPACTO | PRC\_SGI | Identificador del artículo. |
| TIPO\_FUENTE\_IMPACTO | VARCHAR2(50\) | SI | TIPO\_FUENTE\_IMPACTO | INDICE\_IMPACTO | PRC\_SGI | Fuente de impacto. Uno de los siguientes valores:* 000 (representa a WOS \- JCR) * 010 (representa a SCOPUS \- SJR) * 020 (representa a INRECS) * BCI (representa a BCI) * ICEE (representa a ICEE) * DIALNET (representa a DIALNET) * CITEC (representa a CITEC) * SCIMAGO (representa a SCIMAGO o ERI) * ERIH (representa a ERIH) * MIAR (representa a MIAR) * FECYT (representa a FECYT) * GII\_GRIN\_SCIE (representa a GII\_GRIN\_SCIE) * CORE (representa a CORE) * OTHERS (representa a Otros) |
| OTRA\_FUENTE\_IMPACTO | VARCHAR2(1000\) | NO | OTRA\_FUENTE\_IMPACTO | INDICE\_IMPACTO | PRC\_SGI | En el caso de que en el campo TIPO\_FUENTE\_IMPACTO tenga el valor OTHERS en este campo se puede especificar el nombre de la fuente de impacto. |
| ANIO | NUMBER (38,0\) | NO | ANIO | INDICE\_IMPACTO | PRC\_SGI | Año en el que se estable el valor del índice para la fuente de impacto. |
| CUARTIL | NUMBER(1,0\) | NO | Calculado | INDICE\_IMPACTO | PRC\_SGI | Cuartil calculado a partir de los campos POSICION\_PUBLICACION (posición que ocupa la revista dentro de su categoría) y NUMERO\_REVISTAS (número total de revistas existentes en su categoría). Unos de los siguientes valores:* 1 * 2 * 3 * 4 |

**ES\_ARTICULO\_INDICE\_IMPACTO**

```
SELECT ii.ID,ii.PRODUCCION_CIENTIFICA_ID AS ARTICULO_ID,ii.TIPO_FUENTE_IMPACTO,ii.OTRA_FUENTE_IMPACTO, ii.ANIO
, CASE WHEN ii.REVISTA_25 = 1  OR (ii.NUMERO_REVISTAS IS NOT NULL AND ii.POSICION_PUBLICACION IS NOT NULL
AND ((ii.POSICION_PUBLICACION * 100)/ii.NUMERO_REVISTAS)<=25) THEN 1 
WHEN (ii.NUMERO_REVISTAS IS NOT NULL AND ii.POSICION_PUBLICACION IS NOT NULL
AND (((ii.POSICION_PUBLICACION * 100)/ii.NUMERO_REVISTAS)>25 AND ((ii.POSICION_PUBLICACION * 100)/ii.NUMERO_REVISTAS)<=50)) THEN 2 
WHEN (ii.NUMERO_REVISTAS IS NOT NULL AND ii.POSICION_PUBLICACION IS NOT NULL
AND (((ii.POSICION_PUBLICACION * 100)/ii.NUMERO_REVISTAS)>50 AND ((ii.POSICION_PUBLICACION * 100)/ii.NUMERO_REVISTAS)<=75)) THEN 3 
WHEN (ii.NUMERO_REVISTAS IS NOT NULL AND ii.POSICION_PUBLICACION IS NOT NULL
AND (((ii.POSICION_PUBLICACION * 100)/ii.NUMERO_REVISTAS)>75)) THEN 4 
END CUARTIL
FROM PRC_SGI.INDICE_IMPACTO ii 
INNER JOIN PRC_SGI.PRODUCCION_CIENTIFICA pc ON ii.PRODUCCION_CIENTIFICA_ID = pc.ID 
WHERE pc.CONVOCATORIA_BAREMACION_ID IS NULL AND pc.EPIGRAFE_CVN ='060.010.010.000'
AND EXISTS (SELECT * FROM PRC_SGI.CAMPO_PRODUCCION_CIENTIFICA cpc 
INNER JOIN PRC_SGI.VALOR_CAMPO vc ON cpc.ID = vc.CAMPO_PRODUCCION_CIENTIFICA_ID 
WHERE cpc.CODIGO_CVN = '060.010.010.010' AND vc.VALOR = '020' AND cpc.PRODUCCION_CIENTIFICA_ID = pc.ID)
```

  





