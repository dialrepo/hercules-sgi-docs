# Hércules : Autorizaciones y notificaciones de proyectos externos











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Autorizacion | Contiene los datos de la solicitud de autorización para participar en un proyecto externo |
| NotificacionProyecto | Contiene los datos del proyecto/contrato creado por un investigador es su CVN |
| EntidadFinanciadora | Contiene los datos de las entidadades financiadoras de un proyecto/contrato creado por un investigador es su CVN |

### Modelo lógico

![](https://confluence.treelogic.com/download/attachments/121671681/CSP%20ParticipacionProyectosExternos%20Logical%20Model%281%29.bmp?version=1&modificationDate=1637675450984&api=v2)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.treelogic.com/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.treelogic.com/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.treelogic.com/display/HERCULES/Formatos+de+datos+API "https://confluence.treelogic.com/display/HERCULES/Formatos+de+datos+API")

#### Definición de los objetos

##### Autorizacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la solicitud de autorización |
| solicitanteRef | String | Investigador a quien se le ha concedido la autorización. Se remitirá la referencia de investigador en el Sistema de gestión de personas. |
| titulo | String | Título del proyecto. |
| entidadRef | String | Referencia dentro del Sistema de gestión de empresas que identifica a la entidad en la que se desarrollará el proyecto, recogida en la solicitud de autorización. |
| responsableRef | String | Referencia dentro del Sistema de gestión de personas (en función de como haya sido introducido el dato en la solicitud de autorización) de la persona que se ha indicado que actuará como IP del proyecto externo |
| datosResponsable | String | Nombre y apellidos de la persona que se ha indicado que actuará como IP del proyecto externo. Se informará este campo en los casos en los que el IP no este registrado en el Sistema de gestión de personas. |

  


  




**Autorizacion** Ampliar origen



```
{
	"id": 1,     
    "solicitanteRef": "11111111",
    "titulo": "Proyecto 1 CGF/OPE-1", 
	"entidadRef": "G0021150",
	"responsableRef": "1245635",
    "datosResponsable": "
 }
```


##### NotificacionProyecto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| proyectoCVNId | String | Identificador único o referencia del proyecto/contrato registrado en el CVN. Dato obligatorio. |
| solicitanteRef | String | Referencia de la persona dentro del sistema de gestión de personas corporativo a la que pertenece el ítem proyecto/contrato registrado en CVN. Dato obligatorio. |
| autorizacionId | Long | Identificador de la solicitud de autorización previamente remitido por el SGI |
| titulo | String | Campo título del ítem proyecto/contrato registrado en CVN. Dato obligatorio.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.010 \- Nombre del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.010 \- Nombre del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| codExterno | String | Referencia que se le ha dado el proyecto en la entidad convocante/financiadora recogida en CVN.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.260 \- Código de proyecto según la entidad financiadora, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.110 \- Código de proyecto según la entidad financiadora, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| fechaInicio | String | Fecha de inicio del proyecto/contrato recogido en CVN. Dato obligatorio.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.270 \- Fecha de inicio del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.180 \- Fecha de inicio del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| fechaFin | String | Fecha de fin del proyecto/contrato recogido en CVN. Dato obligatorio.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.410 \- Fecha de finalización, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas. En el caso de que el proyecto se registre bajo el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas, este campo no estará disponible, al no estar contemplado en la norma CVN. |
| ambitoGeografico | String | Ámbito geográfico del proyecto/contrato recogido en CVN.La correspondencia con la norma FECYT de CVN es: se corresponde con el campo 050\.020\.010\.040 \- Ámbito del proyecto (o 050\.020\.010\.050 Ámbito del proyecto, otros si el valor es OTHERS) en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.040 Ámbito del proyecto (050\.020\.020\.050 Ámbito del proyecto, otros) , en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.Se enviará el texto, no el código. Es decir:* Autonómica * Nacional * Unión Europea * Internacional no UE * (texto del campo "Ámbito del proyecto, otros") |
| gradoContribucion | String | Grado de contribución del proyecto/contrato recogido en CVN.La correspondencia con la norma FECYT de CVN es: se corresponde con el campo 050\.020\.010\.170 \- Grado de contribución en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.280 Grado de contribución , en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.Se enviará el texto, no el código. Es decir:* Coordinador/a científico/a * Coordinador del proyecto total, red o consorcio * Coordinador/a gerente * Investigador/a * Técnico/a * Titulado/a universitario/a en formación * (texto del campo "Calidad en que ha participado, otros") |
| responsableRef | String | Referencia de la persona dentro del Sistema de gestión de personas corporativo asociado al dato recogido sobre el campo IP de CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.140 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.250 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| datosResponsable | String | Nombre de la persona que ocupa el cargo de IP del proyecto, recogida en CVN. En caso de que el IP del proyecto no este dado de alta en el Sistema de gestión de personas.La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.140 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.250 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| entidadParticipacionRef | String | Referencia de la entidad dentro del Sistema de gestión de empresas corporativo asociado al dato recogido sobre el campo Entidad donde se desarrolla del CVN.La correspondencia con la norma FECYT será: campo  050\.020\.010\.100 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.370 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| datosEntidadParticipacion | String | Nombre de la entidad recogido sobre el campo Entidad donde se desarrolla del CVN. En caso de que la entidad no este dada de alta en el Sistema de gestión de empresas.La correspondencia con la norma FECYT será: campo  050\.020\.010\.100 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.370 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| nombrePrograma | String | Nombre del programa de financiación recogido en el CVN. Se corresponde con el campo 050\.020\.010\.250 Nombre del programa de financiación, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.170 Nombre del programa asociado al proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| importeTotal | Numérico | Importe total del proyecto/programa recogido en el CVN. Se corresponde con el campo 050\.020\.010\.290 Financiación del proyecto, cuantía total, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.200 Financiación del proyecto, cuantía total, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| porcentajeSubvencion | Numérico | Porcentaje subvencionado recogido en el CVN.Se corresponde con el campo 050\.020\.010\.310 Financiación del proyecto, porcentaje en subvención, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.220 Financiación del proyecto, porcentaje en subvención, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| documentoRef | String | Identificador del documento acreditativo de la concesión del proyecto |
| urlAcreditativa | String | URL acreditativa en repositorios ajenos a la Universidad |
| entidadesFinanciadoras | Lista\[EntidadFinanciadora] | Listado de entidades financiadoras del CVN. |

  


##### EntidadFinanciadora



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| entidadFinanciadoraRef | String | Referencia de la entidad dentro del Sistema de gestión de empresas corporativo asociado al dato recogido sobre el campo Entidades financiadoras del CVN. Se corresponde con el campo 050\.020\.010\.190 Entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.120 Nombre/s entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| datosEntidadFinanciadora | String | Nombre de la entidad recogido sobre el campo Entidades financiadoras del CVN. En caso de que la entidad no este dada de alta en el Sistema de gestión de empresas.Se corresponde con el campo 050\.020\.010\.190 Entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.120 Nombre/s entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |



**NotificacionProyecto** Ampliar origen



```
{  
    "proyectoCVNId": "1",
    "solicitanteRef": "11111111",
	"autorizacionId": 1,     
    "titulo": "Proyecto 1 CGF/OPE-1",
    "codExterno": "122-566",
    "fechaInicio": "2021-01-31T23:00:00Z",
	"fechaFin": "2022-12-31T22:59:59Z",
    "ambitoGeografico": "Nacional",
    "gradoContribucion": "Investigador/a",
    "responsableRef": "1245635",
    "datosResponsable": "",
    "entidadParticipacionRef": "",
    "datosEntidadParticipacion": "Nombre de la entidad de participación",  
    "nombrePrograma": "Programa de prueba",
    "importeTotal": 15000.50,
    "porcentajeSubvencion": 100.00,
    "documentoRef": "12-sd5616565-1516sdf-sdf",
    "urlAcreditativa": "",     
    "entidadesFinanciadoras": [
       {
        "entidadFinanciadoraRef": "G0021150",
        "datosEntidadFinanciadora":""
     },
     {
       "entidadFinanciadoraRef": "",
        "datosEntidadFinanciadora":"Nombre entidad financiadora"
     }        
 ]
}
```


#### Servicios



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /autorizaciones/modificadas\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[Long] | Listado de Identificadores de Autorizaciones cuyo estado actual sea "autorizada" y la fecha de dicho estado  sea igual o superior a la fecha recibida como parámetro de entrada.Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z" |
| GET | /autorizaciones/{id} |  | Autorizacion | Datos de la autorización |
| POST | /notificaciones\-proyectos | NotificacionProyecto |  | Recibe como parámetro los campos necesarios para crear un registro en el SGI de un proyecto notificado desde el CVN |




