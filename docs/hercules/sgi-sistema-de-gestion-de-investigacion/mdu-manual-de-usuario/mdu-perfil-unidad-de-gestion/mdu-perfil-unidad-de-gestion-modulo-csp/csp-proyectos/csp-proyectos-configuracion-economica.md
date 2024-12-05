# Hércules : CSP\-Proyectos\-Configuración económica



### 1\. Introducción

Dentro del menú de detalle de un proyecto está disponible la opción de "Configuración económica". 

![](/attachments/597852265/597865710.png)

  


La opción "Configuración económica" es un agrupador de menú, que se despliega, a través del control![](/attachments/597852265/597865711.png), dando paso al siguiente listado de opciones:

![](/attachments/597852265/597865707.png)

  


Para volver a plegar el menú se hará uso del control ![](/attachments/597852265/597865708.png).

  


Este menú agrupa las funcionalidades relacionadas con la configuración de los datos económicos del proyecto/contrato. La configuración económica de un proyecto/contrato debe ser realizada para posteriormente poder realizar el seguimiento económico a través del apartado [CSP\-Ejecución económica](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936").

Se detallan a continuación cada uno de los apartados del menú de "Configuración económica".

### 2\. Configuración económica \- Identificación

Desde el punto de vista del SGI un proyecto del Sistema de gestión económica (SGE) será un identificador (numérico o alfanumérico, dependiendo del SGE de cada Universidad) a través del que se obtendrá el detalle del estado económico de un proyecto/contrato del SGI. En función del SGE corporativo de cada universidad este identificador podrá ser conocido como número de proyecto, orgánica, expediente, centro de coste, etc. A lo largo de este manual de usuario se hará uso del término "identificador del proyecto económico" para hacer referencia de forma genérica a los  nombres particulares de los diferentes  SGE.

En la opción de menú Configuración económica \- Identificación se establece la relación entre el proyecto/contrato SGI y el correspondiente identificador de proyecto del SGE. Es por tanto, un apartado clave para que puedan estar disponibles otras funcionalidades como la elaboración del presupuesto y la notificación del mismo al SGE, o el seguimiento del estado económico del proyecto.

El aspecto inicial de este apartado, cuando aún no se ha establecido ningún vínculo entre el proyecto/contrato SGI y el SGE es:

  


![](/attachments/597852265/904429591.png)

  


Para vincular el proyecto/contrato con el identificador del proyecto SGE se debe pulsar el botón "Añadir identificador SGE".

Dependiendo de si la variable de configuración del módulo de CSP "[Habilitar buscador identificador SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")" este habilitada o no, el funcionamiento del botón "Añadir identificador SGE" será uno u otro:

* Si la variable esta habilitada, es decir, tiene valor "Sí" al pulsar el botón  "Añadir identificador SGE"  se  mostrará la ventana del buscador común de proyectos económicos de la Universidad, cuyo funcionamiento se describe en [MDU\-Manual de usuario \- 8\.3\.1 Buscar proyecto económico del SGE](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-8.3.1Buscarproyectoecon%C3%B3micodelSGE "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-8.3.1Buscarproyectoecon%C3%B3micodelSGE"). En este caso para establecer la relación entre proyecto/contrato SGI con el identificador SGE pueden darse dos escenarios:
	+ Que la relación se vaya a establecer con un identificador SGE que ya estuviera previamente creado en este sistema.
	+ Que la relación se vaya a establecer con un identificador SGE que aún no estuviera creado en este sistema y que se vaya a crear en esta acción de vinculación. Para que esto sea posible, debe estar habilitada la opción de crear un nuevo proyecto económico en el SGE desde el SGI, para lo que ha de darse la doble circunstancia de que  lo permitan tanto los procedimientos establecidos entre las Servicios de Investigación y Gestión económica como los  servicios de integración disponibles por el SGE

![](/attachments/597852265/597865671.png)

* Si la variable no esta habilitada, es decir, tiene valor "No" al pulsar el botón  "Añadir identificador SGE"  se mostrará la ventana de resumen con los datos que serán remitidos al SGE para la creación del nuevo identificador SGE (proyecto económico) (Ver [MDU\-Manual de usuario \- 8\.3\.2 Solicitar dar de alta nuevo proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.3.2Solicitardardealtanuevoproyectoecon%C3%B3mico "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.3.2Solicitardardealtanuevoproyectoecon%C3%B3mico")). En este caso para establecer la relación entre proyecto/contrato SGI con el identificador SGE únicamente puede darse el escenario  

	+ Que la relación se vaya a establecer con un identificador SGE que aún no estuviera creado en este sistema y que se vaya a crear en esta acción de vinculación. Para que esto sea posible, debe estar habilitada la opción de crear un nuevo proyecto económico en el SGE desde el SGI, para lo que ha de darse la doble circunstancia de que  lo permitan tanto los procedimientos establecidos entre las Servicios de Investigación y Gestión económica como los  servicios de integración disponibles por el SGE.

![](/attachments/597852265/945389655.png)

  


#### 2\.1 Relación con un identificador SGE existente

Únicamente disponible si la variable de configuración del módulo de CSP "[Habilitar buscador identificador SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")"  esta habilitada.

Tras introducir los criterios de búsqueda en el buscador común de proyectos económicos (Ver [MDU\-Manual de usuario \- 8\.3\.1 Buscar proyecto económico del SGE](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-8.3.1Buscarproyectoecon%C3%B3micodelSGE "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-8.3.1Buscarproyectoecon%C3%B3micodelSGE")),  se pulsará el botón "Buscar". Los resultados obtenidos deberán ser devueltos por el SGE corporativo, es decir, la operación de búsqueda no es una tarea propia del SGI sino que se realiza directamente por el SGE haciendo uso de los servicios de integración desarrollados por cada Universidad en este sistema.

  


![](/attachments/597852265/597865670.png) 

  


  


Para seleccionar uno de los proyectos SGE listado se deberá pulsar el icono de acción ![](/attachments/597852265/597865669.png). Al pasar el ratón por encima del mismo se mostrará un mensaje informativo "Seleccionar y notificar SGE"

![](/attachments/597852265/597865667.png)

  


Si se pulsa la acción "Seleccionar y notificar SGE", se estará confirmando que se desea vincular el proyecto/contrato SGI con el identificador SGE seleccionado. Se mostrará una ventana de confirmación en la que se incluirán los datos del proyecto SGI que serán remitidos al  SGE. 

  


![](/attachments/597852265/597865665.png)

  


Sobre esta ventana se debe pulsar el botón "Solicitar relación proyecto económico" notificando así al SGE que se desea vincular el proyecto/contrato SGI con el identificador SGE. El SGE realizará una serie de comprobaciones internas para asegurar que puede ser establecida la relación. Si el SGE acepta la vinculación se mostrará un mensaje de confirmación

![](/attachments/597852265/597865664.png)

  


y el identificador del proyecto SGE pasará a mostrarse en el listado del apartado Configuración económica \- Identificación:

![](/attachments/597852265/1009614877.png)

  


En este listado se muestra el dato "Sector IVA", es un dato propio del SGE que debe ser devuelto por este sistema. Sólo se muestra si esta habilitada la variable de configuración "[Habilitar campo Sector IVA del SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")". 

Como cualquier modificación sobre los datos del proyecto debe pulsarse el botón "Guardar proyecto".

![](/attachments/597852265/1009614878.png)

  


Una vez establecido el vínculo con el identificador SGE ya podrán ser creado el presupuesto del proyecto y/o acceder al detalle de [ejecución económica](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936") (Ver [CSP\-Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-ejecucion-economica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-ejecucion-economica.md")) que recuperará los datos económicos del SGE.

  


El SGI no establece ninguna limitación sobre el número de identificadores SGE con los que puede estar relacionado un mismo proyecto/contrato del SGI. Una vez establecida la relación con un proyecto SGE se podría volver a pulsar el botón "Añadir identificador SGE" para relacionar el proyecto/contrato SGI con otro identificador SGE adicional. Serán los procedimientos de Gestión económica los que marquen en cada Universidad si un proyecto/contrato SGI puede relacionarse con más de un identificador SGE (Ver  [Número de relaciones entre proyectos SGI e identificadores SGE permitidas](#CSPProyectosConfiguracióneconómica-relacion_sgi_sge "#CSPProyectosConfiguracióneconómica-relacion_sgi_sge")). 

Si la relación de un proyecto/contrato SGI con varios identificadores SGE está permitida, cada vez que se realice la operación "Añadir identificador SGE" seguida de la correspondiente "Solicitar relación proyecto económico", se notificará la información al SGE, para que en este sistema se almacene el vínculo del proyecto/contrato SGI con el nuevo identificador SGE seleccionado. Si el SGE crea el nuevo vínculo correctamente se mostrará un mensaje informativo y el nuevo identificador SGE se mostrará en el listado de Identificadores del proyecto/contrato SGI.

  


![](/attachments/597852265/1009614879.png)

#### 2\.2 Creación de un nuevo identificador SGE

Si el identificador SGE correspondiente al proyecto/contrato SGI aún no ha sido creado, el SGI dispone de los mecanismos de integración para solicitar la creación de un nuevo identificador en el SGE. Como se ha indicado previamente, hacer uso de este mecanismo ofrecido por el SGI debe de estar contemplado por los procedimientos establecidos entre las Servicios de Investigación y Gestión económica y el SGE debe de contar con los  servicios de integración correspondientes.

La solicitud de creación de un nuevo identificador SGE se realizará desde la misma ventana del buscador común de proyectos económicos pulsando sobre el botón "Añadir Proyecto económico" si la variable de configuración del módulo de CSP "[Habilitar buscador identificador SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")"  esta habilitada:

![](/attachments/597852265/597865657.png)

o bien desde el botón "Añadir identificador SGE"  de la pantalla de Identificación si la variable de configuración del módulo de CSP "[Habilitar buscador identificador SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")"  esta deshabilitada.

![](/attachments/597852265/945389656.png)

  


Se mostrará la ventana de resumen con los datos que serán remitidos al SGE para la creación del nuevo identificador SGE (proyecto económico) (Ver [MDU\-Manual de usuario \- 8\.3\.2 Solicitar dar de alta nuevo proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.3.2Solicitardardealtanuevoproyectoecon%C3%B3mico "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.3.2Solicitardardealtanuevoproyectoecon%C3%B3mico")), como muestra la imagen previa. Los datos necesarios para crear un nuevo proyecto económico en el SGE serán dependientes de cada SGE, en el ejemplo adjunto todos los datos necesarios pueden ser recuperados directamente del SGI, mostrándose, por tanto, en modo solo lectura ya que no precisan introducción manual. Sobre esta ventana se pulsará el botón "Solicitar alta", que remitirá los datos al SGE. Esta ventana de "Solicitar alta" de nuevo proyecto económico debe ser definida en tiempo de implantación de acuerdo a los requisitos establecidos por cada SGE. Es este sistema el que debe de proceder a la creación del nuevo proyecto económico aplicando los requisitos de validación correspondientes y devolviendo los mensajes de error adecuados. 

Según la implementación que se realice en el SGE de cada Universidad de los  servicios de integración necesarios para la creación de un nuevo proyecto económico, podrán darse dos escenarios:

* Que la creación del nuevo proyecto económico SGE se puede realizar de manera inmediata una vez que se pulse el botón "Solicitar alta" desde el SGI. En este caso, la respuesta que debe dar el SGE será el identificador del proyecto económico recién creado, si éste se ha podido crear con éxito. El SGI informará del resultado de la operación sobre el SGE, de acuerdo a los mensajes que éste devuelva. De esta forma, cuando la creación del nuevo proyecto económico no pueda realizarse, el SGI mostrará el mensaje devuelto por el SGE tras la operación de "solicitar alta".
* Que la creación del nuevo proyecto económico en el SGE no pueda realizarse de forma inmediata tras pulsar el botón "Solicitar alta" desde el SGI. En este caso el SGI no podrá mostrar ningún mensaje de forma inmediata y se mantendrán abiertas tanto la ventana de solicitud de alta, como la de búsqueda. Estas ventanas deberán ser cerradas manualmente. El SGI será ajeno al momento en el que se haya completado la creación del proyecto económico en el SGE, debiendo hacerse uso con posterioridad del buscador de proyectos económicos para consultar si el proyecto económico ya está disponible en el SGE.

  


Si el proyecto económico se crea de manera inmediata y correcta en el SGE se mostrará un mensaje informativo en el SGI, y el nuevo identificador SGE pasará a mostrarse en el listado de del apartado Configuración económica \- Identificación:

![](/attachments/597852265/1009614877.png)

  


  


Si el SGE no puede crear el proyecto económico y devuelve un mensaje explicativo, el SGI mostrará el mensaje de error devuelto. Sirvan como ejemplo:

![](/attachments/597852265/597865656.png)

  


![](/attachments/597852265/597865655.png)

  


![](/attachments/597852265/597865653.png)

  


#### 2\.3 Número de relaciones entre proyectos SGI e identificadores SGE permitidas

El SGI permite por configuración especificar la cardinalidad de la relación entre proyecto SGI y proyecto SGE a través de la variable "[Cardinalidad relación proyecto SGI \- identificador SGE"](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). En cada implantación se podrá seleccionar uno de los siguientes valores:

* Un proyecto SGI sólo puede asociarse a un identificador SGE (1:1\)
* Un proyecto SGI puede asociarse a diferentes identificadores SGE (1:n)
* Diferentes proyectos SGI pueden estar asociados a un mismo identificador SGE (n:1\)
* Diferentes proyectos SGI pueden estar asociados a diferentes identificadores SGE (n:n)

Una vez que ya exista un proyecto SGI relacionado con un proyecto SGE o exista una solicitud de alta de proyecto económico en curso (cuando la sincronización del proceso de alta es asincrono), sólo se muestra el botón "Añadir identificación SGE" de la pantalla de "Configuración económica → Identificación" si la variable de configuración "Cardinalidad relación proyecto SGI \- identificador SGE" tiene asignado uno de los siguientes valores:

* Un proyecto SGI puede asociarse a diferentes identificadores SGE (1:n)
* Diferentes proyectos SGI pueden estar asociados a diferentes identificadores SGE (n:n)

Aunque en el SGI se pueda configurar esta relación entre proyecto SGI y proyecto SGE, pudiera darse el caso que la limitación también viniera impuesta por el propio SGE. Se adjunta un ejemplo de una implantación piloto en la que no se permite que varios proyectos/contratos SGI estén vinculados a un mismo identificador SGE pero que en el SGI no se ha configurado adecuadamente la variable de configuración (se ha puesto "Diferentes proyectos SGI pueden estar asociados a diferentes identificadores SGE") . En este caso el mensaje devuelto por el SGE es el que se muestra en la siguiente imagen:

  


![](/attachments/597852265/597865656.png)

  


A continuación se muestra una imagen donde puede apreciarse que un mismo proyecto/contrato SGI puede estar vinculado a más de un identificador SGE. 

![](/attachments/597852265/1009614879.png)  
 

#### 2\.4 Modificación de proyecto económico

Al pulsar sobre la acción "Ver detalle identificador SGE" del listado de "Identificación proyecto económico" se abrirá una ventana emergente con el formulario de detalle del proyecto económico y en el caso de que la variable de configuración "Modificación proyecto SGE" tenga valor "Sí" se mostrará el formulario de modificación del proyecto económico con los datos del proyecto SGI junto con el botón de "Solicitar modificación proyecto económico").

Ambos formularios serán específicos de cada Universidad.

A continuación se muestra un ejemplo de un formulario de detalle de proyecto económico (cuando la variable "Modificación proyecto SGE" tiene valor "No"):

![](/attachments/597852265/1009614871.png)

  


A continuación se muestra un ejemplo de un formulario de detalle de proyecto económico y de un formulario de modificación de proyecto económico (cuando la variable "Modificación proyecto SGE" tiene valor "Sí"):

![](/attachments/597852265/1009614880.png)

#### 2\.5 Sincronización del alta y modificación de proyecto económico

En el caso de que la solicitud del alta de proyecto económico sea asíncrona, es decir, el SGE no puede crear en el mismo instante de la solicitud el alta del proyecto económico se configurará la variable de configuración "[Sincronización alta identificador SGE](https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP "https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP")" a valor "Asíncrona".

En estos casos al solicitar el alta del proyecto económico desde la pantalla de "Configuración económica → Identificación" se mostrará el siguiente aviso para informar al usuario de que existe una solicitud de alta en curso y dependiendo de la cardinalidad de la relación entre proyecto SGI y proyecto SGE se activará o no el botón "Añadir identificador SGE":

![](/attachments/597852265/981631117.png)  


En el caso de que la solicitud del alta de proyecto económico sea sincrona es decir, el SGE puede crear en el mismo instante de la solicitud el alta del proyecto económico se configurará la variable de configuración "[Sincronización alta identificador SGE](https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP "https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP")" a valor "Sincrona".

En estos casos al solicitar el alta del proyecto económico desde la pantalla de "Configuración económica → Identificación" se mostrará directamente el código SGE devuelto por el servicio del SGE  y dependiendo de la cardinalidad de la relación entre proyecto SGI y proyecto SGE se activará o no el botón "Añadir identificador SGE":

![](/attachments/597852265/1009614877.png)

En el caso de que la solicitud de modificación de proyecto económico sea asíncrona, es decir, el SGE no puede modificar en el mismo instante de la solicitud la modificación del proyecto económico se configurará la variable de configuración "[Sincronización modificación identificador SGE](https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP "https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP")" a valor "Asíncrona".

En estos casos al solicitar la modificación del proyecto económico desde la pantalla de "Configuración económica → Identificación" se mostrará el siguiente aviso para informar al usuario de que existe una solicitud de modificación en curso:

![](/attachments/597852265/981631118.png)

En el caso de que la solicitud de modificación de proyecto económico sea sincrona, es decir, el SGE puede modificar en el mismo instante de la solicitud la modificación del proyecto económico se configurará la variable de configuración "[Sincronización modificación identificador SGE](https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP "https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP")" a valor "Sincrona".

En estos casos al solicitar la modificación del proyecto económico desde la pantalla de "Configuración económica → Identificación" no se mostrará ningún aviso.

  


### 3\. Elegibilidad

En este apartado se permite definir los conceptos de gastos permitidos y no permitidos para el proyecto. No es obligatorio recoger la elegibilidad de un proyecto, pero hacerlo será de ayuda en el posterior desglose de presupuesto así como en la validación de gastos del proyecto (en caso que ésta se encuentre habilitada en el SGI). Si el proyecto está asociado a una convocatoria registrada en el SGI, el proyecto dispondrá, por defecto, de la configuración de elegibilidad indicada para la convocatoria (Ver [CSP\-Convocatorias \- 3\.12 Elegibilidad](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-3.12Elegibilidad "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-3.12Elegibilidad")). 

#### 3\.1 Proyecto no asociado a convocatoria registrada en el SGI

Si el proyecto/contrato se crea sin vincularlo a ninguna convocatoria registrada en el SGI, es decir, el campo convocatoria no está informado:

![](/attachments/597852265/597865649.png)

  


El apartado "Elegibilidad" se mostrará inicialmente vacío:

![](/attachments/597852265/597865972.png)

  


A través de los botones "Añadir concepto de gasto permitido" y "Añadir concepto de gasto no permitido" se podrá realizar la configuración de Elegibilidad del proyecto. Esta configuración será útil en la definición del presupuesto y en el proceso de validación de gastos (siempre que éste se encuentre habilitado en el SGI).

##### 3\.1\.1 Conceptos de gasto permitidos

Tras pulsar el botón "Añadir concepto de gasto permitido" se mostrará la ventana de configuración del concepto de gasto:

![](/attachments/597852265/597865969.png)

  


La configuración de un concepto de gasto dentro de un proyecto dispone de dos apartados:

* Datos generales
* Códigos económicos. Listado de códigos económicos (tipos de gasto del SGE) que están permitidos en el proyecto dentro del concepto de gasto.

  


###### 3\.1\.1 Datos generales

En la pantalla de Datos generales se deberá indicar obligatoriamente el concepto de gasto. El concepto de gasto se debe seleccionar del desplegable proporcionado. Los conceptos de gasto listados serán todos los conceptos de gasto activos configurados en el SGI desde la opción [CSP\-Configuración \- 12 Conceptos de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto"). El desplegable concepto de gasto incluye los controles ![](/attachments/597852265/597866026.png) y ![](/attachments/597852265/597866023.png) , siguiendo el comportamiento descrito en [MDU\-Manual de usuario \- 3\.17 Controles sobre campos desplegables y selectores](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.17Controlessobrecamposdesplegablesoselectores "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.17Controlessobrecamposdesplegablesoselectores").

![](/attachments/597852265/597866022.png)

  


Tras seleccionar un concepto de gasto se mostrará, a título informativo, el campo "costes indirectos" de acuerdo a la configuración del concepto de gasto (Ver [CSP\-Configuración 12 Conceptos de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-configuracion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-configuracion.md")). Se recuerda que el campo "costes indirectos" asociado a un concepto de gasto indica si el concepto de gasto se utiliza o no para representar costes indirectos (pudiendo haber uno o más conceptos para los costes indirectos) y no si el concepto de gasto genera costes indirectos.

  


![](/attachments/597852265/597866019.png)

  


El resto de campos disponibles serán opcionales:

* Importe máximo. Si el proyecto tiene un importe máximo permitido sobre este concepto de gasto, se puede indicar en este campo.
* Fecha de inicio y fecha de fin. Ambos son campos opcionales que permitirán establecer el periodo durante el que está permitido el concepto de gasto en el proyecto.  Si no se informa ninguno de los dos campos "fecha de inicio" y "fecha de fin" se entiende que el concepto de gasto está permitido durante toda la duración del proyecto. Si se informa la fecha de inicio pero no se informa la fecha de fin, se entiende que el concepto de gasto está permitido desde la fecha de inicio indicada hasta la fecha de fin del proyecto.
* Observaciones. Campo de texto libre que permite recoger cualquier observación que aplique sobre el uso del concepto de gasto en el proyecto.

###### 3\.1\.2 Códigos económicos

Una vez cumplimentado el apartado "Datos generales" se puede cumplimentar el apartado "Códigos económicos".  En este apartado se permite introducir la correspondencia entre el concepto de gasto y los códigos económicos (tipos de gasto) del SGE. El SGI no realiza la gestión económica, propiamente dicha, de los proyectos o contratos. La gestión económica (gestión de gastos, ingresos, reservas de crédito, facturase emitidas, etc.) será realizada en el Sistema de gestión económica (SGE) corporativo. El SGI y el SGE deberán disponer de la correspondiente integración que permita mantener ambos sistemas comunicados. La creación de los gastos, facturas o ingresos de un proyecto/contrato se realizará en el SGE. Este sistema tendrá definidos los tipos de gasto que a nivel contable sean necesarios y que serán utilizados de manera compartida con el resto de Servicios y Sistemas corporativos. Para que posibilitar que en el SGI se puedan ver los gastos creados en el SGE agrupados de acuerdo a los conceptos de gasto que se definen en el proyecto, es necesario establecer la correspondencia entre estos conceptos de gasto  y los tipos de gasto (códigos económicos) bajo los que se realizan los apuntes y registros contables en el SGE. Esta correspondencia, que no es obligatoria pero sí conveniente, puede ser realizada en este apartado "Códigos económicos". Es decir, en este apartado se introducirán todos los códigos económicos (tipos de gasto del SGE) con los que se corresponda el concepto de gasto.

Inicialmente el apartado "Códigos económicos" de un concepto de gasto estará vacío.

![](/attachments/597852265/597866020.png)

  


Para añadir un código económico al concepto de gasto se pulsará el botón "añadir código económico permitido". Se mostrará la siguiente ventana:

![](/attachments/597852265/597866018.png)

  


El campo "Código económico (SGE)" será un desplegable que listará los códigos económicos disponibles en el SGE. Son los tipos de gasto/ingresos que se utilizarán en el SGE para realizar el registro de los gastos, facturas, reservas de crédito, etc. Este listado procede del SGE.

![](/attachments/597852265/597866017.png)

  


Se debe seleccionar un código económico, aquel con el que se vaya a corresponder el concepto de gasto del proyecto.

![](/attachments/597852265/597866016.png)

  


Existen dos campos adicionales:

* Vigencia: fecha inicio y fecha fin: Se podría establecer la vigencia de la correspondencia entre el concepto de gasto y el código económico. Esto permitirá que, en caso a lo largo de la duración del proyecto, se realizasen cambios en la configuración de los códigos económicos del SGE se pueda indicar la correspondencia con el nuevo código económico, manteniendo así el histórico de todos los códigos económicos del SGE con los que se haya correspondido el concepto de gasto durante toda la duración del proyecto. No se permite añadir el mismo código económico sobre el mismo concepto de gasto de forma duplicada, salvo que se especifique un rango de fechas de vigencia sin solapamiento. Dejar la vigencia sin cumplimentar es equivalente a indicar que la vigencia está activa de forma permanente durante toda la duración del proyecto.
* Observaciones: Es un campo de texto libre sobre el que se puede recoger cualquier comentario explicativo sobre la correspondencia entre el concepto de gasto y el código económico.

  


Introducidos los campos se pulsará el botón "Añadir". El código económico se mostrará en el listado de "códigos económicos" del concepto de gasto.

![](/attachments/597852265/597866015.png)

  


Un concepto de gasto puede estar vinculado a más de un código económico, para añadir otro código económico al concepto de gasto se volverá a pulsar el botón "añadir código económico permitido". Se seguirán los mismos pasos indicados previamente, pasando el nuevo código económico a mostrarse en el listado.

![](/attachments/597852265/597866012.png)

  


  


Tras añadir todos los códigos económicos que fuese necesario, y siguiendo el comportamiento general del SGI, debe pulsarse el botón "Guardar concepto de gasto" para que la configuración del concepto de gasto quede almacenada. Tras pulsar este botón se mostrará un mensaje informativo:

![](/attachments/597852265/597866014.png)

  


Para volver a la página de configuración de Elegibilidad del proyecto, se puede hacer uso de la miga de pan:

![](/attachments/597852265/597866007.png)

  


Se volverá a la página de Elegibilidad del proyecto, desde donde se podrán añadir nuevos conceptos de gasto al proyecto.

![](/attachments/597852265/597866008.png)

  


 El mismo concepto de gasto no podrá solaparse como permitido en el mismo periodo de tiempo. Así, con el ejemplo anterior, si se intenta añadir de nuevo el concepto de gasto "Fungible" se mostrará un mensaje de error, advirtiendo que se solapa la configuración del concepto de gasto permitido:

  


![](/attachments/597852265/597866005.png)

  


Para establecer configuraciones diferentes para el mismo concepto de gasto permitido deben utilizarse periodos de tiempo diferentes, para lo que se utilizarán los campos "fecha de inicio" y "fecha de fin". Así una configuración válida podría ser:

![](/attachments/597852265/597866004.png)

  


La ausencia de fecha de fin en el segundo registro sería indicativa de que la segunda configuración del concepto "Fungible" sería válida hasta fin de proyecto.

  


##### 3\.1\.2 Conceptos de gasto no permitidos

De igual forma que se definen los conceptos de gasto permitidos se pueden definir los conceptos de gasto no permitidos del proyecto. Para ello se hará uso del botón "Añadir concepto de gasto no permitido". Su uso será igual al descrito previamente para los conceptos de gasto permitidos.

Se podría incluir el mismo concepto de gasto como permitido y como no permitido, siempre que para un mismo periodo (fecha de inicio y fecha de fin) la correspondencia entre conceptos de gasto y códigos económicos sea única. 

Aunque no sea lo habitual, sería válida una configuración tal que:

  


![](/attachments/597852265/597866001.png)

  


La correspondencia entre un mismo concepto de gasto y un mismo código económico no puede solaparse en el mismo periodo de tiempo (independientemente que el concepto de gasto sea permitido o no permitido). Debe tenerse en cuenta que el solapamiento de la correspondencia se calcula considerando las fechas de inicio y fin de los conceptos de gasto. Si en la configuración de un concepto de gasto no se informa ninguno de los dos campos "fecha de inicio" y "fecha de fin", se entiende que la configuración del concepto de gasto abarca toda la duración del proyecto (por lo que no se permitiría que los mismos códigos económicos de ese concepto de gasto figurasen en otro/s concepto/s de gasto). Si se informa de la fecha de inicio pero no se informa de la fecha de fin, se entiende que la configuración del concepto de gasto abarca desde la fecha de inicio hasta el fin del proyecto (por lo que no admitiría que los códigos económicos de este concepto de gasto figurasen en otro/s concepto/s de gasto a partir de la fecha de inicio indicada).

  


Una vez incluidos, los conceptos de gasto permitidos y no permitidos pueden ser modificados y/o eliminados, para ello se utilizarán los iconos de acción correspondientes (![](/attachments/597852265/597865998.png)y ![](/attachments/597852265/597865999.png)). También pueden añadirse nuevos conceptos de gasto tanto permitidos como no permitidos con posterioridad a la configuración inicial del proyecto. Desde la modificación de un concepto de gasto permitido o no permitido, se podrán modificar sus  datos principales (importe y rango de meses), además de añadir, modificar o eliminar los códigos económicos asociados.

#### 3\.2 Proyecto asociado a convocatoria registrada en el SGI

Si el proyecto está vinculado a una convocatoria, bien porque al crear el proyecto se seleccione una convocatoria registra, bien porque el proyecto se haya creado a partir de una solicitud concedida (y ésta a su vez se haya creado sobre una convocatoria registrada en el SGI), el apartado Elegibilidad del proyecto tomará la configuración establecida en la elegibilidad de la convocatoria (Ver [CSP\-Convocatorias \- 3\.12 Elegibilidad](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-3.12Elegibilidad "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-3.12Elegibilidad")) cuando el personal de la unidad de gestión introduzca la fecha de inicio del proyecto y de a Guardar.

![](/attachments/597852265/1014169666.png)

  


La imagen anterior muestra un proyecto asociado a una convocatoria.

El apartado Elegibilidad de la convocatoria ejemplo tiene la siguiente configuración:

![](/attachments/597852265/597865901.png)

  


En el momento en el que se introduce la fecha de inicio del proyecto, el proyecto tomará la misma configuración de elegibilidad. Todos los proyectos derivados de la misma convocatoria tomarán la configuración de la misma.

![](/attachments/597852265/597865898.png)

  


Una vez creado e informada la fecha de inicio un proyecto asociado a una convocatoria podrán darse dos escenarios:

* Que se modifique el apartado elegibilidad en la convocatoria.
* Que se modifique el apartado elegibilidad del proyecto.

Ante cualquiera de los dos escenarios, el SGI no realizará de forma automática ninguna acción sino que mostrará avisos para que sea el personal de gestión quien adapte, si fuera necesario, la configuración del proyecto.

##### 3\.2\.1 Nuevo concepto de gasto en Convocatoria

Si una vez credo e informada la fecha de inicio de un proyecto se añade un nuevo concepto de gasto a la convocatoria, este cambio se informará en el proyecto pero el concepto de gasto añadido en la convocatoria no será añadido de manera automática al proyecto. Siguiendo con el ejemplo, se añade a la convocatoria el concepto de gasto:

![](/attachments/597852265/597865891.png)

  


Este cambio se verá reflejado en el proyecto, mostrando un icono de aviso ![](/attachments/597852265/597865890.png) sobre el nuevo concepto de gasto

![](/attachments/597852265/597865889.png)

  


El nuevo concepto de gasto añadido en la convocatoria se muestra en el listado de Elegibilidad del proyecto, sin embargo, no se añade a la elegibilidad del proyecto de forma automática. Debe de ser el personal de gestión quien verifique esta acción. Al pasar el ratón sobre el icono de aviso se mostrará un tooltip informativo.

![](/attachments/597852265/597865887.png)

  


Si el nuevo concepto de gasto de la convocatoria no se desea añadir al proyecto no será necesario realizar ninguna acción, el aviso informativo se seguirá mostrando pero la configuración de elegibilidad del proyecto no se verá afectada por el cambio en la convocatoria. 

Si la configuración del nuevo concepto de gasto de la convocatoria se desea añadir al proyecto se deberá pulsar el icono de la acción editar del mismo:

![](/attachments/597852265/597865888.png)

  


Al pulsar el botón editar se mostrará la información de configuración del concepto de gasto en la convocatoria (parte derecha de la pantalla)

![](/attachments/597852265/597865886.png)

  


Para que el concepto de gasto añadido a la elegibilidad de la convocatoria sea incluido también al proyecto se debe pulsar el botón "Aplicar proyecto":

![](/attachments/597852265/597865885.png)

  


Los datos del concepto de gasto de la convocatoria (parte derecha de la pantalla), se mostrarán en la parte izquierda, y el botón "aplicar al proyecto" se mostrará desactivado.  El concepto de gasto se mostrará en el listado de Elegibilidad del proyecto y el aviso informativo desaparecerá:

![](/attachments/597852265/597865876.png)

  


##### 3\.2\.2 Cambios sobre concepto de gasto en proyecto o en la convocatoria

Cualquier concepto de gasto podrá ser modificado en el proyecto independientemente de la configuración establecida en la convocatoria. Del mismo modo, también podrían darse cambios en la configuración del concepto de gasto a nivel de convocatoria, con posterioridad a la creación del proyecto. Cuando la configuración de un concepto de gasto en el proyecto difiere de la de la convocatoria, se mostrará el aviso informativo ![](/attachments/597852265/597865875.png)

  


![](/attachments/597852265/597865874.png)

  


Al pasar el ratón por encima del icono de aviso se mostrará un tooltip informativo.

![](/attachments/597852265/597865872.png)

  


Como en el caso anterior, al pulsar el botón Editar sobre el concepto de gasto se mostrará la información de configuración del proyecto (parte izquierda) y de la convocatoria (parte derecha)

![](/attachments/597852265/597865871.png)

  


En el ejemplo anterior se incorporó un periodo a la elegibilidad del concepto de gasto en el proyecto, dato que no está presente en la convocatoria. Si en algún momento se desea recuperar la configuración de la convocatoria para el concepto de gasto, se puede hacer uso del botón "Aplicar proyecto", que tendrá el mismo efecto comentado en el punto anterior: la configuración del concepto de gasto en el proyecto pasa a ser la misma que en la convocatoria. Desaparecería por tanto el aviso ![](/attachments/597852265/597865875.png)del listado de elegibilidad. Si, por los motivos particulares del proyecto, éste debe tener una configuración diferente a la convocatoria podrá permanecer así, permaneciendo siempre visible el icono ![](/attachments/597852265/597865875.png).

  


##### 3\.2\.3 Nuevo concepto de gasto en proyecto

Si se añade un concepto de gasto a la Elegibilidad del proyecto que no figure en la convocatoria, se reflejará en el listado de elegibilidad con el icono de aviso ![](/attachments/597852265/597865875.png)

  


![](/attachments/597852265/597865865.png)

  


Al pasar el ratón por el icono de aviso se mostrará un mensaje informativo indicando que el concepto de gasto no figura en la elegibilidad de la convocatoria

![](/attachments/597852265/597865866.png)

  


En este caso, al pulsar el icono editar ![](/attachments/597852265/597865998.png) del concepto de gasto añadido en el proyecto no se mostrará el detalle de la convocatoria, puesto que está definido en la misma. 

![](/attachments/597852265/597865953.png) 

  


  


##### 3\.2\.4 Eliminación de un concepto de gasto en proyecto

Si un concepto de gasto que figura en la elegibilidad de la convocatoria se elimina en la elegibilidad del proyecto se mostrará el icono de aviso ![](/attachments/597852265/597865890.png).

![](/attachments/597852265/597865952.png)

  


Puesto que a efectos prácticos se trata de un concepto de gasto incluido en la convocatoria y no en el proyecto, el tratamiento sigue lo descrito en el apartado [nuevo concepto de gasto en Convocatoria](#CSPProyectosConfiguracióneconómica-nuevo_concepto_en_convocatoria "#CSPProyectosConfiguracióneconómica-nuevo_concepto_en_convocatoria").

  


##### 3\.2\.5 Eliminación de un concepto de gasto en la convocatoria

Si una vez que ha sido creado el proyecto se elimina un concepto de gasto de la configuración de elegibilidad de la convocatoria, éste no se eliminará del proyecto pero se mostrará el icono de aviso ![](/attachments/597852265/597865875.png)

![](/attachments/597852265/597865949.png)

  


Puesto que a efectos prácticos se trata de un concepto de gasto incluido en el proyecto y no en la convocatoria, el tratamiento sigue lo descrito en el apartado [nuevo concepto de gasto en proyecto](#CSPProyectosConfiguracióneconómica-nuevo_concepto_en_proyecto "#CSPProyectosConfiguracióneconómica-nuevo_concepto_en_proyecto").

  


##### 3\.2\.6 Cambios en la configuración de códigos económicos

Los avisos anteriores también se mostrarán cuando se realizan cambios en la correspondencia del concepto de gasto con los códigos económicos con respecto a la convocatoria. En este caso el mensaje informativo mostrado sobre el icono de aviso ![](/attachments/597852265/597865875.png), indicará esta circunstancia.

![](/attachments/597852265/597865948.png)

  


![](/attachments/597852265/597865945.png)

  


Al editar el concepto de gasto y acceder al apartado de sus códigos económicos, se volverá a mostrar este aviso sobre los códigos económicos afectados, según corresponda:

* Aviso de código económico incluido en proyecto y no en convocatoria ![](/attachments/597852265/597865875.png)

![](/attachments/597852265/597865946.png)

* Aviso de código económico incluido en convocatoria y no en proyecto ![](/attachments/597852265/597865890.png)

![](/attachments/597852265/597865944.png)

  


En este caso al pulsar la acción editar del código económico se mostrará la configuración de los códigos económicos añadida en la convocatoria y se permitirá aplicar la misma al proyecto:

![](/attachments/597852265/597865943.png)

  


Si se pulsa el botón "Aplicar al proyecto", se copiará la configuración 

![](/attachments/597852265/597865941.png)

y tras pulsar el botón "Añadir", se añadirá el código económico al concepto de gasto del proyecto, dejando de mostrarse el icono de aviso ![](/attachments/597852265/597865890.png)

![](/attachments/597852265/597865939.png)

  


  


Nota

Todas las casuísticas comentadas en los subapartados previos aplican por igual a los conceptos de gasto no permitidos.

  


### 4\. Partidas presupuestarias

En este apartado se podrán recoger las partidas o aplicaciones presupuestarias de proyecto. Serán necesarias para poder detallar el presupuesto del proyecto y remitir éste al SGE.

Si el proyecto está asociado a una convocatoria registrada en el SGI, el proyecto dispondrá, por defecto, del listado de partidas presupuestarias configurado en la convocatoria (Ver [CSP\-Convocatorias \- 3\.13 Partidas presupuestarias](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-con_partidas_presupuestarias3.13Partidaspresupuestarias "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-con_partidas_presupuestarias3.13Partidaspresupuestarias")).

#### 4\.1 Proyecto no asociado a convocatoria registrada en el SGI

Si el proyecto/contrato se crea sin vincularlo a ninguna convocatoria registrada en el SGI, es decir, el campo convocatoria no está informado:

![](/attachments/597852265/597865649.png)

  


El apartado Partidas presupuestarias estará inicialmente vacío:

![](/attachments/597852265/597865935.png)

  


Para añadir una nueva partida se utilizará el botón "Añadir partida presupuestaria", al pulsarlo se mostrará una ventana emergente en la que se introducirá el detalle de la partida del proyecto:

![](/attachments/597852265/931332152.png)

  


Los campos disponibles son:

* Tipo.  Es un campo obligatorio. Se debe indicar si la partida es de gastos o ingresos. El campo "tipo" es un desplegable con estos valores:

![](/attachments/597852265/931332154.png)

Se debe seleccionar uno de los dos valores.

![](/attachments/597852265/931332153.png)

* Código. Dependiendo del tipo de configuración establecida en la implantación del SGI las partidas presupuestarias se pueden dar de alta en el propio SGI o bien se tienen que recuperar del Sistema de gestión económica.
	+ En el caso de que la variable de configuración "Obtener partidas del SGE" tenga valor "No" se debe indicar el número o código de la partida presupuestaria. Es un campo obligatorio. El formato de este código será impuesto por el SGE. En tiempo de implantación del SGI se debe de identificar este formato para introducir la configuración necesaria en el SGI. Este formato se informará sobre el campo "código" a través de un mensaje informativo que se mostrará al pasar el ratón sobre el icono de aviso ![](/attachments/597852265/597865926.png).

![](/attachments/597852265/931332156.png)

  


Tras introducir un valor en el campo "código" se validará que se cumpla el formato predefinido. De no ser así se mostrará un mensaje de error y el valor introducido no será aceptado:

![](/attachments/597852265/931332157.png)

  


Si el código introducido cumple el formato, se continuará introduciendo el resto de campos:

![](/attachments/597852265/931332158.png)

  


* + En el caso de que la variable de configuración "Obtener partidas del SGE" tenga valor "Sí" se debe de seleccionar una de las partidas presupuestarias mostradas en el selector.

![](/attachments/597852265/938573942.png)

  


  


* Descripción. Es un campo opcional, que permite introducir una descripción sobre la partida.

  


Cuando se hayan cumplimentado los dos campo obligatorios "código" y "tipo" se activará el botón "Añadir". Tras pulsarlo la partida será añadida al listado de partidas del proyecto.

![](/attachments/597852265/597865847.png)

  


Siguiendo los pasos anteriores, se podrán añadir tantas partidas de gastos e ingresos como sea necesario:

![](/attachments/597852265/597865848.png)

  


Como siempre se deberá pulsar el botón común "Guardar proyecto" para que todos los cambios introducidos sean almacenados definitivamente:

#### 4\.2 Proyecto asociado a convocatoria registrada en el SGI

Si el proyecto está vinculado a una convocatoria, bien porque al crear el proyecto se seleccione una convocatoria registra, bien porque el proyecto se haya creado a partir de una solicitud concedida (y ésta a su vez se haya creado sobre una convocatoria registrada en el SGI), el apartado Elegibilidad del proyecto tomará la configuración de partidas establecida en la convocatoria (Ver [CSP\-Convocatorias \- 3\.13 Partidas presupuestarias](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-con_partidas_presupuestarias3.13Partidaspresupuestarias "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-con_partidas_presupuestarias3.13Partidaspresupuestarias")).

![](/attachments/597852265/597865900.png)

  


La imagen anterior muestra un proyecto asociado a una convocatoria. El apartado "Partidas presupuestarias" de la convocatoria ejemplo tiene la siguiente configuración:

![](/attachments/597852265/597865840.png)

  


Al crear un proyecto vinculado a esta convocatoria su listado de partidas inicial tomará los mismos valores que la convocatoria:

![](/attachments/597852265/597865839.png)

  


Una vez creado un proyecto asociado a una convocatoria podrán darse dos escenarios:

* Que se modifique el apartado "Partidas presupuestarias" en la convocatoria.
* Que se modifique el apartado "Partidas presupuestarias" del proyecto.

Ante cualquiera de los dos escenarios, el SGI no realizará de forma automática ninguna acción sino que mostrará avisos para que sea el personal de gestión quien adapte, si fuera necesario, la configuración de las partidas del proyecto.

##### 4\.2\.1 Nueva partida presupuestaria en la Convocatoria

Si una vez credo el proyecto se añade una nueva partida a la convocatoria, se mostrará un aviso informativo en el proyecto para que el personal de gestión decida si se añade también la partida al proyecto. Siguiendo con el ejemplo, se añade a la convocatoria una nueva partida presupuestaria:

![](/attachments/597852265/597865837.png)

  


En este caso, el listado de partidas del proyecto presentará un aviso informativo en color rojo ![](/attachments/597852265/597865890.png)

![](/attachments/597852265/597865836.png)

  


Al pasar el ratón sobre el icono de aviso se mostrará un tooltip informativo:

![](/attachments/597852265/597865829.png)

  


Pulsando el icono de la acción editar ![](/attachments/597852265/597865998.png)sobre la partida se mostrarán los datos configurados en convocatoria, y se posibilitará que la partida se copie al proyecto.

![](/attachments/597852265/931332159.png)

  


En la parte derecha de la pantalla se muestran los datos de la convocatoria, Si se pulsa el botón "aplicar al proyecto", se copiarán estos datos a la parte izquierda de la pantalla (correspondiente a los datos de configuración de la partida en el proyecto):

![](/attachments/597852265/931332160.png)

  


Tras pulsar el botón "añadir", la partida será incluida en el proyecto pasando a mostrarse en el listado ya sin el aviso informativo.

![](/attachments/597852265/597865826.png)

  


Si la partida presupuestaria de la convocatoria no se desea añadir al proyecto no será necesario realizar ninguna acción, el aviso informativo ![](/attachments/597852265/597865890.png) se seguirá mostrando, pero la configuración de partidas presupuestarias del proyecto no se verá afectada por el cambio en la convocatoria. 

  


##### 4\.2\.2 Modificación de los datos de una partida en el proyecto o en la convocatoria

Los proyectos asociados a convocatorias del SGI parten de los datos de las partidas configurados en la misma. No obstante podrán ser modificados de forma independiente, aunque limitada en cuanto al número de campos, en el proyecto (a través del botón editar asociado a cada partida). 

![](/attachments/597852265/597865839.png)

  


Al editar los datos de una partida procedente de la convocatoria se mostrarán en la parte derecha de la pantalla, de manera informativa, los datos de configuración en la convocatoria. Los datos de la partida en el proyecto podrán modificarse en la parte izquierda. Para las partidas procedentes de la convocatoria el único campo modificable es el campo "Descripción".

![](/attachments/597852265/931332161.png)

  


Si se modifica este campo se activará el botón "Aceptar". Si se pulsa el botón, los datos de la partida en el proyecto habrán sido modificados.

Si los datos de una partida procedente de la configuración de la convocatoria se modifican en el proyecto se mostrará un icono de aviso en color marrón, ![](/attachments/597852265/597865875.png) . Este aviso también se mostrará cuando los datos de la partida hubieran sido modificados en la convocatoria de origen con posterioridad a la creación del proyecto. Es decir, el aviso ![](/attachments/597852265/597865875.png) se mostrará siempre que los datos de la partida en el proyecto difieran de los datos de la partida en la convocatoria.

![](/attachments/597852265/597865824.png)

  


  


Al pasar el ratón por encima del icono de aviso se mostrará un mensaje informativo.

![](/attachments/597852265/597865872.png)

  


  


Si se desea restablecer la configuración inicial de la partida de acuerdo a la convocatoria, se debe pulsar el botón editar asociado a la partida. Se mostrará el detalle de la partida presupuestaria mostrando tanto los datos del proyecto (parte izquierda de la pantalla) como los de la convocatoria (parte derecha). 

![](/attachments/597852265/931332162.png)

  


Si se decide retornar a los datos de la convocatoria se pulsará "Aplicar al proyecto"

![](/attachments/597852265/931332163.png)

  


Tras pulsar aceptar la partida se mostrará en el listado sin aviso informativo

  


![](/attachments/597852265/597858058.png)

  


  


No es necesario aplicar los cambios de la convocatoria al proyecto. Pueden permanecer los datos del proyecto. En este caso, el aviso informativo de diferencias se seguirá mostrando:

![](/attachments/597852265/597865824.png)

  


  


##### 4\.2\.3 Creación de una partida  en el proyecto

Aunque un proyecto asociado a una convocatoria del SGI parta de las partidas presupuestarias configuradas en ésta, podrán añadirse nuevas partidas presupuestarias en el proyecto sin que esto afecte a la convocatoria. Se hará uso para ello del botón Añadir partida presupuestaria.

![](/attachments/597852265/597858056.png)

  


En el caso de que la variable de configuración "Obtener partidas del SGE" tenga valor "No" se muestra la siguiente pantalla.

  


![](/attachments/597852265/931332164.png)

En el caso de que la variable de configuración "Obtener partidas del SGE" tenga valor "Sí" se muestra la siguiente pantalla.

![](/attachments/597852265/938573951.png)

Tras rellenar los datos de la partida, y tras pulsar el botón "añadir" se mostrará la partida en el listado que se acompañará de un icono de aviso informativo ![](/attachments/597852265/597865875.png), para reflejar que el proyecto presenta cambios respecto a la convocatoria.

![](/attachments/597852265/597858053.png)

  


Al pasar el ratón por el icono de aviso se mostrará un mensaje informativo:

![](/attachments/597852265/597858052.png)

  


El mensaje permanecerá activo sin que esto suponga ninguna problemática para la gestión del proyecto en el SGI

##### 4\.2\.4 Eliminación de una partida en el proyecto

Al igual que las partidas provenientes de la convocatoria pueden ser modificadas en el proyecto, también podrán ser eliminadas de forma independiente en el proyecto (sin que la configuración de la convocatoria se vea afectada). 

![](/attachments/597852265/597858102.png)

  


Cuando esto sucede se mostrará un aviso informativo en el listado de partidas del proyecto. El mensaje informativo recordará que se trata de una partida configurada en la convocatoria pero que no está incluida en el proyecto

![](/attachments/597852265/597858101.png)

  


Puesto que a efectos prácticos se trata de una partida incluida en la convocatoria y no en el proyecto, el tratamiento sigue lo descrito en el apartado [Nueva partida presupuestaria en la convocatoria](#CSPProyectosConfiguracióneconómica-partida_en_convocatoria_no_proyecto "#CSPProyectosConfiguracióneconómica-partida_en_convocatoria_no_proyecto").

##### 4\.2\.5 Eliminación de una partida en la convocatoria

Si una vez que ha sido creado el proyecto se elimina una partida presupuestaria en la convocatoria, ésta no se eliminará del proyecto pero se mostrará el icono de aviso ![](/attachments/597852265/597865875.png)

![](/attachments/597852265/597858093.png)

  


Puesto que a efectos prácticos se trata de una partida incluida en el proyecto y no en la convocatoria, el tratamiento sigue lo descrito en el apartado [nueva partida presupuestaria en proyecto](#CSPProyectosConfiguracióneconómica-partida_en_proyecto_no_convocatoria "#CSPProyectosConfiguracióneconómica-partida_en_proyecto_no_convocatoria").

  


### 5\. Presupuesto

La opción de menú Presupuesto de Configuración económica permite detallar el presupuesto del proyecto. Un proyecto partirá siempre sin información de presupuesto aunque haya sido creado a partir de una solicitud concedida y en ésta se haya detallado el presupuesto.

El presupuesto de un proyecto/contrato se detallará por concepto de gasto de forma que se pueda indicar a nivel de concepto de gasto el importe considerado en el  presupuesto del proyecto/contrato y el importe concedido. Además, el presupuesto se podrá detallar de manera global para toda la duración del proyecto o por anualidades.

El aspecto inicial del apartado de presupuesto es:

![](/attachments/597852265/597858084.png)

  


El primer paso para introducir el detalle del presupuesto es indicar si éste se va a desglosar por anualidades.

![](/attachments/597852265/597858081.png)

  


![](/attachments/597852265/597858082.png)

  


El desplegable "Desglosar en anualidades" presenta dos valores:

* Sí
* No

#### 5\.1 Desglose de presupuesto por anualidad

Desglosar el presupuesto en anualidades supone detallar el presupuesto de cada una de las anualidades de forma individual.

Tras indicar el valor "Sí" se deben guardar los datos del proyecto, para que el SGI tenga en cuenta la configuración del desglose de anualidades:

![](/attachments/597852265/597858079.png)

  


![](/attachments/597852265/597858078.png)

  


Una vez indicado que el presupuesto se detallará por anualidades, se debe de pulsar el botón "Añadir anualidad"

![](/attachments/597852265/597858076.png)

  


Se mostrará la pantalla de detalle de una anualidad del presupuesto:

![](/attachments/597852265/597858075.png)

  


El detalle de una anualidad consta de 4 apartados:

* Datos generales
* Gastos
* Ingresos
* Resumen

##### 5\.1\.1 Anualidad \- Datos generales

En la pantalla de datos generales se deberán introducir los siguientes campos:

* Anualidad. Es un campo obligatorio. La anualidad hace referencia a la anualidad contable. Se debe de introducir el año con el que se corresponde la anualidad en un formato de cuatro dígitos (ej. 2021\).
* Presupuestar. Es un campo obligatorio. Solo podrá tomar los valores "Sí" o "No".  El SGI cuenta con la posibilidad de notificar al SGE el presupuesto que se configura para el proyecto (para ello el SGE debe implementar los mecanismos de integración correspondientes).  Si el presupuesto del proyecto se desglosa por anualidades, se debe indicar para cada una de ellas si se desea notificar o no al SGE.  Si se indica el valor "Sí" en este campo, se remitirá el presupuesto configurado para la anualidad al SGE. Ver apartado [Notificar anualidad al SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").
* Fecha inicio y fecha fin. Son ambos campos opcionales.  En caso que la anualidad no cubra el año natural completo, porque se corresponda con el comienzo o fin del proyecto, se podrá indicar el periodo concreto que abarca.

##### 5\.1\.2 Anualidad \- Gastos

En este apartado se añadirán las partidas de gasto al presupuesto. Las partidas de gasto añadidas a la anualidad se muestran en formato de listado. Inicialmente el listado estará vacío.

![](/attachments/597852265/597858046.png)

  


Para añadir una partida de gastos se debe pulsar el botón "Añadir partida de gastos". Se mostrará una ventana emergente en la que se podrá introducir el detalle de la partida a presupuestar

![](/attachments/597852265/942735403.png)

  


###### 5\.1\.2\.1 Identificador SGE

Para definir el presupuesto de un proyecto/contrato es condición indispensable que previamente se hubiera vinculado al [identificador SGE](#CSPProyectosConfiguracióneconómica-identificacion_SGE "#CSPProyectosConfiguracióneconómica-identificacion_SGE") correspondiente. Es un campo obligatorio.

![](/attachments/597852265/597858042.png)

  


Si el proyecto SGI dispone de un único identificador SGE vinculado, este campo se mostrará cumplimentado automáticamente:

![](/attachments/597852265/942735403.png)

  


Si el proyecto SGI está asociado a más de un identificador SGE, deberá seleccionarse el identificador del proyecto económico con que se corresponde la partida a presupuestar. 

![](/attachments/597852265/597858041.png)

  


###### 5\.1\.2\.2 Concepto de gasto

El presupuesto se puede desglosar en conceptos de gasto, aunque no es un campo obligatorio.

![](/attachments/597852265/942735403.png)

  


Los checks "Conceptos de gasto permitidos" y "Todos los conceptos de gasto" tienen efecto sobre el desplegable "Concepto de gasto". Solo podrá estar marcada una de las dos opciones, mostrándose seleccionada por defecto la opción "Conceptos de gasto permitidos"

![](/attachments/597852265/942735405.png)

  


Si está marcada la opción "Conceptos de gasto permitidos" el desplegable "Concepto de gasto" solo mostrará los conceptos de gasto configurados como permitidos en el apartado  [Elegibilidad](#CSPProyectosConfiguracióneconómica-elegibilidad "#CSPProyectosConfiguracióneconómica-elegibilidad") del proyecto.

Así en un proyecto con la siguiente configuración de elegibilidad:

![](/attachments/597852265/597858038.png)

  


Al marcar la opción "Conceptos de gasto permitidos" el desplegable de conceptos de gasto solamente mostrará los tres conceptos configurados:

![](/attachments/597852265/597858036.png)

  


Si se marca la opción "Todos los conceptos de gasto" el desplegable de conceptos de gasto mostrará todos los conceptos configurados en el apartado [Configuración \- Conceptos de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto").

![](/attachments/597852265/597858037.png)

  


  


Cuando el concepto de gasto seleccionado está configurado en el apartado [elegibilidad del proyecto,](#CSPProyectosConfiguracióneconómica-elegibilidad "#CSPProyectosConfiguracióneconómica-elegibilidad") ya sea como permitido o no permitido, se mostrará a modo informativo esta configuración, de forma que sirva de ayuda para definir el presupuesto.

![](/attachments/597852265/942735407.png)

  


Si el concepto de gasto seleccionado no se encuentra en la configuración de elegibilidad del proyecto no se mostrará la información anterior.

No se impedirá que ningún concepto de gasto se añada al presupuesto. Podrá seleccionarse cualquier concepto de gasto, aunque se haya incluido en la configuración de elegibilidad del proyecto como no permitido.

  


###### 5\.1\.2\.3 Código económico

La partida del presupuesto se podrá especificar a nivel de código económico (tipo de gasto del SGE), si bien no es un dato obligatorio. Tras seleccionar el concepto de gasto se podrá seleccionar el código económico (tipo de gasto del SGE). Como en el caso de los conceptos de gasto se debe marcar una de las dos opciones disponibles:

* Códigos económicos permitidos
* Todos los códigos económicos

  


![](/attachments/597852265/942735408.png)

  


Si se selecciona la opción "Códigos económicos permitidos", el desplegable "Código económico" se cargará con el listado de códigos económicos configurados como permitidos en el apartado  [Elegibilidad](#CSPProyectosConfiguracióneconómica-elegibilidad "#CSPProyectosConfiguracióneconómica-elegibilidad") del proyecto para el concepto de gasto previamente seleccionado.

![](/attachments/597852265/942735409.png)

  


Si se selecciona la opción "Todos los códigos económicos", el desplegable se cargará con el listado de todos los códigos económicos, independientemente que estén o no vinculados al concepto de gasto previamente seleccionado.

Se podrá seleccionar un código económico aunque no se haya seleccionado un concepto de gasto, para eso tiene que seleccionar la opción "Todos los códigos económicos" para que se muestre todo el listado independientemente si se ha seleccionado un concepto de gasto o no.

![](/attachments/597852265/942735411.png)

  


El listado con todos los códigos económicos procede del SGE. Debe, por tanto, contarse con el servicio de integración correspondiente.

  


###### 5\.1\.2\.4 Partida/aplicación presupuestaria

El campo partida/aplicación presupuestaria es un campo obligatorio.

![](/attachments/597852265/942735412.png)

  


Se debe seleccionar una partida disponible en el listado mostrado en desplegable. El desplegable contendrá las partidas de tipo "Gasto" añadidas al proyecto en el apartado [Partidas presupuestarias](#CSPProyectosConfiguracióneconómica-partidas_presupuestarias "#CSPProyectosConfiguracióneconómica-partidas_presupuestarias").

![](/attachments/597852265/942735413.png)

  


Si el proyecto tuviera una única partida de gastos configurada, este campo se mostraría cumplimentado de forma automática.

![](/attachments/597852265/942735414.png)

  


###### 5\.1\.2\.5 Importes

Cumplimentados los campos previos, deben rellenarse los importes. Se dispone de dos campos:

* Importe presupuesto. Es el importe que se presupuesta para la partida de gastos especificada.
* Importe concedido. Es el importe concedido, a través del método de financiación que corresponda, para la partida de gastos.

Es obligatorio introducir ambos importes,

![](/attachments/597852265/942735415.png)

  


En ambos campos se debe introducir un valor numérico.

  


![](/attachments/597852265/942735416.png)

  


###### 5\.1\.2\.6 Listado de partidas de gastos

Cumplimentados todos los valores obligatorios se activará el botón "Añadir". Tras pulsar este botón, la partida de gastos se mostrará en el listado del apartado "Gastos".

![](/attachments/597852265/597857952.png)

  


Se podrán añadir tantas partidas de gastos como sea necesario:

![](/attachments/597852265/597857950.png)

  


Siguiendo el comportamiento general del SGI, se debe pulsar el botón "Guardar anualidad" para que todas las partidas de gasto, y resto de datos añadidos a la anualidad en otras pestañas, sean guardadas.

  


##### 5\.1\.3 Anualidad \- Ingresos

En el apartado de "Ingresos" de la "Anualidad" se introducirán las partidas de ingresos del presupuesto.

Inicialmente el listado estará vacío: 

![](/attachments/597852265/597857997.png)

  


Para añadir una partida de ingresos se pulsará el botón "Añadir partida de ingresos". Se mostrará una ventana emergente:

  


![](/attachments/597852265/597857996.png)

  


  


Los campos disponibles para la inclusión de una partida de ingresos en el presupuesto del proyecto/contrato son:

* **Identificador SGE**. Es un campo obligatorio. Para crear una partida de ingresos en el presupuesto es necesario que se haya vinculado el proyecto a un [identificador económico](#CSPProyectosConfiguracióneconómica-identificacion_SGE "#CSPProyectosConfiguracióneconómica-identificacion_SGE").
	+ Si el proyecto está vinculado a un único identificador SGE el campo estará relleno de manera automática.

![](/attachments/597852265/597857995.png)

* + Si el proyecto está vinculado a más de un identificador SGE se listarán todos en el desplegable, debiendo seleccionar uno de ellos.

![](/attachments/597852265/597857993.png)

* **Código económico (SGE)**. Es un campo opcional. La partida de ingresos se podrá asociar a un código económico (tipo de gasto SGE). Se deberá seleccionar un código económico del listado mostrado en el desplegable. El listado contendrá todos los códigos económicos procedentes del SGE (siempre que se haya dispuesto del servicio de integración correspondiente por parte de este sistema).

![](/attachments/597852265/597857994.png)

* **Partida/aplicación presupuestaria**. La partida/aplicación presupuestaria es un campo obligatorio. El desplegable contendrá las partidas presupuestarias de tipo "ingreso" que hubieran sido configuradas en el proyecto en el apartado [Partidas presupuestarias](#CSPProyectosConfiguracióneconómica-partidas_presupuestarias "#CSPProyectosConfiguracióneconómica-partidas_presupuestarias").
	+ Si el proyecto tiene una única partida de ingresos configurada, el campo se mostrará cumplimentado de forma automática.

![](/attachments/597852265/597857990.png)

* + Si el proyecto tiene configuradas más de una partida de ingresos, éstas se listarán en el desplegable, siendo obligatorio seleccionar una de ellas.

![](/attachments/597852265/597857988.png)

* **Importe concedido**. Es un campo obligatorio. Se debe introducir el importe que se presupuesta para la partida de ingresos.

  


Cumplimentados todos los campos se activará el botón "Añadir"

![](/attachments/597852265/597857984.png)

  


Tras pulsar el botón "Añadir" la partida de ingresos se mostrará en el listado.

![](/attachments/597852265/597857981.png)

  


Se podrán añadir tantas partidas de ingresos al presupuesto de la anualidad como sea necesario.

![](/attachments/597852265/597857978.png)

  


Siguiendo el comportamiento general del SGI, se debe pulsar el botón "Guardar anualidad" para que todas las partidas de gasto, y resto de datos añadidos a la anualidad en otras pestañas, sean guardadas.

  


##### 5\.1\.4 Anualidad \- Resumen

En el apartado "Resumen" de la anualidad se muestra un listado completo de todas las partidas de gastos e ingresos añadidas al presupuesto de la anualidad. Es una pantalla informativa.

![](/attachments/597852265/597857975.png)

  


##### 5\.1\.5 Listado de anualidades

Introducido el detalle de una anualidad y guardados los cambios se puede volver a la pantalla del presupuesto del proyecto para seguir configurando más anualidades del mismo. Para ello se puede utilizar el acceso disponible en la "miga de pan"

![](/attachments/597852265/597857973.png)

  


Tras añadir la primera anualidad, la pantalla del apartado "Presupuesto" del proyecto/contrato tendrá el siguiente aspecto:

![](/attachments/597852265/597857971.png)

  


La anualidad introducida se mostrará en Listado de anualidades, mostrando sus datos de resumen y teniendo disponible las siguientes acciones:

* **Editar**. Se mostrará el detalle de la anualidad, permitiendo la modificación de la misma, para añadir o eliminar partidas de gasto o ingresos.

![](/attachments/597852265/597857911.png)

Existen restricciones que limitan la modificación de los datos de una anualidad. Ver apartado [Modificar anualidad](#CSPProyectosConfiguracióneconómica-modificar_anualidad "#CSPProyectosConfiguracióneconómica-modificar_anualidad").

* **Eliminar**. La opción eliminar no estará disponible si la Anualidad fue notificada al SGE. Ver apartado [Notificar SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE"). Si la opción está disponible se mostrará un mensaje de confirmación, en caso que la anualidad ya disponga de partidas de gastos y/o ingresos configuradas.

![](/attachments/597852265/597857913.png)

Si se pulsa el botón "Aceptar" se eliminará la anualidad del presupuesto del proyecto/contrato con todo el detalle de la misma. No se dará opción a la recuperación de la anualidad

* **Enviar al SGE**. Ver detalle en [Notificar SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").

  


Desde el listado de anualidades se podrá añadir una nueva anualidad. Para ello se hará uso del botón "Añadir anualidad"

![](/attachments/597852265/597857912.png)

  


Se podrán añadir tantas anualidades como sea necesario para definir el presupuesto del proyecto. El SGI no limita ningún marco temporal dentro de la duración del proyecto para la introducción de nuevas anualidades al presupuesto.

![](/attachments/597852265/597857910.png)

  


Al pie del listado de anualidades se muestra una sección de totales (Valor calculado y Valor manual). Ver detalle de esta sección en el apartado Totales del [presupuesto o introducción manual](#CSPProyectosConfiguracióneconómica-total_presupuesto "#CSPProyectosConfiguracióneconómica-total_presupuesto").

  


#### 5\.2 Desglose de presupuesto sin anualidad (anualidad genérica)

En caso que no se desee desglosar el presupuesto en anualidades se deberá indicar, en el momento inicial de introducción de sus datos, a través del campo "¿Desglosar en anualidades?":

  


![](/attachments/597852265/597857907.png)

  


Tras indicar el valor "No" en este campo se debe pulsar el botón "Guardar proyecto" para que se realice la configuración inicial del presupuesto. En este caso el presupuesto se recogerá a través de una anualidad genérica. Para introducir los datos de la misma se debe de pulsar el botón "Añadir anualidad genérica":

![](/attachments/597852265/597857904.png)

  


La anualidad genérica dispondrá de cuatro apartados:

![](/attachments/597852265/597857902.png)

  


* Datos generales. En el caso de la anualidad genérica el apartado de dato generales consta de los siguientes campos:
	+ Fecha inicio y fecha fin. En el caso de la anualidad genérica las fechas de inicio y fin se cumplimentan automáticamente con las fechas de inicio y fin del proyecto. El valor de estos campos no se puede modificar.
	+ Presupuestar. Es un campo obligatorio. Solo podrá tomar los valores "Sí" o "No".  El SGI cuenta con la posibilidad de notificar al SGE el presupuesto que se configura para el proyecto (para ello el SGE debe implementar los mecanismos de integración correspondientes).  Si se indica el valor "Sí" en este campo, se remitirá el presupuesto configurado para la anualidad al SGE. Ver apartado [Notificar anualidad al SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").

![](/attachments/597852265/597857900.png)

* Gastos. El apartado "gastos" para una anualidad genérica no presenta diferencias frente a una anualidad individual. Puede consultarse el detalle en [anualidad \- gastos](#CSPProyectosConfiguracióneconómica-anualidad_gastos "#CSPProyectosConfiguracióneconómica-anualidad_gastos").
* Ingresos. El apartado "ingresos" para una anualidad genérica no presenta diferencias frente a una anualidad individual. Puede consultarse el detalle en [anualidad \- ingresos](#CSPProyectosConfiguracióneconómica-anualidad_ingresos "#CSPProyectosConfiguracióneconómica-anualidad_ingresos").
* Resumen. El apartado "resumen" para una anualidad genérica no presenta diferencias frente a una anualidad individual. Puede consultarse el detalle en [anualidad \- resumen](#CSPProyectosConfiguracióneconómica-anualidad_resumen "#CSPProyectosConfiguracióneconómica-anualidad_resumen").

  


Una vez cumplimentados sus datos se debe guardar la anualidad. Se puede retornar a la pantalla del Presupuesto del proyecto/contrato haciendo uso de la "miga de pan".

![](/attachments/597852265/597857889.png)

  


El aspecto de la pantalla de Presupuesto de un proyecto/contrato configurado con anualidad genérica es el siguiente:

![](/attachments/597852265/597857888.png)

  


La anualidad se mostrará en Listado de anualidades, mostrando sus datos de resumen y teniendo disponible las siguientes acciones:

* **Editar**. Se mostrará el detalle de la anualidad, permitiendo la modificación de la misma, para añadir o eliminar partidas de gasto o ingresos.

![](/attachments/597852265/597857886.png)

Existen restricciones que limitan la modificación de los datos de una anualidad. Ver apartado [Modificar anualidad](#CSPProyectosConfiguracióneconómica-modificar_anualidad "#CSPProyectosConfiguracióneconómica-modificar_anualidad").

* **Eliminar**. La opción eliminar no estará disponible si la Anualidad fue notificada al SGE. Ver apartado [Notificar SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE"). Si la opción está disponible se mostrará un mensaje de confirmación, en caso que la anualidad ya disponga de partidas de gastos y/o ingresos configuradas.

![](/attachments/597852265/597857887.png)

* **Enviar al SGE**. Ver detalle en [Notificar SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").

  


En el caso de la configuración de presupuesto con anualidad genérica no se permitirá la introducción de más de una anualidad en el presupuesto. De esta forma, una vez que se disponga de una anualidad genérica configurada, el botón "Añadir anualidad genérica" permanecerá siempre desactivado.

![](/attachments/597852265/597857883.png)

  


  


Al pie del listado de anualidades se muestra una sección de totales (Valor calculado y Valor manual). Ver detalle de esta sección en el apartado Totales del [presupuesto o introducción manual](#CSPProyectosConfiguracióneconómica-total_presupuesto "#CSPProyectosConfiguracióneconómica-total_presupuesto").

  


#### 5\.3 Notificar SGE

El SGI cuenta con la posibilidad de notificar los presupuestos de proyectos/contratos al SGE. Para ello se deberá marcar la opción "Presupuestar" en la pantalla de Datos generales de cada anualidad individual (ver [datos generales de anualidad](#CSPProyectosConfiguracióneconómica-anualidad_datos_generales "#CSPProyectosConfiguracióneconómica-anualidad_datos_generales")) o de la anualidad genérica (ver [datos generales de anualidad genérica](#CSPProyectosConfiguracióneconómica-anualidad_generica_datos_generales "#CSPProyectosConfiguracióneconómica-anualidad_generica_datos_generales")).  Para que la notificación del presupuesto al SGE sea posible, es indispensable que este sistema cuente con el servicio de integración correspondiente (punto que habrá tenido que ser resuelto durante el periodo de implantación del SGI).

Cuando una anualidad ha sido marcada con la opción "Presupuestar" a "sí", se mostrará la acción "Enviar SGE" en el listado de anualidades de la pantalla de Presupuesto.

La siguiente imagen muestra un caso del presupuesto de un proyecto con tres anualidades. Las dos primeras han sido configuradas con la opción "presupuestar" a "sí" y la tercera con la opción "presupuestar" a "no". 

![](/attachments/597852265/597857930.png)

  


La siguiente imagen muestra el ejemplo del presupuesto de un proyecto con anualidad genérica (sin anualidades) configurada con el parámetro "presupuestar" a "sí".

![](/attachments/597852265/597857931.png)

  


  


Con el botón "Enviar al SGE" se realizará la notificación de la anualidad al módulo de presupuestos del SGE. Se enviará a este sistema la información completa de la anualidad (datos generales, partidas de gastos y partidas de ingresos). 

Tras pulsar el botón "Enviar al SGE" se mostrará un mensaje de confirmación:

![](/attachments/597852265/597857926.png)

  


* Si se pulsa el botón "Aceptar" se realizará la notificación y se cerrará el mensaje de confirmación. Si se produce algún error en la notificación se mostrará el mensaje de error devuelto por el SGE, en caso contrario la anualidad se marcará como "Enviada al SGE".
* Si se pulsa el botón "Cancelar" se cerrará el mensaje de confirmación sin realizar ninguna notificación al SGE. La opción "Enviar al SGE" seguirá estando disponible para la anualidad.

  


Las anualidades que ya hayan sido notificadas al SGE satisfactoriamente serán identificadas en el listado de anualidades a través de la columna "Enviado al SGE":

![](/attachments/597852265/597857923.png)

  


Las anualidades cuyo presupuesto ya haya sido notificado al SGE satisfactoriamente no volverán a tener disponible la acción "Enviar al SGE". Además, aplicarán sobre ellas [restricciones en la modificación](#CSPProyectosConfiguracióneconómica-modificar_anualidad "#CSPProyectosConfiguracióneconómica-modificar_anualidad").

La notificación de los presupuestos al SGE también puede ser realizada a través de la opción [CSP\-Notificación de presupuestos al SGE](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-notificacion-de-presupuestos-al-sge.md "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-notificacion-de-presupuestos-al-sge.md") disponible en el menú principal del módulo CSP. Desde esta opción la notificación de anualidades puede ser realizada de manera conjunta para los diferentes proyectos/contratos.

  


#### 5\.4 Totales del presupuesto o introducción manual

En la pantalla de presupuesto del proyecto/contrato, tanto si se ha desglosado por anualidad como si no, se muestra un bloque de resumen de importes:

![](/attachments/597852265/597857917.png)

  


La información de este bloque está orientada en dos columnas: valores calculados y valores manuales.

![](/attachments/597852265/597857915.png)

  


##### 5\.4\.1 Valores calculados

Bajo la columna "Valor calculado" se muestran los totales calculados a partir de la información introducida en el presupuesto. Estos valores no pueden ser modificados y estarán informados si previamente se ha introducido el detalle del presupuesto. Se explica a continuación cómo se obtiene cada uno de los totales.

* Importe presupuesto Universidad. Importe con el que se cuenta en el presupuesto de la Universidad para la ejecución del proyecto destinado a costes directos. Estará informado si se ha detallado el presupuesto del proyecto por conceptos de gasto. Es la suma del "importe presupuesto" de todas las anualidades para todos los conceptos de gasto asociados a costes directos. El "importe presupuesto" para cada concepto de gasto habrá sido introducido en cada anualidad de acuerdo a lo descrito en el apartado [Anualidad \- Gastos](#CSPProyectosConfiguracióneconómica-anualidad_gastos "#CSPProyectosConfiguracióneconómica-anualidad_gastos").
* Importe presupuesto Universidad costes indirectos. Importe con el que se cuenta en el presupuesto de la Universidad para la ejecución del proyecto destinado a costes indirectos. Estará informado si se ha detallado el presupuesto del proyecto por conceptos de gasto. Es la suma del "importe presupuesto" de todas las anualidades para los conceptos de gasto que representan costes indirectos. Los conceptos de gasto que representan costes indirectos deben haber sido configurados en el apartado [CSP\-Configuración \- 12 Conceptos de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto"). El "importe presupuesto" para cada concepto de gasto habrá sido introducido en cada anualidad de acuerdo a lo descrito en el apartado [Anualidad \- Gastos](#CSPProyectosConfiguracióneconómica-anualidad_gastos "#CSPProyectosConfiguracióneconómica-anualidad_gastos").
* Total importe presupuesto Universidad. Importe total considerado en el presupuesto de la Universidad para la ejecución del proyecto. Estará informado si se ha detallado el presupuesto del proyecto por conceptos de gasto. Es la suma del "importe presupuesto" de todos los conceptos de gasto (directos e indirectos) de todas las anualidades incluidas en el presupuesto. Es decir, la suma de los dos valores anteriores.
* Importe concedido Universidad. Importe del presupuesto con el que cuenta la universidad para costes directos que ha sido concedido por los organismos de financiación correspondientes. Estará informado si se ha detallado el presupuesto del proyecto por conceptos de gasto. Es la suma del "importe concedido" de todas las anualidades para todos los conceptos de gasto asociados a costes directos. El "importe concedido" para cada concepto de gasto habrá sido introducido en cada anualidad de acuerdo a lo descrito en el apartado [Anualidad \- Gastos](#CSPProyectosConfiguracióneconómica-anualidad_gastos "#CSPProyectosConfiguracióneconómica-anualidad_gastos").
* Importe concedido Universidad costes indirectos. Importe del presupuesto con el que cuenta la universidad para costes indirectos que ha sido concedido por los organismos de financiación correspondientes. Estará informado si se ha detallado el presupuesto del proyecto por conceptos de gasto. Es la suma del "importe concedido" de todas las anualidades para los conceptos de gasto que representan costes indirectos. Los conceptos de gasto que representan costes indirectos deben haber sido configurados en el apartado [CSP\-Configuración \- 12 Conceptos de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto"). El "importe concedido" para cada concepto de gasto habrá sido introducido en cada anualidad de acuerdo a lo descrito en el apartado [Anualidad \- Gastos](#CSPProyectosConfiguracióneconómica-anualidad_gastos "#CSPProyectosConfiguracióneconómica-anualidad_gastos").
* Total importe concedido Universidad. Importe total que ha sido concedido y que le corresponde a la Universidad para la ejecución del proyecto. Estará informado si se ha detallado el presupuesto del proyecto por conceptos de gasto. Es la suma del "importe concedido" de todos los conceptos de gasto (directos e indirectos) de todas las anualidades incluidas en el presupuesto. Es decir, la suma de los dos valores anteriores.
* Importe presupuesto socios. Importe total del presupuesto del proyecto que les corresponde a otras entidades participantes en la ejecución del mismo. Estará informado si se ha incluido este dato en el apartado de socios del proyecto (Ver [CSP\-Proyectos \- 4\.10 Socios del proyecto](https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.10Socios "https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.10Socios")). Es la suma del "importe presupuesto" recogido para todos los socios del proyecto.
* Importe concedido socios. Importe del total concedido por los organismos de financiación correspondientes, destinado a otras entidades participantes en la ejecución del proyecto. Estará informado si se ha incluido este dato en el apartado de socios del proyecto (Ver [CSP\-Proyectos \- 4\.10 Socios del proyecto](https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.10Socios "https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.10Socios")). Es la suma del "importe concedido" recogido para todos los socios del proyecto.
* Total importe presupuesto. Es el total del importe del presupuesto con el que cuenta el proyecto (Universidad y socios). Es la suma del "total importe presupuesto Universidad" e "importe presupuesto socios".
* Total importe concedido. Es el total del importe concedido por los organismos de financiación correspondientes para la ejecución del proyecto (Universidad y socios). Es la suma del "total importe concedido Universidad" e "importe concedido socios".

  


##### 5\.4\.2 Valores manuales

Bajo la columna "Valor manual" se da la posibilidad de introducir manualmente los totales del presupuesto. Es un mecanismo facilitado para introducir de manera directa los totales del presupuesto, cubriendo así los escenarios en los que no se desee, por las circunstancias que fuere, no detallar el presupuesto por concepto de gasto o el de cada uno de los socios, cuando corresponda. Sobre la columna "Valor manual" existe un icono de aviso, ![](/attachments/597852265/597858300.png), que muestra un mensaje informativo al pasar el ratón sobre el mismo:

![](/attachments/597852265/597858301.png)

  


Se podrán introducir manualmente los siguientes valores:

* Importe presupuesto Universidad.  Importe con el que se cuenta en el presupuesto de la Universidad para la ejecución del proyecto destinado a costes directos.
* Importe presupuesto Universidad costes indirectos. Importe con el que se cuenta en el presupuesto de la Universidad para la ejecución del proyecto destinado a costes indirectos. Los conceptos de gasto que representan costes indirectos deben haber sido configurados en el apartado [CSP\-Configuración \- 12 Conceptos de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto").
* Total importe presupuesto Universidad. Importe total considerado en el presupuesto de la Universidad para la ejecución del proyecto. No se podrá introducir manualmente sino que será calculado a partir de la suma de los dos importes anteriores.
* Importe concedido Universidad. Importe del presupuesto con el que cuenta la universidad para costes directos que ha sido concedido por los organismos de financiación correspondientes.
* Importe concedido Universidad costes indirectos. Importe del presupuesto con el que cuenta la universidad para costes indirectos que ha sido concedido por los organismos de financiación correspondientes. Los conceptos de gasto que representan costes indirectos deben haber sido configurados en el apartado [CSP\-Configuración \- 12 Conceptos de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-12.Conceptosdegasto").
* Total importe concedido Universidad. Importe total que ha sido concedido y que le corresponde a la Universidad para la ejecución del proyecto. No se podrá introducir manualmente sino que será calculado a partir de la suma de los dos importes anteriores.
* Importe presupuesto socios. Importe total del presupuesto del proyecto que les corresponde a otras entidades participantes en la ejecución del mismo.
* Importe concedido socios. Importe del total concedido por los organismos de financiación correspondientes, destinado a otras entidades participantes en la ejecución del proyecto.
* Total importe presupuesto. Importe total con el que cuenta el presupuesto del proyecto (Universidad y socios).
* Total importe concedido. Importe total que ha sido concedido por los organismos de financiación correspondientes para la ejecución del proyecto (Universidad y socios).

  


El SGI no limitará la posibilidad de introducir los valores manuales a pesar de contar con el presupuesto detallado y/o datos de los socios. En caso que los valores manuales se cumplimenten cuando existe un valor calculado, se mostrará un aviso de advertencia, ![](/attachments/597852265/597865890.png), sobre cada campo manual informado. Este aviso muestra un mensaje explicativo al pasar el ratón sobre el mismo.

![](/attachments/597852265/597858297.png)

  


![](/attachments/597852265/597865829.png)

  


Si se cumplimenta cualquiera de los totales de forma manual, serán los que prevalezcan sobre los totales calculados, siendo los valores manuales los que se incluyan en los informes de exportación de los datos del proyecto/contrato.

#### 5\.5 Modificar presupuesto de proyecto/contrato

El presupuesto de un proyecto/contrato podrá ser modificado atendiendo a ciertas limitaciones. La opción de menú Presupuesto mostrará los datos actuales del mismo

![](/attachments/597852265/597858296.png)

  


La configuración del desglose de presupuesto en anualidades, campo "¿Desglosar en anualidades?", solo podrá ser modificada mientras no se haya guardado ninguna anualidad. El campo se mostrará en modo lectura (imagen previa) desde el momento en el que se introduzcan los datos y se guarden para una anualidad (cuando el desglose en anualidades se establece a "sí") o para la anualidad genérica (cuando el desglose en anualidades se establece a "no"). 

La información de las anualidades podrá ser modificada con las  [restricciones](#CSPProyectosConfiguracióneconómica-modificar_anualidad "#CSPProyectosConfiguracióneconómica-modificar_anualidad") que se recogen posteriormente. En el caso de que la configuración del presupuesto se haya establecido con desglose de anualidades, se permitirá añadir nuevas anualidades sin ninguna restricción por parte del SGI. En caso que la configuración del presupuesto se haya establecido sin anualidades, solo se podrá definir una única anualidad, la llamada "anualidad genérica".

Los valores calculados no podrán ser modificados en ningún momento, ya que son el resultado de datos introducidos previamente (anualidades y/o socios).

Los valores manuales podrán ser siempre modificados teniendo en cuenta la  [advertencia](#CSPProyectosConfiguracióneconómica-valores_manuales "#CSPProyectosConfiguracióneconómica-valores_manuales") que se muestra sobre ellos siempre que existan a su vez valores calculados.

  


##### 5\.5\.1 Modificar anualidad

Las anualidades del proyecto o la anualidad genérica cuando corresponda se mostrarán en el Listado de anualidades. La información que se muestra relativa a cada anualidad es:

* Anualidad. Este campo solo se mostrará cuando el presupuesto se haya desglosado por anualidades. Representa el año contable al que se corresponde la anualidad.
* Fecha inicio. Fecha de inicio de la anualidad.
* Fecha fin. Fecha de fin de la anualidad.
* Total gastos presupuesto. Suma total del "importe presupuesto" de todas las partidas de gasto incluidas en la anualidad.
* Total gastos concedido. Suma total del "importe concedido" de todas las partidas de gasto incluidas en la anualidad.
* Total ingresos. Suma total del importe de todas las partidas de ingreso incluidas en la anualidad.
* Presupuestar. Muestra la configuración establecida en la anualidad para la notificación del presupuesto al SGE.
* Enviado al SGE. Indica si el presupuesto de la anualidad ya ha sido notificado al SGE.

  


![](/attachments/597852265/597857910.png)

  


La eliminación de una anualidad se realizará a través del botón ![](/attachments/597852265/597865999.png). La acción eliminar no estará disponible cuando el presupuesto de la anualidad ya haya sido notificado al SGE. Si la opción está disponible se mostrará un mensaje de confirmación, en caso que la anualidad ya disponga de partidas de gastos y/o ingresos configuradas.

![](/attachments/597852265/597857887.png)

La modificación de una anualidad se realizará a través del botón ![](/attachments/597852265/597865998.png). Se mostrará el detalle de la anualidad. A continuación se indican las particularidades de modificación que existen sobre cada apartado.

###### 5\.5\.1\.1 Modificar anualidad \- Datos generales

Una vez que se hayan guardado los datos generales de una anualidad no será posible su modificación. Los campos de este apartado se mostrará en modo consulta.

![](/attachments/597852265/597858292.png)

  


###### 5\.5\.1\.2 Modificar anualidad \- Gastos

En el apartado de Gastos se mostrará el listado de partidas de gastos incluidas en la anualidad.

![](/attachments/597852265/597858293.png)

  


* Pulsando sobre el icono![](/attachments/597852265/597865998.png), se mostrará el detalle de la partida de gastos.

![](/attachments/597852265/942735417.png)

  


Estos datos serán modificables siempre y cuando el presupuesto de la anualidad no haya sido [notificado al SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").

* Pulsando sobre el icono ![](/attachments/597852265/597865999.png)se eliminará la partida de gastos. Previamente se mostrará un mensaje de confirmación:

![](/attachments/597852265/597858287.png)

La opción eliminar partida de gasto no estará disponible si el presupuesto de la anualidad ya ha sido [notificado al SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").

* Pulsando sobre el botón "Añadir partida de gastos" se permitirá la inclusión de una [nueva partida de gastos](#CSPProyectosConfiguracióneconómica-anualidad_gastos "#CSPProyectosConfiguracióneconómica-anualidad_gastos") en el presupuesto de la anualidad. Esta opción no estará disponible una vez que el presupuesto de la anualidad ya haya sido [notificado al SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").

  


  


###### 5\.5\.1\.3 Modificar anualidad \- Ingresos

En el apartado de Ingresos se mostrará el listado de partidas de ingresos incluidas en la anualidad.

![](/attachments/597852265/597858290.png)

  


* Pulsando sobre el icono![](/attachments/597852265/597865998.png), se mostrará el detalle de la partida de ingresos.

![](/attachments/597852265/597858329.png)

Estos datos serán modificables siempre y cuando el presupuesto de la anualidad no haya sido [notificado al SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").

* Pulsando sobre el icono ![](/attachments/597852265/597865999.png)se eliminará la partida de ingresos. Previamente se mostrará un mensaje de confirmación:

![](/attachments/597852265/597858330.png)

La opción eliminar partida de ingresos no estará disponible si el presupuesto de la anualidad ya ha sido [notificado al SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").

* Pulsando sobre el botón "Añadir partida de ingresos" se permitirá la inclusión de una [nueva partida de ingresos](#CSPProyectosConfiguracióneconómica-anualidad_ingresos "#CSPProyectosConfiguracióneconómica-anualidad_ingresos") en el presupuesto de la anualidad. Esta opción no estará disponible una vez que el presupuesto de la anualidad ya haya sido [notificado al SGE](#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE "#CSPProyectosConfiguracióneconómica-notificar_anualidad_SGE").

  


###### 5\.5\.1\.4 Modificar anualidad \- Resumen

Este apartado es un balance de los datos introducidos en Gastos e Ingresos. No se puede modificar ningún campo.

![](/attachments/597852265/597858291.png)

  


### 6\. Consulta presupuesto

Esta opción de menú muestra un resumen agrupado por anualidad de las partidas de gasto incluidas en el apartado [Presupuesto](#CSPProyectosConfiguracióneconómica-presupuesto "#CSPProyectosConfiguracióneconómica-presupuesto").

La apariencia de esta página para un presupuesto desglosado en anualidades es:

![](/attachments/597852265/597858327.png)

  


La apariencia de esta página para un presupuesto sin desglose de anualidades es:

![](/attachments/597852265/597858325.png)

  


La información se muestra agrupada por anualidades. Cada anualidad lleva el control de despliegue ![](/attachments/597852265/597858326.png), que permitirá mostrar su detalle agrupado por concepto de gasto.

![](/attachments/597852265/597858324.png)

  


![](/attachments/597852265/597858322.png)

  


A su vez cada concepto de gasto podrá desplegarse para mostrar el detalle a nivel de partida/aplicación presupuestaria:

![](/attachments/597852265/597858323.png)

  


![](/attachments/597852265/597858320.png)

  


Con el control plegar, ![](/attachments/597852265/597858319.png), se volverá a mostrar la información agrupada.

De esta forma la información de las partidas de gasto del presupuesto se podrá mostrar de forma agrupada o desagrupada a nivel de anualidad y concepto de gasto. 

De manera adicional a la agrupación por anualidad y concepto de gasto se dispone de un buscador en la parte superior del listado que permite filtrar la información mostrada en el listado.

![](/attachments/597852265/597858314.png)

  


El buscador presenta tres desplegables:

* Listado de anualidades. Este filtro no estará disponible si el presupuesto se ha definido sin desglosar por anualidades (anualidad genérica). En caso contrario, el desplegable listará todas las anualidades configuradas en el presupuesto. Se podrá seleccionar una anualidad, reduciendo el listado a los datos de la misma. Se muestra un ejemplo del resultado de aplicación del filtro por anualidad.

![](/attachments/597852265/597858310.png)

  


* Listados de aplicaciones/partidas presupuestarias. El desplegable contiene todas las partidas de gasto configuradas en el presupuesto, permitiendo seleccionar una de ellas. El listado solo contendrá las anualidades y conceptos de gasto en los que esté presente la partida seleccionada. Se muestra un ejemplo del resultado

![](/attachments/597852265/597858308.png)

  


![](/attachments/597852265/597858306.png)

  


* Listado de conceptos de gasto. El desplegable contendrá todos los conceptos de gasto incluidos en las partidas del presupuesto. Se permitirá seleccionar por uno de ellos. El resultado solo contendrá las anualidades que contengan el concepto de gasto seleccionado.

![](/attachments/597852265/597858311.png)

  


Los tres filtros pueden ser utilizados de forma combinada.

![](/attachments/597852265/597858303.png)

  


  


A pie de tabla se encuentra el icono ![](/attachments/597852265/597858318.png)que permitirá exportar el presupuesto a fichero, de acuerdo a los filtros de selección que se hubieran aplicado previamente.

![](/attachments/597852265/597858317.png)

  


Al pulsar el control de exportación se mostrará la ventana para seleccionar el formato del fichero a generar:

![](/attachments/597852265/597858315.png)

  


La exportación seguirá el comportamiento general indicado en el apartado [DU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados").

Tras seleccionar el tipo y pulsar el botón "Exportar" se generará el fichero que podrá ser descargado a la unidad de disco.

### 7\. Amortización fondos

En este apartado se podrá recoger el calendario previsto de amortización de los fondos recibidos para la ejecución del proyecto. 

Para la elaboración de este calendario de amortización se considerará:

* Las entidades financiadoras del proyecto y el tipo de financiación con el que aportan los fondos (préstamo, subvención, anticipo, etc.). No se limita a que los periodos de amortización se creen solo para los fondos recibidos como anticipo reembolsable o préstamos, sino que, atendiendo a un comportamiento genérico, se podrán definir periodos de amortización para cualquiera de las aportaciones realizadas por las entidades financiadoras de acuerdo a los datos introducidos en el apartado de entidades financiadoras del proyecto (Ver [CSP\-Proyectos \- 4\.7\.3 Entidades financiadoras](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.7.3Entidades-Financiadoras "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.7.3Entidades-Financiadoras")). Por otro lado, se recuerda que los tipos de financiación (préstamo, subvención, anticipo, etc.) disponibles para especificar la financiación recibida de cada entidad financiadora es un dato configurable desde el menú [CSP\-Configuración \- 11 Tipos de financiación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-11.Tiposdefinanciaci%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-11.Tiposdefinanciaci%C3%B3n").
* Las anualidades en las que se haya configurado el proyecto. Cada periodo de amortización recogido deberá ir asociado a una de las anualidades definidas en el [presupuesto del proyecto](#CSPProyectosConfiguracióneconómica-presupuesto "#CSPProyectosConfiguracióneconómica-presupuesto").

De esta forma se podrá indicar la previsión de amortización de los fondos recibidos por cada entidad financiadora y tipo de financiación en cada una de las anualidades del presupuesto del proyecto.

  


Inicialmente la pantalla solo presentará el listado de entidades financiadoras que hubieran sido configuradas en el proyecto, en su apartado de entidades financiadoras (Ver [CSP\-Proyectos \- 4\.7\.3 Entidades financiadoras](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.7.3Entidades-Financiadoras "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.7.3Entidades-Financiadoras")).  

![](/attachments/597852265/597858260.png)

  


La información del listado Entidades financiadoras es meramente informativa, no se permite la modificación de ninguno de estos datos desde esta pantalla de Amortización de fondos. Cualquier cambio debe ser realizado desde el apartado origen de estos datos: [CSP\-Proyectos \- 4\.7\.3 Entidades financiadoras](https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.7.3Entidades-Financiadoras "https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.7.3Entidades-Financiadoras").

  


Se podrán ir añadiendo los periodos de amortización previstos. Para ello se pulsará el botón "Añadir periodo de amortización" que mostrará una ventana para la introducción de datos:

![](/attachments/597852265/597858259.png)

  


Para la introducción de un nuevo periodo de amortización es necesario especificar los siguientes datos:

* **Identificador SGE**. Es un campo obligatorio. El calendario de amortización se notifica al SGE, por lo que es necesario que se indique el identificador del proyecto económico al que se debe vincular el periodo de amortización. Si el proyecto del SGI está asociado a un único identificador o proyecto económico, el campo "Identificador SGE" se cumplimentará de manera automática. Si el proyecto del SGI está asociado a más de un identificador económico, el desplegable mostrará el listado con todos ellos, debiendo seleccionarse uno de manera obligatoria.
* **Entidad financiadora \-  Fuente de financiación \- Tipo financiación**. Es un campo obligatorio. Se debe elegir un valor del desplegable. En el desplegable se mostrará el listado de entidades financiadoras, con la fuente de financiación y el tipo de financiación, que se hubieran recogido en el apartado [CSP\-Proyectos \- 4\.7\.3 Entidades financiadoras del proyecto](https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.7.3Entidades-Financiadoras "https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.7.3Entidades-Financiadoras").

![](/attachments/597852265/597858284.png)

* **Anualidad**. Este campo solo se mostrará si el presupuesto del proyecto se ha desglosado por anualidades. En este caso será un campo obligatorio, debiendo elegirse un valor del desplegable. En el desplegable se mostrarán las anualidades que hubieran sido indicadas en el apartado [Presupuesto del proyecto](#CSPProyectosConfiguracióneconómica-presupuesto "#CSPProyectosConfiguracióneconómica-presupuesto").

![](/attachments/597852265/597858283.png)

* **Fecha límite amortización**. Es un campo obligatorio. Se debe indicar la fecha límite establecida para contabilizar la amortización del importe correspondiente a los fondos recibidos en la anualidad y de la entidad financiadora \- tipo de financiación indicadas.
* **Importe**. Es un campo obligatorio. Se debe indicar el importe que se debe de amortizar de acuerdo a los fondos recibidos en la anualidad indicada de la entidad financiadora y tipo de financiación.

  


Cumplimentados los campos obligatorios se activará el botón "Añadir".

![](/attachments/597852265/597858236.png)

  


Tras pulsar el botón "Añadir" se mostrará el periodo de amortización en el listado:

![](/attachments/597852265/597858233.png)

  


Se podrán añadir los periodos de amortización que sean necesarios, de acuerdo a las entidades financiadoras y sus tipos de financiación y las anualidades del proyecto.

![](/attachments/597852265/597858282.png)

  


En el listado de periodos de amortización se muestran las siguientes columnas:

* Entidad y Tipo de financiación. Son los nombres de la entidad y tipo de financiación para los que se [ha creado el periodo de amortización](#CSPProyectosConfiguracióneconómica-nuevo_periodo_amortizacion "#CSPProyectosConfiguracióneconómica-nuevo_periodo_amortizacion").
* Periodo. Es un campo calculado, meramente informativo. Es un ordenación de los periodos de amortización de cada una de las entidades por anualidad.
* Anualidad. Es la anualidad del proyecto para la que se [ha creado el periodo de amortización](#CSPProyectosConfiguracióneconómica-nuevo_periodo_amortizacion "#CSPProyectosConfiguracióneconómica-nuevo_periodo_amortizacion").
* Fecha inicio anualidad y fecha fin anualidad. Son las fechas de la anualidad con la que  se corresponde el periodo de amortización. Se obtienen de los datos especificados en el [presupuesto del proyecto](#CSPProyectosConfiguracióneconómica-anualidad_datos_generales "#CSPProyectosConfiguracióneconómica-anualidad_datos_generales").
* Fecha límite amortización e importe. Son los valores establecidos en la [creación del periodo de amortización](#CSPProyectosConfiguracióneconómica-nuevo_periodo_amortizacion "#CSPProyectosConfiguracióneconómica-nuevo_periodo_amortizacion").

  


Desde el listado de periodos de amortización se podrán modificar los datos de cada periodo, acción![](/attachments/597852265/597865998.png) .

Los periodos de amortización podrán ser eliminados, acción![](/attachments/597852265/597865999.png). Antes de eliminar el periodo se mostrará un mensaje de confirmación:

![](/attachments/597852265/597858279.png)

  


Si se pulsa el botón "Aceptar" el periodo será eliminado. Si se pulsa el botón "Cancelar" se cerrará el mensaje de confirmación sin eliminar el periodo.

  


Los periodos de amortización que se creen serán notificados al SGE, siempre y cuando este sistema cuente con los mecanismos de integración necesarios y este habilitada la variable de configuración del módulo de CSP "[Integración de amortización de fondos (proyectos \- configuración económica)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")".  La notificación al SGE de los datos del periodo de amortización será realizada de manera automática e inmediata tras la creación del periodo en el SGI. Del mismo modo, cada vez que se modifique o elimine un periodo de amortización será notificado, de manera inmediata, al SGE.

  


### 8\. Calendario facturación

Desde el menú Calendario facturación se podrá registrar el plan de facturación previsto en los contratos. Siguiendo la filosofía general el SGI no realizará la gestión de las facturas emitidas, proceso que estará delegado en el SGE. El SGI cubre el registro del calendario previsto y el ciclo validación de la notificación de las facturas con la persona que ejerce como IP o responsable económico del proyecto/contrato.

En el caso de que la variable de configuración "Integración calendario facturación (proyectos \- configuración económica)" tenga valor true, se notificaran las facturas previstas dadas de alta en el SGI en estado "Validadas" al SGE.

#### 8\.1 Nuevo ítem de facturación

Únicamente se podrá añadir un nuevo item de facturación si el proyecto se encuentra en estado "Concedido".

Inicialmente el calendario de facturación estará vacío.

![](/attachments/597852265/885620741.png)

  


Para añadir un ítem de facturación el proyecto debe de estar en estado "Concedido" y se debe de pulsar el botón "Añadir ítem de facturación". Se mostrará una ventana emergente en la que se deben introducir los detalle del ítem:

![](/attachments/597852265/885620742.png)

  


Los campos disponibles son:

* Número de previsión: Es un campo de cumplimentación automática. Se irá incrementando a medida que se crean nuevos ítems de facturación, de forma que el primer ítem creado tendrá el número de previsión 1 y el último ítem el número de previsión más alto. Es un dato que no podrá ser modificado.
* Fecha emisión: Es un campo obligatorio. Es la fecha prevista de emisión de factura.
* Importe base: Es un campo obligatorio. Es el importe base que se deberá incluir en la factura a emitir.
* Porcentaje de IVA: Es un campo obligatorio. Se mostrará cumplimentado con el valor que tenga configurado el [proyecto/contrato en sus datos generales](https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.1Datosgenerales-Fichageneral "https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.1Datosgenerales-Fichageneral").

![](/attachments/597852265/885620751.png)

  


Aunque se disponga de un porcentaje de IVA de partida, podrá ser modificado.

* Comentario: Es un campo opcional.  Se puede añadir cualquier comentario al ítem de facturación.
* Tipo de facturación: Es un campo opcional. Hace referencia al tipo de tarea o trabajo con el que se corresponde el ítem de facturación.

![](/attachments/597852265/597858275.png)

  


El listado disponible debe ser definido y configurado en tiempo de implantación del SGI.

* Prórroga: Es un campo opcional que permite indicar si el ítem de facturación se genera durante un periodo de prórroga del proyecto. La prórroga se deberá seleccionar del listado disponible. En el listado se mostrarán todas las prórrogas que hayan sido creadas en el proyecto, en su apartado de [Prórrogas](https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-pro_prorrogas4.14Pr%C3%B3rrogas "https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-pro_prorrogas4.14Pr%C3%B3rrogas"). Se mostrará el número de la prórroga y su fecha de concesión. Si el ítem de facturación no se corresponde con ninguna prórroga, este campo se podrá dejar vacío.

![](/attachments/597852265/885620755.png)

  


Cumplimentados los campos obligatorios se activará el botón "Añadir"

![](/attachments/597852265/885620756.png)

  


Tras pulsar el botón "Añadir" el ítem de facturación se mostrará en el listado.

![](/attachments/597852265/885620758.png)

  


Siguiendo el comportamiento general del SGI para que el ítem sea guardado definitivamente en los datos del proyecto deberá pulsarse el botón general "Guardar proyecto", que guardará además el resto de datos de otros apartados pendientes, si los hubiera.

Podrán añadirse tantos ítems de facturación como sea necesario. El SGI no establece ninguna restricción del periodo hasta el que se pueden introducir ítems de facturación, ni de que éstos se correspondan con fechas de emisión anteriores a la fecha actual.

![](/attachments/597852265/885620759.png)

  


  


En el listado del calendario de facturación, además de las columnas introducidas durante la creación del ítem en el SGI, se muestran tres columnas adicionales:

* Validación IP. Es el estado de validación en el que se encuentra el ítem. Consultar [el ciclo de gestión de un ítem de facturación](#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion "#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion").
* Fecha de conformidad. Es la fecha en la que se realiza la validación del ítem por parte de la persona responsable del proyecto/contrato (IP o responsable económico). Contendrá la fecha de la validación más reciente (en caso que haya pasado por validaciones rechazadas). Estará en balnco hasta que no se haya realizado la validación (es decir, mientras el estado de la validación IP sea "pendiente"). Consultar [el ciclo de gestión de un ítem de facturación](#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion "#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion").
* Número de factura emitida. Es el número de la factura emitida en el SGE con la que se corresponde el ítem de facturación. Consultar [el ciclo de gestión de un ítem de facturación](#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion "#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion").

  


Desde el listado del calendario de facturación están disponibles las acciones:

* Editar ítem, ![](/attachments/597852265/597865998.png). Permite modificar los datos del ítem de facturación.  En función del estado en el que se encuentre el ítem variarán ligeramente los datos disponibles. Ver [Editar ítem facturación](#CSPProyectosConfiguracióneconómica-editar_item_facturacion "#CSPProyectosConfiguracióneconómica-editar_item_facturacion").
* Eliminar ítem, ![](/attachments/597852265/597865999.png). Elimina el ítem de facturación. Esta acción no estará disponible cuando el ítem ya se encuentre "validado". Ver [Eliminar ítem de facturación](#CSPProyectosConfiguracióneconómica-eliminar_item_facturacion "#CSPProyectosConfiguracióneconómica-eliminar_item_facturacion").
* Notificar ítem a IP, ![](/attachments/597852265/597858145.png). Se utilizará esta opción para notificar a la persona responsable del proyecto/contrato (IP o responsable económico) que debe realizar la validación del ítem de facturación. Ver el [ciclo de gestión de un ítem de facturación](#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion "#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion").
* Ver histórico de validación IP, ![](/attachments/597852265/597858140.png). Se mostrará el histórico de estados del proceso de validación. Consultar detalle en [Ver histórico de validación IP](#CSPProyectosConfiguracióneconómica-historico_validacion_IP "#CSPProyectosConfiguracióneconómica-historico_validacion_IP").

  


#### 8\.2 Ciclo de gestión de un ítem facturación

El SGI implementa un ciclo de validación sobre los items del calendario de facturación que implica a la persona responsable del proyecto/contrato (IP o responsable económico). Una vez creado el ítem la unidad de gestión podrá solicitar (haciendo uso de la acción "Notificar IP", ![](/attachments/597852265/597858145.png), del calendario de facturación) la validación correspondiente a la persona que actúe como IP o responsable económico. A través de esta validación, la persona responsable del proyecto/contrato, verifica que se puede proceder con el proceso de emisión de la factura. Este proceso de emisión de la factura será ajeno al SGI, realizándose en el SGE.

Cuando se crea un ítem de facturación, éste se toma el valor  "**pendiente de validación**". El ítem permanecerá en este estado, hasta que la unidad de gestión pulse la acción "Notificar IP", ![](/attachments/597852265/597858145.png). En este momento el ítem pasará a tomar el estado "**notificado**". Cuando la persona que actúa como responsable del proyecto/contrato, a través de su acceso al SGI (ver [Perfil investigación \- CSP \- 4 Proyectos \- Detalle de un proyecto](https://confluence.um.es/confluence/display/HERCULES/CSP#CSP-4.Proyectos "https://confluence.um.es/confluence/display/HERCULES/CSP#CSP-4.Proyectos")), revisa el ítem de facturación, éste pasará a tomar el estado "**validado**" o "**rechazado**".

El estado "validado" será indicativo de que se puede proceder a la emisión de la factura. En caso de que la variable de configuración "Integración calendario facturación (proyectos \- configuración económica)" tenga valor true se notificará la factura prevista al SGE. En caso contrario el personal de gestión deberá iniciar manualmente en el SGE la creación de la factura. La vinculación entre el ítem de facturación del SGI y la factura creada en el SGE se establecerá a través del número de previsión. Cuando el personal de gestión se disponga a crear la factura en el SGE  podrá vincularla con el número de previsión del calendario de facturación introducido en el SGI. El SGI cuenta con un servicio de integración que puede ser utilizado por el SGE para que el personal de gestión tenga disponibles los números de previsión creados en el SGI en la pantalla de creación de la factura del SGE. Establecido este vínculo, el SGI podrá mostrar el número de la factura emitida como una información adicional en el listado de ítems de facturación. 

  


Una vez que se ha solicitado la validación del ítem, a través de la acción "Notificar IP, ![](/attachments/597852265/597858145.png), el ítem pasará a estar en estado "notificado" reflejándose con el icono ![](/attachments/597852265/597858224.png)en el calendario de facturación. La persona responsable del proyecto/contrato recibirá el  [comunicado](#CSPProyectosConfiguracióneconómica-comunicados_item_facturacion "#CSPProyectosConfiguracióneconómica-comunicados_item_facturacion") correspondiente.

![](/attachments/597852265/597858213.png)

  


El ítem permanecerá con este estado "notificado" ![](/attachments/597852265/597858224.png)hasta que la persona responsable del proyecto/contrato (IP o responsable económico) valide o rechace el ítem. Si el ítem es rechazado, el personal de gestión recibirá el  [comunicado](#CSPProyectosConfiguracióneconómica-comunicados_item_facturacion "#CSPProyectosConfiguracióneconómica-comunicados_item_facturacion") correspondiente y el ítem volverá a tener activada la acción "notificar IP" ![](/attachments/597852265/597858145.png)

![](/attachments/597852265/597858209.png)

  


El personal de gestión deberá volver a notificar la validación, cuando proceda, volviendo a pasar el ítem a estado "notificado IP":

![](/attachments/597852265/597858210.png)

  


El ítem permanecerá con este estado "notificado" ![](/attachments/597852265/597858224.png)hasta que la persona responsable del proyecto/contrato (IP o responsable económico) valide o rechace el ítem. Si el ítem es validado, el personal de gestión recibirá el  [comunicado](#CSPProyectosConfiguracióneconómica-comunicados_item_facturacion "#CSPProyectosConfiguracióneconómica-comunicados_item_facturacion") correspondiente y el ítem no tendrá disponible ninguna acción de notificación. Se mostrará el campo "fecha de conformidad" informado. La fecha se corresponde con el momento en que la persona responsable del proyecto/contrato realiza la validación a través de su acceso al SGI.

![](/attachments/597852265/597858207.png)

  


Aunque la validación del ítem de facturación deba ser realizada, en primera instancia, por la persona responsable del proyecto/contrato (IP o responsable económico) a través de su acceso al SGI (ver [Perfil investigación \- CSP \- 4 Proyectos \- Detalle de un proyecto](https://confluence.um.es/confluence/display/HERCULES/CSP#CSP-4.Proyectos "https://confluence.um.es/confluence/display/HERCULES/CSP#CSP-4.Proyectos")), el personal de la unidad de gestión también podrá realizar esta validación. 

Una vez que el ítem está notificado, ![](/attachments/597852265/597858224.png), el personal de gestión podrá pulsar sobre pulsar sobre este icono de acción.

![](/attachments/597852265/597858204.png)

  


Al pulsar sobre la acción ![](/attachments/597852265/597858224.png)se mostrará el detalle del ítem, sobre el que es necesario seleccionar un valor en el campo "Nuevo estado de validación IP".

![](/attachments/597852265/885620760.png)

  


El campo "Nuevo estado de validación IP" es un desplegable con los dos valores posibles "rechazada" o "validada".

![](/attachments/597852265/885620761.png)

  


Si se selecciona el estado "rechazada" se mostrará el campo "motivo de rechazo" que debe ser cumplimentado de forma obligatoria.

![](/attachments/597852265/885620762.png)

  


Tras pulsar el botón "Aceptar" el ítem quedará en estado "rechazado".

Si se selecciona el estado "validada" y la variable de configuración "Integración calendario facturación (proyectos \- configuración económica)" esta a true se mostrará el campo "identificador SGE" para seleccionar el proyecto SGE al que se van a notificar las facturas previstas.

![](/attachments/597852265/994705450.png)

Si se selecciona el estado "validada" y la variable de configuración "Integración calendario facturación (proyectos \- configuración económica)" esta a false no se mostrará ningún campo adicional.

![](/attachments/597852265/885620763.png)

  


Tras pulsar el botón "Aceptar" el ítem quedará en estado "validado", tomando la fecha actual como la "fecha de conformidad" del mismo.

  


De acuerdo al comportamiento general del SGI, cuando se modifica el estado de un "ítem" debe pulsarse el botón "Guardar proyecto" para que el cambio sea guardado definitivamente.

  


#### 8\.3 Comunicados asociados al ítem de facturación

El ciclo de validación de un ítem de facturación conlleva la generación automática de una serie de comunicados que se remiten vía email.

* Comunicado a la persona responsable del proyecto/contrato (IP o responsable económico). Se remitirá un aviso  por email cuando la unidad de gestión notifica un ítem de facturación. El contenido de este email será diferente en función del número de previsión que le corresponda al ítem y del tipo de facturación que tenga.
* Comunicado al personal de gestión. Se remitirá un aviso por email cuando la persona responsable del proyecto/contrato (IP/responsable económico) valida o rechaza el ítem de facturación. En el contenido del email se informará del motivo de rechazo, en caso que el ítem haya sido rechazado. Se deberán configurar, en tiempo de implantación del SGI, las direcciones de email a la que debe ser remitidos este comunicado.

  


#### 8\.4 Editar ítem de facturación

La acción ![](/attachments/597852265/597865998.png)permitirá modificar los datos de un ítem de facturación. Los datos disponibles variarán en función del estado en el que encuentre el ítem.

Si el ítem está en el estado inicial, "Pendiente" o en los estados "Notificado" o "Rechazado" se podrá modificar cualquier campo de los introducidos en la creación inicial:

![](/attachments/597852265/885620764.png)

  


Si el ítem está en estado "validado" y la variable de configuración "Integración calendario facturación (proyectos \- configuración económica)"  tiene valor "false", se podrá modificar cualquier campo de los introducidos en la creación inicial y  la fecha de conformidad. Es este caso no se realizará ningún aviso al SGE de los cambios introducidos en el SGI.

![](/attachments/597852265/885620765.png)

  


Si el ítem está en estado "validado" y la variable de configuración "Integración calendario facturación (proyectos \- configuración económica)"  tiene valor "true" y el ítem no esta todavía asociado a una factura emitida en el SGE, se podrá modificar cualquier campo de los introducidos en la creación inicial y los campos fecha de conformidad e identificación SGE si procede. En estos casos la modificación de los datos en el SGI se le notificará al SGE para que los tenga en cuenta.

![](/attachments/597852265/994705451.png)

Si el ítem está en estado "validado" y la variable de configuración "Integración calendario facturación (proyectos \- configuración económica)"  tiene valor "true" y el ítem ya esta asociado a una factura emitida en el SGE, no se permitirá ningún cambio en el SGI y por lo tanto no habrá que notificar nada al SGE.

![](/attachments/597852265/994705453.png)

  


#### 8\.5 Eliminar ítem de facturación

La acción ![](/attachments/597852265/597865999.png)del listado del calendario de facturación permite eliminar un ítem de facturación. Esta acción dejará de estar disponible cuando el ítem se encuentre en estado validado (Ver el [ciclo de validación](#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion "#CSPProyectosConfiguracióneconómica-ciclo_validacion_item_facturacion")).

Tras pulsar la acción de eliminar se mostrará un mensaje de confirmación

![](/attachments/597852265/597858181.png)

  


Si se pulsa el botón "Aceptar" el ítem de facturación será eliminado. La eliminación del ítem se realizará solamente en el SGI. Si el ítem ya estuviera asociado a una factura emitida en el SGE, ésta permanecerá inalterada y no se realizará ningún aviso al SGE de la eliminación del ítem en el SGI.

Si se pulsa el botón  "Cancelar" se cerrará el mensaje  y el ítem no será eliminado.

  


#### 8\.6 Ver histórico de validación IP

Al pulsar la acción ![](/attachments/597852265/597858140.png)en un elemento del calendario de facturación, se mostrará el histórico de estados por los que ha pasado el ítem en su ciclo de validación. La información mostrada no distinguirá si el ítem ha sido validado por la persona responsable del proyecto/contrato (IP o responsable económico) o directamente por el personal de gestión. Se mostrará el estado junto con la fecha en la que ser realizó el cambio de estado. Cuando el estado es del ítem es "rechazado" se mostrará el motivo de rechazo indicado.

![](/attachments/597852265/597858186.png)

  


### 9\. Calendario de justificación

En este apartado se podrá definir el calendario o periodos de justificación económica del proyecto. Se recuerda que el SGI distingue entre periodos de seguimiento científico (Ver [CSP\-Proyectos \- 4\.13 Seguimiento científico](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.13Seguimientocient%C3%ADfico "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.13Seguimientocient%C3%ADfico")) y periodos de justificación económica, realizándose la gestión desde dos apartados diferentes.

La visión inicial del apartado calendario de justificación será diferente dependiendo de si el proyecto tiene o no una convocatoria del SGI vinculada.

#### 9\.1 Proyecto no asociado a una convocatoria registrada en el SGI

Si el proyecto/contrato se crea sin vincularlo a ninguna convocatoria registrada en el SGI, es decir, el campo "convocatoria" de la "ficha general" no está informado, el apartado "Calendario de justificación" estará inicialmente vacío:

![](/attachments/597852265/1015087156.png)

Desde el listado se podrá añadir un nuevo periodo de justificación, modificar o borrar uno de los existentes únicamente si el proyecto se encuentra en estado "Concedido".

Para añadir un nuevo periodo de justificación el proyecto debe de estar en estado "Concedido" y se pulsará el botón "Añadir periodo justificación". Se mostrará una ventana emergente en la que deberán introducir los datos del periodo:

![](/attachments/597852265/597858111.png)

  


Los campos disponibles para introducir el detalle de un nuevo periodo de justificación son:

* Tipo. Es un campo obligatorio. El tipo de periodo debe seleccionarse del listado proporcionado. El tipo de periodo de justificación responde a una clasificación en base a la periodicidad del mismo, podrá tomar un valor entre:
	+ Periódico
	+ Intermedio
	+ Final
* Fecha inicio periodo. Es un campo obligatorio. Se debe de indicar la fecha de inicio del periodo de ejecución del proyecto que se debe de justificar. Se puede indicar de forma manual o haciendo uso del control calendario disponible.
* Fecha fin periodo. Es un campo obligatorio. Se debe de indicar la fecha de fin del periodo de ejecución del proyecto que se debe de justificar. Se puede indicar de forma manual o haciendo uso del control calendario disponible. Se comprobará que la fecha de fin sea mayor que la fecha de inicio.
* Fecha inicio presentación. Es un campo opcional. Es la fecha de inicio del periodo disponible para presentar la documentación de justificación asociada al periodo de ejecución correspondiente (fechas de inicio y fin del periodo).
* Fecha fin presentación. Es un campo opcional. Es la fecha de fin para presentar la documentación de justificación asociada al periodo de ejecución correspondiente (fechas de inicio y fin del periodo). Se comprobará que la fecha de fin del periodo de presentación sea mayor que su fecha de inicio.
* Observaciones. Es un campo opcional para dejar recogido cualquier comentario u observación sobre el periodo de justificación.

Cumplimentados los campos obligatorios se activará el botón "Añadir"

![](/attachments/597852265/597858236.png)

  


Tras pulsar el botón "Añadir", el nuevo periodo de justificación se mostrará en el listado del calendario de justificación.

![](/attachments/597852265/597858107.png)

Como siempre, se deberá pulsar el botón "Guardar proyecto" para que el nuevo periodo sea almacenado definitivamente en los datos del proyecto.

  


Se podrán añadir tantos periodos de justificación como sea necesario. Al añadir nuevos periodos se realizarán las siguientes comprobaciones:

* Solo se permitirá la creación de un periodo de tipo "final".

![](/attachments/597852265/597858105.png)

* Las fechas de inicio y fin de los diferentes periodos no se podrán solapar.

![](/attachments/597852265/597858106.png)

  


* El periodo de tipo "final" deberá ser el último considerando las fechas de inicio y fin de todos los periodos introducidos hasta el momento

![](/attachments/597852265/597858124.png)

  


  


En el listado de periodos se muestra el campo "Número de periodo". Es un campo calculado a partir de la ordenación de los periodos por su fecha de inicio.

![](/attachments/597852265/597858125.png)

  


Desde el listado de periodos de calendario de justificación se podrá modificar los datos de un periodo, acción ![](/attachments/597852265/597865998.png) ,  y eliminar un periodo, acción ![](/attachments/597852265/597865999.png) .

* A través de la acción editar se permitirá modificar cualquier campo del periodo de justificación a excepción del "número de periodo" que es un campo de orden calculado.
* Antes de eliminar un periodo se mostrará un mensaje de confirmación

![](/attachments/597852265/597858118.png)

  


Si se pulsa el botón "Aceptar" el periodo será eliminado. Será necesario pulsar posteriormente "Guardar proyecto". Si se pulsa el botón "Cancelar" se anulará la petición de eliminación, manteniéndose el periodo.

  


#### 9\.2 Proyecto asociado a una convocatoria registrada en el SGI

Si el proyecto está vinculado a una convocatoria, bien porque al crear el proyecto se seleccione una convocatoria registrada en el SGI, bien porque el proyecto se haya creado a partir de una solicitud concedida (y ésta a su vez se haya creado sobre una convocatoria registrada en el SGI), el apartado "Calendario de justificación" del proyecto tomará la configuración o valores del apartado de "Calendario de justificación" de la convocatoria (Ver [CSP\-Convocatorias \- 3\.6 Periodos de justificación](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-3.6Periodosdejustificaci%C3%B3n "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-convocatorias.md#CSPConvocatorias-3.6Periodosdejustificaci%C3%B3n")), transformando los meses de inicio y fin de cada periodo a fechas concretas, de acuerdo a la fecha de inicio del proyecto cuando el personal de la unidad de gestión cambie el estado del proyecto a "Concedido".  


![](/attachments/597852265/597865900.png)

  


La imagen anterior muestra un proyecto asociado a una convocatoria. El apartado "Periodos de justificación" de la convocatoria ejemplo tiene la siguiente configuración:

![](/attachments/597852265/597858116.png)

  


Al cambiar el estado del proyecto a "Concedido" de un proyecto derivado de una solicitud concedida sobre esa convocatoria, el apartado "Calendario de justificación" del proyecto incorporará de manera automática los periodos de justificación de la convocatoria.

![](/attachments/597852265/597858464.png)

  


Las fechas de inicio y fin de cada periodo se calculan a partir de la fecha de inicio del proyecto ([CSP\-Proyectos \- 3 Añadir nuevo proyecto \- Ficha general](https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-pro_aniadir3.A%C3%B1adirnuevoproyecto "https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-pro_aniadir3.A%C3%B1adirnuevoproyecto")) considerando los meses de inicio y fin establecidos en la convocatoria para cada periodo.

Una vez modificado el estado de proyecto a "Concedido" de un proyecto asociado a una convocatoria podrán darse dos escenarios:

* Que se modifique el apartado "Periodos de justificación" en la convocatoria.
* Que se modifique el apartado "Calendario de justificación" del proyecto.

Ante cualquiera de los dos escenarios, el SGI no realizará de forma automática ninguna acción sino que mostrará avisos para que sea el personal de gestión quien adapte, si fuera necesario, la configuración de los periodos de justificación del proyecto.

##### 9\.2\.1 Añadir periodo de justificación en la convocatoria

Si una vez modificado el estado de proyecto a "Concedido" se añade un nuevo periodo de justificación a la convocatoria, se mostrará un aviso informativo en el proyecto para que el personal de gestión decida si se añade el periodo también al proyecto. Siguiendo con el ejemplo, se añade a la convocatoria un periodo de justificación, modificando previamente el tipo del que previamente era el periodo "final", que pasa a ser periódico.

  


![](/attachments/597852265/597858463.png)

  


Tras haber añadido un nuevo periodo a la convocatoria, éste se mostrará en el calendario de justificación del proyecto, señalándolo con un icono de aviso ![](/attachments/597852265/597865890.png).

![](/attachments/597852265/597858460.png)

  


Al pasar el ratón por el icono de aviso se mostrará un mensaje informativo:

![](/attachments/597852265/597865829.png)

  


Los periodos marcados con el aviso, ![](/attachments/597852265/597865890.png), no están incluidos en el proyecto. Su inclusión en el proyecto debe ser forzada. Al pulsar el botón Editar, ![](/attachments/597852265/597865998.png), se mostrará la información del periodo, dando opción a incluir el periodo en el proyecto.

![](/attachments/597852265/597858453.png)

  


En la parte derecha se muestra la configuración del nuevo periodo introducido en la convocatoria, sobre la que se calculan las fechas de inicio y fin del periodo que corresponderían en el proyecto. Si se desea incluir el periodo en el proyecto se debe pulsar el botón "Aplicar al proyecto". Se copiarán los datos iniciales de la convocatoria.

![](/attachments/597852265/597858450.png)

  


Se podrían aplicar cambios a los datos copiados o añadir más información no cumplimentada en la convocatoria (por ejemplo la fecha de presentación u observaciones). Si se pulsa el botón "Añadir" sin introducir ningún cambio sobre los valores copiados de la convocatoria, el periodo se mostrará en el listado del calendario de justificación sin ningún aviso

  


![](/attachments/597852265/597858447.png)

  


Como se decía anteriormente, tras pulsar el botón "Aplicar al proyecto" , se pueden introducen cambios en la propia ventana de copia al proyecto, por ejemplo añadir las fechas de presentación del periodo.

![](/attachments/597852265/597858444.png)

  


Tras pulsar el botón "Añadir" el periodo se mostrará en el listado del calendario de facturación del proyecto, con el aviso ![](/attachments/597852265/597865875.png) correspondiente a la advertencia por [modificación del periodo de justificación en el proyecto](#CSPProyectosConfiguracióneconómica-periodo_justificacion_cambios_en_proyecto "#CSPProyectosConfiguracióneconómica-periodo_justificacion_cambios_en_proyecto").

  


##### 9\.2\.2 Modificar periodo de justificación en el proyecto

Los proyectos asociados a convocatorias del SGI parten de los datos de los periodos de justificación configurados en la misma. No obstante podrán ser modificados de forma independiente en el proyecto (a través del botón editar asociado a cada periodo de seguimiento científico).

![](/attachments/597852265/597858515.png)

  


Al editar un periodo en el proyecto procedente de la convocatoria, se mostrarán, en la parte derecha, los datos del periodo de acuerdo a la convocatoria y en la parte izquierda los datos que toma el periodo de forma particular en el proyecto:

![](/attachments/597852265/597858516.png)

  


Se podrá modificar cualquier campo del periodo en el proyecto (a excepción del número de periodo, que es un campo de orden calculado).  En el ejemplo anterior, se introducen los valores para los campos fecha de inicio y fin de presentación de la justificación, información que no estaba cumplimentada a nivel de convocatoria. Tras pulsar el botón "Aceptar", el periodo se mostrará en el calendario de justificación del proyecto identificado con un icono de aviso ![](/attachments/597852265/597865875.png)

  


![](/attachments/597852265/597858511.png)

  


Al pasar el ratón por encima del icono de aviso se mostrará un mensaje informativo:

![](/attachments/597852265/597865872.png)

  


La configuración del periodo, de acuerdo a los datos de la convocatoria, podrá ser recuperada a través del botón editar asociado al periodo.

![](/attachments/597852265/597858510.png)

  


Con el botón "Aplicar al proyecto" se podrán recuperar los datos de la convocatoria, con los que se "machacarán" los cambios que se hubieran realizado sobre cualquier campo del periodo en el proyecto:

![](/attachments/597852265/597858505.png)

  


Tras pulsar el botón "Aceptar" se recuperarán los datos de la convocatoria, pasando a mostrarse el periodo en el calendario de justificación del proyecto sin el icono de aviso, puesto que sus datos se corresponden con los de la convocatoria.

![](/attachments/597852265/597858503.png)

  


No existe ninguna particularidad en la gestión del proyecto si se decide que el periodo de justificación mantenga sus propios datos en el proyecto frente a la convocatoria, salvo la particularidad de que el periodo se distinguirá siempre con el aviso ![](/attachments/597852265/597865875.png)para recordar que difiere de la convocatoria.

  


##### 9\.2\.3 Modificar periodo de justificación en la convocatoria

Los periodos de justificación podrán ser modificados a nivel de convocatoria una vez que ya existan proyectos asociados a la misma y, por tanto, sobre los que se hubiera volcado la configuración de periodos de justificación que tuviera la convocatoria en un primer momento. Cuando esto sucede, la modificación realizada en el periodo de la convocatoria no se traslada de manera automática a los proyectos (para evitar machacar algún cambio que ya se hubiera podido realizar en los periodos de justificación del proyecto a nivel particular). En lugar de esto, se mostrará un icono de aviso ![](/attachments/597852265/597865875.png)en el listado del calendario de justificación del proyecto, resaltando que sus datos difieren respecto a los de la convocatoria de procedencia.

  


Siguiendo con el ejemplo incluido en el apartado [Añadir periodo de justificación en la convocatoria](#CSPProyectosConfiguracióneconómica-periodo_justificacion_aniadir_en_convocatoria "#CSPProyectosConfiguracióneconómica-periodo_justificacion_aniadir_en_convocatoria"), en el que se añadía un nuevo periodo en la convocatoria y se modificaba el tipo de uno de los existentes:

![](/attachments/597852265/597858463.png)

  


Se mostrarán dos avisos en el proyecto, el que refleja la existencia de un nuevo periodo en la convocatoria, ![](/attachments/597852265/597865890.png), detallado en el apartado [Añadir periodo de justificación en la convocatoria](#CSPProyectosConfiguracióneconómica-periodo_justificacion_aniadir_en_convocatoria "#CSPProyectosConfiguracióneconómica-periodo_justificacion_aniadir_en_convocatoria") y el aviso ![](/attachments/597852265/597865875.png)que identifica que el periodo presenta cambios respecto a la configuración de la convocatoria.

![](/attachments/597852265/597858495.png)

  


Al pasar el ratón por encima del icono de aviso ![](/attachments/597852265/597865875.png)se mostrará un mensaje informativo

![](/attachments/597852265/597858491.png)

  


Al pulsar el botón Editar del periodo se podrán ver los cambios introducidos en la convocatoria respecto a la configuración inicial del proyecto. En la parte derecha se mostrarán los nuevos datos del periodo en la convocatoria y en la izquierda los datos del periodo en el proyecto.

![](/attachments/597852265/597858493.png)

  


Si se desea aplicar los cambios de la convocatoria al proyecto se debe pulsar el botón "Aplicar al proyecto". Los datos del periodo en el proyecto se machacarán con los datos del periodo en la convocatoria.

![](/attachments/597852265/597858487.png)

  


Tras pulsar el botón "Aceptar", el periodo pasará a tomar los mismos datos que en la convocatoria dejando pues de visualizarse con el icono de aviso ![](/attachments/597852265/597865875.png)

![](/attachments/597852265/597858483.png)

  


##### 9\.2\.4 Añadir periodo de justificación  en el proyecto

Aunque los proyectos vinculados a una convocatoria registrada en el SGI toman inicialmente la configuración de los periodos de justificación de la convocatoria se podrán aplicar sobre ellos las particularizaciones necesarias, ya sea introduciendo modificaciones sobre los periodos ya sea añadiendo nuevos periodos en el proyecto.

Si se parte de un proyecto con los periodos según la configuración de la convocatoria, procediendo al desdoblamiento de uno de ellos en dos periodos:

![](/attachments/597852265/597858434.png)

  


Se mostrarán dos avisos en el calendario de justificación del proyecto: el aviso de [modificación del periodo en el proyecto](#CSPProyectosConfiguracióneconómica-periodo_justificacion_cambios_en_proyecto "#CSPProyectosConfiguracióneconómica-periodo_justificacion_cambios_en_proyecto") del periodo 3 y el aviso de periodo añadido al proyecto del periodo 4\.

![](/attachments/597852265/597858429.png)

  


  


Cuando se añade un nuevo periodo de justificación en el proyecto por encima de los trasladados a partir de la convocatoria, éste se representará con el icono de aviso ![](/attachments/597852265/597865875.png)en el calendario de justificación del proyecto.

![](/attachments/597852265/597858440.png)

  


Al pasar el ratón por encima del icono de aviso se mostrará un mensaje informativo, para recordar que se trata de un periodo añadido en el proyecto que no figura en la configuración de la convocatoria.

![](/attachments/597852265/597858436.png)

  


Al tratarse de un periodo propio del proyecto que no figura en la convocatoria, al pulsar el botón editar del periodo, solamente se mostrará la información propia del proyecto:

![](/attachments/597852265/597858438.png)

  


El aviso ![](/attachments/597852265/597865875.png)se mostrará siempre como recordatorio de que el periodo no figura en la convocatoria sin que esto suponga ninguna problemática o variación en la gestión del proyecto en el SGI.

  


##### 9\.2\.5 Eliminar periodo de justificación en el proyecto

Como se mencionaba en apartados previos, sobre los periodos procedentes de la convocatoria se podrán aplicar particularizaciones en el el proyecto. Un periodo de justificación trasladado desde la convocatoria podrá ser eliminado en el proyecto.

  


![](/attachments/597852265/597858426.png)

  


Si se elimina un periodo procedente de la convocatoria, el periodo dejará de estar incluido en el proyecto pero se listará en el calendario de justificación con el icono de aviso ![](/attachments/597852265/597865890.png)

  


![](/attachments/597852265/597858425.png)

  


Al pasar el ratón por encima del icono de aviso se mostrará un mensaje informativo:

![](/attachments/597852265/597858421.png)

  


El proyecto podrá permanecer sin el periodo o bien podrá recuperarse a partir de los datos de la convocatoria en caso que sea necesario. En este caso, a efectos prácticos se trata de un periodo incluido en el proyecto y no en la convocatoria, por lo que el tratamiento sigue lo descrito en el apartado [Añadir periodo de justificación en la convocatoria](#CSPProyectosConfiguracióneconómica-periodo_justificacion_aniadir_en_convocatoria "#CSPProyectosConfiguracióneconómica-periodo_justificacion_aniadir_en_convocatoria").

  


##### 9\.2\.6 Eliminar periodo de justificación en la convocatoria

Se podría dar el caso de que se elimine un periodo de justificación en la convocatoria una vez que ya existan proyectos en estado "Concedido" sobre ella. Esto no implicará que el periodo se elimine de manera automática en los proyectos, puesto que podría darse el caso de que ya se hubiesen realizado particularizaciones de ese periodo concreto en los proyectos. Cuando un periodo de justificación se elimina en la convocatoria origen de un proyecto se identificará en el listado del calendario de justificación del proyecto con el icono de aviso ![](/attachments/597852265/597865875.png)

  


![](/attachments/597852265/597858405.png)

  


Al pasar el ratón por el icono de aviso se mostrará un mensaje informativo recordando que el periodo no está incluido en la convocatoria.

![](/attachments/597852265/597858436.png)

  


El proyecto se podrá seguir gestionando incluyendo el periodo de justificación, si bien el icono de aviso se seguirá mostrando para reflejar la circunstancia de que el periodo no está incluido en la convocatoria.

Si el periodo no aplicase en el proyecto deberá ser eliminado, haciendo uso del botón ![](/attachments/597852265/597865999.png).

  


#### 9\.3 Comunicados asociados al calendario de justificación

La gestión del calendario de justificación lleva implícita la notificación de comunicados. Se remitirá un comunicado el día 1 de cada mes. En este comunicado se informará de todos los proyectos que tengan periodos de justificación cuya presentación deba realizarse en ese mes. Es decir, se incluirán todos los proyectos que tengan periodos de justificación cuya "fecha de inicio de presentación" esté dentro del mes con el que corresponde el comunicado.

Como  todos los comunicados del SGI la notificación se realizará a través de email, debiendo haber sido configuradas en tiempo de implantación del SGI las direcciones de email destinatarias. Esta configuración podrá establecerse por unidad de gestión.

Pueden consultarse en [CSP\-Proyectos \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos-Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos-Comunicados") todos los comunicados relacionados con la gestión de proyectos.

  


  





