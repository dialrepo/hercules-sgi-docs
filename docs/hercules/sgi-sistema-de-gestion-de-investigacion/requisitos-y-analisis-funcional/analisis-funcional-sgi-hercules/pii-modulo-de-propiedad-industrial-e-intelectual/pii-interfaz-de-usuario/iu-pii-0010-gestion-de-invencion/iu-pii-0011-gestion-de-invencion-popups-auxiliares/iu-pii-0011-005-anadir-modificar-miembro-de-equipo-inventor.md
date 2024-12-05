# Hércules : IU\-PII\-0011\-005 \- Añadir\-modificar miembro de equipo inventor



## Formulario Añadir\-modificar miembro de equipo inventor

Pantalla que muestra el formulario para añadir o modificar la información de un miembro del equipo inventor. Además permite la búsqueda de un miembro del equipo inventor en los sistemas de la universidad y, en caso de no encontrarlo, permite añadirlo con un formulario integrado con sistema correspondiente.

Una vez añadido un miembro al equipo inventor, se podrá modificar su % de participación.



| | ***Formulario en modo "Añadir"*** | ***Formulario en modo "Modificar"*** | | --- | --- | | | |
| --- | --- | --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Miembro de equipo inventor | TextoObligatorioNo modificable | Persona a añadir al equipo inventor de la invención.Campo de búsqueda de personas en los sistemas de la Universidad. |
| % Participación | Porcentaje (Decimal con 2 decimales)ObligatorioModificable | Porcentaje de participación o de autoría en la invención del miembro de equipo inventor seleccionado.Podrá tener un valor mayor que 0 y menor o igual que 100\. |
| Reparto Uni. | SelectorObligatorioModificable | Indicador de si al miembro del equipo inventor se le hará el reparto de resultados por parte de la Universidad o no.Podrá tener los valores Sí / No. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Buscar (miembro de equipo inventor) | A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") que hará uso del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Se le deberán pasar a este buscador el listado de colectivos asociados al tipo de colectivo "Autor de invención".En el caso de que el buscador no devolviese a la persona que se desea añadir como miembro de equipo inventor a la invención se podrá realizar la solicitud de registro a través del requisito de integración [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona")  desencadenado desde la pantalla de solicitar alta de persona [IU\-GEN\-0061\- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0061-+Solicitar+alta+de+persona") a la que se accede desde el propio formulario de búsqueda [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"). En el caso de que el buscador devolviese a la persona que se desea añadir como miembro de equipo inventor a la invención, pero se quisiera realizar alguna modificación en sus datos, se podrá solicitar dicha modificación, utilizando para ello el formulario de solicitud de modificación [IU\-GEN\-0062 \- Ver detalle de persona](https://confluence.um.es/confluence/display/GES/IU-GEN-0062+-+Ver+detalle+de+persona "https://confluence.um.es/confluence/display/GES/IU-GEN-0062+-+Ver+detalle+de+persona") , que cumple con el requisito de integración [REQ\-INT\-0020\-SGP\-0060 \- Solicitar modificación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0060-solicitar-modificacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0060-solicitar-modificacion-de-persona.md")  y a la que se accede desde el propio formulario de búsqueda [IU\-GEN\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=221381525 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=221381525"). En el caso de encontrarse la persona y de seleccionarse en el formulario de búsqueda, se visualizarán los datos del miembro de equipo inventor seleccionado en el campo Miembro de equipo inventor. |  |
| Añadir | Solo visible a la hora de añadir un nuevo miembro de equipo inventor a la invención.Añade la persona seleccionada como miembro del equipo inventor asociado a la invención. |  |
| Aceptar | Solo visible para la modificación de un miembro de equipo inventor.Modifica el miembro de equipo inventor asociado a la invención. |  |
| Cancelar | Vuelve a la pantalla listado de miembros de equipo inventor sin añadir el nuevo miembro al equipo inventor. |  |




