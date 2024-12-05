# Hércules : SGI \- ESB \- SGP











## Sistema de Gestión Personas

### Entidades



| Entidad | Descripción |
| --- | --- |
| Persona | Contiene los datos básicos de una persona. |
| DatosPersonales | Contiene los datos personales de una persona (datos nacimiento de la persona). |
| DatosContacto | Contiene los datos de contacto de una persona (dirección de contacto, teléfonos, email, etc.). |
| DatosAcademicos | Contiene los datos académicos, por el momento, únicamente se necesita el nivel académico. |
| Vinculacion | Contiene los datos de vinculación de una persona a la estructura organizativa Universitaria. |
| TipoDocumento | Listado con los tipos de documento de identificación (NIF/NIE/Pasaporte). |
| Sexo | Listado con los valores que puede tomar la entidad sexo (Mujer/Hombre). |
| Email | Contiene los email de una persona (el de la universidad, el personal, etc)  incluido el indicador de si el email es principal o no. |
| Telefono | Contiene los teléfonos de una persona (móvil, fijo, fax, etc). |
| CategoriaProfesional | Listado con las categorías profesionales de la Universidad. |
| NivelAcademico | Listado con los niveles académicos (Doctor, Ldo/Graduado, Diplomado, FP, etc). |
| Colectivo | Listado de colectivos que tiene la Universidad, sirvan como ejemplos de colectivos "personal de investigación", "personal de administración" ,"alumnos". Agrupación de personas sobre las que se van a realizar las búsquedas de personas ([RELACIONES VIGENTES UM.xlsx](https://confluence.um.es/confluence/download/attachments/85628453/RELACIONES%20VIGENTES%20UM.xlsx?version=1&modificationDate=1590138139000&api=v2 "https://confluence.um.es/confluence/download/attachments/85628453/RELACIONES%20VIGENTES%20UM.xlsx?version=1&modificationDate=1590138139000&api=v2")). |
| ColectivoTipoColectivo | Relaciona los colectivos con el enumerado interno del SGI "TipoColectivo". En las búsquedas de personas de los distintos módulos del SGI se podrán buscar personas sobre varios colectivos o sobre un "TipoColectivo". Un "TipoColectivo" estará relacionado con varios colectivos. Por ejemplo se puede tener como "TipoColectivo" evaluador ética, donde los colectivos que lo forman son PDI y Alumnos 5 ciclo. Por lo que al buscar personas para que sean el evaluador de ética se filtrarán por aquellas que sean PDI o sean Alumnos de 5 ciclo. |
| ColectivoCategoriaProfesional | Define que categorías profesionales pertenecen a cada uno de los colectivos definidos en la Universidad. En categoría profesionales, podemos tener" PAS FIJO/INDEFINIDO" , "PAS CONTRATADO", "PAS CENTROS ADSCRITOS". |
| Fotografia | Foto digital de la persona. |
| Sexenio | Contiene el número de sexenios en un país determinado de una persona |

### Enumerados

Para la definición de los enumerados en el código seguir lo indicado en: [Enumerados](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/estandares-internos/enumerados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/estandares-internos/enumerados.md")

| Entidad | Descripción |
| --- | --- |
| TipoColectivo | Contiene los tipos de colectivos usados en el SGI para ser usados como filtro a la hora de realizar la búsqueda de personasValores:* **Solicitante ética**: personal de investigación que crea las solicitudes de evaluación de proyectos en ética. * **Evaluador ética**: personal de investigación que puede realizar las evaluaciones de las memorias de investigación o bien personal técnico que puede realizar las tareas de evaluación de memorias. * **Equipo trabajo ética**: personal de investigación que puede formar parte del equipo de trabajo de una solicitud de evaluación de ética. * **Solicitante csp**: personal de investigación que puede figurar como solicitante de una ayuda/convocatoria (a pesar de que, por norma general,  los colectivos asociados a este tipo pudieran coincidir con los asociados a los roles de tipo "equipo investigación" de la tabla "rol proyecto", se crea este tipo de colectivo para simplificar la búsqueda en pantallas en las que no es necesario distinguir el rol a la vez que para independizar la configuración de colectivos por si fuera necesario llegado el caso). * **Responsable económico csp**: personal de la Universidad que puede ser el responsable económico de un proyecto y/o de un grupo. * **Autor de invención**: persona física que tiene un porcentaje de autoría de la invención. Puede ser un investigador de la Universidad o externo. * **Responsable proyecto externo**: persona que puede participar como responsable (IP) de un proyecto externo (autorización de participación en proyecto externo). * **Autor prc**: personal de investigación que alimenta su CVN y que por lo tanto figura como autor de items de producción científica. * **Destinatario comunicado**: personal de la Universidad o de investigación (de la Universidad o externo) que puede ser destinatario de un comunicado enviado por el SGI. * **Persona autorizada grupo**: personal de la Universidad que puede der la persona autorizada de un grupo para realizar la tarea de validar/rechazar items de producción científica y persona autorizadas para la creación de solicitudes de modificación del grupo. * **Tutor csp**: personal de investigación que puede ser tutor/a de un trabajo postdoctoral, predoctoral, etc, trabajos de solicitudes de RRHH. * **Miembro Equipo Empresa de Explotación de Resultados**: personal de la Universidad que puede participar en una empresa de explotación de resultados como solicitante, parte del equipo emprendedor, de la composición de la sociedad o de la administración de la misma. |

  


### Modelo lógico

![](/attachments/597852909/597874143.png)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

#### Definición de los objetos

##### Persona



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la persona. |
| nombre | String | Nombre de la persona. |
| apellidos | String | Apellidos de la persona. |
| sexo | Sexo | Se devuelve la entidad Sexo con todos sus campos. |
| numeroDocumento | String | Número de documento de identificación personal. |
| tipoDocumento | TipoDocumento | Se devuelve la entidad TipoDocumento con todos sus campos. |
| empresaRef | String | Se devuelve el identificador/referencia de la entidad Empresa. |
| personalPropio | Boolean | Indica si es personal de la Universidad o no (a día de hoy). |
| entidadPropiaRef | String | Se devuelve el identificador/referencia de la entidad que representa a la UM en caso de que valor de personalPropio sea true (a día de hoy), esto es, que la relación de la persona con la UM esté vigente. |
| emails | Lista\[Email] | Lista con los emails de la persona (o con el email que se quiere visualizar en el resultado de la búsqueda de personas) |
| activo | Boolean | Indica si la persona esta activa o no (a día de hoy). |



**Persona** Ampliar origen



```
{
    "id": "ent-002",
    "nombre": "Prueba",
    "apellidos": "Apellido1 Apellido2",
    "sexo": {
          "id":"sex-1",
          "nombre":"Mujer"
     },
    "numeroIdentificacion": "11111111H",
    "tipoDocumento": {
            "id":"tp-1",
            "nombre": "NIF"
     },
     "empresaRef: "ent-002",
     "personalPropio": true,
     "entidadPropiaRef" : "ent-UM-001",
  	 "emails":[{
         email: "prueba@prueba.es",
         principal: true
        },
        {
         email: "prueba2@prueba.es",
         principal: false
        }
     ]
     "activo": true
}
```


##### Sexo



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad Sexo |
| nombre | String | Nombre (Posibles valores: Mujer, Hombre) |



**Sexo** Ampliar origen



```
{
   "id":"sex-1",
   "nombre":"Mujer"  
}
```


##### TipoDocumento



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad TipoDocumento |
| nombre | String | Nombre (Posibles valores: NIF, NIE, Pasaporte) |



**TipoDocumento** Ampliar origen



```
{ 
    "id":"tp-1",
    "nombre": "NIF"   
}
```


##### Email



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| email | String | Dirección de email |
| principal | Boolean | Indicador de si el email es principal o no. Podrá tener los valores "true" o "false". |



**Email** Ampliar origen



```
{ 
    "email":"email@um.es",
    "principal": true   
}
```


##### DatosPersonales



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| fechaNacimiento | Fecha | Fecha de nacimiento de la persona |
| paisNacimiento | Pais | Se devuelve la entidad Pais con todos sus campos. Ver definición en [SGI \- ESB \- SGO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md") |
| comAuntonomaNacimiento | ComunidadAutonoma | Se devuelve la entidad ComunidadAutonoma con todos sus campos. Ver definición en [SGI \- ESB \- SGO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md") |
| ciudadNacimiento | String | Ciudad de nacimiento de la persona |



**DatosPersonales** Ampliar origen



```
{
    "fechaNacimiento": "2000-02-10",
    "paisNacimiento": {
       "id":"33",
       "nombre":"España"
     },
    "comAuntonomaNacimiento": {
       "id":"ca-1",
       "nombre":"Andalucía"
     }, 
    "ciudadNacimiento": "Sevilla"
    
}
```


##### DatosContacto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| paisContacto | Pais | Se devuelve la entidad Pais con todos sus campos. Ver definición en [SGI \- ESB \- SGO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md"). |
| comAutonomaContacto | ComunidadAutonoma | Se devuelve la entidad ComunidadAutonoma con todos sus campos. Ver definición en [SGI \- ESB \- SGO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md"). |
| provinciaContacto | Provincia | Se devuelve la entidad Provincia con todos sus campos. Ver definición en [SGI \- ESB \- SGO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md"). |
| ciudadContacto | String | Ciudad de contacto de la persona. |
| direccionContacto | String | Dirección de contacto de la persona. |
| codigoPostalContacto | String | Código postal de la dirección de contacto de la persona. |
| emails | Lista\[Email] | Lista con los emails de la persona. |
| telefonos | Lista\[String] | Lista con los teléfonos fijos de la persona. |
| moviles | Lista\[String] | Lista con los teléfonos móviles de la persona. |



**DatosContacto** Ampliar origen



```
{
    "paisContacto": {
       "id":"33",
       "nombre":"España"
     },
    "comAuntonomaContacto": {
       "id":"ca-3",
       "nombre":"Asturias"
     }, 
    "provinciaContacto": {
       "id":"pro-1",
       "nombre":"Asturias"
     }, 
	"ciudadContacto": "Oviedo",
	"direccionContacto": "C/ Uria número 4, puerta A",
	"codigoPostalContacto": "33005"         
	"emails":[{
         email: "prueba@prueba.es",
         principal: true
    	},
        {
         email: "prueba2@prueba.es",
         principal: false
        }
    ],
    "telefonos":["985112233","984445566"],
    "moviles":["666112233","699445566"]  		
}
```


##### Vinculacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| vinculacionCategoriaProfesional | VinculacionCategoriaProfesional | Se devuelve la entidad VinculacionCategoriaProfesional con todos sus campos. |
| departamento | Departamento | Se devuelve la entidad Departamento con todos sus campos. Ver definición en [SGI \- ESB \- SGO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md"). |
| centro | Centro | Se devuelve la entidad Centro con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| areaConocimiento | AreaConocimiento | Se devuelve la entidad AreaConocimiento con todos sus campos. Ver definición en [SGI \- ESB \- SGO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md"). |
| empresaRef | String | Se devuelve el identificador/referencia de la entidad Empresa externa que es la relacionada en la actualidad con la persona, la vigente. |
| personalPropio | Boolean | Indica si es personal de la Universidad o no (a día de hoy). |
| entidadPropiaRef | String | Se devuelve el identificador/referencia de la entidad que representa a la Universidad en caso de que valor de personalPropio sea true (a día de hoy), esto es, que la relación de la persona con la Universidad esté vigente. |



**Vinculacion** Ampliar origen



```
{
    "vinculacionCategoriaProfesional":{
		"categoriaProfesional":{
			"id":"catp-1",
	        "nombre":"PDI Numerario"
     	},
    	"fechaObtencionCategoria":"2020-03-15"
	},
    "departamento": {
       "id":"dpt-1",
       "nombre":"Departamento Ciencias de la tecnología"
     },
	"centro": {
		"id":"cen-1",
		"nombre": "Centro 1 de la Universidad de Murcia"
	 },
     "areaConocimiento": {
       "id":"ac-1",
       "nombre":"Área de conocimiento A"
     },
	"empresaRef": "ent-002",
	"personalPropio" : true,
	"entidadPropiaRef": "ent-UM-001"
}
```


##### VinculacionCategoriaProfesional



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| categoriaProfesional | CategoriaProfesional | Categoría profesional de la persona. |
| fechaObtencionCategoria | Fecha | Fecha de obtención de categoría profesional de la persona. |



**VinculacionCategoriaProfesional** Ampliar origen



```
{    
	"categoriaProfesional": {
		"id":"catp-1",
   		"nombre":"PDI Numerario"
	},
	"fechaObtencionCategoria" : "2020-03-15"
}
```


##### CategoriaProfesional



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad CategoriaProfesional. |
| nombre | String | Nombre de la categoría profesional de la persona dentro de la universidad. |



**CategoriaProfesional** Ampliar origen



```
{
   "id":"catp-1",
   "nombre":"PDI Numerario"
}
```


##### DatosAcademicos



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| nivelAcademico | NivelAcademico | Se devuelve la entidad NivelAcademico con todos sus campos. |
| fechaObtencion | Fecha | Fecha obtención del nivel académico. |



**DatosAcademicos** Ampliar origen



```
{
    "nivelAcademico": {
       "id":"1",
       "nombre":"Doctorado"
     },
     "fechaObtencion":"2000-02-10"
}
```


##### NivelAcademico



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad NivelAcademico. |
| nombre | String | Nombre del NivelAcademico (Posibles valores: Doctor, Ldo/Graduado, Diplomado, FP, etc). |



**NivelAcademico** Ampliar origen



```
{
   "id":"1",
   "nombre":"Doctorado"
}
```


##### Colectivo



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad Colectivo. |
| nombre | String | Nombre del colectivo (Posibles valores: PAS, PSI, Alumnos, Becarios, Externo). ([RELACIONES VIGENTES UM.xlsx](https://confluence.um.es/confluence/download/attachments/85628453/RELACIONES%20VIGENTES%20UM.xlsx?version=1&modificationDate=1590138139000&api=v2 "https://confluence.um.es/confluence/download/attachments/85628453/RELACIONES%20VIGENTES%20UM.xlsx?version=1&modificationDate=1590138139000&api=v2")) |



**Colectivo** Ampliar origen



```
{
    "id":"1",
    "nombre":"PDI"
}
```


##### Fotografia



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| contenido | String | Contenido de la fotografía digital de la persona (en bytes y en base 64\). |
| mimeType | String | Mimetype de la fotografía. |



**Fotografia** Ampliar origen



```
{
    "contenido":"DDfgdfgdfj46gd6f5gdfgdf=",
    "mimeType":"image/jpeg"
}
```


##### Sexenio



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| numero | String | Número de sexenios reconocidos |
| paisRef | String | País del reconocimiento |
| personaRef | String | Identificador de la persona que tiene el sexenio |



**Sexenio** Ampliar origen



```
{
    "numero":"2",
    "paisRef":"011",
    "personaRef":11111111
 }
```


##### DireccionTesis

  




| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del doctorado |
| personaRef | String | Identificador de la persona que es el Director de la tesis |
| tituloTrabajo | String | Título del trabajo |
| fechaDefensa | Fecha | Fecha de obtención del títuloFormato de fecha ISO 8601, ajustado a UTC (se debe utilizar el designador UTC especial "Z"). |
| alumno | String | Identificador en el SGP si existe el alumno y sino nombre y apellidos del alumno. |
| tipoProyecto | TipoTrabajoDirigido | Tipo del trabajo dirigido: Otros, Proyecto de fin de carrera, Tesina, Tesis doctoral, Trabajo conducente a la obtención de DEA |
| calificacionObtenida | String | P.e. "Cum laude" |
| coDirectorTesisRef | String | Identificador del co\-director/a que ha intervenido |
| doctoradoEuropeo | Bool | Indica si se ha recibido una mención europea |
| fechaMencionDoctoradoEuropeo | Fecha | Fecha de la mención del doctorado europeo.Formato de fecha ISO 8601, ajustado a UTC (se debe utilizar el designador UTC especial "Z"). |
| mencionCalidad | Boolean | Indica si el dotorado ha recibido una mención de calidad |
| fechaMencionCalidad | Fecha | Fecha de la homologación del doctorado extranjero.Formato de fecha ISO 8601, ajustado a UTC (se debe utilizar el designador UTC especial "Z"). |
| mencionInternacional | Boolean | Indica si tiene mención internacional o no |
| mencionIndustrial | Boolean | Indica si tiene mención industrial o no |

##### TipoTrabajoDirigido



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del tipo de trabajo\-proyecto dirigido (055, 067, 071, 066, OTHERS) |
| nombre | String | Tipo de trabajo dirigido.Posibles valores:* Proyecto de fin de carrera (valor 055\) * Tesis doctoral (valor 067\) * Trabajo conducente a la obtención de DEA (valor 071\) * Tesina (valor 066\) * Otros (valor OTHERS) |

#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/spg**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.#### Métodos imprescindibles para el funcionamiento del SGI







| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGP \- Sexenios \- Buscar](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Sexenios+-+Buscar "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Sexenios+-+Buscar") | GET | /sexenios | fecha | Lista\[[Sexenio](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Sexenio "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Sexenio")] | Devuelve una lista de identificadores de persona con el número de sexenios en la fecha pasada por parámetro.En caso de que la fecha se envíe vacía se enviará el número de sexenios en el momento actualSe tendrá que mirar para la fecha pasada por parámetro el número de sexenios de cada PDI de la Universidad.Si no tiene sexenios no se enviaránEjemplo:* fecha\="2021\-12\-31T23:00:00Z" |
| [SGI \- ESB \- SGP \- Personas \- Consultar detalle de fotografía](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853030 "/confluence/pages/viewpage.action?pageId=597853030") | GET | /personas/{id}/fotografia |  | [Fotografia](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Fotografia "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Fotografia") | Devuelve el detalle de la fotografía digital de la persona (independientemente de que la persona esté activa o no) |
| [SGI \- ESB \- SGP \- Personas \- Buscar (Búsqueda rápida)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853043 "/confluence/pages/viewpage.action?pageId=597853043") | GET | /personasFast | * busqueda (cadena a buscar en nombre / apellidos / email / nombre \+ apellidos). * colectivoId (uno o varios colectivos sobre los que realizar la búsqueda). | Lista\[[Persona](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Persona "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Persona")] | Listado de Persona.*Ejemplo*:\[mailto:busqueda\=skarmeta@[um.es](http://um.es "http://um.es")\&colectivoId\=]busqueda\=skarmeta@[um.es](http://um.es "http://um.es")\&colectivoId\=(1,2,3,4\)busqueda\=jorge carrillo\&colectivoId\=(2\)**NOTA**:La búsqueda no es sensible a mayúsculas ni minúsculas. Los parámetros no deben ir entrecomillados.Si no se indica el parámetro colectivoId, se buscará en todos los colectivos.Se devuelven como máximo 11 registros, al devolver más de 10 registros el buscador indicará que existen más registros y se puede refinar la búsqueda. |
| [SGI \- ESB \- SGP \- Personas \- Buscar](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Buscar "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Buscar") | GET | /personas | q\+s (query \+ sort)La query estará formada por:* id * tipoColectivo * colectivoId * nombre * apellidos * email * nombreApellidos | Lista\[[Persona](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Persona "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Persona")] | Listado de Persona.*Ejemplo*:colectivoId\=in\=(refPAS,refPDI);(nombre\=like\=jim,apellidos\=like\=jim,email\=like\=jim,nombreApellidos\=like\=jim)colectivoId\=in\=(refPAS,refPDI);(nombre\=like\=nombre.apellido@[um.es](http://um.es "http://um.es"),apellidos\=like\=nombre.apellido@[um.es](http://um.es "http://um.es"),email\=like\=nombre.apellido@[um.es](http://um.es "http://um.es"),nombreApellidos\=like\=nombre.apellido@[um.es](http://um.es "http://um.es"))Nota: tipoColetivo y colectivoId son mutuamente excluyentes. En el caso se recibir un tipoColectivo se traducirá a los colectivos que lo formen. |
| [SGI \- ESB \- SGP \- Personas \- Consultar detalle (Datos generales)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853045 "/confluence/pages/viewpage.action?pageId=597853045") | GET | /personas/{id} |  | [Persona](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Persona "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Persona") | Detalle de los datos generales de una persona (este la persona activo o no). |
| [SGI \- ESB \- SGP \- Personas \- Consultar datos personales](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+datos+personales "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+datos+personales") | GET | /datos\-personales/persona/{id} |  | [DatosPersonales](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-DatosPersonales "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-DatosPersonales") | Detalle de los datos personales de una persona independientemente de que este activa o no la persona (datos de dirección, nacimiento, etc). |
| [SGI \- ESB \- SGP \- Personas \- Consultar datos contacto](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+datos+contacto "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+datos+contacto") | GET | /datos\-contacto/persona/{id} |  | [DatosContacto](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-DatosContacto "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-DatosContacto") | Contiene la lista de emails, incluido si cada uno es principal o no, y/o de teléfonos de una persona (independientemente de que este activa o no la persona). |
| [SGI \- ESB \- SGP \- Personas \- Consultar vinculaciones](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+vinculaciones "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+vinculaciones") | GET | /vinculaciones/persona/{id} |  | [Vinculacion](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Vinculacion "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Vinculacion") | Detalle de los datos de vinculación vigentes de una persona (independientemente de que esté activa o no la persona).Ver [UM \- SGI \- ESB \- SGP \- Adaptaciones integración](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108604653 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108604653") para su implementación en el SGI. |
| [SGI \- ESB \- SGP \- Personas \- Consultar datos de vinculacion\-categoría](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853056 "/confluence/pages/viewpage.action?pageId=597853056") | GET | /vinculaciones/persona/{id}/vinculaciones\-categorias\-profesionales | q\+s (query \+ sort)La query estará formada por:* fechaObtencion * fechaFin | [VinculacionCategoriaProfesional](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-VinculacionCategoriaProfesional "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-VinculacionCategoriaProfesional") | Si no se especifica ningún filtrado, deberá recuperar la categoría profesional a la que está asociada la persona y que sea vigente.Para recuperar la vinculación activa a una **FECHA** determinada se generaría una consulta RSQL del tipo: ``` q=fechaObtencion<=FECHA;fechaFin>=FECHA,fechaFin=na= ``` Devolver la **vinculación** asociada a la persona con identificador **{id}** donde el objeto que viene en la  **vinculacionCategoriaProfesional** de esa vinculación debe cumplir que su atributo **fechaObtencion** sea menor o igual que una **FECHA** dada y su atributo **fechaFin** sea mayor o igual que una **FECHA** dada o no debe tener valor.Ver [UM \- SGI \- ESB \- SGP \- Adaptaciones integración](https://confluence.um.es/confluence/pages/viewpage.action?pageId=753926202 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=753926202") para su implementación en el SGI. |
| [SGI \- ESB \- SGP \- Personas \- Consultar datos académicos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853057 "/confluence/pages/viewpage.action?pageId=597853057") | GET | /datos\-academicos/persona/{id} | q\+s (query \+ sort)La query estará formada por:* fechaObtencion * fechaFin | [DatosAcademicos](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-DatosAcademicos "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-DatosAcademicos") | Contiene el nivel académico de la persona (independientemente de que este activa o no la persona) |
| [SGI \- ESB \- SGP \- Colectivos \- Listar](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Colectivos+-+Listar "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Colectivos+-+Listar") | GET | /colectivos |  | Lista\[[Colectivo](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Colectivo "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Colectivo")] | Listado de colectivos ordenados alfabéticamente de forma ascendente. |
| [SGI \- ESB \- SGP \- Tipos de documento \- Listar](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Tipos+de+documento+-+Listar "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Tipos+de+documento+-+Listar") | GET | /tipos\-documento |  | Lista\[[TipoDocumento](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-TipoDocumento "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-TipoDocumento")] | Listado de tipos de documento de identificación personal ordenados alfabéticamente de forma ascendente. |
| [SGI \- ESB \- SGP \- Sexos \- Listar](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Sexos+-+Listar "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Sexos+-+Listar") | GET | /sexos |  | Lista\[[Sexo](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Sexo "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Sexo")] | Listado de sexos ordenados alfabéticamente de forma ascendente. |
| [SGI \- ESB \- SGP \- Categorías profesionales \- Listar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853035 "/confluence/pages/viewpage.action?pageId=597853035") | GET | /categorias\-profesionales |  | Lista\[[CategoriaProfesional](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-CategoriaProfesional "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-CategoriaProfesional")] | Listado de categorías profesionales ordenadas alfabéticamente de forma ascendente. |
| [SGI \- ESB \- SGP \- Personas \- Consultar detalle de categoría profesional](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853036 "/confluence/pages/viewpage.action?pageId=597853036") | GET | /categorias\-profesionales/{id} |  | [CategoriaProfesional](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-CategoriaProfesional "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-CategoriaProfesional") | Detalle de la categoría profesional cuyo identificador se indica por parámetro. |
| [SGI \- ESB \- SGP \- Niveles académicos \- Listar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853028 "/confluence/pages/viewpage.action?pageId=597853028") | GET | /niveles\-academicos |  | Lista\[[NivelAcademico](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-NivelAcademico "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-NivelAcademico")] | Listado de niveles académicos ordenados alfabéticamente de forma ascendente. |
| [SGI \- ESB \- SGP \- Niveles académicos \- Consultar detalle](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853029 "/confluence/pages/viewpage.action?pageId=597853029") | GET | /niveles\-academicos/{id} |  | [NivelAcademico](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-NivelAcademico "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-NivelAcademico") | Detalle del nivel académico cuyo identificador se indica por parámetro. |
| [SGI \- ESB \- SGP \- Dirección de tesis \- Buscar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853032 "/confluence/pages/viewpage.action?pageId=597853032") | GET | /direccion\-tesis | anioDefensa | Lista\[[DireccionTesis](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-NivelAcademico "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-NivelAcademico")] | Devuelve la lista de Direcciones de tesis (incluida la personaRef indicando la persona que es el director de la tesis) cuya fecha de defensa sea en el año que se le pasa por parámetroEs obligatorio pasar como parámetro del año de la fecha de defensa por el que se quiere filtrar.Ejemplo:* anioDefensa\=2019 |

  


  


  


##### Métodos únicamente necesarios si se requiere gestionar personas desde el SGI (Alta, Baja, Modificación y Detalle).







| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGP \- Personas \- Consultar detalle](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+detalle "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+detalle") | GET | /personas/formly/{id} |  | JSON | Devuelve los datos a pintar en el formulario de Ver Detalle/Actualizar en el SGI (formly). |
| [SGI \- ESB \- SGP \- Personas \- Consultar campos ver detalle](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+campos+ver+detalle "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+campos+ver+detalle") | GET | /personas/formly/view |  | Formly | Devuelve el formulario (formly) a pintar para la pantalla de ver detalle de persona. |
| [SGI \- ESB \- SGP \- Personas \- Modificar](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Modificar "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Modificar") | PUT | /personas | JSON |  | Recibe como parámetro la respuesta del usuario del formulario de datos de modificación (formly) con los campos necesarios para actualizar una persona. |
| [SGI \- ESB \- SGP \- Personas \- Consultar campos modificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853039 "/confluence/pages/viewpage.action?pageId=597853039") | GET | /personas/formly/update |  | Formly | Devuelve el formulario (formly) a pintar para la pantalla de solicitar modificar persona. |
| [SGI \- ESB \- SGP \- Personas \- Dar de alta](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Dar+de+alta "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Dar+de+alta") | POST | /personas | JSON | idVendrá relleno si la creación es síncrona y no vendrá si es asíncrona. | Recibe como parámetro la respuesta del usuario del formulario de datos de alta (formly) con los campos necesarios para crear una persona. |
| [SGI \- ESB \- SGP \- Personas \- Consultar campos alta](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+campos+alta "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+campos+alta") | GET | /personas/formly/create |  | Formly | Devuelve el formulario (formly) a pintar para la pantalla de solicitar alta persona. Ver  [IU\-GEN\-0061\- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona"). |

##### Métodos donde el SGI solo hace de pasarela entre Universidad y el sistema de terceros llamante (No son necesarios para el funcionamiento del SGI)







| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGP \- Personas \- Actividad docente \- Consultar detalle](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Actividad+docente+-+Consultar+detalle "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Actividad+docente+-+Consultar+detalle") | GET | /actividad\-docente/{id} | * tipoActividad: tipo de actividad docente que se quiere recuperar, usando los códigos de CVN | Lista\[Actividad docente (del tipo solicitado)]Ver entidades en [https://confluence.um.es/confluence/display/HERCULES/Actividad\+docente\+\-\+CVN](https://confluence.um.es/confluence/display/HERCULES/Actividad+docente+-+CVN "https://confluence.um.es/confluence/display/HERCULES/Actividad+docente+-+CVN") | Detalle sobre los datos de la Actividad Docente, dependiendo del ID de la persona y el tipo de actividad.Ejemplo:* actividad\-docente/23019512?tipoActividad\="030\.040\.000\.000" |
| [SGI \- ESB \- SGP \- Personas \- Consultar personas con modificaciones en actividad docente](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+personas+con+modificaciones+en+actividad+docente "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+personas+con+modificaciones+en+actividad+docente") | GET | /actividad\-docente/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion: fecha a partir de la cual se quieren ver los cambios * tipoActividad: tipo de actividad docente que se quiere recuperar, usando los códigos de CVN | Lista\[String] | Listado de identificadores de las personas que han tenido modificaciones en la actividad docente.Ejemplo:* actividad\-docente/modificados\-ids?q\=fechaModificacion\=ge\="2022\-01\-01T00:00:00Z";tipoActividad\="030\.040\.000\.000" |
| [SGI \- ESB \- SGP \- Personas \- Consultar personas modificadas](/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+personas+modificadas "/confluence/display/HERCULES/SGI+-+ESB+-+SGP+-+Personas+-+Consultar+personas+modificadas") | GET | /personas/modificadas\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[String] | Listado de los identificadores de personas que han sufrido cambios en los datos identificativos (nombre, apellidos, sexo, número de documento y tipo de documento) y/o en los datos personales (fecha de nacimiento, país de nacimiento, comunidad autónoma de nacimiento y ciudad de nacimiento) y/o en datos de contacto (país de contacto, comunidad autónoma de contacto, provincia de contacto, ciudad de contacto, dirección de contacto, código postal, listado de teléfonos y listado de emails) y/o en la fotografía a partir de la fecha de modificación pasada por parámetro y/o en los sexenios. |
| [SGI \- ESB \- SGP \- Personas \- Formación \- Consultar detalle](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853222 "/confluence/pages/viewpage.action?pageId=597853222") | GET | /formacion/{id} | * tipoFormacion: tipo de formación que se quiere recuperar, usando los códigos de CVN | Lista\[Formación (del tipo solicitado)]Ver entidades en [https://confluence.um.es/confluence/pages/viewpage.action?pageId\=397534658](https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534658 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534658") | Detalle sobre los datos de la Formación Recibida, dependiendo del ID de la persona y el tipo de formación.Ejemplo:* /formacion/22468643?tipoFormacion\="020\.050\.000\.000" |
| [SGI \- ESB \- SGP \- Personas \- Consultar personas con modificaciones en formación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853218 "/confluence/pages/viewpage.action?pageId=597853218") | GET | /formacion/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion: fecha a partir de la cual se quieren ver los cambios * tipoFormacion: tipo de formación que se quiere recuperar, usando los códigos de CVN | Lista\[String] | Listado de identificadores de las personas que han tenido modificaciones en formación realizada.Ejemplo:* /formacion/modificados\-ids?q\=fechaModificacion\=ge\="2022\-01\-01T00:00:00Z";tipoFormacion\="020\.010\.020\.000" |
| [SGI \- ESB \- SGP \- Personas \- Consultar número de sexenios](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853220 "/confluence/pages/viewpage.action?pageId=597853220") | GET | /sexenios/persona/{id} | fecha | [Sexenio](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Sexenio "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGP#SGIESBSGP-Sexenio") | Devuelve el número de sexenios de la persona. Si se le pasa el parámetro de la fecha devuelve el número de sexenios en esa fecha, sino se devuelve el número de sexenios a la fecha actual.Ejemplo:* fecha\="2021\-08\-18T22:00:00Z" |

  


  





