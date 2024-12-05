# Hércules : IU\-GEN\-0060 \- Búsqueda de personas







## Autocomplete de búsqueda de personas

En los formularios donde se presenta el acceso al buscador de personas, descrito en el apartado posterior, existirá además un comportamiento especial, estos campos "persona" tendrán un comportamiento autocomplete, de forma que:

* El campo debe ser editable para poder introducir un criterio de búsqueda en él antes de pulsar el botón buscar.
* Según el usuario introduce texto en el campo, se mostrará una lista dinámica que irá filtrando por el nombre, apellidos y email los resultados encontrados (Autocomplete), utilizando para ello el requisito de integración  [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos"). Seleccionando uno de ellos, se asociará el identificador de esa persona donde corresponda, mostrando por pantalla Nombre, Apellidos y, entre paréntesis, el email principal. Si no hay resultados, no muestra el listado.
* Si el usuario pulsa buscar sin introducir ningún texto por el que filtrar, se abrirá en un popup el formulario de búsqueda de personas descrito a continuación.

  


Una vez cerrados los documentos de análisis, se sustituyó el presentar el DNI de las personas por mostrar su email principal o la lista de emails, según el caso, en las pantallas donde aparecía dicha información de identificación. No se ha realizado una modificación de todos los interfaces de usuario afectados para reflejar este cambio, pero es el correcto.

## Formulario de búsqueda de personas

Pantalla que implementa el buscador de personas, común a todo el SGI. 

Se abrirá en una ventana emergente o popup desde las gestiones que necesiten utilizarlo.

En el caso de que desde las gestiones llamantes se hubiese informado ya un valor por el que filtrar, este buscador aparecerá ya precargado con el filtro indicado en dicha gestión y el resultado de lanzar la búsqueda aplicando ese filtro.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Campo único de entrada | Texto | Campo único de búsqueda. El valor introducido se pasará como parámetro a la función [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") |
| Listado de resultados | | |
| Nombre | Texto | Nombre propio de la persona. |
| Apellidos | Texto | Apellidos de la persona. |
| Entidad | Texto | Entidad a la que está vinculada la persona. En el caso de doble vinculación, esto es, de vinculación con la Universidad y con una entidad externa, se muestra el listado de entidades de vinculación de la persona separados por el carácter ",". Si la cadena a mostrar excede el espacio de la columna de la tabla se mostrará la cadena "..." y el valor completo del campo se mostrará sobre un tooltip. Si no hay entidad externa o no es personal de la Universidad, se mostrará entonces el nombre de la entidad Universidad o de la entidad externa, resolviendo en cada caso los nombres de las entidades haciendo uso del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| E\-mail |  | Se muestra el listado de e\-mails de la persona separados por el carácter ",". Si la cadena a mostrar excede el espacio de la columna de la tabla se mostrará la cadena "..." y el valor completo del campo se mostrará sobre un tooltip. Valor devuelto por [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos"). |
| Seleccionar | Icono de acción | Acción "seleccionar". |
| Ver | Icono de acción | Acción "ver". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Invoca a la función de búsqueda y muestra el listado de resultados.Se invocará a la función de búsqueda, [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"), proporcionada por el módulo de integración.Los parámetros a pasar a esta función serán:* Valor introducido en el campo único de búsqueda que presenta el formulario. * Listado de tipos de colectivo o de colectivos por los que filtrar de manera implícita, que deberán venir informados desde el formulario que invoca a este formulario de búsqueda de personas. Este filtro no será visible por pantalla.  En el caso de que desde la gestión que llama al buscador se hubiese informado ya un valor por el que filtrar, la búsqueda se hará por adelantado usando el filtro indicado en dicha gestión y por tanto aparecerá ya en esta ventana emergente, sin necesidad de pulsar este botón Buscar, el resultado de lanzar la búsqueda aplicando ese filtro. |  | No se necesita permiso, cualquier usuario que haya podido acceder puede realizar la búsqueda |
| Limpiar | Vacía los datos introducidos en el formulario de búsqueda de personas, en este caso, el campo único de búsqueda. |  |  |
| Seleccionar | Selecciona la persona del listado.Tras seleccionar una persona, se devuelve la misma al módulo que invoca al buscador y se cierra el buscador. |  |  |
| Ver | Muestra en una ventana emergente el formulario con los datos ampliados de la persona [IU\-GEN\-0062 \- Ver detalle \- Solicitar modificación de persona](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0062+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+persona&linkCreation=true&fromPageId=597852545 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0062+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+persona&linkCreation=true&fromPageId=597852545") utilizando el requisito de integración [REQ\-INT\-0020\-SGP\-0035 \- Consultar detalle de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0035-consultar-detalle-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0035-consultar-detalle-de-persona.md").Los datos se mostrarán en modo solo lectura o en modo edición dependiendo de los permisos de los que disponga el usuario. |  | ESB\-PER\-VESB\-PER\-E |
| Solicitar alta persona | Muestra el formulario [IU\-GEN\-0061\- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md"). |  | ESB\-PER\-C |
| Cancelar | No se realiza ninguna acción, se cierra el formulario sin devolver ningún dato al formulario de invocación. |  |  |

### Interfaces y casos de uso relacionados





















### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso







