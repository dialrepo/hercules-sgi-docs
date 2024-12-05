# Hércules : SGI \- ESB \- SGE \- Amortización fondos



  






## Ejecución económica

### Entidades



| Entidad | Descripción |
| --- | --- |
| PeriodoAmortizacion | Entidad que representa un periodo de amortización de un proyecto. |
| FuenteFinanciacion | Entidad que representa una fuente de financiación. Las fuentes de financiación son configuradas en el SGI. |
| TipoFinanciacion | Entidad que representa un tipo de financiación. Los tipos de financiación son configurados en el SGI. |

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API "https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API")

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

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sge**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGE \- Amortización fondos \- Período amortización \- Eliminar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853060 "/confluence/pages/viewpage.action?pageId=597853060") | DELETE | /periodos\-amortizacion/{id} |  |  | Elimina un periodo de amortización. Se pasa por url el identificador del periodo de amortización. |
| [SGI \- ESB \- SGE \- Amortización fondos \- Período amortización \- Modificar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853059 "/confluence/pages/viewpage.action?pageId=597853059") | PUT | /periodos\-amortizacion/{id} | [PeriodoAmortizacion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=120032553#SGIESBSGEAmortizaci%C3%B3nfondos-PeriodoAmortizacion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=120032553#SGIESBSGEAmortizaci%C3%B3nfondos-PeriodoAmortizacion") |  | Modifica un periodo de amortización. Se pasa por url el identificador del periodo de amortización. |
| [SGI \- ESB \- SGE \- Amortización fondos \- Período amortización \- Crear](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853058 "/confluence/pages/viewpage.action?pageId=597853058") | POST | /periodos\-amortizacion | [PeriodoAmortizacion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=120032553#SGIESBSGEAmortizaci%C3%B3nfondos-PeriodoAmortizacion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=120032553#SGIESBSGEAmortizaci%C3%B3nfondos-PeriodoAmortizacion") |  | Crea un periodo de amortización |

  





