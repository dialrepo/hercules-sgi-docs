# Hércules : IU\-GEN\-0201 \- Búsqueda por palabras clave







## Búsqueda por Palabras Clave

Para realizar la búsqueda por palabras clave, se integrará en los buscadores de las entidades que dispongan de esta funcionalidad un campo adicional de texto para poder filtrar por una o varias palabras clave. Para cada entidad se identificará en qué posición en pantalla ha de aparecer. Este campo tendrá un comportamiento especial tal y como se describe a continuación.

A modo de ejemplo, se presentan dos flujos en la pantalla de **búsqueda ampliada de proyectos** del módulo CSP, pero la filosofía sería la misma para el resto de entidades que dispongan de esta funcionalidad.



| ***Ejemplo 1: hay resultados en la búsqueda***A la hora de buscar un proyecto por una nueva palabra clave, por ejemplo, "vespa", al comenzar a escribir los primeros caracteres se sugerirán palabras ya existentes en el diccionario general del SGI para, si se quiere, poder seleccionar una.Si se decide seleccionar una palabra del diccionario, la elegimos del desplegable y pulsamos la tecla "enter" y se añadiría la palabra clave a la lista de palabras clave por las que filtrar los proyectos. La palabra clave "vespa" aparece en la lista de palabras por las que filtrar los proyectos.Podemos además combinar filtros. Además se puede filtrar por una palabra que, como en el ejemplo a continuación, no existe en el diccionario y por tanto, se introduce completa manualmente, como es "avispa asiática".Una vez escrita la segunda palabra a usar como filtro, "avispa asiática", se debe pulsar la tecla "enter" y se añadiría la palabra clave a la lista de palabras clave por las que filtrar los proyectos.La nueva palabra clave aparece en la lista de palabras por las que filtrar los proyectos.Pulsamos el botón Buscar y se lanza la búsqueda de proyectos asociados a las palabras clave introducidas. La búsqueda que se realizará será la de que el proyecto esté asociado con la palabra clave "vespa" O con la palabra "avispa asiática".HAY UN RESULTADO POR "vespa", el proyecto con acrónimo REF003, que saldrá en el resultado aunque no tenga asociada la palabra "avispa asiática". Con la palabra clave "avispa asiática", no hay ningún proyecto.Se presenta el resultado de la búsqueda.***Ejemplo 2: eliminar palabra clave del filtro y resultado donde no hay coincidencias en la búsqueda***Se puede también eliminar una o varias de las palabras clave por las que filtrar pulsando sobre el aspa situada al lado de cada una.Si por ejemplo, teniendo dos palabras clave en el filtro, "vespa" y "avispa asiática" eliminamos la palabra "vespa" del filtro y volvemos a buscar de nuevo, el resultado sería que no hay proyectos que cumplan el criterio de búsqueda.Una vez pulsado el botón Buscar, vemos que no hay ningún proyecto asociado a la palabra clave "avispa asiática". | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Campos de búsqueda del registro de la entidad principal (en el ejemplo, proyectos) | | |
| Campo de búsqueda por palabras clave | | |
| Palabras clave | Componente a medida | Lista de palabras clave por las que buscar los registros.Al comenzar a escribir en la caja de texto los primeros caracteres, se sugerirán palabras ya existentes en el diccionario común de palabras clave del SGI, que se obtendrá a través del requisito de integración [REQ\-INT\-0030\-SGO\-0091 \- Buscar palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0091-buscar-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0091-buscar-palabras-clave.md"), para poder seleccionar una por la que buscar los registros.Si la palabra por la que se quiere buscar no existe en dicho diccionario, se podrá introducir manualmente en el componente.Tanto en un caso como en otro, la acción de incluir la palabra clave seleccionada o introducida manualmente como criterio de búsqueda deberá completarse pulsando a continuación la tecla "enter".La funcionalidad de este componente seguirá la definida en [https://material.angular.io/components/chips/overview\#chips\-input](https://material.angular.io/components/chips/overview#chips-input "https://material.angular.io/components/chips/overview#chips-input"). |
| Eliminar | Icono de acción | Acción "Eliminar" de la palabra clave de la lista de palabras clave por las que filtrar los registros. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Eliminar (palabra clave por la que filtrar) | Se elimina la palabra clave de la lista de palabras clave por las que buscar los registros. |  |
| Pulsar "enter" tras seleccionar o escribir palabra clave | Se añade la nueva palabra clave indicada en la caja de texto "Palabras clave" a la lista de palabras clave por las que filtrar los registros. |  |

### Interfaces y casos de uso relacionados





















### Permisos de acceso a la pantalla

Los permisos que aplican en estas pantallas y por tanto a este campo adicional serán las ya definidas en cada funcionalidad o IU concreto donde aplique.







