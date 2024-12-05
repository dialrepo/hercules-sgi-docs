# Hércules : IU\-CSP\-0303\-006 \- Búsqueda y listado de solicitudes \- UG \- Crear grupo



## Formulario Búsqueda y listado de solicitudes \- UG \- Crear grupo

Formulario que permite la creación de un proyecto asociado a una solicitud. 

Desde el listado de resultados de los buscadores [IU\-CSP\-0303\-002\- Búsqueda simple y listado de solicitudes \- Unidades de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-002-busqueda-simple-y-listado-de-solicitudes-unidades-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-002-busqueda-simple-y-listado-de-solicitudes-unidades-de-gestion.md") y [IU\-CSP\-0303\-003\- Búsqueda ampliada y listado de solicitudes \- Unidades de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-003-busqueda-ampliada-y-listado-de-solicitudes-unidades-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-003-busqueda-ampliada-y-listado-de-solicitudes-unidades-de-gestion.md") se mostrará  el botón Crear grupo, solo disponible para ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador. El botón Crear grupo se mostrará cuando la solicitud cumpla:

* El formulario sea de tipo "Grupo"(campo "formulario solicitud" de la tabla "solicitud")  y el tipo de solicitud de grupo sea "Constitución de grupo" (campo "tipo solicitud grupo" de la tabla "solicitud")
* Que esté en uno de los siguientes estados (campo "estado" de la tabla "solicitud"):
	+ Concedida provisional
	+ Concedida provisional alegada
	+ Concedida provisional no alegada
	+ Concedida

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Nombre | TextoObligatorio | Nombre del grupo a crear.Se precarga con el valor del campo "título" de la tabla "solicitud", pudiendo ser modificado. En caso de que el título de la solicitud no estuviera informado se precargará vacío y será de obligatoria introducción.  Es un campo obligatorio.El valor introducido se almacenará sobre el campo "nombre" de la tabla "grupo". |
| Fecha inicio | Fecha (sin hora)Obligatorio | Fecha de inicio del grupo a crear.Se recogerá en formato fecha (sin hora).Es un campo obligatorio.El valor indicado se almacenará sobre el campo "fecha inicio" de la tabla "grupo". |
| Fecha fin | Fecha (sin hora)Opcional | Fecha de fin del proyecto a crear.Se recogerá en formato fecha (sin hora).El valor calculado o recogido se almacenará sobre el campo "fecha fin" de la tabla "grupo". |

### Acciones



| Acción | Descripción | Enlace C.U. | Permisos |
| --- | --- | --- | --- |
| Aceptar | Confirma la operación de creación del grupo. | Se crea el registro sobre la tabla "grupo":* Campo "nombre" de la tabla proyecto tomará el valor recogido en el campo "nombre" del formulario. * Campo "fecha de inicio" de la tabla "grupo" tomará el valor indicado en el campo "fecha inicio" del formulario. * Campo "fecha de fin" de la tabla "grupo" tomará el valor recogido en el campo "fecha fin" del formulario. * Campo "codigo" de la tabla "grupo". Se genera de forma automática a partir del código del departamento al que esta adscrito el solicitante (campo "solicitante" de la tabla "solicitud") y un secuencial por departamento. El código del departamento se recuperará por medio de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103876245 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103876245") de la persona seleccionada en el campo "solicitante". Para saber el secuencial que le corresponde, se buscará en la tabla "grupo" todos los grupos que tengan en el campo "departamentoOrigenRef" el código del departamento del "solicitante" se contabilizarán y se sumará uno. En caso de que exista ya ese código se cogerá el sucesivo y así hasta encontrar uno que no exista. Este código será único por grupo de investigación.  Se crea el registro en la tabla "grupo especial investigación":* Campo "fecha inicio" igual a la fecha actual * Campo "especial investigación" tomará el valor "No"  Con el identificador devuelto en esta creación se actualizará el grupo que se acaba de crear para añadirle el campo "especial investigación".Se crea el registro sobre la tabla "grupo equipo" añadiendo al solicitante de la solicitud con rol principal:* Campo "persona ref" de la tabla "grupo equipo" será al referencia de la persona indicada en el campo "solicitante" de la tabla "solicitud" * Campo "fecha inicio" de la tabla "grupo equipo" tomará el valor indicado en el campo "fecha inicio" de este formulario. * Campo "fecha fin" de la tabla "grupo equipo" tomará el valor indicado en el campo "fecha fin" de este formulario. * Campo "rol" de la tabla "grupo equipo": 	+ Tomará el valor asociado al registro recuperado de la tabla "rol proyecto" que tenga el campo "principal" a "true" y el campo "orden" tome el valor "primario" (enumerado "tipo orden") * Campo "dedicación" no se informará * Campo "participación" no se informará  Si la creación finalizó con éxito se mostrará el mensaje informativo correspondiente y se mostrará, en una pestaña nueva del navegador, el detalle del grupo [IU\-CSP\-0953\-001 \- Modificar\-consultar grupo investigación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-001-modificar-consultar-grupo-investigacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-001-modificar-consultar-grupo-investigacion-datos-generales.md") para posibilitar la continuación de la cumplimentación de sus datos. |  |
| Cancelar | Cancela la operación sin realizar la creación del grupo. | No se realiza ninguna operación y se cierra la ventana, retornando al listado de solicitudes. |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




