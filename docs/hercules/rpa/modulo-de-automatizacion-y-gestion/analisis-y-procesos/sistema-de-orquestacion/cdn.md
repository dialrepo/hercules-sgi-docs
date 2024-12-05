# Hércules : CDN



La arquitectura requiere poder realizar la transferencia y almacenamiento de los ficheros manipulados. Estos ficheros serán operados por gran cantidad de componentes de toda la arquitectura. Por un lado, los usuarios finales los incluirán como parámetro de alguna solicitud RPA o bien los obtendrán como resultado de éstas. Asimismo, los robots deberán poder recuperar los ficheros para poder analizar y tratar su contenido.  

Para ello, se dispone de un Content Delivery Network o CDN. Dado que no se va a desplegar una red distribuida de servidores de contenido, no se trata de un CDN al uso sino que se compone de un único servidor HTTP que se encargará de llevar a cabo el offloading de los recursos web estáticos requeridos por el despliegue.  

Se ha optado por un servidor HTTP NGINX como opción para el despliegue del CDN debido a que se trata de un servidor web ligero y de alto rendimiento. Con el objetivo de integrar este componente en la arquitectura, se manipulará como un microservicio más desplegado e integrado en un clúster de Kubernetes.  

Para el despliegue, se hará uso de una imagen personalizada que se basará en la que se encuentra en la siguiente URL: 

    [https://hub.docker.com/r/openbridge/nginx](https://hub.docker.com/r/openbridge/nginx "https://hub.docker.com/r/openbridge/nginx")

  


Ejemplo de uso para subida de fichero

![](/attachments/598147217/598147879.png)

El robot, realiza una petición al orquestador para obtener la URL de carga de fichero en el CDN, una vez obtiene la URL, procede a hacer una petición directamente al CDN para subir el fichero. Una vez se ha subido el fichero al CDN, este devuelve la información del fichero al orquestador, para que registre que se ha subido un nuevo fichero en la aplicación y asignarle un ID para que pueda ser usado más adelante, así mismo, el robot también recibe la información del fichero para poder utilizarlo posteriormente.

  


Ejemplo de uso para descarga de fichero:

![](/attachments/598147217/598147880.png)

Una vez el usuario tiene la URL de un fichero, se hará una petición GET par descargar el fichero desde el CDN, será tan fácil como pinchar en el enlace que se obtiene para descargar el fichero.

  





