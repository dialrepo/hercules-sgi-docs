# Hércules : Bases de datos



Antes de describir las diferentes bases de datos del SGI es importante ponerse en contexto dentro de la arquitectura de la aplicación, para ello, se incluye como referencia el siguiente diagrama, que representa tanto un modelo de despliegue como de comunicaciones a alto nivel entre cada una de las piezas que componen el SGI, así como las comunicaciones con otros sistemas externos.

### **Arquitectura del SGI**

![](/attachments/676986997/676986998.png)

  
 



| Elemento | | Descripción | Nº Elementos | Lista |
| --- | --- | --- | --- | --- |
| Elementos que acceden al SGI | Dispositivo Sistema | Representa a cada uno de los sistemas que pueden comunicarse con el SGI iniciando un circuito de petición\-respuesta HTTP a los servicios concretos expuestos en el SGI a través de su Bus de integración (ESB). | 3 | ED MA, RPA, Goliat (UM) |
| Dispositivo Usuario | Representa a cada uno de los sistemas que pueden comunicarse con la aplicación Web de Gestión del SGI iniciando un circuito de petición\-respuesta HTTP. | 1 | Dispositivo del usuario de la aplicación SGI , dispositivo del usuario de Goliat |
| Conector BBDD | Representa una pieza que aglutina el acceso directo a la BBDD del SGI por parte de terceros (Universidad). | 2 | Conector BBDD (acceso a esquemas csp y pii) |
| KUBERNETES | Gateway | Representa la pieza, que proporciona el propio Kubernetes, que se encarga de recibir las peticiones de los Dispositivos Usuario y Sistema y de redirigirlas en función del patrón que sigan al ESB, peticiones tipo **/api/**, o a la Web, resto de peticiones **/\***. | 1 | Gateway |
| WEB | Representa el módulo de la aplicación de gestión del SGI, que hará de orquestador de todas las peticiones que vayan dirigidas a él, llamando a los diferentes módulos según la necesidad de cada funcionalidad concreta. | 1 | WEB |
| ESB | Representa el Bus de integración del SGI, que abstrae tanto al SGI como los Elementos que acceden al SGI del origen de la información que se intercambia a través de él. Será esta pieza la que haga de pasarela, con o sin alguna adaptación según la necesidad, entre el SGI o los Dispositivos Sistema y Usuario y los servicios tanto internos al SGI como implementados por parte de terceros (Universidad). | 1 | Habrá un único ESB que contendrá los siguientes Componentes:* Los que requieren implementación por parte de terceros (Universidad): SGE, SGP, SGEMP, SGEPII. * Los que pueden tener o no implementación por parte de terceros (Universidad): SGO, SGDOC. * Los que dan acceso a servicios internos al SGI: SGICSP, SGIPII, SGIPRC, SGIUSR |
| ESB \- Implementación SGI | Representa a los servicios del ESB que tienen implementación propia por parte del SGI de forma que se pueda utilizar si no se implementan por parte de terceros (Universidad). | 2 | SGISGO, SGISGDOC |
| Módulos comunes | Representa a cada uno de los módulos de uso común por parte del resto de módulos o componentes de la aplicación. | 7 | USR, CNF, REL, REP, TP, COM, KEYCLOAK |
| Módulos funcionales | Representa a cada uno de los módulos o componentes con funcionalidad concreta de gestión por parte de los usuarios o sistemas de terceros del SGI. | 4 | CSP, ETI, PII, PRC |
| Persistencia | BBDD | Representa a cada uno de los esquemas de base de datos del SGI. Existirá un esquema por módulo. | 13 | csp, eti, pii, prc, ... |
| Almacenamiento archivos | Representa el componente encargado de persistir los documentos del SGI a disco. | 1 | Almacenamiento archivos |
| Sistemas Universidad | Servicios de integración | Representa a los servicios que pueden o deben, según el caso, ser implementados por terceros (Universidad) para la implantación del SGI en sus sistemas. | 5 | SGE (UNI), SGP (UNI), SGEMP (UNI), SGEPII (UNI), SGO (UNI) (Opcional) |
| Goliat (UM) | Representa al sistema Goliat existente en la implementación propia del SGI de la Universidad de Murcia y que implementará las funcionalidades de Timesheet y de la que complementa al SGI en cuanto a la vista de los datos proyectos por parte del investigador. | 2 | Timesheet, Vista investigador |
| Servidor email | Representa la pieza que se encargará del envío de emails de Comunicados desde el sistema de terceros (Universidad) en el que se implante. | 1 | Servidor email |
| CAS | Representa la pieza encargada de autenticar a los usuarios en el sistema de terceros (Universidad). | 1 | CAS |

#### Componentes / Servicios a desplegar

Los siguientes servicios  han de estar desplegados para el correcto funcionamiento del SGI:

### Esquemas de base de datos

##### ESB \- Implementación SGI

Nº de esquemas: 2



| Componente | Descripción | Esquema | Documentación |
| --- | --- | --- | --- |
| SGISGDOC | Módulo del sistema de gestión de la documentación cross al resto de módulos del SGI. | sgdoc | [SGI \- ESB \- SGDOC](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC") |
| SGISGO | Módulo del sistema de gestión de la organización cross al resto de módulos del SGI. | sgo | [SGI \- ESB \- SGO](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO") |

##### Módulos funcionales

Nº de esquemas: 4



| Componente | Descripción | Esquema | Documentación |
| --- | --- | --- | --- |
| CSP | Módulo de convocatorias, ayudas, solicitudes, proyectos y contratos. Incluye además los grupos de investigación. | csp | Convocatorias:* [CSP\-CON \- Modelo lógico \- Diagrama](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852500 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852500") * [CSP\-CON \- Modelo lógico \- Documentación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852699 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852699")  Solicitudes:* [CSP\-SOL \- Modelo lógico \- Diagrama](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853635 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853635") * [CSP\-SOL \- Módelo lógico \- Documentación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852694 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852694")  Proyectos:* [CSP\-PRO \- Modelo lógico \- Diagrama](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853327 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853327") * [CSP\-PRO \- Modelo lógico \- Documentación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852754 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852754")  Proyectos externos:* [CSP\-PPEX \- Modelo lógico \- Diagrama](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853659 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853659") * [CSP\-PPEX \- Modelo lógico \- Documentación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852745 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852745")  Grupos de investigación:* [CSP\-GIN \- Diseño lógico \- Diagrama](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852812 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852812") * [CSP\-GIN \- Modelo lógico \- Documentación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852701 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852701") |
| ETI | Módulo de Ética. | eti | [ETI \- Modelo lógico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852355 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852355") |
| PII | Módulo de Propiedad industrial e intelectual. | pii | [PII \- Modelo lógico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852351 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852351") |
| PRC | Módulo de producción científica. | prc | [PRC \- Diseño lógico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853216 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853216") |

##### Módulos cross

Nº de esquemas: 7



| Componente | Descripción | Esquema | Documentación |
| --- | --- | --- | --- |
| CNF | Módulo de configuración cross al resto de módulos del SGI. | cnf | [CNF \- Modelo lógico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852251 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852251") |
| COM | Módulo de comunicados cross al resto de módulos del SGI. | com | [COM \- Modelo lógico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852855 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852855") |
| KEYCLOAK | Módulo de control de acceso al SGI. | keycloak |  |
| REL | Módulo de relaciones cross al resto de módulos del SGI. | rel | [SGI\-REL \- Modelo lógico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852752 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852752") |
| REP | Módulo de reporting cross al resto de módulos del SGI. | rep |  |
| USR | Módulo para la autenticación de usuarios | usr |  |
| TP | Módulo del sistema de gestión de tareas programadas cross al resto de módulos del SGI. | tp | [TP \- Modelo lógico](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852469 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852469") |

### **TECNOLOGÍA**

Los servicios del SGI se apoyan en Liquibase para la creación y mantenimiento del modelo de datos. Liquibase es un framework que permite tanto la definición del modelo de datos como la carga inicial de datos. Para ello utiliza su propia sintaxis (escrita en formato XML). A partir de esta sintaxis, este framework es capaz de hacer la traducción a sentencias propias del motor de base de datos que exista en la instalación, tanto para la creación inicial como para aplicar los cambios incrementales (de acuerdo al estado de la BD sobre la que se despliega la versión correspondiente).

Por tanto, la definición y creación del modelo inicial, así como los incrementales propios de cada versión, se encuentran dentro del código de cada servicio. Cada vez que un servicio arranca, y conecta a la BBDD, se comprueba que cambios (changeset) se han aplicado, ejecutando aquellos que sean necesarios para que el modelo de datos esté actualizado de acuerdo a lo que espera la versión de la aplicación. De este modo, en las actualizaciones de la aplicación cada servicio aplica el incremental o incrementales correspondientes. En una instalación nueva (cuando no existen tablas porque es una nueva BBDD) se aplican todos los cambios necesarios para crear las tablas y objectos que necesita la aplicación para funcionar.

En el siguiente enlace se puede ver un fichero de definición de Liquibase del servicio de CSP: [https://github.com/HerculesCRUE/SGI/blob/main/sgi\-csp\-service/src/main/resources/db/changelog/changes/0\.1\.0/0000000000000\-initial\-database.xml](https://urldefense.com/v3/__https://github.com/HerculesCRUE/SGI/blob/main/sgi-csp-service/src/main/resources/db/changelog/changes/0.1.0/0000000000000-initial-database.xml__;!!D9dNQwwGXtA!T99OejjEbLl9N78jYY9ZwU_wGFoPrHi73q3H3k1RWsafINRWEjC8DAp1Bjug7Lv9DJsbaEp6aj6R2_MDBATMwo2k$ "https://urldefense.com/v3/__https://github.com/HerculesCRUE/SGI/blob/main/sgi-csp-service/src/main/resources/db/changelog/changes/0.1.0/0000000000000-initial-database.xml__;!!D9dNQwwGXtA!T99OejjEbLl9N78jYY9ZwU_wGFoPrHi73q3H3k1RWsafINRWEjC8DAp1Bjug7Lv9DJsbaEp6aj6R2_MDBATMwo2k$")

Si lo ves necesario, para mayor detalle, puedes hacer referencia a la documentación oficial de Liquibase [https://docs.liquibase.com/home.html](https://urldefense.com/v3/__https://docs.liquibase.com/home.html__;!!D9dNQwwGXtA!T99OejjEbLl9N78jYY9ZwU_wGFoPrHi73q3H3k1RWsafINRWEjC8DAp1Bjug7Lv9DJsbaEp6aj6R2_MDBD16gtXY$ "https://urldefense.com/v3/__https://docs.liquibase.com/home.html__;!!D9dNQwwGXtA!T99OejjEbLl9N78jYY9ZwU_wGFoPrHi73q3H3k1RWsafINRWEjC8DAp1Bjug7Lv9DJsbaEp6aj6R2_MDBD16gtXY$")




