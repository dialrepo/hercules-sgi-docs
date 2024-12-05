# Hércules : IU\-CSP\-0451\-016 \- Añadir\-modificar certificado autorización participación proyecto externo



## Formulario Añadir\-modificar certificado autorización participación proyecto externo

Formulario para añadir/modificar un documento que certifica la autorización para participar en un proyecto externo.



| Nuevo certificado de participación generado automáticamente:Nuevo certificado de participación generado manualmente:Modificación de un certificado de participación: | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
|  | | |
| Generar certificado automáticoAñadir certificado manual | Radio botónObligatorio | Si se accede al formulario desde la acción  "añadir certificado":* + Solo puede estar seleccionada una de las dos opciones. 	+ No se mostrará preseleccionada ninguna de las dos opciones.  Si se accede al formulario desde la acción "modificar certificado":* + No se mostrarán |
| Nombre | TextoOpcional | Nombre del certificado.Se introducirá manualmente.Se corresponde con el campo "nombre" de la tabla "certificado autorización". |
| Fichero | Componente de descarga de ficheroComponente examinar TextoObligatorio | Si se accede al formulario desde la acción  "añadir certificado":* + Si está marcada la opción "Generar certificado automático" 		- Se generará el informe predefinido [REP\-CSP\-0100 \- Certificado de autorización de participación en proyecto externo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0100-certificado-de-autorizacion-de-participacion-en-proyecto-externo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0100-certificado-de-autorizacion-de-participacion-en-proyecto-externo.md") cuyo nombre se compondrá con la concatenación de "SGI\_certificadoAutorizaciónProyectoExterno\_" \+ campo "id" de la tabla "autorización" \+fecha (YYYYMMDD) y hora actuales (HH:MI:SS) 		- Se mostrará el nombre generado en el campo fichero. 		- Una vez generado el certificado, el campo dispondrá del componente que permita descargar el fichero al disco local. 	+ Si está marcada la opción "Añadir certificado manual": 		- El campo fichero del formulario deberá proporcionar el componente "examinar" que permita seleccionar un fichero desde la unidad de disco local. 		- Una vez seleccionado un fichero se mostrará el nombre y extensión del mismo sobre el campo fichero del formulario.  Si se accede al formulario desde la acción de "modificar certificado":* Se mostrará  en modo consulta visualizando el nombre y extensión del fichero  Se corresponde con el campo "documento ref" de la tabla "certificado autorización". |
| Público | SelectorBooleanoObligatorio | Determina que el certificado sea o no descargable por ACT\-CSP\-001\-Investigador solicitante. La solicitud de autorización sólo puede tener  un certificado marcado como público.Valores: sí/no.Se corresponde con el campo "visible" de la tabla "certificado autorización". |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aceptar/Añadir | Crea/Modifica el certificado de autorización para participación en proyecto externo. El botón tendrá la etiqueta:* Añadir, cuando se accede a este formulario desde la acción "añadir certificado" * Aceptar, cuando se accede a este formulario en modo edición, desde la acción "modificar certificado" | Se debe comprobar que solo un certificado esté marcado como "público" (campo "visible" de la tabla "certificado autorización" para la solicitud de autorización en curso).Se creará/modificará el registro correspondiente en la tabla "certificado autorización" vinculado a la solicitud de autorización en curso:* El campo "documento ref" será la referencia al documento generado en el Sistema de gestión documental.  El que se marque un certificado como público (visible \= Sí) que previamente no lo era, será utilizado para generar un aviso en el módulo de comunicados según lo descrito en [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados"). | CSP\-AUT\-E |
| Cancelar | Retorna al listado de certificados de autorización sin salvar los posibles cambios |  |  |




