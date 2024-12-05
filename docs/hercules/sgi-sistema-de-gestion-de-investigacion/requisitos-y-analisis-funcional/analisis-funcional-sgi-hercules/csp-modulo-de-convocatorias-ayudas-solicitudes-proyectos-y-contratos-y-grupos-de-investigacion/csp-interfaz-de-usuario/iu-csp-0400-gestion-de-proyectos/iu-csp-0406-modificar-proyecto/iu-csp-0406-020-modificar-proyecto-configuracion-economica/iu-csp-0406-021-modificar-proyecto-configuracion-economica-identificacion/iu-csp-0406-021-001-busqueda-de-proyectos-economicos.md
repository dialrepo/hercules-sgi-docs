# Hércules : IU\-CSP\-0406\-021\-001 \- Búsqueda de proyectos económicos







## Formulario de búsqueda de proyectos económicos

Pantalla que implementa el buscador de proyectos económicos dados de alta en el sistema de gestión económico

Se abrirá en una ventana emergente o popup.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Introduzca el identificador SGE o el título de proyecto | Texto | Se comprobará si el valor introducido forma parte de los identificadores SGE y los títulos de los proyectos. |
| Fecha inicio desde | Date | Se comprobará que la fecha de inicio del proyecto sea mayor o igual a la fecha introducida en este campo |
| Fecha inicio hasta | Date | Se comprobará que la fecha de inicio del proyecto sea menos o igual a la fecha introducida en este campo |
| Fecha fin desde | Date | Se comprobará que la fecha de fin del proyecto sea mayor o igual a la fecha introducida en este campo |
| Fecha fin hasta | Date | Se comprobará que la fecha de fin del proyecto sea menor o igual a la fecha introducida en este campo |
| Listado de resultados | | |
| Identificador SGE | Texto | Identificador del proyecto en el SGE |
| Título del proyecto | Texto | Título del proyecto de investigación |
| Fecha de inicio | Date | Fecha de inicio del proyecto |
| Fecha fin | Date | Fecha fin del proyecto |
| Seleccionar | Icono de acción | Acción "seleccionar y notificar SGE". |
| Ver | Icono de acción | Acción "ver". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Invoca a la función de búsqueda y muestra el listado de resultados.Se invocará a la función de búsqueda, [REQ\-INT\-0010\-SGE\-0080 \- Buscar proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0080-buscar-proyecto-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0080-buscar-proyecto-economico.md") proporcionada por el módulo de integración.Los parámetros a pasar a esta función serán:* Valor introducido en el campo identificador SGE/título de proyecto * Fecha inicio desde \- Fecha inicio hasta * Fecha fin desde \- Fecha fin hasta |  | No se necesita permiso, cualquier usuario que haya podido acceder puede realizar la búsqueda |
| Limpiar | Vacía los datos introducidos en el formulario de búsqueda de proyectos, en este caso, el campo único de búsqueda. |  |  |
| Seleccionar | Selecciona el proyecto del listado y notifica al SGE la nueva relaciónMuestra el formulario [IU\-CSP\-0406\-021\-004\- Solicitar relaciónproyecto económico desde Proyecto SGI](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-004-solicitar-relacion-proyecto-economico-desde-proyecto-sgi.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-004-solicitar-relacion-proyecto-economico-desde-proyecto-sgi.md")Tras seleccionar un proyecto, se devuelve el identificador "identificadorSGE" al módulo que invoca al buscador y se cierra el buscador. |  | ESB\-PRO\-C |
| Solicitar alta proyecto | Muestra el formulario [IU\-CSP\-0406\-021\-002\- Solicitar alta de proyecto económico UM](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-002-solicitar-alta-de-proyecto-economico-desde-proyecto-sgi.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-002-solicitar-alta-de-proyecto-economico-desde-proyecto-sgi.md") |  | ESB\-PRO\-C |
| Cancelar | No se realiza ninguna acción, se cierra el formulario sin devolver ningún dato al formulario de invocación. |  |  |







  






  








### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso







