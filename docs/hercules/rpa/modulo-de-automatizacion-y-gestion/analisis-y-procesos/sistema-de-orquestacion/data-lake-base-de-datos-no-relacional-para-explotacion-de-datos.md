# Hércules : Data Lake \- Base de datos no relacional para explotación de datos



Apache Cassandra es una base de datos NoSQL distribuida y basada en un modelo de almacenamiento de clave\-valor. Esta base de datos tiene como fin la introducción de datos en crudo con el objetivo de realizar procesos de ETL, para posteriormente crear cuadros de mando que nos muestren estadísticas y monitorización en tiempo real de lo que pasa en el sistema. 

La estructura de esta base de datos se compondría de tres tablas principales.



| CREATE TABLE hercules.robot\_by\_activity (    id text,    name text,    address text,    ip\_address text,    online boolean,    state text,    process FROZEN\<process\>,    process\_queue list\<FROZEN\<process\>\>,    time bigint,    orch FROZEN\<orchestrator\>,    PRIMARY KEY ((id,orch),time)) WITH CLUSTERING ORDER BY (time DESC); | CREATE TABLE hercules.robot\_by\_performance (    id text,    name text,    address text,    ip\_address text,    time bigint,    orch FROZEN\<orchestrator\>,    process FROZEN\<process\>,    performance FROZEN\<robot\_performance\>,    PRIMARY KEY ((id,orch),time)) WITH CLUSTERING ORDER BY (time DESC); | CREATE TABLE hercules.execution\_by\_process (    id int,    process FROZEN\<process\>,    id\_robot text,    active boolean,    schedule\_json text,    created bigint,    time bigint,    log FROZEN\<log\>,    orch FROZEN\<orchestrator\>,    PRIMARY KEY ((id,orch), time, active)) WITH CLUSTERING ORDER BY (time DESC); |
| --- | --- | --- |

Con estas tres tablas tendremos datos sobre la actividad de los robots, rendimiento de los mismos e información sobre las ejecuciones y procesos. 

Por otro lado, se han definido los siguientes tipos:



| CREATE TYPE hercules.orchestrator(    id text,    name text,    company text); | CREATE TYPE hercules.process(    id int,    name text); | CREATE TYPE hercules.robot\_performance(    cpu float,    ram float,    disk float); | CREATE TYPE hercules.log(    id int,    start\_time bigint,    end\_time bigint,    state text); |
| --- | --- | --- | --- |




