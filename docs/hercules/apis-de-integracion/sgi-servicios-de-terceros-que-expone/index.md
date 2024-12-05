# Hércules : SGI: Servicios de terceros que expone



![](/attachments/598147615/598148444.png)

Dentro del Sistema de Gestión de la Investigación **se gestiona un Bus de Integración que permite centralizar las comunicaciones**, el objetivo es que a través de este bus otras aplicaciones de la Universidad o de terceros puedan exponer sus métodos y centralizar de esta forma todas las comunicaciones en un único punto.

En las siguientes páginas se describen funcionalmente los requisitos de integración del SGI: [Requisitos de integración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=INT+-+Requisitos+de+integraci%C3%B3n "/confluence/pages/createpage.action?spaceKey=TEMP001&title=INT+-+Requisitos+de+integraci%C3%B3n")

A continuación se detalla la relación de métodos implementados en el bus de integración del SGI y agrupados por módulos/funcionalidades, en este apartado se muestran los métodos sobre los que el SGI hace de pasarela a través de su Bus de Integración y que exponen otras aplicaciones:

  


* [Sistema de gestión económica](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-economica/index.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-economica/index.md")
* [Sistema de gestión económica de protección industrial e intelectual](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual.md")
* [Sistema de gestión de personas](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md")
* [Sistema de gestión de empresas](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-empresas.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-empresas.md")
* [Sistema de la gestión de la estructura orgánica](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-la-gestion-de-la-estructura-organica.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-la-gestion-de-la-estructura-organica.md")

  


Además de estos métodos que se podrían denominar de terceros, el SGI expone una serie de métodos propios que se encuentran detallados en [estas páginas](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/index.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/index.md").

## Introducción al ESB

### WSO2 Enterprise Integrator

WSO2 Enterprise Integrator (WSO2 EI) es una solución de integración que permite la comunicación entre varias aplicaciones dispares. Evita que las aplicaciones se comuniquen directamente entre sí en todos sus diversos formatos, cada aplicación simplemente se comunica con WSO2 EI, que actúa principalmente como un ESB para manejar las transformaciones de los mensajes, y encamina los mensajes a sus destinos apropiados. WSO2 EI  puede utilizarse para gestionar flujos de integración sin estado a corto plazo (utilizando el perfil ESB), así como procesos empresariales con estado a largo plazo (utilizando el perfil Business Process).  Además incluye un perfil de Análisis separado para supervisar las estadísticas del ESB, un perfil de Broker de Mensajes (WSO2 MB ) que puede utilizarse para una mensajería fiable.

El perfil ESB proporciona sus servicios fundamentales a través de un motor de mensajería basado en eventos y estándares (el bus), que permite a los arquitectos de integración explotar el valor de la mensajería sin necesidad de escribir código. Este perfil ESB proporciona capacidades de integración de datos dentro del mismo tiempo de ejecución. Esto elimina la necesidad de usar un servidor de servicios de datos separado para sus procesos de integración.

### Requisitos



| Memoria | \~ 2 GB mínimo\~ 1 GB tamaño heap. Por lo general, esto es suficiente para procesar los típicos mensajes SOAP, pero los requisitos varían con los tamaños de los mensajes más grandes y el número de mensajes procesados |
| --- | --- |
| Disco | \~ 1 GB  excluyendo el espacio asignado para los archivos de registro y las bases de datos. |

#### Compatibilidad del entorno

* Todos los productos basados en el WSO2 Carbon  son aplicaciones Java que se pueden ejecutar en cualquier plataforma que sea compatible con Oracle JDK 1\.8\.\*.
* Todos los productos basados en WSO2 Carbon son generalmente compatibles con la mayoría de los SGBD comunes. La base de datos H2 incorporada es adecuada para el desarrollo, las pruebas y algunos entornos de producción. Sin embargo, para la mayoría de los entornos de producción de las empresas, se utilizar un SGBD estándar de la industria como Oracle, PostgreSQL, MySQL, MS SQL, etc.
* No se recomienda utilizar el Apache DS en un entorno de producción debido a problemas de escalabilidad. En su lugar, utilice un LDAP como OpenLDAP para la gestión de usuarios.

##### JDK



| Producto | Versión | JDK | S.O. |
| --- | --- | --- | --- |
| WSO2 Enterprise Integrator (EI) | 6\.6\.0 | CorrettoJDK 8AdoptOpenJDK 8AdoptOpenJDK 11OpenJDK 8Oracle JDK 8Oracle JDK 11 | Ubuntu 18\.04CentOS 7\.4, 7\.5Red Hat Enterprise Linux 7\.0SUSE Linux 12Windows Server 2016 |

**SGBD**



| Producto | Versión | JDK |
| --- | --- | --- |
| WSO2 Enterprise Integrator (EI) | 6\.6\.06\.5\.06\.4\.0 | Oracle 12cMySQL 5\.7Microsoft SQL Server 2016 |
| WSO2 Enterprise Integrator (EI) | 6\.3\.0 | Oracle 11g/12cMySQL 5\.6/5\.7Microsoft SQL Server 2014 |

 [https://docs.wso2\.com/display/EI600/Installation\+Prerequisites](https://docs.wso2.com/display/EI600/Installation+Prerequisites "https://docs.wso2.com/display/EI600/Installation+Prerequisites")




