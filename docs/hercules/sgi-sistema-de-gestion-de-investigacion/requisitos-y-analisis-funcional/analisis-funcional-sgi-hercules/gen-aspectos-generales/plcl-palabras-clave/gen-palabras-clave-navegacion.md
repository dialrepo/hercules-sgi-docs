# Hércules : GEN \- Palabras Clave \- Navegación



#### Descripción del caso de navegación

Se presenta a continuación un caso de ejemplo en el que, en un primer paso, se asocian una lista de palabras clave a un proyecto para, en un segundo paso, buscar dicho proyecto usando como filtro alguna de esas palabras clave.

Se parte del supuesto de que el diccionario inicial común a todo el SGI tendría las siguientes palabras clave:

* asiática
* avispa
* velutina
* vespa
* vespertino
* vestimenta

Tras las acciones indicadas en los ejemplos, el diccionario pasaría a tener, además de las anteriores, las palabra "vespa velutina".



#### Paso 1: Añadir palabras clave a un proyecto

Para añadir nuevas palabras clave a un proyecto, en primer lugar se ha de ir a la pantalla de edición/modificación de dicho proyecto.

Para ello, ir al menú **Proyectos** y dentro del listado de proyectos seleccionar el botón "Editar" de aquel al que se quieran añadir las palabras clave.

![](/attachments/597852280/597871999.png)

A continuación, se mostrará la pantalla **Datos Generales → Ficha General** del proyecto seleccionado, donde podremos ver el campo "Palabras clave" bajo los campos "Proyecto coordinado" y "Coordinador externo".

##### Paso 1\.1 Añadir palabra clave que está en el diccionario

En primer lugar vamos a añadir una palabra clave que esté en el diccionario.

A la hora de añadir una nueva palabra clave, por ejemplo, "vespertino", al comenzar a escribir los primeros caracteres, por ejemplo, "ves", se sugerirán palabras ya existentes en el diccionario general del SGI para, si se quiere, poder seleccionar una.

![](/attachments/597852280/597871996.png)



Si se decide seleccionar una palabra del diccionario, por ejemplo, "vespertino", la elegimos del despelgable y pulsamos la tecla "enter" y se añadiría la palabra clave a la lista de palabras clave del proyecto.

![](/attachments/597852280/597871998.png)

Vemos a continuación cómo la nueva palabra clave "vespertino" aparece en la lista de palabras asociadas al proyecto.

![](/attachments/597852280/597872003.png)



##### Paso 1\.2 Añadir palabra clave que no está en el diccionario

Ahora vamos a añadir una palabra clave que no esté en el diccionario.

Escribimos una palabra que, en este caso, no existe en el diccionario, como por ejemplo, "vespa velutina". En este caso, la palabra se ha de introducir completa manualmente.

Una vez escrita, pulsamos la tecla "enter" y se añadiría la palabra clave "vespa velutina" a la lista de palabras clave del proyecto (además de al diccionario).

![](/attachments/597852280/597872005.png)



Vemos a continuación cómo la nueva palabra clave "vespa velutina" aparece en la lista de palabras asociadas al proyecto.

![](/attachments/597852280/597872000.png)

Pulsamos el botón "Guardar proyecto" para que los datos de las nuevas palabras clave se almacenen.

![](/attachments/597852280/597872002.png)



El sistema informará de que los cambios han sido guardados y, por tanto, ya se podrá buscar el proyecto modificado usando las nuevas palabras clave añadidas como filtro.

![](/attachments/597852280/597872009.png)

##### Paso 1\.3 Eliminar palabras clave asociadas a un proyecto

Se puede eliminar una o varias de las palabras clave de las asociadas a un proyecto desde la propia pantalla de edición/modificación del proyecto pulsando sobre el botón con un aspa situada al lado de cada una.

Se incluye un Zoom de dicho botón:

![](/attachments/597852280/597871932.png)

Al igual que a la hora de añadir las palabras clave, los cambios realizados no se guardarán hasta que se pulse sobre el botón "Guardar proyecto".



#### Paso 2: Buscar proyecto por palabras clave

Para buscar proyectos usando el filtro por palabras clave, se debe ir al menú **Proyectos** y a continuación, en la pantalla de búsqueda y listado de proyectos, cambiar de la búsqueda simple (por defecto) a la ampliada, pulsando sobre el enlace "Búsqueda ampliada"

![](/attachments/597852280/597872010.png)

A la hora de buscar un proyecto por una nueva palabra clave, por ejemplo, "vespa", al comenzar a escribir los primeros caracteres se sugerirán palabras ya existentes en el diccionario general del SGI para, si se quiere, poder seleccionar una.

![](/attachments/597852280/597872049.png)



Si se decide seleccionar una palabra del diccionario, la elegimos del desplegable y pulsamos la tecla "enter" y se añadiría la palabra clave a la lista de palabras clave por las que filtrar los proyectos.

![](/attachments/597852280/597872051.png)

La palabra clave "vespa" aparece en la lista de palabras por las que filtrar los proyectos.



Podemos además combinar filtros. Además se puede filtrar por una palabra que, como en el ejemplo a continuación, no existe en el diccionario y por tanto, se introduce completa manualmente, como es "avispa asiática".

Una vez escrita la segunda palabra a usar como filtro, "avispa asiática", se debe pulsar la tecla "enter" y se añadiría la palabra clave a la lista de palabras clave por las que filtrar los proyectos.

![](/attachments/597852280/597872044.png)

La nueva palabra clave aparece en la lista de palabras por las que filtrar los proyectos.



Pulsamos el botón Buscar y se lanza la búsqueda de proyectos asociados a las palabras clave introducidas. La búsqueda que se realizará será la de que el proyecto esté asociado con la palabra clave "vespa" O con la palabra "avispa asiática".

![](/attachments/597852280/597872042.png)



HAY UN RESULTADO POR "vespa", el proyecto con acrónimo REF003, que saldrá en el resultado aunque no tenga asociada la palabra "avispa asiática". Con la palabra clave "avispa asiática", no hay ningún proyecto.

Se presenta el resultado de la búsqueda.

![](/attachments/597852280/597872012.png)



Se puede también eliminar una o varias de las palabras clave por las que filtrar pulsando sobre el aspa situada al lado de cada una.

Si por ejemplo, eliminamos la palabra "avispa asiática" del filtro y volvemos a buscar de nuevo, el resultado sería que no hay proyectos que cumplan el criterio de búsqueda.

![](/attachments/597852280/597872028.png)

#### Componentes IU

Para implementar esta funcionalidad, se utilizará un nuevo componente cuya operativa se puede probar aquí: [https://material.angular.io/components/chips/overview\#chips\-input](https://material.angular.io/components/chips/overview#chips-input "https://material.angular.io/components/chips/overview#chips-input")

  





