# Hércules : Extracción de la información para convocatorias de Fundación La Caixa



Se usará la librería de Python Selenium (de software libre). Esta herramienta se utiliza para automatizar los navegadores web para realizar una serie de tareas. Uno de ellos es el web\-scraping para extraer datos e información útiles. En nuestro caso, utilizaremos navegador Google Chrome y especificamos el modo de interacción “headless”. Este modo permite que el navegador se ejecute en segundo plano sin cargar estilos ni renderizado, y también puede hacer que las pruebas automatizadas sean más estables.

Para extraer la información necesaria localizamos los elementos que la contienen, esta localización se lleva a cabo a través de los atributos que contiene cada elemento.

Los enlaces a cada convocatoria tienen el atributo “href”. Los títulos se extraen por el nombre de tag “span”. Luego, accedemos a cada convocatoria y extraemos su estado (abierta/cerrada), fechas, descargamos el documento PDF con bases de convocatoria. Los PDFs se localizan por el atributo “contenedor documentos” que tiene enlaces a la descarga de cada documento.

En algunos casos, los nombres de apartados que contienen la información que buscamos varían entre las convocatorias. Por ejemplo, la fecha puede estar en el apartado “Calendario” o en “Fechas Clave”. Para generalizar el proceso, hay que tener en cuenta toda la casuística entre las convocatorias.

Todas estas partes serán un todo de la librería que se llamará y recogerá toda la información necesaria para trabajar con ella.




