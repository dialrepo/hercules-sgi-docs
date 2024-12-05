# Hércules : REQ\-INT\-0030\-SGO \- Integración con Sistema de gestión de la estructura orgánica



### Definición y objetivos

El SGI habilitará los mecanismos necesarios para la integración con los sistemas de información de gestión de la estructura orgánica (SGO). El objetivo de la integración es que los datos se gestionen una sola vez en el sistema donde, funcionalmente, se haya diseñado su gestión y que el SGI obtenga esta información sin necesidad de volver a gestionarla. El SGI podrá disponer o no de un repositorio o almacenamiento de algunas de las entidades gestionadas dentro de este sistema en los casos en los que la Universidad no disponga de información propia relativa a ellas.

La integración con los sistemas de gestión de la la estructura orgánica tiene por objetivo aportar al SGI los mecanismos que permitan tanto listar como consultar el detalle de ciertas entidades, que son consideradas de uso general por parte de varios módulos dentro del SGI y cuya única característica común es esta, el ser de uso general y no considerarse embebidas dentro de otros sistemas más específicos del SGI. Estas entidades serán las siguientes:

* Áreas de conocimiento
* Departamentos
* Clasificaciones (UNESCO, CNAE, NABS, ...)
* Geográficas (País, Comunidad Autónoma/Región, Provincia)

### Requisitos identificados



| Título | Épica, historia | Características | Cod. REQ | Estado | Fec. Aprobación | Frecuencia | M. Consumidor | Ver. Objetivo | Ver. REQ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [REQ\-INT\-0030\-SGO\-0101 \- Consultar centro](/confluence/display/HERCULES/REQ-INT-0030-SGO-0101+-+Consultar+centro "/confluence/display/HERCULES/REQ-INT-0030-SGO-0101+-+Consultar+centro") |  |  | **REQ\-INT\-0030\-SGO\-0101 \- Consultar centro** | IN PROGRESS |  |  | CSP |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0100 \- Listar centros](/confluence/display/HERCULES/REQ-INT-0030-SGO-0100+-+Listar+centros "/confluence/display/HERCULES/REQ-INT-0030-SGO-0100+-+Listar+centros") |  |  | **REQ\-INT\-0030\-SGO\-0100 \- Listar centros** | IN PROGRESS |  |  |  |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0090 \- Dar de alta palabra clave](/confluence/display/HERCULES/REQ-INT-0030-SGO-0090+-+Dar+de+alta+palabra+clave "/confluence/display/HERCULES/REQ-INT-0030-SGO-0090+-+Dar+de+alta+palabra+clave") |  |  | **REQ\-INT\-0030\-SGO\-0090 \- Dar de alta palabra clave** | IN PROGRESS |  |  | CSP, PII |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0091 \- Buscar palabras clave](/confluence/display/HERCULES/REQ-INT-0030-SGO-0091+-+Buscar+palabras+clave "/confluence/display/HERCULES/REQ-INT-0030-SGO-0091+-+Buscar+palabras+clave") |  |  | **REQ\-INT\-0030\-SGO\-0091 \- Buscar palabras clave** | IN PROGRESS |  |  | CSP, PII |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853502 "/confluence/pages/viewpage.action?pageId=597853502") |  |  | **REQ\-INT\-0030\-SGO\-0021** **\- Consultar clasificación** | IN PROGRESS |  |  | CSP, PII |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0030 \- Listar clasificaciones](/confluence/display/HERCULES/REQ-INT-0030-SGO-0030+-+Listar+clasificaciones "/confluence/display/HERCULES/REQ-INT-0030-SGO-0030+-+Listar+clasificaciones") |  |  | **REQ\-INT\-0030\-SGO\-0030** **\- Listar clasificaciones** | IN PROGRESS |  |  | CSP, PII |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0080 \- Listar provincias](/confluence/display/HERCULES/REQ-INT-0030-SGO-0080+-+Listar+provincias "/confluence/display/HERCULES/REQ-INT-0030-SGO-0080+-+Listar+provincias") |  |  | **REQ\-INT\-0030\-SGO\-0080 \- Listar provincias** | IN PROGRESS |  |  | ESB (Persona) |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0081 \- Consultar provincia](/confluence/display/HERCULES/REQ-INT-0030-SGO-0081+-+Consultar+provincia "/confluence/display/HERCULES/REQ-INT-0030-SGO-0081+-+Consultar+provincia") |  |  | **REQ\-INT\-0030\-SGO\-0081 \- Consultar provincia** | IN PROGRESS |  |  | CSP, PII, PRC |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0071 \- Consultar comunidad autónoma](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853235 "/confluence/pages/viewpage.action?pageId=597853235") |  |  | **REQ\-INT\-0030\-SGO\-0071 \- Consultar comunidad autónoma** | IN PROGRESS |  |  | CSP, PII, PRC |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0070 \- Listar comunidades autónomas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853007 "/confluence/pages/viewpage.action?pageId=597853007") |  |  | **REQ\-INT\-0030\-SGO\-0070 \- Listar comunidades autónomas** | IN PROGRESS |  |  | ESB (Persona) |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0061 \- Consultar país](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853237 "/confluence/pages/viewpage.action?pageId=597853237") |  |  | **REQ\-INT\-0030\-SGO\-0061 \- Consultar país** | IN PROGRESS |  |  | CSP, PII, PRC |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0060 \- Listar países](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853006 "/confluence/pages/viewpage.action?pageId=597853006") |  |  | **REQ\-INT\-0030\-SGO\-0060 \- Listar países** | IN PROGRESS |  |  | ESB (Persona) |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0020 \- Listar departamentos](/confluence/display/HERCULES/REQ-INT-0030-SGO-0020+-+Listar+departamentos "/confluence/display/HERCULES/REQ-INT-0030-SGO-0020+-+Listar+departamentos") |  |  | **REQ\-INT\-0030\-SGO\-0020 \- Listar departamentos** | IN PROGRESS |  |  | ESB (Persona), PRC |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852862 "/confluence/pages/viewpage.action?pageId=597852862") |  |  | **REQ\-INT\-0030\-SGO\-0011** **\- Consultar área de conocimiento** | IN PROGRESS |  |  | CSP, ESB (Persona) |  | 1\.0\.0 |
| [REQ\-INT\-0030\-SGO\-0010 \- Listar áreas de conocimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853656 "/confluence/pages/viewpage.action?pageId=597853656") |  |  | **REQ\-INT\-0030\-SGO\-0010** **\- Listar áreas de conocimiento** | IN PROGRESS |  |  | CSP, ESB (Persona) |  | 1\.0\.0 |




