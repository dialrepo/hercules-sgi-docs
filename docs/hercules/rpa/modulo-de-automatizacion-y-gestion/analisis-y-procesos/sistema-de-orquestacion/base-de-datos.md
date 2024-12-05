# Hércules : Base de Datos



La persistencia será almacenada en una base de datos relacional. Se hará uso de PostgreSQL para su despliegue y su objetivo principal es dotar de robustez al sistema ante posibles caídas así como almacenar información útil de logs y procesos.

La siguiente ilustración es la implementación del esquema actual de la base de datos de PostgreSQL.

![](/attachments/598147209/598147784.png)



| **Log** | | |
| --- | --- | --- |
| Atributo | Tipo | Descripción |
| id | int | Identificador del log. |
| id\_schedule | int | Identificador de la planificación de ejecución. |
| id\_process | int | Identificador del proceso (extraer convocatoria, base reguladora...). |
| id\_robot | int | Identificador del robot que ha creado el log. |
| log\_file\_path | string | ruta donde se encuentra el fichero del log. |
| data | string | Información que se extrae del proceso realizado. |
| start\_time | timestamp | Cuando empezó la ejecución. |
| end\_time | timestmap | Cuando terminó la ejecución. |
| state | string | Estado de la ejecución (OK, ERROR...). |
| finished | boolean | Ha finalizado la ejecución (True o False). |
| completed | int | 0\-100, numero para la monitorización del proceso. |

  




| **Process** | | |
| --- | --- | --- |
| Atributo | Tipo | Descripción |
| id | int | Identificador del proceso. |
| class | string | Nombre de la clase del proceso, para poder ser invocado. |
| name | string | Nombre del proceso. |
| requirements | string | Librerías necesarias para la ejecución. |
| description | string | Descripción del proceso. |

  




| **Schedule** | | |
| --- | --- | --- |
| Atributo | Tipo | Descripción |
| id | int | Identificador de la planificación de ejecución. |
| id\_robot | int | Robot que ha realizado o realizará esa ejecución. |
| schedule\_json | string | JSON con la estructura de lanzamiento (). |
| active | boolean | La planificación de ejecución sigue activa (true, false) para procesos que queramos planificar cada día. |
| next\_run | timestamp | Timestamp de la siguiente ejecución. |

  




| **Robot** | | |
| --- | --- | --- |
| Atributo | Tipo | Descripción |
| id | int | Identificador del robot. |
| name | string | Nombre del robot. |
| ip\_address | string | Dirección IP del robot. |
| address | string | Donde se encuentra el robot. |
| mac | string | Dirección MAC del robot. |
| python\_version | string | Versión de Python del robot. |
| os | string | Sistema operativo del robot. |
| features | string | Librerías instaladas del robot. |
| connected | boolean | Conectado (True o false). |
| last\_seen | timestamp | Última vez visto. |
| created | timestamp | Timestamp de cuando se creó ese robot. |

A continuación, se muestra un ejemplo de información que estaría almacenada en la base de datos.

**Tabla Process**

```
{
   "process":[
      {
         "id":1,
         "class":"ProcessBoletines",
         "name":"Proceso Boletines",
         "requirements":"",
         "description":"Proceso que Segmenta y Crea boletines para la ayuda a la transferencia de investigación"
      }
   ]
} 
```

**Tabla Log**

```
{
   "log":[
      {
         "id":1,
         "id_schedule":1,
         "id_process":1,
         "id_robot":"robot1",
         "log_file_path":"08-09-2021-13:28:37ProcessBoletines.log",
         "data":"Información sobre la ejecución del proceso""start_time":"2021-12-08T11:28:38.727Z",
         "end_time":"2021-12-08T11:28:48.862Z",
         "state":"OK",
         "finished":true,
         "completed":100
      }
   ]
}
```

  


**Tabla Schedule**

```
{
   "schedule":[
      {
         "id":1,
         "id_robot":" robot1",
         "schedule_json":"Parametros del proceso a ejecutar",
         "active":false,
         "created":"2021-12-08T11:28:38.727Z",
         "next_run":null
      }
   ]
}
```

  


**Tabla Robot**

```
{
   "robot":[
      {
         "id":"robotWindows",
         "name":"Robot Windows",
         "ip_address":"10.208.3.112",
         "address":"Universidad de Murcia",
         "registrations":"ATICA",
         "mac":"8d:a0:4f:4d:d1:8e",
         "python_version":"3.8.5 (default, Sep 4 2020, 07:30:14) \n[GCC 7.3.0]",
         "os":"Linux",
         "features":"aiormq,aio-pika,absl-py",
         "connected":"2021-11-09T12:43:36.471Z",
         "last_seen":"2021-11-09T12:47:40.679Z",
         "created":"2021-10-14T11:27:30.418Z"
      }
   ]
}
```

Toda la información contenida en la persistencia podrá ser consultada mediante una API.

  


  





