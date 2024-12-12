# Hércules : IU\-EER\-0011\-0010 \- Añadir\-modificar miembro de composición de la sociedad



## Formulario de alta/modificación de miembro de composición de la sociedad

Pantalla que muestra un formulario, que permite añadir un nuevo miembro o modificar uno de los existentes al listado de socios de la composición societaria de una empresa.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Tipo de miembro | RadiobuttonObligatorioModificable | Campo de selección entre dos opciones:* Persona * Entidad  Por defecto, para añadir un nuevo miembro, estará seleccionado el tipo "Persona". |
| Miembro sociedad | TextoObligatorioModificable | Si en el campo "Tipo de miembro" se ha seleccionado el valor "Persona", será un campo de búsqueda de personas en los sistemas de la Universidad.Si en el campo "Tipo de miembro" se ha seleccionado el valor "Entidad", será un campo de búsqueda de entidades/empresas en los sistemas de la Universidad. |
| Fecha inicio | Fecha (sin hora)ObligatorioModificable | Fecha desde que el miembro es socio. |
| % Participación | Numérico decimalObligatorioModificable | Porcentaje de participación del socio en la sociedad. |
| Capital social | Numérico decimalOpcionalModificable | Importe del capital social aportado por el socio. |
| Tipo aportación | SelectorObligatorioModificable | Tipo de aportación a la sociedad:* Dineraria * No dineraria |
| Fecha fin | Fecha (sin hora)ObligatorioModificable | Fecha hasta la que el miembro es socio. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (persona) | A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453") que hará uso del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos"). Se le deberán pasar a este buscador el listado de colectivos asociados al tipo de colectivo "Miembro Equipo de Empresa de Explotación de Resultados".En el caso de que el buscador no devolviese a la persona que se desea añadir como miembro de la composición de la sociedad de la empresa de explotación de resultados, se podrá realizar la solicitud de registro a través del requisito de integración [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona")  desencadenado desde la pantalla de solicitar alta de persona [IU\-GEN\-0061\- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona") a la que se accede desde el propio formulario de búsqueda [IU\-GEN\-0100\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"). En el caso de que el buscador devolviese a la persona que se desea añadir  como miembro de la composición de la sociedad de la empresa de explotación de resultados, pero se quisiera realizar alguna modificación en sus datos, se podrá solicitar dicha modificación, utilizando para ello el formulario de solicitud de modificación [IU\-GEN\-0062 \- Ver detalle \- Solicitar modificación de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108605529 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108605529"), que cumple con el requisito de integración [REQ\-INT\-0020\-SGP\-0060 \- Solicitar modificación de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108606269 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108606269") y a la que se accede desde el propio formulario de búsqueda [IU\-GEN\-0100\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"). En el caso de encontrarse la persona y de seleccionarse en el formulario de búsqueda, se visualizarán los datos de nombre, apellidos y el email principal, entre paréntesis, de la persona seleccionada en el campo Miembro sociedad. |  | No se necesita permiso para mostrar la pantalla de búsqueda de personas. |
| Buscar (entidad) | A través del botón Buscar se dará acceso al buscador de empresas/entidades común a todo el SGI [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"). El listado de entidades disponibles se obtendrá del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md"), que realizará la búsqueda de entidades en los sistemas de la Universidad.En el caso de encontrarse la empresa y de seleccionarse en el formulario de búsqueda, se visualizarán los datos de nombre de la empresa seleccionada en el campo Miembro sociedad. |  | No se necesita permiso para mostrar la pantalla de búsqueda de empresas. |
| Añadir / Aceptar | Si estamos añadiendo un nuevo miembro se mostrará el texto "Añadir" y si estamos modificando los datos de uno ya existente previamente, se mostrará el texto "Aceptar".Añade el nuevo socio al listado de miembros de la composición de la sociedad o modifica los datos del ya existentes.Se validará que el % de participación sea \>0 y \<\=100, que la fecha de inicio sea menor que la de fin y que el capital social sea \> 0\. |  | EER\-EER\-E |
| Cancelar | Retorna a la pantalla listado de socios, sin salvar la posibles modificaciones. |  |  |



