# Hércules : IU\-GEN\-0080 \- Búsqueda de empresas







## Autocomplete de búsqueda de empresas

En los formularios donde se presenta el acceso al buscador de empresas, descrito en el apartado posterior, existirá además un comportamiento especial, estos campos "empresa" tendrán un comportamiento autocomplete, de forma que:

* El campo debe ser editable para poder introducir un criterio de búsqueda en él antes de pulsar el botón buscar.
* Según el usuario introduce texto en el campo, se mostrará una lista dinámica que irá filtrando por el nombre/razón social los resultados encontrados (Autocomplete). Seleccionando uno de ellos, se asociará el identificador de esa empresa donde corresponda. Si no hay resultados, no muestra el listado.
* Si el usuario pulsa buscar sin introducir ningún texto por el que filtrar, se abrirá en un popup el formulario de búsqueda de empresas descrito a continuación.

## Formulario de búsqueda de empresas

Pantalla que implementa el buscador de empresas, común a todo el SGI. 

Se podrá abrir en una ventana emergente o popup desde las gestiones que necesiten utilizarlo pulsando el botón Buscar asociado al campo de empresa existente en dicha gestión o formulario.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Campo único de entrada | Texto | Campo único de búsqueda. El valor introducido se pasará como parámetro a la función [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md") |
| Listado de resultados | | |
| Nº Identificación fiscal | Texto | Número de identificación fiscal de la empresa, de acuerdo a los datos disponibles en el sistema de gestión económico (o en el que corresponda en cada Universidad) |
| Entidad / Razón social | Texto | Nombre y/o razón social de la empresa, de acuerdo a los datos disponibles en el sistema de gestión de empresas (o en el que corresponda en cada Universidad) |
| Datos económicos | Texto corto | Información acerca de si la entidad dispone de datos económicos o no. Posibles valores: Sí / No. |
| Seleccionar | Icono de acción | Acción "seleccionar". |
| Ver | Icono de acción | Acción "ver". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Invoca a la función de búsqueda y muestra el listado de resultados.Se invocará a la función de búsqueda, [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md"), proporcionada por el módulo de integración.Los parámetros a pasar a esta función serán:* Valor introducido en el campo único de búsqueda que presenta el formulario. |  | No se necesita permiso, cualquier usuario que haya podido acceder puede realizar la búsqueda. |
| Limpiar | Vacía los datos introducidos en el formulario de búsqueda de empresas, en este caso, el campo único de búsqueda. |  |  |
| Seleccionar | Selecciona la empresa del listado.Tras seleccionar una empresa, se devuelve la misma al módulo que invoca al buscador y se cierra el buscador. |  |  |
| Ver | Muestra en una ventana emergente sobre la ventana del buscador el formulario con los datos ampliados de la empresa [IU\-GEN\-0082 \- Ver detalle \- Solicitar modificación de empresa](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0082+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+empresa&linkCreation=true&fromPageId=597852553 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0082+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+empresa&linkCreation=true&fromPageId=597852553").Los datos se mostrarán en modo solo lectura o en modo edición dependiendo del rol o los permisos de los que disponga el usuario. |  | ESB\-EMP\-VESB\-EMP\-E |
| Solicitar alta de entidad | Muestra en una ventana emergente el formulario [IU\-GEN\-0081 \- Solicitar alta de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0081-solicitar-alta-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0081-solicitar-alta-de-empresa.md"). |  | ESB\-EMP\-C |
| Cancelar | No se realiza ninguna acción, se cierra el formulario sin devolver ningún dato al formulario de invocación. |  |  |

### Interfaces de usuario y casos de uso relacionados





















### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso







