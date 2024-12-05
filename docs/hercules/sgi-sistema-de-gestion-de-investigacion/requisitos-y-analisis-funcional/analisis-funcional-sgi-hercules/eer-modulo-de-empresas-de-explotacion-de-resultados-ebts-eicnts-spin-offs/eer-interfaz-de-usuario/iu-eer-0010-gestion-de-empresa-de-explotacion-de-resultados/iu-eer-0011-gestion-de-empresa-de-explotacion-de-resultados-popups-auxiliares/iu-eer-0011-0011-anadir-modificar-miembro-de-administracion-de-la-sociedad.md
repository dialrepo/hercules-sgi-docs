# Hércules : IU\-EER\-0011\-0011 \- Añadir\-modificar miembro de administración de la sociedad



## Formulario para añadir/modificar un miembro a la administración de la sociedad

Pantalla que muestra un formulario para añadir un nuevo miembro al equipo de administración de la empresa de explotación de resultados o para modificar los datos de un miembro ya existente.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Miembro de equipo de administración | TextoObligatorioModificable | Campo de búsqueda de personas en los sistemas de la Universidad. |
| Fecha inicio | Fecha (Sin hora)ObligatorioModificable | Fecha desde que el miembro forma parte del equipo de administración con tipo indicado en "Tipo administración". |
| Tipo de administración | Texto cortoObligatorioModificable | Tipo de administración en la que participa la persona como miembro.Posibles valores:* Administrador único (1 persona) * Administrador solidario (2 personas o más) * Administrador mancomunado (2 personas o más) * Consejo de administración (3 personas o más) |
| Fecha fin | Fecha (Sin hora)OpcionalModificable | Fecha hasta la que la persona desempeña su labor como miembro del equipo de administración de la sociedad del tipo indicado en "Tipo de administración". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (persona) | A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453") que hará uso del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos"). Se le deberán pasar a este buscador el listado de colectivos asociados al tipo de colectivo "Miembro Equipo de Empresa de Explotación de Resultados".En el caso de que el buscador no devolviese a la persona que se desea añadir como miembro del equipo de administración de la empresa de explotación de resultados, se podrá realizar la solicitud de registro a través del requisito de integración [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona")  desencadenado desde la pantalla de solicitar alta de persona [IU\-GEN\-0061\- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona") a la que se accede desde el propio formulario de búsqueda [IU\-GEN\-0100\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"). En el caso de que el buscador devolviese a la persona que se desea añadir  como miembro del equipo de administración de la empresa de explotación de resultados, pero se quisiera realizar alguna modificación en sus datos, se podrá solicitar dicha modificación, utilizando para ello el formulario de solicitud de modificación [IU\-GEN\-0062 \- Ver detalle \- Solicitar modificación de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108605529 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108605529"), que cumple con el requisito de integración [REQ\-INT\-0020\-SGP\-0060 \- Solicitar modificación de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108606269 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108606269") y a la que se accede desde el propio formulario de búsqueda [IU\-GEN\-0100\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"). En el caso de encontrarse la persona y de seleccionarse en el formulario de búsqueda, se visualizarán los datos de nombre, apellidos y el email principal, entre paréntesis, de la persona seleccionada en el campo Miembro sociedad. |  | No se necesita permiso para mostrar la pantalla de búsqueda de personas. |
| Añadir / Aceptar | Si estamos añadiendo un nuevo miembro se mostrará el texto "Añadir" y si estamos modificando los datos de uno ya existente previamente, se mostrará el texto "Aceptar".Añade el nuevo miembro al listado de miembros del equipo de administración de la empresa de explotación de resultados o modifica los datos del ya existentes.Tanto al añadir como al aceptar la modificación se comprobará que una empresa esté administrada o bien por un administrador único, o bien por 2 o más administradores solidarios, o bien por dos o más administradores mancomunados o bien tiene un consejo de administración (que ha de estar constituido por 3 o más personas). |  | EER\-EER\-E |
| Cancelar | Retorna a la pantalla listado de miembros del equipo de administración, sin salvar la posibles modificaciones. |  |  |




