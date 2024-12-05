# Hércules : IU\-PII\-0031\-002 \- Añadir\-modificar sector licenciado



## Formulario Añadir\-modificar sector licenciado

Pantalla que muestra el formulario para añadir un nuevo sector licenciado o modificar los datos de uno asociado a un contrato relacionado con la invención en una ventana emergente.



| | *Formulario en "modo añadir"* | *Formulario en "modo modificar"* | | --- | --- | | | |
| --- | --- | --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| País | SelectorTexto cortoObligatorioModificable | País del sector que se licencia para la invención.Se cargará un listado de países recuperado a través del requisito de integración [REQ\-INT\-0030\-SGO\-0060 \- Listar países](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891354 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891354") de los que seleccionar uno a asociar con el sector. |
| Exclusividad | SelectorTexto cortoObligatorioModificable | Indicador de si la licencia en el país y sector es en exclusividad o no.Tendrá dos valores posibles Sí / No. |
| Fecha inicio licencia | Fecha (sin hora)ObligatorioModificable | Fecha de inicio de vigencia de la licencia en el país y sector. |
| Fecha fin licencia | Fecha (sin hora)ObligatorioModificable | Fecha de inicio de vigencia de la licencia en el país y sector. |
| Sector | SelectorTextoObligatorioModificable | Listado de sectores en los que la invención se puede licenciar de los que elegir uno a asociar para el país indicado.Listado configurable en [IU\-PII\-0050 \- Gestión de sectores de aplicación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0050-gestion-de-sectores-de-aplicacion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0050-gestion-de-sectores-de-aplicacion/index.md"). |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir | Añade el sector licenciado a la lista de sectores licenciados asociados a la invención a través del contrato y retorna a la pantalla de listado de contratos y sectores licenciados. |  |
| Aceptar | Modifica el sector licenciado asociado a la invención a través del contrato y retorna a la pantalla de listado de contratos y sectores licenciados. |  |
| Cancelar | Vuelve a la pantalla que contiene el listado de contratos y sectores licenciados sin añadir el sector licenciado. |  |




