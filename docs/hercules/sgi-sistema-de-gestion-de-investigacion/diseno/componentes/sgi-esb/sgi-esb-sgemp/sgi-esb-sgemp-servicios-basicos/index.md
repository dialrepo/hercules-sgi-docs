# Hércules : SGI \- ESB \- SGEMP \- Servicios Básicos



##### Métodos imprescindibles para el funcionamiento de los módulos y gestiones que utilicen empresas.



| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGEMP \- Empresas \- Consultar detalle (Datos generales)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853021 "/confluence/pages/viewpage.action?pageId=597853021") | GET | /empresas/{id} |  | [Empresa](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-Empresa "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-Empresa") | Detalle de los datos generales de una empresa. |
| [SGI \- ESB \- SGEMP \- Empresas \- Buscar](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Buscar "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Buscar") | GET | /empresas | q\+s (query \+ sort)La query estará formada por:* id * nombre * razonSocial * numeroIdentificacion | Lista\[[Empresa](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-Empresa "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-Empresa")] | Listado de Empresa.*Ejemplo*:nombre\=like\=(Tree);(razonSocial\=like\=SL) |
| [SGI \- ESB \- SGEMP \- Empresas \- Consultar datos contacto](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+datos+contacto "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+datos+contacto") | GET | /datos\-contacto/empresa/{id} |  | [DatosContacto](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-DatosContacto "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-DatosContacto") | Contiene los datos de contacto de una empresa. |
| [SGI \- ESB \- SGEMP \- Empresas \- Listar tipos de identificador](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Listar+tipos+de+identificador "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Listar+tipos+de+identificador") | GET | /tipos\-identificador |  | Lista\[[TipoIdentificador](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-TipoIdentificador "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-TipoIdentificador")] | Listado de tipos de identificador fiscal para las empresas ordenados alfabéticamente de forma ascendente. |




