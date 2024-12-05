# Hércules : IU\-GEN\-0120 \- Selección de clasificaciones







## Formulario de selección de clasificaciones

Pantalla que implementa el formulario común a todo el SGI para la selección de clasificaciones a asociar a una entidad.

Se abrirá en una ventana emergente o popup desde las gestiones que necesiten utilizarlo al pulsar sobre un botón "Añadir clasificación" (o similar).

Una clasificación se entenderá como una organización jerárquica conformada por un conjunto de códigos a los que diferentes entidades dentro del SGI (solicitudes, proyectos, invenciones, ...) se podrán asociar.

Inicialmente se identifican en el SGI tres clasificaciones distintas: UNESCO, NABS y CNAE, si bien la lista de clasificaciones podrá ser extendida por parte de la Universidad con otras adicionales en tiempo de implantación, tal y como se describe en mayor detalle en el requisito de integración [REQ\-INT\-0030\-SGO\-0030 \- Listar clasificaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0030-listar-clasificaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0030-listar-clasificaciones.md").



| ***Vista antes de seleccionar una clasificación de la que mostrar su organización jerárquica******Vista después de seleccionar la clasificación UNESCO y sin seleccionar ningún elemento de clasificación, se muestra el primer nivel de la jerarquía asociada a la clasificación UNESCO y se pueden ir desplegando categorías por niveles******Vista al momento de seleccionar clasificaciones en este ejemplo, 2, "Electromagnetismo" y "Vibraciones"******Vista después de haber seleccionado las clasificaciones "Electromagnetismo" y "Vibraciones" previamente, pulsado el botón "Seleccionar" y a continuación "Añadir clasificación" de nuevo desde la gestión de la entidad llamante por querer asociar una clasificación nueva, "Física", a la entidad*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Clasificación | SelectorObligatorio | Listado de clasificaciones (padre).Se considerarán elementos de la lista de clasificaciones a los efectos de cargar este combo los elementos que, dentro de la estructura jerárquica de clasificaciones, no tienen padre, esto es, que son nodos raíz.Si, adicionalmente, se quisiera restringir más la lista de clasificaciones a las pertenecientes a uno o varios tipos de clasificación concretos, estos tipos de clasificación por los que filtrar las clasificaciones han de venir informados desde el formulario que invoca a este formulario de selección de clasificaciones. Este filtro no será visible por pantalla.Este listado se obtendrán a través del requisito de integración [REQ\-INT\-0030\-SGO\-0030 \- Listar clasificaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0030-listar-clasificaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0030-listar-clasificaciones.md").Si cambia el valor de este selector de Clasificación y hay cambios sin guardar en el árbol de clasificaciones, esto es, se ha seleccionado alguna clasificación dentro del árbol, se almacenarán los cambios en memoria hasta que el usuario decida terminar la selección en el resto de clasificaciones y pulse el botón "Seleccionar" o bien descarte las selecciones y pulse "Cancelar". Por tanto, se podrán añadir varias clasificaciones hijas de las de primer nivel (UNESCO, NABS o CNAE) a la vez. |
| Selección de clasificaciones | Componente gráfico de árbolObligatorio | Inicialmente no se mostrará cargada ninguna clasificación. Se mostrará el árbol de clasificación del tipo seleccionado en el campo "Clasificación" una vez se escoja uno. Al cargar una clasificación, en un primer momento se mostrarán únicamente los elementos de primer nivel, según se vaya abriendo el árbol, se mostrará el nivel descendiente de la rama desplegada y así sucesivamente.Si ya existen clasificaciones asociadas a la entidad, una vez se seleccione una clasificación padre en el campo Clasificación, en el árbol se mostrarán igualmente las clasificaciones hijas de la seleccionada, únicamente las de primer nivel y, según se vaya abriendo el árbol, se mostrará el nivel descendiente de la rama desplegada y así sucesivamente, presentándose las clasificaciones que ya estén asociadas a la entidad a modo informativo en modo solo lectura. Sobre ese árbol, se podrán seleccionar nuevas clasificaciones, pero no deseleccionar las que se presentan marcadas de antemano. Esta operativa para deshacer la relación entre la entidad y una clasificación se ha de llevar a cabo con la opción de eliminar (icono "papelera") en la pantalla donde se presente el listado de clasificaciones actualmente asociadas con la entidad (Ver [Ejemplo de formulario de listado de clasificaciones asociadas a una entidad](#IUGEN0120Seleccióndeclasificaciones-ejemplo "#IUGEN0120Seleccióndeclasificaciones-ejemplo")).El listado de clasificaciones será recuperado a través de llamadas sucesivas a [REQ\-INT\-0030\-SGO\-0030 \- Listar clasificaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0030-listar-clasificaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0030-listar-clasificaciones.md").Se pueden seleccionar uno o varios elementos de clasificación en función de lo que en cada gestión desde donde se llame se determine. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Seleccionar | Se añaden al listado de clasificaciones de la entidad las clasificaciones seleccionados y se cierra la ventana popup.Se validará que se haya seleccionado al menos un elemento del árbol de clasificaciones.Por cada elemento de clasificación seleccionado se creará un registro en el listado de clasificaciones asociadas a la entidad de la gestión desde la que se la llame. |  | No se necesita permiso, cualquier usuario que haya podido acceder puede realizar la asociación. |
| Cancelar | Retorna al listado de clasificaciones de la gestión desde la que se haya abierto el formulario de selección sin salvar los posibles cambios. |  |  |

## Ejemplo de formulario de listado de clasificaciones asociadas a una entidad

Pantalla de ejemplo de formulario de listado de clasificaciones asociadas a una entidad. Se describe para evitar que ante una nueva necesidad de asociación de una o varias clasificaciones, que no requiera más información a mostrar que la aquí descrita, se plantee una solución totalmente distinta, si bien, siempre cabe la posibilidad de que la gestión precise mostrar una vista de la asociación particularizada y distinta. En ambos casos, el formulario de listado de clasificaciones asociadas ha de ser incluido y describirse como corresponda en cada análisis/gestión específica.

Se incluyen menús, cabeceras y botones "Guardar" y "Cancelar" para mostrar el contexto del formulario, pero no se describirán aquí ya que su función corresponderá a la gestión concreta en la que se incluyan.



| ***Vista con celda de Niveles con y sin superar número de caracteres máximo para la celda******Vista de popup de celda Niveles cuando el contenido supera número de caracteres máximo*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de clasificaciones | | |
| Clasificación | Texto | Nombre de la clasificación.Será el nombre de la raíz del árbol de la que cuelga el elemento final, esto es, el nivel seleccionado.Se obtendrá a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md").Nota: en el caso del escenario en el que se acaban de seleccionar una o varias clasificaciones en el popup, puede que para estas clasificaciones esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Niveles | Texto | Concatenación de los nombres de los elementos de clasificación que ocupan niveles superiores al elemento con el que se vincula la entidad.La cadena de texto a mostrar se compondrá a la hora de hacer la presentación por pantalla, obteniendo para ello la información necesaria a través de sucesivas peticiones del detalle de cada clasificación a partir de [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md"). La concatenación de nombres habría de hacerse utilizando algún tipo de separador (ej: "\-") y sería de los nombres de los niveles jerárquicamente superiores al de la clasificación seleccionada, ordenados desde la raíz hasta el inmediatamente superior a esa clasificación, esto es, sin incluir el nombre de la clasificación seleccionada.Si la cadena de texto a mostrar es muy larga se cortará con "...". Se acompañará de un componente tipo "tooltip" que mostrará la cadena completa al pasar sobre el texto. Nota: en el caso del escenario en el que se acaban de seleccionar una o varias clasificaciones en el popup, puede que para estas clasificaciones esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Nivel seleccionado | Texto | Nombre del elemento de clasificación seleccionado. Es el nombre del elemento de clasificación con el que se relaciona directamente la entidad que corresponda. El nombre a mostrar se obtendrá a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0031-consultar-clasificacion.md"). Nota: en el caso del escenario en el que se acaban de seleccionar una o varias clasificaciones en el popup, puede que para estas clasificaciones esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Eliminar | Icono de acción | Acción "Eliminar". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar | Elimina la asociación entre el elemento de clasificación y la entidad que corresponda. |  | Los que correspondan en cada gestión específica. |

### Interfaces de usuario y casos de uso relacionados





















### Permisos







