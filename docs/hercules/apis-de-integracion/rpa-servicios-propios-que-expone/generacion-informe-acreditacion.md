# Hércules : Generación informe acreditación



## Sistema de generación de informes de acreditación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Acreditacion | Contiene los datos para poder generar una solicitud de acreditación. De esta entidad se pueden obtener los campos:* Identificador: define el tipo de acreditación, puede ser: 	+ "1": Titularidad. 	+ "2": Cátedra. |
| CategoriaAcreditacion | Define la categoría a la que pertenece la acreditación, en este caso, solo será necesaria para la comisión con identificador "21". De esta entidad se pueden obtener los campos:* Identificador: define la categoría, puede ser: 	+ "1": Investigación. 	+ "2": Docencia. |
| Comision | Contiene la información relacionada con la comisión que evaluará la solicitud de acreditación. De esta entidad se pueden consultar:* Identificador. |

### API

La forma en la que se solicitará que se inicie el proceso será utilizando la API del orquestador RPA.

### Servicios



| **Método** | **URL** | **Parámetros** | Tipo | **Descripción** | Respuesta |
| --- | --- | --- | --- | --- | --- |
| GET | /api/orchestrator/acreditaciones/comisiones | ninguno | ninguno | Devuelve un mapa con las comisiones implementadas y su id | {    "2": {        "name": "Física"    },    "3": {        "name": "Química"    },    "4": {        "name": "Ciencias de la naturaleza"    },    "5": {        "name": "Biología Celular y Molecular"    },    "7": {        "name": "Medicina clínica y especialidades clínicas"    },    "8": {        "name": "Otras especialidades sanitarias"    },    "11": {        "name": "Ingeniería eléctrica y de las telecomunicaciones"    },    "12": {        "name": "Ingeniería informática"    },    "15": {        "name": "Ciencias económicas"    },    "16": {        "name": "Ciencias empresariales"    },    "18": {        "name": "Ciencias del comportamiento"    },    "19": {        "name": "Ciencias sociales"    },    "21": {        "name": "Filología y lingüística"    }} |
| POST | /api/orchestrator/schedules/execute | time\_schedule | int | Sirve para indicar una planificación, por si se quiere hacer periódicamente, en este caso será **null** ya que querremos que sea instantáneo |  |
| id\_process | int | id del proceso a ejecutar, en este caso (acreditaciones) será 22 |
| process |  | Objeto que tiene los parámetros generales y específicos del proceso |
| process.priority | int | prioridad del proceso, en este caso 1 |
| process.id\_robot | String | robot que queremos que ejecute el proceso, en este caso como nos dará igual que robot lo ejecute, lo dejaremos a **null** |
| process.parameters |  | objeto que tendrá los parámetros específicos del proceso:* **comision**: id de la comisión evaluadora de la acreditación cuyo tipo es un string. * **tipo\_acreditacion**: id de la acreditación. * **categoria\_acreditacion**: id de la categoría acreditación, solo será necesario cuando el id de la comisión tenga el valor "21". * **investigador**: identificador escogido. Puede ser: 	+ PersonaRef 	+ Email 	+ ORCID  El tipo de todos estos parámetros es String. |

  


Ejemplo de json de la petición:



```
{
    "time_schedule":null,
    "process": {
        "id_robot":null,
        "priority": 1,
        "parameters": { 
            "comision": "6", 
            "tipo_acreditacion": "2",    
            "investigador": "28710458",
        },
        "id_process": 22
    }
}
```

Listado de comisiones implementadas para el proceso de acreditaciones:



```
{                                  
    "2": "Física",
    "3": "Química",
    "4": "Ciencias de la naturaleza ",
    "5": "Biología Celular y Molecular",
    "7": "Medicina clínica y especialidades clínicas",
    "8": "Otras especialidades sanitarias",
    "11": "Ingeniería eléctrica y de las telecomunicaciones",
    "12": "Ingeniería informática",
    "15": "Ciencias económicas",
    "16": "Ciencias empresariales",
    "18": "Ciencias del comportamiento",
    "19": "Ciencias sociales",
    "21": "Filología y lingüística"
}
```

Tipos de acreditaciones disponibles:



```
{
    "1": "Titularidad",
    "2": "Cátedra"
}
```

Categorías de acreditación disponibles para la comisión "21":



```
{
    "1": "Docencia",
    "2": "Investigación"
}
```




