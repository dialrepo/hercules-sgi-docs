# Hércules : CU\-ETI\-0060\-005 \- Enviar a secretaría







El responsable de la memoria podrá modificar los datos del proyecto y de la memoria (formulario, documentación), pero no podrá Enviar a secretaría. Únicamente el solicitante de la petición de evaluación del proyecto podrá enviar a secretaría.

  


### Descripción

Formularios de Búsqueda de peticiones de evaluación

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Mis peticiones de evaluación y seleccionado una petición del listado para su edición.

Sólo se muestran las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema

La petición de evaluación tiene una memoria en uno de estos estados:

* Completada
* Favorable Pendiente de Modificaciones Mínimas
* Pendiente de correcciones
* Completada seguimiento anual
* Completada seguimiento final
* En aclaración seguimiento final

### Garantías de éxito (postcondiciones)

En enviar a secretaría tiene que hacer las siguientes funcionalidades:

* Cambiar el estado de la memoria:
	+ Si el estado de la memoria es "Completada" , "Pendiente de correcciones"  se cambia a "Enviar secretaría"
	+ Si el estado de la memoria es  "Favorable pendiente de revisión mínima" se cambia a "Enviar secretaría revisión mínima".
	+ Si el estado de la memoria es "Completada seguimiento anual" se cambia a "Enviar secretaría seguimiento anual"
	+ Si el estado de la memoria es "Completada seguimiento final" se cambia a "Enviar secretaría seguimiento final"
	+ Si el estado de la memoria es "En aclaración seguimiento final" se cambia a "Enviar secretaría seguimiento final aclaraciones"
* Se guarda la fecha de envío a secretaría para que luego no se pueda añadir a una convocatoria de reunión cuya fecha límite haya sobrepasado.
* Se sube la versión de la memoria (campo "version" tabla "Memoria")
* Se crea un fichero en formato pdf con los datos del proyecto y con los datos del formulario y es subido al gestor documental y el sistema guarda en informes el identificador del documento.
* En el caso de que sea una memoria en estado "Favorable pendiente de revisión mínima" al enviar a secretaría se le debe de crear ya la evaluación de tipo memoria para esa memoria con los datos de la evaluación anterior, es decir, se le asigna a la misma convocatoria de reunión y el mismo par de evaluadores que provocaron el dictamen "Favorable pendiente de revisión mínima" y con el campo de es revisión mínima para poder distinguir las evaluaciones que tienen que pasar por una convocatoria de reunión y las que no. Se envía notificación a los gestores y al par de evaluadores de que la memoria ya se ha modificado y se ha enviado a secretaria para su evaluación. [\_\_NO USAR CU\-COM\-0020 \- Generar comunicado automático \- Original con enlaces de AFs fuera de PMV](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597852297 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597852297")
* En el caso de que sea una memoria en estado "En aclaración seguimiento final" al enviar a secretaría se le debe de crear ya la evaluación de tipo seguimiento final para esa memoria con los datos de la evaluación anterior, es decir, se le asigna a la misma convocatoria de reunión y el mismo par de evaluadores que provocaron el dictamen "Solicitud de aclaraciones" y con el campo de es revisión mínima (true) para poder distinguir las evaluaciones que tienen que pasar por una convocatoria de reunión y las que no. Se envía notificación a los gestores y al par de evaluadores de que la memoria ya se ha modificado y se ha enviado a secretaria para su evaluación. [\_\_NO USAR CU\-COM\-0020 \- Generar comunicado automático \- Original con enlaces de AFs fuera de PMV](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597852297 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597852297")

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Memorias.
5. El usuario selecciona la acción de Enviar a secretaria en una memoria que esta en uno de los estados:  

	* Completada
	* Favorable Pendiente de Modificaciones Mínimas
	* Pendiente de correcciones
	* No procede evaluar
* + Completada seguimiento anual
	+ Completada seguimiento final
	+ En aclaración seguimiento final

  


1. El sistema hace todos los cambios que tienen que hacer (los comentados en las postcondiciones)
2. El usuario es informado del resultado positivo de la acción.
3. Se mantienen en la pantalla de listado de memoria, donde puede verse el cambio de estado de la memoria






### Casos de uso relacionados







### Interfaces relacionados









