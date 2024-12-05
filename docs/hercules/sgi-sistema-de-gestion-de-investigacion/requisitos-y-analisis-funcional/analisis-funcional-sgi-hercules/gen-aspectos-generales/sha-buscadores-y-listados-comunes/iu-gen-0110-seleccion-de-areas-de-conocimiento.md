# Hércules : IU\-GEN\-0110 \- Selección de áreas de conocimiento







## Formulario de selección de áreas de conocimiento

Pantalla que implementa el formulario común a todo el SGI de selección de áreas de conocimiento para poder asociarlas a una entidad.

Se abrirá en una ventana emergente o popup desde las gestiones que necesiten utilizarlo al pulsar sobre un botón "Añadir área de conocimiento" (o similar).



| ***Vista antes de seleccionar ningún área de conocimiento******Vista al momento de seleccionar áreas de conocimiento, en este ejemplo, 2, Ciencias de la salud y Comunicación audiovisual******Vista después de haber seleccionado las áreas de conocimiento "Ciencias de la salud" y "Comunicación audiovisual" previamente, pulsado el botón "Seleccionar" y a continuación "Añadir área de conocimiento" de nuevo desde la gestión de la entidad llamante por querer asociar un área de conocimiento nueva, "Historia del arte", a la entidad.*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Selección de áreas de conocimiento | Componente gráfico de árbolObligatorio | Se mostrará el árbol de áreas de conocimiento.En un primer momento, cuando no haya ningún área de conocimiento previamente asociada a la entidad desde la que se llama a este formulario, se mostrarán únicamente las áreas de conocimiento de primer nivel (ramas de conocimiento). Según se vaya abriendo el árbol, se mostrará el nivel descendiente de la rama desplegada y así sucesivamente.Si ya existen áreas de conocimiento asociadas a la entidad, se mostrarán igualmente solo las áreas de conocimiento de primer nivel (ramas de conocimiento) y también según se vaya abriendo el árbol, se mostrará el nivel descendiente de la rama desplegada y así sucesivamente, si bien en este caso en el árbol se mostrarán las áreas de conocimiento previamente asociadas a la entidad a modo informativo en modo solo lectura. Sobre ese árbol, se podrán seleccionar nuevas áreas, pero no deseleccionar las que se presentan marcadas de antemano. Esta operativa para deshacer la relación entre la entidad y un área de conocimiento se ha de llevar a cabo con la opción de eliminar (icono "papelera") en la pantalla donde se presente el listado de áreas de conocimiento actualmente asociadas con la entidad (Ver [Ejemplo de formulario de listado de áreas de conocimiento asociadas a una entidad](#IUGEN0110Seleccióndeáreasdeconocimiento-ejemplo "#IUGEN0110Seleccióndeáreasdeconocimiento-ejemplo")).El listado de áreas de conocimiento tanto de primer nivel (raíces, que jerárquicamente no tienen padre) como del resto de niveles será recuperado a través de llamadas sucesivas a [REQ\-INT\-0030\-SGO\-0010 \- Listar áreas de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0010-listar-areas-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0010-listar-areas-de-conocimiento.md") indicando según el caso la ausencia de nivel padre (para las raíces) o el identificador concreto del nivel padre (para los elementos que no son raíz).Se puede seleccionar uno o varias áreas de conocimiento en función de lo que en cada gestión desde donde se llame se determine. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Seleccionar | Se añaden al listado de áreas de conocimiento de la entidad las áreas de conocimiento seleccionadas y se cierra la ventana popup. Se validará que se haya seleccionado al menos un elemento del árbol de áreas de conocimiento.Por cada área de conocimiento seleccionada se creará un registro en el listado de áreas de conocimiento asociadas a la entidad de la gestión desde la que se la llame. |  | No se necesita permiso, cualquier usuario que haya podido acceder puede realizar la asociación. |
| Cancelar | Retorna al listado de áreas de conocimiento de la gestión desde la que se haya abierto el formulario de selección sin salvar los posibles cambios. |  |  |

## Ejemplo de formulario de listado de áreas de conocimiento asociadas a una entidad

Pantalla de ejemplo de formulario de listado de áreas de conocimiento asociadas a una entidad. Se describe para evitar que ante una nueva necesidad de asociación de áreas de conocimiento, que no requiera más información a mostrar que la aquí descrita, se plantee una solución totalmente distinta, si bien, siempre cabe la posibilidad de que la gestión precise mostrar una vista de la asociación particularizada y distinta. En ambos casos, el formulario de listado de áreas de conocimiento asociadas ha de ser incluido y describirse como corresponda en cada análisis/gestión específica.

Se incluyen menús, cabeceras y botones "Guardar" y "Cancelar" para mostrar el contexto del formulario, pero no se describirán aquí ya que su función corresponderá a la gestión concreta en la que se incluyan.



| ***Vista con celda de Niveles con y sin superar número de caracteres máximo para la celda******Vista de popup de celda Niveles cuando el contenido supera número de caracteres máximo*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de áreas de conocimiento | | |
| Niveles | Texto | Concatenación de los nombres de las áreas de conocimiento que ocupan niveles superiores al área de conocimiento con la que se vincula la entidad.La cadena de texto a mostrar se compondrá a la hora de hacer la presentación por pantalla, obteniendo para ello la información necesaria a través de sucesivas peticiones del detalle de cada área de conocimiento a partir de [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md"). La concatenación de nombres habría de hacerse utilizando algún tipo de separador (ej: "\-") y  sería de los nombres de los niveles jerárquicamente superiores al del área seleccionada, ordenados desde la raíz hasta el inmediatamente superior a ese área de conocimiento, esto es, sin incluir el nombre del área seleccionada.Si la cadena de texto a mostrar es muy larga se cortará con "...". Se acompañará de un componente tipo "tooltip" que mostrará la cadena completa al pasar sobre el texto. Nota: en el caso del escenario en el que se acaban de seleccionar una o varias áreas de conocimiento en el popup, puede que para estas áreas de conocimiento esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Nivel seleccionado | Texto | Nombre del área de conocimiento seleccionado. Es el nombre del área con el que se relaciona directamente la entidad que corresponda. El nombre a mostrar se obtendrá a partir de [REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0011-consultar-area-de-conocimiento.md").Nota: en el caso del escenario en el que se acaban de seleccionar una o varias áreas de conocimiento en el popup, puede que para estas áreas de conocimiento esta información ya esté disponible en la respuesta devuelta tras la selección y no sea necesario realizar nuevas llamadas para presentarla en pantalla. |
| Eliminar | Icono de acción | Acción "Eliminar". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar | Elimina la asociación entre el área de conocimiento y la entidad que corresponda. |  | Los que correspondan en cada gestión específica. |

### Interfaces de usuario y casos de uso relacionados





















### Permisos







