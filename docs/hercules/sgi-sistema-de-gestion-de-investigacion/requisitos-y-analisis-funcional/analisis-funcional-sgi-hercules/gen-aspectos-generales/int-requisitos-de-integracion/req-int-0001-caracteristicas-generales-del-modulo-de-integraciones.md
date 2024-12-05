# Hércules : REQ\-INT\-0001 \- Características generales del módulo de integraciones



### Definición y objetivos

El SGI debe poder integrarse con otros sistemas de información existentes, tanto internos a las Universidades como externos. Es importante tener en cuenta que, en función de la universidad, la paternidad del dato puede pertenecer a sistemas diferentes.

El objetivo de la integración, de ciertos datos y procesos de gestión, es que los datos se gestionen una sola vez en le sistema donde funcionalmente se haya diseñado su gestión y que el resto de sistemas obtengan esta información sin necesidad de volver a gestionarla.

El SGI estará relacionado, pero no sustituirá, al siguiente conjunto de sistemas de información de cada universidad, en el caso de que la universidad disponga de ellos.

En el caso de no existir ese sistema externo gestor, externo al SGI, el sistema contemplará mecanismos que permitan integrar dicha funcionalidad en cada implantación.

#### Modelo genérico de integración

Para abordar estos objetivos, el sistema SGI establecerá un modelo genérico de integración donde cada componente podrá ser adaptado según las necesidades de la integración en cada implantación.

En este modelo genérico de integración se definen los siguientes componentes por subsistemas:

* + SGI SGBD : Sistema de Gestión de Base de Datos dará persistencia a los datos gestionados en cada módulo.
		- SGI Modulo A BD: Esquema de base de datos encargado de persistir los datos de un módulo particular.
		- SGI Modulo B BD: Esquema de base de datos encargado de persistir los datos de un módulo particular.
	+ SGI : Sistema de Gestión de la Investigación contendrá los servicios de gestión de la información y procesos para cada módulo del sistema.  
	
		- SGI Módulo A: Servicios que resuelven, funcionalmente, las necesidades de un módulo particular de gestión.
		- SGI Módulo B: Servicios que resuelven, funcionalmente, las necesidades de un módulo particular de gestión.
	+ SGI ESB: Bus de Integración de Servicios expondrá al SGI un interfaz de integración común para cada módulo, resolviendo internamente la integración con los distintos sistemas a integrarse.
		- ESB Modulo A Integrator: Componente que expone un interfaz de integración común e implementa las técnicas y mecanismos necesarios para realizar la integración con las interfaces definidas en cada SGEx.
	+ SGEx : Sistema de Gestión Externo representa cualquier sistema a integrarse con el SGI.
		- SGEx Modulo A : Componente que expone un interfaz de comunicación para la gestión adecuada de la información de su sistema.

La relación entre los distintos componentes puede verse en :

![](/attachments/597853256/597867629.png)

  


### Casos de uso relacionados

Se irán incluyendo los CU según se vaya desarrollando el sistema



| Cod. CU | Estado |
| --- | --- |
|  |  |
|  |  |
|  |  |

  


### Componentes proveedores identificados

Se irán incluyendo las API de los proveedores según se vaya desarrollando el sistema



| ID | Sistema | Modulo | Descripción | Casos de uso implicados | Componente de integración |
| --- | --- | --- | --- | --- | --- |
| Cod. CU |  |  |  |  |  |
|  |  |  |  |  |  |
|  |  |  |  |  |  |

  


  





