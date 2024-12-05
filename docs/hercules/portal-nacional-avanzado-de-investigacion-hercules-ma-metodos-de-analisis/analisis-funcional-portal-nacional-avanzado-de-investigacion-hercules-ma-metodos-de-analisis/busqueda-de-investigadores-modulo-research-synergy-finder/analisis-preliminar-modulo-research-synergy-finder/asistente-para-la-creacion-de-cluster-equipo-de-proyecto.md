# Hércules : Asistente para la creación de cluster (equipo de proyecto)



Documento inicial de UX para el asistente, de la página 55 a la 61 : [123031032021\-hercules\-EDMA\-master.pdf](/attachments/598147479/598148266.pdf "attachments/598147479/598148266.pdf")

## Paso 1\. Definición de cluster

Para comenzar se definen los datos identificativos del cluster (nombre y descripción), para su localización posterior en el espacio personal del usuario, y se establecen las áreas temáticas del proyecto.

Respecto a la pantalla diseñada inicialmente hay que retirar el campo de "Número de investigadores a recomendar".

![](/attachments/598147479/598148265.png)

## Paso 2\. Definición de perfiles con áreas temáticas y descriptores

En el segundo paso se declaran los perfiles que necesitaría el proyecto. Cada perfil se define con:

* Un nombre que le sirva al usuario para identificar el perfil. Es un texto libre.
* Una o más áreas temáticas en las que tendrían que haber trabajado los investigadores para cumplir con el perfil.
* (Nuevo respecto a la pantalla diseñada inicialmente) Uno o más descriptores específicos que deberían estar asociados a la actividad y experiencia científica de los investigadores propuestos para el perfil. El interfaz propondrá descriptores utilizados en el sistema, autocompletando lo que escriba el usuario (como se hace en el proceso de añadir descriptores en la edición de CV).

![](/attachments/598147479/598148263.png)![](/attachments/598147479/598148262.png)

## Paso 3\. Propuesta de investigadores/as

En el tercer paso se presentan los investigadores que cumplen con los criterios establecidos en los perfiles, del siguiente modo:

* Un listado de investigadores (con cambios respecto al diseño).
	+ Datos de cada investigador: Nombre, \[ Categoría profesional y Departamento si es interno / Externo ], Número de publicaciones, Número de proyectos en los que haya sido investigador principal,  Áreas temáticas, Perfil o perfiles es en los que encaja.
	+ Enlace a la ficha del investigador.
	+ Ordenación por:
		- Criterio de relevancia. A tener en cuenta: coincidencia con los criterios de filtrado.
		- Número de publicaciones en el periodo filtrado.
		- Orden alfabético.
* Facetas de filtrado
	+ Rango de fechas. Por defecto los 5 últimos años (nuevo respecto al diseño).
	+ Perfiles.
	+ Áreas temáticas.
	+ Categoría profesional.
	+ Número de publicaciones.
* Gráfica de relaciones de los investigadores (cambios respecto al diseño).
	+ 20 primeros investigadores (se podrán mostrar más, de 10 en 10, como se hace en las pestañas de colaboradores en las fichas de proyecto y grupo).
	+ Diferenciar presentación por perfil (color).
	+ Representar las relaciones de publicaciones y proyectos (como se hace en las pestañas de colaboradores en las fichas de proyecto y grupo).

El usuario podrá seleccionar los investigadores de su interés y proceder a guardar la recomendación, que podrá ser consultada desde el espacio personal de gestión del investigador.

Respecto a la imagen siguiente hay algunos cambios que se han detallado en la descripción anterior.

![](/attachments/598147479/598148273.png)

  


## Consulta del cluster

El usuario dispondrá de un ficha con la que consultar el cluster configurado. El contenido de la primera pestaña es muy parecido al del paso 3, pero sólo permitirá la consulta. Si el usuario quisiera cambiarlo, la acción de edición le llevaría al paso 3 del asistente, con una lista de resultados en la que estarían marcados los investigadores previamente seleccionados. Se podrán eliminar investigadores del cluster desde esta pantalla.

En la pestaña de áreas temáticas se muestran las áreas temáticas de los investigadores seleccionados con sus relaciones entre ellas, de un modo similar a la ficha de Proyectos y Grupos de investigación.

![](/attachments/598147479/598148274.png)![](/attachments/598147479/598148272.png)

  


  





