# Hércules : Arquitectura del Portal Nacional Avanzado de Investigación. Hércules MA \- Métodos de Análisis



La descripción del proyecto puede consultarse en [Portal Nacional Avanzado de Investigación. Hércules MA \- Métodos de Análisis](/hercules/portal-nacional-avanzado-de-investigacion-hercules-ma-metodos-de-analisis/index.md "/hercules/portal-nacional-avanzado-de-investigacion-hercules-ma-metodos-de-analisis/index.md").

## Relación de componentes Hércules MA en la Universidad de Murcia

![](/attachments/598147547/598148404.png)

  


* Hércules MA (Métodos de Análisis). Se comunica con:
	+ [Hércules ED (Herramienta de CV, Enriquecimiento de Datos)](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/index.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/index.md"). Creación del grafo de conocimiento del portal de la investigación.

Hay que hacer notar que el diagrama anterior se corresponde con una implantación de MA en la que también existan el resto de componentes Hércules. En caso contrario, MA tiene la capacidad de recibir su información directamente desde sistemas de la universidad, tal y como está documentado en [Servicios de integración utilizados por Hércules ED y MA](https://confluence.um.es/confluence/pages/viewpage.action?pageId=416055407 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=416055407").

## Arquitectura lógica en la Universidad de Murcia

  


![](/attachments/598147547/598148405.png)

Hércules MA:

* Despliegue de servicios web (web, APIs, resultados, facetas, …)
* Despliegue de otros servicios (BASE, mensajes, …)

Servicios de datos:

* Cluster RDF. Grafo de la investigación de la universidad.
* SQL Database. Almacenamiento de tipo SQL para garantizar procesos transaccionales
* Redis Cache. Almacenamiento de datos pregenerados (p.e. contextos)
* RabbitMQ. Sistema de colas de eventos para los servicios

## Arquitectura Kubernetes. Despliegue en la Universidad de Murcia

![](/attachments/598147547/598148774.png)

  


Cluster kubernetes con los siguientes *pods*:

* Servicios web abiertos al firewall de la Universidad de Murcia (web, resultados, facetas, …)
* Servicios internos (BASE, mensajes, APIs, …)
* Virtuoso RDF Store
* Redis Cache
* RabbitMQ colas.

Externos:

* Oracle. SQL Database (el prototipo se desplegará con un POD de PostgreSQL)

  





