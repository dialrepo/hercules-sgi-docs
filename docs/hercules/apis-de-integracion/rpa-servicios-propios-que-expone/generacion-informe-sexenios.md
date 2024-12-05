# Hércules : Generación informe sexenios



## Sistema de generación de informes de sexenios

### Entidades



| Entidad | Descripción |
| --- | --- |
| Comité | Contiene la información relacionada con la comisión que evaluará la solicitud del sexenio. De esta entidad se pueden consultar:* Identificador. * Subcomité: necesario para el comité "9", en esta entidad se identificará el tipo de subcomité que evaluará el sexenio. * Perfil Tecnologico: define si el perfil del investigador es o no tecnológico. |

### API

La forma en la que se solicitará que se inicie el proceso será utilizando la API del orquestador RPA.

#### Servicios



| **Método** | **Endpoint** | **Parámetros** | Tipo | **Descripción** | Respuesta |
| --- | --- | --- | --- | --- | --- |
| GET | /api/orchestrator/sexenios/comites | ninguno | ninguno | retorna un mapa con todos los comités implementados y su id | {    "2": {        "name": "Química"    },    "3": {        "name": "Biología Celular y Molecular"    },    "4": {        "name": "Ciencias Biomédicas"    },    "5": {        "name": "Ciencias de la Naturaleza"    },    "7": {        "name": "Ingenierías de la Comunicación, Computación y Electrónica"    },    "8": {        "name": "Arquitectura, Ingeniería Civil y Urbanismo"    },    "9": {        "name": "Ciencias Sociales, Políticas, del Comportamiento y de Estudios de Género"    },    "10": {        "name": "Ciencias de la Educación"    },    "11": {        "name": "Ciencias Económicas y Empresariales"    },    "14": {        "name": "Filosofía, Filología y Lingüística"    }} |
| POST | /api/orchestrator/schedules/execute | time\_schedule | int | Es para indicar una planificación, por si se quiere hacer periódicamente, en este caso será **null** ya que querremos que sea instantáneo |  |
| id\_process | int | id del proceso a ejecutar, en este caso (sexenios) será 18 |
| process |  | Objeto que tiene los parámetros generales y específicos del proceso |
| process.priority | int | prioridad del proceso, en este caso 1 |
| process.id\_robot | String | robot que queremos que ejecute el proceso, en este caso como nos dará igual que robot lo ejecute, lo dejaremos a **null** |
| process.parámeters |  | objeto que tendrá los parámetros específicos del proceso:* **comite**: id del comité evaluador del sexenio. Lista de comités en *comitesSexenios.json* * **periodo**: define el período de solicitud del sexenio. El formato que se debe de seguir es:  	+ Si el rango de años es secuencial, es decir, 2011,2012,2013,2014, 2015y 2016, podemos agrupar los años de la siguiente manera: *"2011\-2016".* 	+ Si el rango de años contiene años que no son secuenciales, como, por ejemplo, 2011,2012,2014,2015,2016, sería así: *"2011,2012,2014\-2016"*. 	+ También se puede enviar la lista de años separandolos por comas, por ejemplo: "*2011,2012,2013,2014,2015,2016".* * **perfil\_tecnologico**: necesario solo para el comité con identificador "8". True si el investigador tiene un perfil tecnológico o False si no lo tiene. * **subcomite**: id del subcomité, solo será necesario cuando el id del comité "9". Se adjunta lista de subcomités en *subcomitesSexenios.json* * **investigador**: identificador escogido. Puede ser: 	+ PersonaRef 	+ Email 	+ ORCID  Todos estos parámetros tienen el tipo string. |

  


Ejemplo de json de la petición

**Ejemplo JSON de la petición**

```
{
    "time_schedule":null,
    "process": {
        "id_robot":null,
        "priority": 1,
        "parameters": { 
            "comite": "6", 
            "periodo": "2016-2021" ,
            "investigador": "28710458",
        },
        "id_process": 18
    }
}
```

Ejemplo que incluye subcomités:

**Con subcomités**

```
{
    "time_schedule":null,
    "process": {
        "id_robot":null,
        "priority": 1,
        "parameters": { 
            "comite": "9", 
            "subcomite": "2", 
            "periodo": "2016-2021" ,
            "investigador": "28710458",
        },
        "id_process": 18
    }
}
```

  
Ejemplo de con Comité 8 con investigador que tiene perfil tecnológico:  


**Comité 8 con perfil tecnológico**

```
{
    "time_schedule":null,
    "process": {
        "id_robot":null,
        "priority": 1,
        "parameters": { 
            "comite": "8", 
            "perfil_tecnológico": true,
            "periodo": "2016-2021" ,
            "investigador": "28710458",
        },
        "id_process": 18
    }
}
```

Listado de comités implementados:

**Comités de sexenios**

```
{
    "2": "Química",
    "3": "Biología Celular y Molecular",
    "4": "Ciencias Biomédicas",
    "5": "Ciencias de la Naturaleza",
    "7": "Ingenierías de la Comunicación, Computación y Electrónica",
    "8": "Arquitectura, Ingeniería Civil y Urbanismo",
    "9": "Ciencias Sociales, Políticas, del Comportamiento y de Estudios de Género",
    "10": "Ciencias de la Educación",
    "11": "Ciencias Económicas y Empresariales",
    "12": "Derecho y Jurisprudencia",
    "13": "Historia, Geografía y Artes",
    "14": "Filosofía, Filología y Lingüística"
}
```

Subcomités implementados para el comité "9":

**Subcomités de sexenios**

```
{
  "1": "Ciencias Sociales",
  "2": "Ciencias Políticas",
  "3": "Ciencias del Comportamiento",
  "4": "Estudios de Género",
  "5": "Antropología Social",
  "6": "Otros"
}  
```




