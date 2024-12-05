# Hércules : Amortización fondos



  






## Ejecución económica

### Entidades



| Entidad | Descripción |
| --- | --- |
| PeriodoAmortizacion | Entidad que representa un periodo de amortización de un proyecto. |
| FuenteFinanciacion | Entidad que representa una fuente de financiación. Las fuentes de financiación son configuradas en el SGI. |
| TipoFinanciacion | Entidad que representa un tipo de financiación. Los tipos de financiación son configurados en el SGI. |

### API

Características generales que todas las API REST deben de cumplir: 

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API")

#### Definición de los objetos

##### PeriodoAmortizacion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador interno del SGI del periodo de amortización. Debe de ser único. |
| proyectoId | String | Identificación del proyecto SGE |
| anualidad | String | Anualidad |
| empresaRef | String | Referencia de la entidad financiadora. Es el identificador único de la empresa en el sistema de gestión de empresas de la Universidad |
| tipoFinanciacion | TipoFinanciacion | Entidad Tipo de financiación. |
| fuenteFinanciacion | FuenteFinanciacion | Entidad Fuente de financiación. |
| fecha | String | Fecha límite del periodo de amortización |
| importe | Número | Importe del periodo de amortización |

**PeriodoAmortizacion**

```
{
"id": "1234566",
"proyectoId": "25888"
"anualidad": "2021",
"empresaRef": "2855466 ,
"tipoFinanciacion": {
        "id": "1",
        "nombre": "Subvención"
        },
"fuenteFinanciacion":  {
        "id": "2",
        "nombre": "Plan propio 2020-2025"
        }, 
"fecha": "01/02/2021",
"importe": 15000 
}
```

##### TipoFinanciacion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador interno del SGI del tipo de financiación. |
| nombre | String | Nombre del tipo de financiación |

##### FuenteFinanciacion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador interno del SGI de la fuente de financiación. |
| nombre | String | Nombre de la fuente de financiación |

#### Servicios

  




| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| POST | /periodos\-amortizacion | PeriodoAmortizacion |  | Crea un periodo de amortización |
| PUT | /periodos\-amortizacion/{id} | PeriodoAmortizacion |  | Modifica un periodo de amortización. Se pasa por url el identificador del periodo de amortización. |
| DELETE | /periodos\-amortizacion/{id} |  |  | Elimina un periodo de amortización. Se pasa por url el identificador del periodo de amortización. |




