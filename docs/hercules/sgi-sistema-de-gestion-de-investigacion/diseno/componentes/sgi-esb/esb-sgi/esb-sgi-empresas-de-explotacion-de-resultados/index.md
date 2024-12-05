# Hércules : ESB \- SGI \- Empresas de explotación de resultados











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Empresa | Contiene los datos generales de una empresa de explotación de resultados. |
| EmpresaEquipoEmprendedor | Contiene la información de las personas que forman parte del equipo emprendedor de la empresa de explotación de resultados. |
| EmpresaComposicionSociedad | Contiene la información de las personas o empresas que componen la sociedad de la empresa de explotación de resultados. |
| EmpresaAdministracionSociedad | Contiene la información de las personas que componen el equipo de administración de la empresa de explotación de resultados. |

### Modelo lógico

[EER \- Modelo lógico](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-eer/eer-modelo-logico-diagrama.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-eer/eer-modelo-logico-diagrama.md")

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

#### Definición de los objetos

##### Empresa



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador único de la empresa de explotación de resultados. |
| fechaSolicitud | Fecha | Fecha de la solicitud de creación de la empresa de explotación de resultados. Formato UTC. |
| tipoEmpresa | String | Tipo de la empresa de explotación de resultados.Posibles valores:* EBT (Empresa de base tecnológica) * EINCNT (Empresa intensiva en conocimiento no tecnológico) |
| estado | String | Estado de la empresa de explotación de resultados.Posibles valores:* En tramitación * No aprobada * Activa * Sin actividad * Disuelta |
| solicitanteRef | String | Identificador de la persona solicitante asociado en el sistema de gestión de personas de la Universidad. |
| nombreRazonSocial | String | Nombre / Razón social de la empresa de explotación de resultados. |
| entidadRef | String | Identificador de la empresa asociada a la empresa de explotación de resultados del SGI en el sistema de gestión de empresas de la Universidad. |
| objetoSocial | String | Objeto social de la empresa de explotación de resultados. |
| conocimientoTecnologia | String | Descripción del conocimiento o tecnología de la empresa de explotación de resultados. |
| numeroProtocolo | String | Número de la notaría asociado a la constitución o a la incorporación de la Universidad a la empresa de explotación de resultados. |
| notario | String | Datos del notario que intervino en la constitución o a la incorporación de la Universidad a la empresa de explotación de resultados. |
| fechaConstitucion | Fecha | Fecha de constitución de la empresa de explotación de resultados. Formato UTC. |
| fechaAprobacionCG | Fecha | Fecha de aprobación en Consejo de Gobierno de la constitución o incorporación de la Universidad a la empresa de explotación de resultados. Formato UTC. |
| fechaIncorporacion | Fecha | Fecha de incorporación de la Universidad a la empresa de explotación de resultados. Formato UTC. |
| fechaDesvinculacion | Fecha | Fecha de desvinculación de la Universidad de la empresa de explotación de resultados. Formato UTC. |
| fechaCese | Fecha | Fecha de cese de la empresa de explotación de resultados. Formato UTC. |
| observaciones | String | Observaciones aportadas acerca de la empresa de explotación de resultados. |
| activo | Boolean | Indicador de si la empresa de explotación de resultados está activa en el SGI o no. |



**Empresa** Ampliar origen




##### EmpresaEquipoEmprendedor



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad empresa equipo emprendedor. |
| miembroEquipoRef | String | Identificador o Referencia de la persona miembro del equipo emprendedor. Es el identificador de la persona en el sistema de personas de la Universidad. |



**EmpresaEquipoEmprendedor** Ampliar origen



```
{
     "id": 35,
	 "miembroEquipoRef": "ABC12345"
}
```


##### EmpresaComposicionSociedad



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad empresa composición sociedad. |
| miembroSociedadPersonaRef | String | Identificador o Referencia de la persona miembro de la sociedad. Es el identificador de la persona en el sistema de personas de la Universidad. |
| miembroSociedadEmpresaRef | String | Identificador o Referencia de la persona empresa de la sociedad. Es el identificador de la empresa en el sistema de empresas de la Universidad. |
| fechaInicio | Fecha | Fecha desde que es socio la entidad/persona. Formato UTC. |
| fechaFin | Fecha | Fecha hasta la que es socio la entidad/persona. Formato UTC. |
| participacion | Decimal | Porcentaje de participación en la sociedad de la entidad/persona. |
| tipoAportacion | String | Tipo de la aportación por parte el socio a la sociedad.Posibles valores:* Dineraria * No dineraria |
| capitalSocial | Integer | Importe del capital social aportado por el socio. |



**EmpresaComposicionSociedad** Ampliar origen




##### EmpresaAdministraciónSociedad



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador de la entidad empresa composición sociedad. |
| miembroEquipoAdministracion | String | Identificador o Referencia de la persona miembro del equipo de administración. Es el identificador de la persona en el sistema de personas de la Universidad. |
| fechaInicio | Fecha | Fecha desde que el miembro forma parte del equipo de administración con tipo indicado en "Tipo administración". |
| fechaFin | Fecha | Fecha hasta la que la persona desempeña su labor como miembro del equipo de administración de la sociedad del tipo indicado en "Tipo de administración". |
| tipoAdministracion | String | Tipo de administración en la que participa la persona como miembro.Posibles valores:* Administrador único (1 persona) * Administrador solidario (2 personas o más) * Administrador mancomunado (2 personas o más) * Consejo de administración (3 personas o más) |



**EmpresaAdministracionSociedad** Ampliar origen




#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgieer**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [ESB \- SGI \- Empresas de explotación de resultados \- Consultar administración sociedad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853291 "/confluence/pages/viewpage.action?pageId=597853291") | GET | /empresas/{id}/empresaadministracionsociedad |  | Lista\[[EmpresaAdministracionSociedad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-EmpresaAdministraci%C3%B3nSociedad "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-EmpresaAdministraci%C3%B3nSociedad")] | Listado de miembros que componen el equipo de administración de una empresa de explotación de resultados. |
| [ESB \- SGI \- Empresas de explotación de resultados \- Consultar composición de la sociedad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853292 "/confluence/pages/viewpage.action?pageId=597853292") | GET | /empresas/{id}/empresacomposicionsociedad |  | Lista\[[EmpresaComposicionSociedad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-EmpresaComposicionSociedad "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-EmpresaComposicionSociedad")] | Listado de miembros que componen la sociedad de una empresa de explotación de resultados. |
| [ESB \- SGI \- Empresas de explotación de resultados \- Consultar miembros equipo emprendedor](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853289 "/confluence/pages/viewpage.action?pageId=597853289") | GET | /empresas/{id}/empresaequipoemprendedor |  | Lista\[[EmpresaEquipoEmprendedor](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-EmpresaEquipoEmprendedor "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-EmpresaEquipoEmprendedor")] | Listado de miembros del equipo emprendedor de una empresa de explotación de resultados. |
| [ESB \- SGI \- Empresas de explotación de resultados \- Consultar detalle](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853287 "/confluence/pages/viewpage.action?pageId=597853287") | GET | /empresas/{id} |  | [Empresa](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-Empresa "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-Empresa") | Datos generales de una empresa. |
| [ESB \- SGI \- Empresas de explotación de resultados \- Buscar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853293 "/confluence/pages/viewpage.action?pageId=597853293") | GET | /empresas | q\+sLa query estará formada por cualquiera de los campos del objeto [Empresa](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-Empresa "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-Empresa"). | Lista\[[Empresa](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-Empresa "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141921566#ESBSGIEmpresasdeexplotaci%C3%B3nderesultados-Empresa")] | Listado de empresas de explotación de resultados que cumplen los criterios de búsqueda indicados por parámetro.Ejemplo:* tipoEmpresa\=\=EBT |
| [ESB \- SGI \- Empresas de explotación de resultados \- Consultar Empresas de explotación de resultados modificadas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853288 "/confluence/pages/viewpage.action?pageId=597853288") | GET | /empresas/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion: fecha a partir de la cual se quieren ver los cambios | Lista\[String] | Listado de Identificadores de Empresas de explotación de resultados que han sido modificadas en los datos generales (tabla Empresa), en el equipo emprendedor (tabla EmpresaEquipoEmprendedor), en la composición de la sociedad (tabla EmpresaComposicionSociedad), en el equipo de administración de la sociedad (tabla EmpresaAdministracionSociedad) o en los documentos (tabla EmpresaDocumento).Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z" |

  





