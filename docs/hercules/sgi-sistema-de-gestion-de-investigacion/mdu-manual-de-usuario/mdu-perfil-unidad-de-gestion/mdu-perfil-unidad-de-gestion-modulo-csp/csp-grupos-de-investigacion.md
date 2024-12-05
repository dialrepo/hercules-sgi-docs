# Hércules : CSP\-Grupos de investigación



### 1\. Introducción

Los Grupos de investigación son agrupaciones estables de personal investigador que coopera en una o varias líneas de investigación. Forman equipos de trabajo específicos para realizar proyectos de investigación que pueden durar varios años.

La gestión de Grupos de Investigación es una funcionalidad integrada en el módulo de CSP del SGI Hércules que incluye el ciclo de vida completo, desde la solicitud de constitución mediante la correspondiente convocatoria hasta su mantenimiento histórico de sus miembros y de sus líneas de investigación.

El/la investigador/a principal del grupo de investigación realizará la solicitud de constitución  a través de la funcionalidad de "Solicitudes" del módulo de CSP. (Ver [CSP\-Solicitudes](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-solicitudes.md "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-solicitudes.md")). Deberá de adjuntar en la pantalla de "Documentos" el formulario de constitución del grupo con toda la información requerida.

La solicitud al igual que cualquier otra solicitud seguirá su curso y el personal de gestión irá cambiando al estado o estados correspondientes. Una vez que la solicitud este en estado "Concedida"  el personal de gestión tendrá la posibilidad de crear el grupo desde la propia pantalla de solicitud.  La opción de creación del grupo estará disponible desde la solicitud concedida (listado disponible en opción de menú Solicitudes) o desde la opción de menú de "Grupos de investigación".

El personal de gestión deberá introducir los datos del grupo de investigación en el SGI a partir de la información aportada por el investigador/a en el documento de formulario de constitución del grupo.

Una vez creado el grupo de investigación el/la investigador/a principal  o la persona autorizada podrá solicitar una modificación del mismo bien porque se ha añadido un nuevo miembro al grupo o una nueva línea de investigación o cualquier otra modificación que sea necesaria registrar en el SGI. Para ello deberá crear una solicitud de modificación de grupo a través de la funcionalidad de "Solicitudes" del módulo de CSP. (Ver [CSP\-Solicitudes](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-solicitudes.md "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-solicitudes.md")).

La solicitud de modificación seguirá su curso al igual que cualquier otra solicitud y el personal de gestión irá cambiando al estado o estados correspondientes. Una vez que la solicitud esté en estado "Concedida", el personal de gestión dispondrá de la opción que permita acceder a la pantalla de edición del grupo desde el listado de solicitudes. El personal de gestión tendrá acceso a la modificación de los datos del grupo desde el listado de solicitudes  (siempre que esté en estado concedida) o desde la opción de menú de "Grupos de investigación". Solamente el personal de gestión podrá introducir cambios en los datos del grupo de investigación a partir de la información aportada por el investigador/a principal o la persona autorizada en el documento de formulario adjuntado en la solicitud de modificación de grupo.

#### 1\.1 Detalle de un grupo de investigación

La entidad "Grupo de investigación" es una entidad de las consideradas complejas. El detalle de un grupo de investigación se encuentra estructurado en varios apartados:

* Datos generales.
* Equipo investigación
* Responsable económico.
* Persona autorizada.
* Equipos instrumentales
* Enlaces
* Líneas de investigación.

Cada uno de estos apartados constituye una pestaña o menú. Se verán con detalle en el apartado de modificación de un grupo de investigación.

![](/attachments/597853547/597879744.png)

### 2\. Listado y búsqueda de grupos de investigación

El acceso a la gestión de grupos de investigación ocupa la quinta posición en el menú del módulo CSP.  Siguiendo la estructura general del SGI, tras pulsar en el menú "Grupos Investigación" se accede a la página inicial que contiene el listado de grupos de investigación y su buscador, que sigue las normas básicas descritas en [MDU\-Manual de usuario \- 3\.2 Buscadores y listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.2Buscadoresylistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.2Buscadoresylistados").

![](/attachments/597853547/597879738.png)

Por defecto, se listan todos los grupos de investigación disponibles sobre una tabla de resultados paginada, [MDU\-Manual de usuario \- 3\.5 Paginación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.5Paginaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.5Paginaci%C3%B3ndelistados").  La tabla muestra una serie de campos significativos:

* Nombre: Nombre del grupo de investigación.
* Investigador/a principal: Nombre y apellidos del investigador/a que tiene el "rol principal". En caso de existir mas de uno, se mostrarán separados por comas.
* Código: Código del grupo, formado por el código del departamento al que esta adscrito el investigador/a principal y un secuencial o bien el código que hay querido ponerle el personal de gestión.
* Fecha Inicio: Fecha de inicio del grupo de investigación.
* Fecha fin: Fecha de fin del grupo de investigación.
* Tipo grupo: Indica el grado de madurez del grupo de investigación.
* Activo: Campo que indica si el grupo de investigación ha sido desactivado o no.
* Acciones: Conjunto de acciones que están disponibles sobre el grupo de investigación.

El apartado de grupos de investigación incluye dos buscadores:

* Buscador simple
* Buscador ampliado

Por defecto, se muestra visible el buscador simple. 

A través del botón "Limpiar" se eliminará cualquier criterio de búsqueda que hubiese sido introducido en el buscador activo en cada momento.

#### 2\.1 Buscador simple

Es el buscador mostrado por defecto. Dispone de cuatro campos de búsqueda:

* Nombre:  Si se introduce una cadena en este filtro, se mostrarán los grupos de investigación que contengan la cadena introducida en cualquier parte del campo "nombre".
* Código. Si se introduce una cadena en este filtro, se mostrarán los grupos de investigación que contengan la cadena introducida en cualquier parte del campo "código".
* Miembro del equipo: Este campo permite especificar una persona. Se realizará la búsqueda de los grupos de investigación que contengan a la persona indicada como miembro del equipo de investigación. Para indicar la persona se utilizará el buscador común de personas [MDU\-Manual de usuario \- 8\.1 Personas](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1Personas "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1Personas")
* Código identificación SGE: Si se introduce una cadena en este filtro, se mostrarán los grupos de investigación que contengan la cadena introducida en cualquier parte del campo "código identificación SGE". Este campo sólo se mostrará si la variable de configuración de CSP "[Ejecución económica de Grupos de investigación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")" tiene el valor "Sí".

Una vez introducidos los filtros de búsqueda se debe pulsar el botón "Buscar". Los resultados coincidentes se mostrarán en el listado de resultados. Todos los filtros de búsqueda actuarán como una conjunción "y", es decir, los grupos de investigación que se muestren en el listado de resultados deberán cumplir todos los filtros especificados.

Se puede utilizar el botón "Limpiar" para vaciar cualquier valor introducido en cualquiera de los campos. Además de vaciar los campos de búsqueda el botón "Limpiar" vuelve a realizar la búsqueda, mostrando el listado completo de grupos de investigación.

Si se pulsa el botón "Buscador ampliado" se cambiará a la búsqueda avanzada.

#### 2\.2 Buscador ampliado

Al pulsar el botón "Buscador ampliado" se mostrarán todos los filtros de este buscador. El aspecto de la ventana de grupos de investigación pasa a ser:

![](/attachments/597853547/597879732.png)

El buscador ampliado contiene los siguientes campos:

* Nombre:  Si se introduce una cadena en este filtro, se mostrarán los grupos de investigación que contengan la cadena introducida en cualquier parte del campo "nombre".
* Código. Si se introduce una cadena en este filtro, se mostrarán los grupos de investigación que contengan la cadena introducida en cualquier parte del campo "código".
* Miembro del equipo: Este campo permite especificar una persona. Se realizará la búsqueda de los grupos de investigación que contengan a la persona indicada como miembro del equipo de investigación. Para indicar la persona se utilizará el buscador común de personas [MDU\-Manual de usuario \- 8\.1 Personas](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1Personas "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1Personas")
* Código identificación SGE: Si se introduce una cadena en este filtro, se mostrarán los grupos de investigación que contengan la cadena introducida en cualquier parte del campo "código identificación SGE". Este campo sólo se mostrará si la variable de configuración de CSP "[Ejecución económica de Grupos de investigación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")" tiene el valor "Sí".
* Fecha inicio desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los grupos de investigación cuya fecha de inicio esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.
* Activo: Es un desplegable con los valores "sí", "no", "todos". La entidad "grupo investigación" admite eliminación con recuperación ([MDU\-Manual de usuario \- 3\.10 Eliminar elemento](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-3.10Eliminarelemento "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-3.10Eliminarelemento")), con el campo "activo" se permite realizar búsquedas sobre los grupos de investigación que hubieran sido eliminados. Por defecto el filtro está precargado con el valor "sí", para que de partida solo se muestren los grupos de investigación activos. Para mostrar los grupos de investigación que hubieran sido eliminados se debe establecer el valor de este filtro a:
	+ "No": se muestran solo los grupos de investigación que hubieran sido desactivados (eliminados).
	+ "Todas": se muestran todos los grupos de investigación, tanto los activos como los desactivados (eliminados).
* Palabras clave: Este filtro actúa sobre las palabras clave del grupo de investigación. Se pueden incluir una o varias palabras. Este campo sigue el comportamiento general descrito en [MDU\-Manual de usuario \- 9 Palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-9.Palabrasclave "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-9.Palabrasclave")
* Líneas investigación: Con este filtro se limita la búsqueda de los grupos de investigación que trabajen en una determinada línea de investigación. La línea de investigación deberá seleccionarse a partir del desplegable disponible en este campo, que contendrá todas las líneas de investigación configuradas en el SGI. Para más información sobre la configuración de las líneas de investigación se puede consultar [CSP\-Configuración \- 13 Líneas de investigación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-13.L%C3%ADneasdeinvestigaci%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134296892#CSPConfiguraci%C3%B3n-13.L%C3%ADneasdeinvestigaci%C3%B3n").

Una vez introducidos los filtros de búsqueda se debe pulsar el botón "Buscar". Los resultados coincidentes se mostrarán en el listado de resultados. Todos los filtros de búsqueda actuarán como una conjunción "y", es decir, los grupos de investigación que se muestren en el listado de resultados deberán cumplir todos los filtros especificados.

Se puede utilizar el botón "Limpiar" para vaciar cualquier valor introducido en cualquiera de los campos. Además de vaciar los campos de búsqueda, el botón "Limpiar" vuelve a realizar la búsqueda mostrando el listado completo de grupos de investigación.

Si se pulsa el botón "Buscador simple" se cambiará a la versión básica del buscador.

#### 2\.3 Exportación de grupos de investigación

El listado de grupos de investigación obtenido del buscador puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados")

![](/attachments/597853547/597879827.png)

  


Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación propias de los grupos de investigación:

  


![](/attachments/597853547/841089190.png)

  


Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

El detalle de un grupo de investigación se encuentra agrupado en diferentes apartados. Todos los apartados son susceptibles de ser incluidos en la exportación, sin embargo, para dar más flexibilidad a la exportación se podrá indicar qué apartados se precisa que sean incluidos. Por defecto, estarán marcados todos los apartados, pudiendo desmarcarlos y pasar a marcar únicamente aquellos que se desea incluir:

* Se se pulsa sobre la casilla "todos" estando marcada, se desmarcarán todas las casillas, pudiendo pasar a seleccionar individualmente cada una de ellas.
* Si la casilla "todos" está marcada, se podrán desmarcar una a una las casillas de aquellos apartados que no se desea incluir en la exportación.

Una vez introducidos todos los criterios de la exportación se deberá pulsar el botón "Exportar", se generará el documento asociado que podrá ser nombrado y descargado a la unidad de disco deseada. 

  


### 3\. Añadir nuevo grupo de investigación

Desde el listado de grupos de investigación se dispondrá del botón "Añadir grupo de investigación".

![](/attachments/597853547/597879824.png)

  


Al pulsar este botón se mostrará la ventana de introducción de "Datos generales" de un grupo de investigación, que presenta el siguiente aspecto:

![](/attachments/597853547/597879825.png)

Para la creación de un nuevo grupo de investigación únicamente es necesario informar los datos del apartado de "Datos generales", el resto de apartados se podrán informar desde la edición o modificación del grupo (ver apartado del manual [Modificar un grupo de investigación](#CSPGruposdeinvestigación-4.Modificarungrupodeinvestigaci%C3%B3n "#CSPGruposdeinvestigación-4.Modificarungrupodeinvestigaci%C3%B3n")).

A continuación se describe cada uno de los campos solicitados en este formulario o pantalla:

* Nombre: Campo de texto para introducir el nombre por el que se conoce al grupo de investigación.  Es un campo obligatorio.
* Investigador/a principal**:** Campo para buscar a la persona que es el investigador/a principal del nuevo grupo de investigación que se quiere constituir. Para indicar la persona se utiliza el buscador común de personas [MDU\-Manual de usuario \- 8\.1 Personas](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1Personas "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1Personas"). Es un campo obligatorio.
* Departamento: Es un campo de información para el usuario. Se muestra el nombre del departamento al que esta adscrito la persona seleccionada en el campo "Investigador/a principal".
* Código: Código automático, que incluye el código del departamento al que esta adscrito el investigador/a principal y un secuencial por departamento. Este código es único por grupo de investigación y podrá ser utilizado posteriormente en listados con fines identificativos del grupo. Es un campo obligatorio y puede ser modificado por el personal de gestión en caso necesario, siempre y cuando siga siendo único, es decir, no pueden existir dos grupos de investigación activos con el mismo código.
* Código de identificación SGE: Campo de texto para introducir el código con el que se identifica el grupo de investigación en el SGE (Sistema de gestión económico). Para su introducción se hará uso del buscador común de proyectos económicos (Ver [MDU\-Manual de usuario \- 8\.3\.1 Buscar proyecto económico del SGE](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.3.1Buscarproyectoecon%C3%B3micodelSGE "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.3.1Buscarproyectoecon%C3%B3micodelSGE")). Es un campo opcional. Este campo sólo se mostrará si la variable de configuración de CSP "[Ejecución económica de Grupos de investigación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")" tiene el valor "Sí".
* Fecha inicio: Campo de tipo fecha para introducir la fecha de inicio del grupo de investigación. Se puede introducir la fecha de forma manual o con la ayuda del calendario. Es un campo obligatorio.
* Fecha fin: Campo de tipo fecha para introducir la fecha de fin del grupo de investigación. Se puede introducir la fecha de forma manual o con la ayuda del calendario. Es un campo opcional.
* Palabras clave: Campo de texto para ir introduciendo el listado de palabras clave. Una palabra clave es una cadena de texto, formada por una una o varias palabras. Una vez introducida una palabra clave se debe pulsar la tecla "enter" del teclado para añadirla a la lista de palabras clave. Se pueden añadir todas las palabras clave deseadas. (Ver funcionalidad de creación de palabras clave en [MDU\-Manual de usuario \- 9\.1\.1 Añadir nueva palabra clave](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-9.1.1A%C3%B1adirnuevapalabraclave "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-9.1.1A%C3%B1adirnuevapalabraclave"))
* Tipo grupo: Campo de tipo desplegable que indica el grado de madurez del grupo de investigación. Se guardará el histórico con la fechas en las que se realiza un cambio del campo. Es un campo opcional. Puede tomar los valores:
	+ Emergente,
	+ Consolidado
	+ Precompetitivo
	+ Grupo de alto rendimiento.
* Grupo especial de investigación: Campo de tipo desplegable que  indica si el grupo de investigación en un "Grupo especial de investigación" o no. Podrá tomar valor afirmativo o negativo, se tomará como valor por defecto el valor "No" por lo que estará inicializado a dicho valor. Si el campo es afirmativo no se tendrá en cuenta en la baremación de ese año. Es un campo opcional.

Una vez introducidos todos los campos obligatorios del formulario de "Datos generales" se activa el botón "Guardar" y se muestra el icono del signo de admiración en los "Datos generales"  y en el pie de página a lado del botón "Guardar".  Este icono indica que se han introducido cambios en el formulario (se han informado los campos) pero no se ha dado a "Guardar".

![](/attachments/597853547/597879852.png)

Si se pulsa el botón "Guardar" se crea el grupo de investigación con los datos generales del grupo.

Cuando se crea el grupo, si se selecciona que es un grupo especial de investigación se muestra el siguiente mensaje de validación:[Borde](https://confluence.um.es/confluence/pages/resumedraft.action?draftId=645857355&draftShareId=a412a4ca-3c3e-4bd1-a207-980685b605c7& "https://confluence.um.es/confluence/pages/resumedraft.action?draftId=645857355&draftShareId=a412a4ca-3c3e-4bd1-a207-980685b605c7&")

![](/attachments/597853547/1077968899.png)

En el caso de que no se haya seleccionado que es un grupo especial el mensaje de validación mostrado es:

![](/attachments/597853547/1077968898.png)

Una vez aceptado el mensaje de la condición o no de "grupo especial", se muestra el mensaje de que el grupo de investigación se ha creado correctamente igual que el de la siguiente imagen.

![](/attachments/597853547/597879857.png)  


Una vez creado el grupo te lleva a la edición o modificación del grupo donde se muestran el resto de apartados que pueden ser cumplimentados. Ver [Modificar un grupo de investigación](#CSPGruposdeinvestigación-4.Modificarungrupodeinvestigaci%C3%B3n "#CSPGruposdeinvestigación-4.Modificarungrupodeinvestigaci%C3%B3n")

### 4\. Modificar un grupo  de investigación

Se puede llegar a la modificación o edición de un grupo de investigación desde tres accesos diferentes de la aplicación del SGI (todas ellas dentro del módulo de CSP):

* Una vez creado el grupo de investigación desde el botón "Nuevo grupo de investigación" (ver apartado del manual [Añadir nuevo grupo de investigación](#CSPGruposdeinvestigación-3.A%C3%B1adirnuevogrupodeinvestigaci%C3%B3n "#CSPGruposdeinvestigación-3.A%C3%B1adirnuevogrupodeinvestigaci%C3%B3n"))
* Desde el icono de acción de "crear grupo de investigación"  ![](/attachments/597853547/597879907.png) en el listado de solicitudes, cuando la solicitud esta en estado "concedida". (ver apartado del manual [CSP\-Solicitudes \- 9 Crear grupo de investigación desde solicitud concedida](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-solicitudes.md#CSPSolicitudes-9.Creargrupodeinvestigaci%C3%B3ndesdesolicitudconcedida "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-solicitudes.md#CSPSolicitudes-9.Creargrupodeinvestigaci%C3%B3ndesdesolicitudconcedida"))

![](/attachments/597853547/597879909.png)

* Desde el icono de acción "editar"  ![](/attachments/597853547/597879905.png)del listado de grupos de investigación.

![](/attachments/597853547/597879824.png)

En los tres casos se mostrará el detalle de la convocatoria, en su apartado inicial "Datos generales". Se podrán introducir cambios sobre los campos del apartado "datos generales". Del mismo modo, accediendo a través del menú lateral izquierdo, se podrán realizar modificaciones sobre los campos del resto de apartados.

![](/attachments/597853547/597879799.png)

La edición de un grupo de investigación esta formada por los siguientes bloques de información o apartados:

* Datos generales: Conjunto de datos de información general sobre el grupos de investigación (ya informados durante la creación del grupo de investigación).
* Equipo investigación: Listado con las personas que forman parte del equipo investigador.
* Responsable económico: Persona encargada de la parte económica del grupo de investigación. Sólo puede existir un único responsable económico en cada momento. Se guarda el histórico de las personas que han sido responsable económico durante toda la vida del grupo de investigación.
* Persona autorizada:  Persona delegada a la tarea de validar/rechazar items de producción científica y a la tarea de solicitud de modificación del grupo. Sólo puede existir una única persona autorizada en cada momento. Se guarda el histórico de las personas que han sido personas autorizadas durante toda la vida del grupo de investigación.
* Equipos instrumentales: Listado con los equipos instrumentales con los que trabaja el grupo de investigación.
* Enlaces: Listado con los enlaces o direcciones web que se consideran útil o necesario recoger para el grupo de investigación.
* Líneas de investigación: Listado con las líneas de investigación en las que trabaja o se desarrolla el grupo de investigación.

Una vez introducidos los datos que se desean modificar o añadir en cualquiera de los apartados, el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar el grupo de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

Se mostrará un mensaje informativo confirmando que el grupo de investigación ha sido modificado correctamente.

![](/attachments/597853547/597879555.png)  


#### 4\.1 Datos generales

Apartado con los datos de información básica o general de un grupo de investigación.

![](/attachments/597853547/1077968900.png)

En el apartado del manual [Añadir nuevo grupo de investigación](#CSPGruposdeinvestigación-3.A%C3%B1adirnuevogrupodeinvestigaci%C3%B3n "#CSPGruposdeinvestigación-3.A%C3%B1adirnuevogrupodeinvestigaci%C3%B3n") se puede ver la descripción detallada de cada campo. A parte de los mencionados en dicho apartado, en la modificación se puede ver la siguiente información adicional a la creación:

* Histórico tipo grupo: Tabla con la información del momento en que el grupo cambia de "Tipo grupo". Por cada cambio del valor del campo "Tipo grupo" se guarda la fecha para así poder mostrar el histórico de todos su cambios.

El campo "Investigador/a principal" que es un dato obligatorio durante la creación del grupo de investigación, en la modificación o edición de un grupo de investigación pasa a estar en el apartado "Equipo investigador" con "rol principal" y con "jornada" completa, desde donde se puede modificar sus datos.

El campo "Grupo especial de investigación" una vez creado el grupo no se podrá modificar su valor.

#### 4\.2 Equipo investigación

Este apartado muestra en una tabla paginada los miembros del grupo de investigación.

![](/attachments/597853547/857473221.png)

  


Se dispone de un filtro "Listado de miembros" que permite filtrar el listado de miembros de equipo que se mostrarán. Los valores disponibles sobre este filtro son:

* Activos. Se listarán únicamente los miembros activos a fecha actual, que serán aquellos para los que su "fecha de fin" no esté informada o tome un valor igual o superior a la fecha actual.
* No activos. Se listarán únicamente los miembros que no estén activos a fecha actual, que serán aquellos para los que su "fecha de fin" tome un valor inferior a la fecha actual.
* Todos. Se listarán todos los miembros del equipo, independientemente que estén o no activos a fecha actual.

  


A continuación se detalla el significado de cada una de las columnas de la tabla:

* E\-mail: Correo electrónico del miembro del grupo de investigación. Dato recuperado de los datos almacenados en la Universidad.
* Nombre:Nombre del miembro del grupo de investigación. Datos recuperados de los datos almacenados en la Universidad.
* Apellidos:Apellidos del miembro del grupo de investigación. Datos recuperados de los datos almacenados en la Universidad.
* Rol: Rol con el que participará el miembro en el grupo.
* Categoría: Categoría profesional del miembro del grupo en las fechas indicadas.
* Fecha inicio: Fecha de inicio del miembro en el grupo con el rol indicado en el campo "Rol".
* Fecha fin: Fecha de fin del miembro en el grupo con el rol indicado en el campo "Rol".
* Dedicación: Tiempo de dedicación del miembro en el grupo.
* % Participación: El porcentaje de dedicación del miembro en el grupo.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* Añadir un nuevo miembro al grupo
* Editar o modificar los datos de uno de los miembros
* Eliminar a un miembro del grupo

##### 4\.2\.1 Añadir un nuevo miembro

El botón "añadir miembro" permite dar de alta a un nuevo miembro al equipo investigador del grupo de investigación. Tras pulsar el botón se muestra la ventana para la introducción de datos:

![](/attachments/597853547/597879407.png)

Los campos de un miembro del equipo son:

* Rol de Participación: Campo de tipo desplegable que indica el rol con el que participará el miembro en el equipo de grupo. Los roles disponibles en el desplegable serán los definidos durante la implantación de la aplicación en la Universidad. Es un campo obligatorio.
* Miembro: Campo para buscar a la persona que se quiere añadir al grupo. Para indicar la persona se utiliza el buscador común de personas [MDU\-Manual de usuario \- 8\.1 Personas](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1Personas "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1Personas"). Es un campo obligatorio.
* Periodo de participación \- Fecha inicio: Campo de tipo fecha para introducir la fecha de inicio del miembro en el grupo de investigación con el rol especificado en el campo "Rol". Se puede introducir la fecha de forma manual o con la ayuda del calendario. Es un campo obligatorio.
* Periodo de participación \- Fecha fin: Campo de tipo fecha para introducir la fecha de finalización del miembro en el grupo de investigación con el rol especificado en el campo "Rol". Se puede introducir la fecha de forma manual o con la ayuda del calendario. Es un campo opcional.
* Dedicación: Campo de tipo desplegable que indica el tiempo de dedicación del miembro en el grupo. En el caso de que el grupo tenga marcada la condición de "grupo especial" este campo estará deshabilitado. Lo valores disponibles son:  

	+ Completa
	+ Parcial
* % Participación: Campo de tipo numérico que indica el porcentaje de dedicación del miembro en el equipo. Si en el campo "Dedicación" se ha seleccionado "Completa", deberá de ser el 100% (se pondrá el valor 100 y no se podrá modificar). Si en el campo "Dedicación" se ha seleccionado "Parcial", se deberá de comprobar que el número introducido en este campo sea mayor o igual a la dedicación mínima configurada en el campo "dedicación mínima grupo" en la implantación del aplicativo en la Universidad y menor que 100\. En caso de que el campo "dedicación mínima grupo" sea 0, se comprobará que sea mayor a 0 y menor de 100\. En el caso de que el grupo tenga marcada la condición de "grupo especial" este campo estará deshabilitado.

Adicionalmente a las validaciones de la obligatoriedad se aplican las siguientes validaciones:

* Periodo de participación \- Fecha inicio  y Periodo de participación \- Fecha Fin  deben de estar dentro del rango de duración del grupo de investigación, es decir, entre las fecha inicio y fin del grupo.
* La misma persona no puede estar dos veces en el mismo grupo en las mismas fechas, si puede estar en rangos de fechas distintas, no se pueden solapar las fechas.
* El % Participación no puede ser superior a 100\.
* Si en un periodo solo se define la fecha inicio se considerará que la vigencia, desde esa fecha inicial, es permanente. La persona no podrá figurar dos veces en el equipo con una fecha inicio determinada salvo que exista otro registro con una fecha fin inferior a esa fecha inicio.
* Una misma persona no puede superar el 100% de participación entre los distintos grupos al que pertenece que no tengan marcada la condición de "grupo especial".

El error de validación se mostrará debajo del campo en color rojo. En la siguiente imagen se muestra alguno de los errores:

![](/attachments/597853547/597879392.png)

Hasta que no se cumplimente todos los datos obligatorios y no existan errores de validación no se activará el botón "Añadir".

![](/attachments/597853547/597879390.png)

  


Al pulsar sobre el botón "Añadir" la persona se añadirá al equipo mostrando en la tabla de miembros del equipo de investigación del grupo un fila mas que representa a la persona que se acaba de añadir.

![](/attachments/597853547/857473222.png)

Para que se consoliden los datos el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar el grupo de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

##### 4\.2\.2 Modificar miembro del equipo

El icono "modificar miembro" permite modificar los datos de uno de los miembros del equipo investigador del grupo de investigación. Tras pulsar el botón se muestra la ventana para la modificación de datos, la pantalla es idéntica a la utilizada durante el alta, dejando la posibilidad de modificar cualquiera de los campos del formulario (ver funcionalidad descrita en el apartado [Añadir un nuevo miembro](#CSPGruposdeinvestigación-4.2.1A%C3%B1adirunnuevomiembro "#CSPGruposdeinvestigación-4.2.1A%C3%B1adirunnuevomiembro") para mas detalle).

En la siguiente imagen se muestra la pantalla de edición de un miembro del equipo de un grupo:

![](/attachments/597853547/597879382.png)

El botón "Aceptar" no se habilitará hasta que se introduzca algún cambio en uno de los datos de la pantalla. Se realizarán las misma validaciones que en la creación de un nuevo miembro.

Al pulsar sobre el botón "Aceptar" el miembro del equipo se modificará y los cambios se verán reflejados en la tabla de miembros del equipo de investigación del grupo mostrando el icono de la admiración en el menú de "Equipo investigación" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un cambio de un miembro del equipo) se consoliden.

##### 4\.2\.3 Eliminar miembro del equipo

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597879402.png)  


Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y el miembro del equipo no será borrado.

Si se pulsa el botón Aceptar el miembro del equipo desaparecerá de la tabla de miembros del equipo de investigación del grupo como se puede ver en la siguiente imagen mostrando el icono de la admiración en el menú de "Equipo investigación" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un borrado de un miembro del equipo) se consoliden.

![](/attachments/597853547/857473223.png)

#### 4\.3 Responsable económico

Este apartado muestra en una tabla paginada al responsable económico actual del grupo de investigación junto con el listado de responsables económicos que ha tenido el grupo (su histórico). Sólo puede existir una persona responsable económica en cada momento.

![](/attachments/597853547/597879411.png)

A continuación se detalla el significado de cada una de las columnas de la tabla:

* E\-mail: Correo electrónico del responsable económico del grupo de investigación. Dato recuperado de los datos almacenados en la Universidad.
* Nombre:Nombre del responsable económico del grupo de investigación. Datos recuperados de los datos almacenados en la Universidad.
* Apellidos:Apellidos del responsable económico del grupo de investigación. Datos recuperados de los datos almacenados en la Universidad.
* Fecha inicio: Fecha de inicio del responsable económico en el grupo.
* Fecha fin: Fecha de fin del responsable económico en el grupo.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* Añadir un nuevo responsable económico al grupo
* Editar o modificar los datos de uno de los responsables económicos
* Eliminar a un responsable económico

##### 4\.3\.1 Añadir un responsable económico

El botón "añadir responsable económico" permite dar de alta a un nuevo responsable económico del grupo de investigación. Tras pulsar el botón se muestra la ventana para la introducción de datos:

![](/attachments/597853547/597879401.png)

Los campos de un responsable económico son:

* Responsable económico: Campo para buscar a la persona que se quiere añadir al grupo como responsable económico. Para indicar la persona se utiliza el buscador común de personas [MDU\-Manual de usuario \- 8\.1 Personas](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-8.1Personas "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-8.1Personas"). Es un campo obligatorio.
* Fecha inicio: Campo de tipo fecha para introducir la fecha de inicio del responsable económico en el grupo. Se puede introducir la fecha de forma manual o con la ayuda del calendario. Es un campo obligatorio.
* Fecha fin: Campo de tipo fecha para introducir la fecha de finalización de la persona como responsable económica del grupo de investigación. Se puede introducir la fecha de forma manual o con la ayuda del calendario. Es un campo opcional.

Adicionalmente a las validaciones de la obligatoriedad se aplican las siguientes validaciones:

* Únicamente puede existir un único responsable económico en cada momento, por lo que si ya existe un responsable económico sin fecha de fin no se permitirá introducir un nuevo responsable económico a no ser que sea en un rango anterior al que no tiene fecha de fin (es decir, un rango anterior a la fecha de inicio del que existe).
* Fecha inicio  y Fecha Fin  deben de estar dentro del rango de duración del grupo de investigación, es decir, entre las fecha inicio y fin del grupo.

El error de validación se mostrará debajo del campo en color rojo. En la siguiente imagen se muestra alguno de los errores:

![](/attachments/597853547/597879396.png)

Hasta que no se cumplimente todos los datos obligatorios y no existan errores de validación no se activará el botón "Añadir".

![](/attachments/597853547/597879400.png)

Al pulsar sobre el botón "Añadir" la persona se añadirá como responsable económico mostrando en la tabla de responsables económicos del grupo un fila mas que representa a la persona que se acaba de añadir.

![](/attachments/597853547/597879398.png)  


Para que se consoliden los datos el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar el grupo de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

##### 4\.3\.2 Modificar responsable económico

El icono "modificar responsable económico" permite modificar los datos de uno de los responsables económicos del grupo de investigación. Tras pulsar el botón se muestra la ventana para la modificación de datos, la pantalla es idéntica a la utilizada durante el alta, dejando la posibilidad de modificar cualquiera de los campos del formulario (ver funcionalidad descrita en el apartado [Añadir un responsable económico](#CSPGruposdeinvestigación-4.3.1A%C3%B1adirunresponsableecon%C3%B3mico "#CSPGruposdeinvestigación-4.3.1A%C3%B1adirunresponsableecon%C3%B3mico") para mas detalle).

En la siguiente imagen se muestra la pantalla de edición de un responsable económico de un grupo:

![](/attachments/597853547/597879395.png)

El botón "Aceptar" no se habilitará hasta que se introduzca algún cambio en uno de los datos de la pantalla. Se realizarán las misma validaciones que en la creación de un nuevo responsable económico.

Al pulsar sobre el botón "Aceptar" el responsable económico se modificará y los cambios se verán reflejados en la tabla de responsables económicos del grupo mostrando el icono de la admiración en el menú de "Responsable económico" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un cambio de un responsable económico) se consoliden.

##### 4\.3\.3 Eliminar responsable económico

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597879486.png)  


Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y el responsable económico no será borrado.

Si se pulsa el botón Aceptar el responsable económico desaparecerá de la tabla de responsables económicos del grupo como se puede ver en la siguiente imagen mostrando el icono de la admiración en el menú de "Responsable económico" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso el borrado del responsable económico) se consoliden.

![](/attachments/597853547/597879484.png)  


#### 4\.4 Persona autorizada

Este apartado muestra en una tabla paginada a la persona autorizada actual del grupo de validar/rechazar items de producción científica y de realizar la solicitud de modificación junto con el listado de personas autorizadas que ha tenido el grupo (su histórico). Sólo puede existir una persona autorizada en cada momento.

![](/attachments/597853547/597879410.png)

A continuación se detalla el significado de cada una de las columnas de la tabla:

* E\-mail: Correo electrónico de la persona autorizada del grupo de investigación. Dato recuperado de los datos almacenados en la Universidad.
* Nombre:Nombre de la persona autorizada del grupo de investigación. Datos recuperados de los datos almacenados en la Universidad.
* Apellidos:Apellidos de la persona autorizada del grupo de investigación. Datos recuperados de los datos almacenados en la Universidad.
* Fecha inicio: Fecha de inicio de la persona autorizada en el grupo.
* Fecha fin: Fecha de fin de la persona autorizada en el grupo.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* Añadir una nueva de la persona autorizada al grupo
* Editar o modificar los datos de una de las personas autorizadas
* Eliminar a una persona autorizada

##### 4\.4\.1 Añadir una persona autorizada

El botón "añadir persona autorizada" permite dar de alta a una nueva persona autorizada del grupo de investigación. Tras pulsar el botón se muestra la ventana para la introducción de datos:

![](/attachments/597853547/597879437.png)  


Los campos de una persona autorizada son:

* Persona autorizada: Campo para buscar a la persona que se quiere añadir al grupo como persona autorizada. Para indicar la persona se utiliza el buscador común de personas [MDU\-Manual de usuario \- 8\.1 Personas](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-8.1Personas "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-8.1Personas"). Es un campo obligatorio.
* Fecha inicio: Campo de tipo fecha para introducir la fecha de inicio de la persona autorizada en el grupo. Se puede introducir la fecha de forma manual o con la ayuda del calendario. Es un campo obligatorio.
* Fecha fin: Campo de tipo fecha para introducir la fecha de finalización de la persona autorizada del grupo de investigación. Se puede introducir la fecha de forma manual o con la ayuda del calendario. Es un campo opcional.

Adicionalmente a las validaciones de la obligatoriedad se aplican las siguientes validaciones:

* Únicamente puede existir una única persona autorizada en cada momento, por lo que si ya existe una persona autorizada sin fecha de fin no se permitirá introducir una nueva persona autorizada a no ser que sea en un rango anterior al que no tiene fecha de fin (es decir, un rango anterior a la fecha de inicio del que existe).
* Fecha inicio  y Fecha Fin  deben de estar dentro del rango de duración del grupo de investigación, es decir, entre las fecha inicio y fin del grupo.

El error de validación se mostrará debajo del campo en color rojo. En la siguiente imagen se muestra alguno de los errores:

![](/attachments/597853547/597879439.png)  


Hasta que no se cumplimente todos los datos obligatorios y no existan errores de validación no se activará el botón "Añadir".

![](/attachments/597853547/597879438.png)  


Al pulsar sobre el botón "Añadir" la persona se añadirá como persona autorizada mostrando en la tabla de personas autorizadas del grupo un fila mas que representa a la persona que se acaba de añadir.

![](/attachments/597853547/597879430.png)  


Para que se consoliden los datos el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar el grupo de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

##### 4\.4\.2 Modificar persona autorizada

El icono "modificar persona autorizada" permite modificar los datos de una de las personas autorizadas del grupo de investigación. Tras pulsar el botón se muestra la ventana para la modificación de datos, la pantalla es idéntica a la utilizada durante el alta, dejando la posibilidad de modificar cualquiera de los campos del formulario (ver funcionalidad descrita en el apartado [Añadir una persona autorizada](#CSPGruposdeinvestigación-4.4.1A%C3%B1adirunapersonaautorizada "#CSPGruposdeinvestigación-4.4.1A%C3%B1adirunapersonaautorizada") para mas detalle).

En la siguiente imagen se muestra la pantalla de edición de una persona autorizada de un grupo:

![](/attachments/597853547/597879435.png)  


El botón "Aceptar" no se habilitará hasta que se introduzca algún cambio en uno de los datos de la pantalla. Se realizarán las misma validaciones que en la creación de una nueva persona autorizada.

Al pulsar sobre el botón "Aceptar" la persona autorizada se modificará y los cambios se verán reflejados en la tabla de personas autorizadas del grupo mostrando el icono de la admiración en el menú de "Persona autorizada" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un cambio de una persona autorizada) se consoliden.

##### 4\.4\.3 Eliminar persona autorizada

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597879426.png)  


Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y la persona autorizada no será borrada.

Si se pulsa el botón Aceptar la persona autorizada desaparecerá de la tabla de personas autorizadas del grupo como se puede ver en la siguiente imagen mostrando el icono de la admiración en el menú de "Persona autorizada" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso el borrado de la persona autorizada) se consoliden.

![](/attachments/597853547/597879427.png)  


#### 4\.5 Equipos instrumentales

 Este apartado muestra en una tabla paginada los equipos instrumentales con los que trabaja el grupo de investigación.

![](/attachments/597853547/597879561.png)

A continuación se detalla el significado de cada una de las columnas de la tabla:

* Número registro: Número de registro del equipo instrumental utilizado.
* Nombre: Nombre del equipo instrumental utilizado.
* Descripción:Descripción del equipo instrumental utilizado.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* Añadir un nuevo equipo instrumental.
* Editar o modificar los datos de uno de los equipos instrumentales.
* Eliminar un equipo instrumental.

##### 4\.5\.1 Añadir un nuevo equipo instrumental

El botón "añadir equipo instrumental" permite dar de alta a un nuevo equipo instrumental utilizado por el grupo de investigación. Tras pulsar el botón se muestra la ventana para la introducción de datos:

![](/attachments/597853547/597879562.png)  


Los campos de un equipo instrumental son:

* Nombre: Campo de texto libre para especificar el nombre por el que se le conoce al equipo instrumental que va a utilizar el grupo de investigación para sus investigaciones. Es un campo obligatorio.
* Descripción: Campo de texto libre para describir las características o las observaciones que se quieran dejar reflejadas del equipo instrumental. Es un campo opcional.
* Número registro: Campo de texto libre para especificar el número de registro o el código identificativo del equipo instrumental en la Universidad. Es un campo opcional.

Hasta que no se cumplimente todos los datos obligatorios no se activará el botón "Añadir".

![](/attachments/597853547/597879558.png)  


Al pulsar sobre el botón "Añadir" el equipo instrumental se añadirá en la tabla de equipos instrumentales del grupo un fila mas que representa al equipo instrumental que se acaba de añadir.

![](/attachments/597853547/597879560.png)  


Para que se consoliden los datos el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar el grupo de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

##### 4\.5\.2 Modificar equipo instrumental

El icono "modificar equipo instrumental" permite modificar los datos de uno de los equipos instrumentales del grupo de investigación. Tras pulsar el botón se muestra la ventana para la modificación de datos, la pantalla es idéntica a la utilizada durante el alta, dejando la posibilidad de modificar cualquiera de los campos del formulario (ver funcionalidad descrita en el apartado [Añadir un nuevo equipo instrumental](#CSPGruposdeinvestigación-4.5.1A%C3%B1adirunnuevoequipoinstrumental "#CSPGruposdeinvestigación-4.5.1A%C3%B1adirunnuevoequipoinstrumental") para mas detalle).

En la siguiente imagen se muestra la pantalla de edición de un equipo instrumental de un grupo:

![](/attachments/597853547/597879553.png)  


El botón "Aceptar" no se habilitará hasta que se introduzca algún cambio en uno de los datos de la pantalla. Se realizarán las misma validaciones que en la creación de un nuevo equipo instrumental.

Al pulsar sobre el botón "Aceptar" el equipo instrumental se modificará y los cambios se verán reflejados en la tabla de equipos instrumentales del grupo mostrando el icono de la admiración en el menú de "Equipos instrumentales" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un cambio de un equipo instrumental) se consoliden.

##### 4\.5\.3 Eliminar equipo instrumental

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597879557.png)  


Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y el equipo instrumental no será borrado.

Si se pulsa el botón Aceptar el equipo instrumental desaparecerá de la tabla de equipos instrumentales del grupo como se puede ver en la siguiente imagen mostrando el icono de la admiración en el menú de "Equipos instrumentales" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un borrado de un equipo instrumental) se consoliden.

![](/attachments/597853547/597879556.png)  


#### 4\.6 Enlaces

Este apartado muestra en una tabla paginada los enlaces o direcciones web que se consideran útil o necesario recoger para el grupo de investigación.

![](/attachments/597853547/597879576.png)

A continuación se detalla el significado de cada una de las columnas de la tabla:

* Enlace: Dirección web o url del enlace que se considera útil para el grupo de investigación.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* Añadir un nuevo enlace al grupo
* Editar o modificar los datos de uno de los enlaces
* Eliminar a un enlace del grupo

##### 4\.6\.1 Añadir un nuevo enlace

El botón "añadir enlace" permite dar de alta a un nuevo enlace de interés para el grupo de investigación. Tras pulsar el botón se muestra la ventana para la introducción de datos:

![](/attachments/597853547/597879575.png)  


El único campo para dar de alta un enlace es la propia dirección web del enlace. Es un campo obligatorio y no se valida el formato de la dirección web, es decir, es un campo de texto libre donde se puede introducir cualquier cadena, sin comprobar que la dirección existe o que sea correcta.

Hasta que no se cumplimente el enlace no se activará el botón "Añadir"

![](/attachments/597853547/597879570.png)  


Al pulsar sobre el botón "Añadir" el enlace se añadirá en la tabla de enlaces del grupo un fila mas que representa al enlace que se acaba de añadir.

![](/attachments/597853547/597879569.png)  


Para que se consoliden los datos el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar el grupo de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

##### 4\.6\.2 Modificar enlace

El icono "modificar enlace" permite modificar los datos de uno de los enlaces del grupo de investigación. Tras pulsar el botón se muestra la ventana para la modificación de datos, la pantalla es idéntica a la utilizada durante el alta, dejando la posibilidad de modificar el único campo del formulario (ver funcionalidad descrita en el apartado [Añadir un nuevo enlace](#CSPGruposdeinvestigación-4.6.1A%C3%B1adirunnuevoenlace "#CSPGruposdeinvestigación-4.6.1A%C3%B1adirunnuevoenlace") para mas detalle).

En la siguiente imagen se muestra la pantalla de edición de un enlace de un grupo:

![](/attachments/597853547/597879573.png)  


El botón "Aceptar" no se habilitará hasta que se introduzca algún cambio en el enlace.

Al pulsar sobre el botón "Aceptar" el enlace se modificará y los cambios se verán reflejados en la tabla de enlaces del grupo mostrando el icono de la admiración en el menú de "Enlaces" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un cambio de un enlace) se consoliden.

##### 4\.6\.3 Eliminar enlace

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597879571.png)  


Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y el enlace no será borrado.

Si se pulsa el botón Aceptar el enlace desaparecerá de la tabla de enlaces del grupo como se puede ver en la siguiente imagen mostrando el icono de la admiración en el menú de "Enlaces" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un borrado de un enlace) se consoliden.

![](/attachments/597853547/597879568.png)  


#### 4\.7 Líneas investigación

Este apartado muestra en una tabla paginada las líneas de investigación en las que trabaja o se desarrolla el grupo de investigación.

![](/attachments/597853547/597879517.png)

A continuación se detalla el significado de cada una de las columnas de la tabla:

* Nombre:Nombre del miembro del grupo de investigación. Datos recuperados de los datos almacenados en la Universidad.
* Fecha inicio: Fecha de inicio de actuación de la línea de investigación en el grupo.
* Fecha fin: Fecha de fin de de actuación de la línea de investigación en el grupo.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* Añadir un nueva línea de investigación al grupo
* Editar o modificar los datos de una línea de investigación del grupo
* Eliminar la asignación de una línea de investigación al grupo

La línea de investigación se considera una entidad "compleja", debido a su número alto de campos y de diferente tipología que se tienen de presentar en diferentes apartados o pestañas necesitando su propio flujo de navegación, lo que obliga al personal de gestión primero guardar los datos del grupo de investigación antes de ir a realizar cualquier cambio en una línea de investigación.

##### 4\.7\.1 Añadir una nueva línea de investigación

El botón "añadir línea investigación" permite asignar una nueva línea de investigación al grupo de investigación.

Tras pulsar el botón se produce un cambio de contexto. El cambio de contexto aplica cuando el personal de gestión está creando o editando una entidad de contenido (en este caso el "Grupo de investigación")  y requiere de la edición o creación de una entidad relacionada (en este caso la "Línea de investigación"), que pueda también tener una navegación interna a través de un menú secundario. En estos casos, en el momento del cambio de edición hacia la entidad relacionada ("Línea de investigación"), se realizará un cambio de contexto, esto es, un cambio de entidad que recargará el espacio de trabajo con los datos y navegación de la nueva entidad ("Línea de investigación") obligando a guardar los datos de la entidad anterior si no quiere perderlos ("Grupo de investigación").

Al ir a la creación de una línea de investigación si hay datos sin guardar del resto de apartados del grupo de investigación (datos generales, equipo investigación, responsable económico, persona autorizada, equipos instrumentales o enlaces) se muestra el siguiente mensaje de confirmación:

![](/attachments/597853547/597879550.png)

Si se pulsa el botón "Cancelar" se cerrará la ventana del mensaje de confirmación y se mantiene en la propia pantalla (sin ir a la creación de la línea de investigación) para que el personal de gestión pueda pulsar el botón "Guardar" antes de ir a la línea de investigación y así no perder los datos.

Si se pulsa el botón "Continuar y perder los datos" no se guardarán los cambios pendiente de almacenar y se irá a la pantalla de "Datos generales" de la línea de investigación.

![](/attachments/597853547/597879611.png)

Para la creación de una nueva línea de investigación de un grupo únicamente es necesario informar los datos del apartado de "Datos generales", el resto de apartados se podrán informar desde la edición o modificación de la línea de investigación (ver apartado del manual [Modificar línea de investigación](#CSPGruposdeinvestigación-4.7.1Modificarl%C3%ADneadeinvestigaci%C3%B3n "#CSPGruposdeinvestigación-4.7.1Modificarl%C3%ADneadeinvestigaci%C3%B3n")).

A continuación se describe cada uno de los campos solicitados en este formulario o pantalla:

* Línea investigación: Campo de tipo desplegable que indica la línea de investigación sobre la que trabaja el grupo de investigación. La línea de investigación deberá seleccionarse a partir del desplegable disponible en este campo, que contendrá todas las líneas de investigación configuradas en el SGI. Para más información sobre este componente se puede consultar [MDU\-Manual de usuario \- 3\.17 Controles sobre campos desplegables o selectores](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-3.17Controlessobrecamposdesplegablesoselectores "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-3.17Controlessobrecamposdesplegablesoselectores") donde se explica como crear una nueva línea de investigación para ser utilizada por el grupo en caso de que no exista en el desplegable.
* Fecha inicio: Campo de tipo fecha para introducir la fecha de inicio de actuación de la línea de investigación en el grupo. Se puede introducir la fecha de forma manual o con la ayuda del calendario. Por defecto, en la creación, se inicializa al valor de la fecha de inicio del grupo. Se comprobará que sea una fecha mayor o igual a la fecha de inicio del grupo. Es un campo obligatorio.
* Fecha fin: Campo de tipo fecha para introducir la fecha de fin de actuación de la línea de investigación en el grupo. Se puede introducir la fecha de forma manual o con la ayuda del calendario. Se comprobará que sea una fecha menor o igual a la fecha de fin del grupo en caso de estar informada. Es un campo opcional.

Una vez introducidos todos los campos obligatorios del formulario de "Datos generales" se activa el botón "Guardar" y se muestra el icono del signo de admiración en los "Datos generales"  y en el pie de página a lado del botón "Guardar".  Este icono indica que se han introducido cambios en el formulario (se han informado los campos) pero no se ha dado a "Guardar".

![](/attachments/597853547/597879607.png)

Si se pulsa el botón "Guardar" se vincula la línea de investigación al grupo de investigación en las fechas indicadas.

Se muestra un mensaje de que la línea de investigación se ha creado correctamente en el grupo  igual que el de la siguiente imagen.

![](/attachments/597853547/597879608.png)  


Una vez creada la vinculación de la línea de investigación al grupo te lleva a la edición o modificación de la línea de investigación donde se muestran el resto de apartados que pueden ser cumplimentados. Ver [Modificar línea de investigación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141926817#CSPGruposdeinvestigaci%C3%B3n-4.7.2Modificarl%C3%ADneadeinvestigaci%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141926817#CSPGruposdeinvestigaci%C3%B3n-4.7.2Modificarl%C3%ADneadeinvestigaci%C3%B3n").

##### 4\.7\.2 Modificar línea de investigación

La modificación de los datos de una línea de investigación vinculada a un grupo puede realizarse a través del icono de acción editar ![](/attachments/597853547/597879905.png)del listado de líneas de investigación del grupo.

![](/attachments/597853547/597879517.png)

Tras pulsar el botón se produce un cambio de contexto. El cambio de contexto aplica cuando el personal de gestión está creando o editando una entidad de contenido (en este caso el "Grupo de investigación")  y requiere de la edición o creación de una entidad relacionada (en este caso la "Línea de investigación"), que pueda también tener una navegación interna a través de un menú secundario. En estos casos, en el momento del cambio de edición hacia la entidad relacionada ("Línea de investigación"), se realizará un cambio de contexto, esto es, un cambio de entidad que recargará el espacio de trabajo con los datos y navegación de la nueva entidad ("Línea de investigación") obligando a guardar los datos de la entidad anterior si no quiere perderlos ("Grupo de investigación").

Al ir a la edición de una línea de investigación si hay datos sin guardar del resto de apartados del grupo de investigación (datos generales, equipo investigación, responsable económico, persona autorizada, equipos instrumentales o enlaces) se muestra el siguiente mensaje de confirmación:

![](/attachments/597853547/597879550.png)

Si se pulsa el botón "Cancelar" se cerrará la ventana del mensaje de confirmación y se mantiene en la propia pantalla (sin ir a la edición de la línea de investigación) para que el personal de gestión pueda pulsar el botón "Guardar" antes de ir a la línea de investigación y así no perder los datos.

Si se pulsa el botón "Continuar y perder los datos" no se guardarán los cambios pendiente de almacenar y se irá a la pantalla de "datos generales" de la línea de investigación. Se podrán introducir cambios sobre los campos del apartado "datos generales". Del mismo modo, accediendo a través del menú lateral izquierdo, se podrán realizar modificaciones sobre los campos del resto de apartados.

![](/attachments/597853547/597879604.png)

La edición de una línea de investigación vinculada a un grupo de investigación esta formada por los siguientes bloques de información o apartados:

* Datos generales: Conjunto de datos de información general la línea de investigación (ya informados durante la creación o vinculación de la línea de investigación al grupo ).
* Miembros adscritos: Listado con los Investigadores/as que forman parte del grupo de investigación adscritos a una o varias líneas de investigación del grupo.
* Clasificaciones: Listado con las distintas clasificaciones con las que se identifica la línea de investigación vinculada al grupo.
* Equipos instrumentales: Listado con los equipos instrumentales definidos en el grupo de investigación y que van a ser utilizado por la línea de investigación.

Una vez introducidos los datos que se desean modificar o añadir en cualquiera de los apartados, el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar la línea de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

Se mostrará un mensaje informativo confirmando que la línea de investigación ha sido modificado correctamente.

![](/attachments/597853547/597879603.png)

###### 4\.7\.2\.1 Datos generales

Apartado con los datos de información básica o general de una línea de investigación vinculada a un grupo de investigación.

![](/attachments/597853547/597879604.png)

En el apartado del manual [Añadir una nueva línea de investigación](#CSPGruposdeinvestigación-4.7.1A%C3%B1adirunanueval%C3%ADneadeinvestigaci%C3%B3n "#CSPGruposdeinvestigación-4.7.1A%C3%B1adirunanueval%C3%ADneadeinvestigaci%C3%B3n") se puede ver la descripción detallada de cada campo.

###### 4\.7\.2\.2 Miembros adscritos

Este apartado muestra en una tabla paginada con los Investigadores/as que forman parte del grupo de investigación adscritos a una o varias líneas de investigación del grupo.

![](/attachments/597853547/597883507.png)

A continuación se detalla el significado de cada una de las columnas de la tabla:

* E\-mail: Correo electrónico del miembro del grupo de investigación vinculado a la línea de investigación. Dato recuperado de los datos almacenados en la Universidad.
* Nombre:Nombre del miembro del grupo de investigación vinculado a la línea de investigación. Datos recuperados de los datos almacenados en la Universidad.
* Apellidos:Apellidos del miembro del grupo de investigación vinculado a la línea de investigación. Datos recuperados de los datos almacenados en la Universidad.
* Fecha inicio: Fecha de inicio del miembro del equipo adscrito a la línea de investigación.
* Fecha fin: Fecha de fin del miembro del equipo adscrito a la línea de investigación.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* Añadir un nuevo miembro adscrito
* Editar o modificar los datos de uno de los miembros adscrito
* Eliminar a un miembro adscrito a una línea

####### 4\.7\.2\.2\.1 Añadir un miembro adscrito

El botón "añadir miembro adscrito" permite asociar un miembro del equipo investigador del grupo de investigación a una línea de investigación. Tras pulsar el botón se muestra la ventana para la introducción de datos:

![](/attachments/597853547/597879617.png)  


Los campos de un miembro adscrito son:

* Miembro adscrito: Campo de tipo desplegable con los miembros del equipo del grupo de investigación. Es un campo obligatorio.
* Fecha inicio: Campo de tipo fecha para introducir la fecha de inicio del miembro del equipo adscrito a la línea de investigación Se puede introducir la fecha de forma manual o con la ayuda del calendario. Por defecto, en la creación, se inicializa al valor de la fecha de inicio de la línea de investigación. Es un campo obligatorio.
* Fecha fin: Campo de tipo fecha para introducir la fecha de fin del miembro del equipo adscrito a la línea de investigación Se puede introducir la fecha de forma manual o con la ayuda del calendario. Es un campo opcional.

Adicionalmente a las validaciones de la obligatoriedad se aplican las siguientes validaciones:

* Fecha inicio y fecha fin deben estar dentro del rango de duración de la línea de investigación.
* Una misma persona podrá estar adscrita más de una vez a la línea si lo hace en periodos diferentes (fecha inicio y fecha fin ).
* Si en un periodo solo se define la fecha inicio se considerará que la vigencia, desde esa fecha inicial, es permanente. La persona no podrá figurar dos veces en la línea con una fecha inicio determinada salvo que exista otro registro con una fecha fin inferior a esa fecha inicio).
* Fecha de fin debe de ser mayor a la fecha de inicio.

El error de validación se mostrará debajo del campo en color rojo. En la siguiente imagen se muestra alguno de los errores:

![](/attachments/597853547/597883504.png)

Hasta que no se cumplimente todos los datos obligatorios y no existan errores de validación no se activará el botón "Añadir".

![](/attachments/597853547/597883503.png)

Al pulsar sobre el botón "Añadir" la persona se añadirá como miembro adscrito a la línea de investigación mostrando en la tabla de miembros adscritos a la línea de investigación un fila mas que representa a la persona que se acaba de añadir.

![](/attachments/597853547/597883506.png)

Para que se consoliden los datos el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar la línea de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

####### 4\.7\.2\.2\.2 Modificar un miembro adscrito

El icono "modificar miembro adscrito" permite modificar los datos de uno de los miembros adscritos a una línea de investigación. Tras pulsar el botón se muestra la ventana para la modificación de datos, la pantalla es idéntica a la utilizada durante el alta, dejando la posibilidad de modificar cualquiera de los campos del formulario (ver funcionalidad descrita en el apartado  para mas detalle).

En la siguiente imagen se muestra la pantalla de edición de un miembro adscrito a una línea de investigación:

![](/attachments/597853547/597883501.png)

El botón "Aceptar" no se habilitará hasta que se introduzca algún cambio en uno de los datos de la pantalla. Se realizarán las misma validaciones que en la creación de un nuevo miembro adscrito.

Al pulsar sobre el botón "Aceptar" el miembro adscrito a la línea de investigación se modificará y los cambios se verán reflejados en la tabla de miembros adscritos a una línea de investigación mostrando el icono de la admiración en el menú de "Miembros adscritos" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un cambio de un miembro adscrito a la línea de investigación) se consoliden.

####### 4\.7\.2\.2\.3 Eliminar un miembro adscrito

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597883500.png)

Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y el miembro adscrito a la línea de investigación no será borrado.

Si se pulsa el botón Aceptar el miembro adscrito a la línea de investigación desaparecerá de la tabla de miembros miembros adscritos a una línea de investigación como se puede ver en la siguiente imagen mostrando el icono de la admiración en el menú de "Miembros adscritos" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un borrado de un miembro adscrito a la línea de investigación) se consoliden.

![](/attachments/597853547/597883502.png)

###### 4\.7\.2\.3 Clasificaciones

Este apartado muestra en una tabla paginada las distintas clasificaciones con las que se identifica la línea de investigación vinculada al grupo.

![](/attachments/597853547/597879592.png)  


A continuación se detalla el significado de cada una de las columnas de la tabla:

* Clasificación: Nombre de la clasificación. Es el nombre de la raíz del árbol de la que cuelga el elemento final, esto es, el nivel seleccionado, al que pertenece el elemento de clasificación al que se vincula la línea de investigación.
* Niveles: Concatenación de los nombres de los elementos de clasificación que ocupan niveles superiores al elemento con el que se vincula la línea de investigación.
* Nivel seleccionado: Nombre del elemento de clasificación seleccionado. Es el nombre del elemento de clasificación con el que se relaciona directamente la línea de investigación.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* Añadir una nueva clasificación
* Eliminar una clasificación de la línea de investigación

####### 4\.7\.2\.3\.1 Añadir una clasificación

El botón "añadir clasificación" permite clasificar a una línea de investigación dentro de una tipología.

![](/attachments/597853547/597879589.png)  


El primer campo a cumplimentar de forma obligatoria será la "clasificación". Una clasificación se entiende como una organización jerárquica conformada por un conjunto de códigos a los que diferentes entidades dentro del SGI se podrán asociar. Inicialmente se identifican en el SGI cuatro clasificaciones distintas: UNESCO, NABS, ANEP y CNAE, si bien la lista de clasificaciones podrá ser extendida por parte de la Universidad con otras adicionales en tiempo de implantación.

![](/attachments/597853547/597879588.png)

Una vez seleccionada la clasificación, se muestra el primer nivel de la jerarquía asociada a la clasificación seleccionada (en este caso UNESCO).

Se pueden ir desplegando categorías por niveles. Ver [MDU\-Manual de usuario \- 7\.5 Selector de clasificaciones](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-7.5Selectordeclasificaciones "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-7.5Selectordeclasificaciones") para mas detalle del funcionamiento de esta pantalla.

Una vez seleccionada el código de clasificación que se quiere vincular a la línea de investigación se habilita el botón "Aceptar". 

![](/attachments/597853547/597879590.png)

Al pulsar sobre el botón "Aceptar" la clasificación se añadirá como clasificación vinculada a la línea de investigación mostrando en la tabla de clasificaciones de la línea de investigación un fila mas que representa a la clasificación que se acaba de añadir.

![](/attachments/597853547/597880172.png)

Para que se consoliden los datos el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar la línea de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

####### 4\.7\.2\.3\.2 Eliminar una clasificación

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597880179.png)

Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y la clasificación vinculada a la línea de investigación no será borrada.

Si se pulsa el botón Aceptar la clasificación vinculada a la línea de investigación desaparecerá de la tabla de clasificaciones de la línea de investigación como se puede ver en la siguiente imagen mostrando el icono de la admiración en el menú de "Clasificaciones" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un borrado de una clasificación de la línea de investigación) se consoliden.

![](/attachments/597853547/597880177.png)

###### 4\.7\.2\.4 Equipos instrumentales

Este apartado muestra en una tabla paginada con los equipos instrumentales definidos en el grupo de investigación y que van a ser utilizados por la línea de investigación.

![](/attachments/597853547/597880162.png)

A continuación se detalla el significado de cada una de las columnas de la tabla:

* Número registro: Número de registro del equipo instrumental utilizado.
* Nombre: Nombre del equipo instrumental utilizado.
* Descripción:Descripción del equipo instrumental utilizado.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* Añadir un nuevo equipo instrumental asociado a la línea de investigación
* Eliminar la vinculación del equipo instrumental con la línea de investigación

####### 4\.7\.2\.4\.1 Añadir un equipo instrumental

El botón "añadir equipo instrumental" permite vincular un equipos instrumental del grupo de investigación a una línea de investigación. Tras pulsar el botón se muestra la ventana para la introducción de datos:

![](/attachments/597853547/597880164.png)  


El único campo que se debe de introducir de forma obligatoria es el equipo instrumental. Para ello se muestra un campo de tipo desplegable con los equipos instrumentales definidos en el grupo de investigación al que pertenece la línea de investigación.

Hasta que no se cumplimente el campo no se activará el botón "Añadir".

![](/attachments/597853547/597880192.png)

Al pulsar sobre el botón "Añadir" el equipo instrumental se vincula a la línea de investigación mostrando en la tabla de equipos instrumentales de la línea de investigación un fila mas que representa al equipo instrumental que se acaba de añadir.

![](/attachments/597853547/597880194.png)

Para que se consoliden los datos el personal de gestión deberá pulsar sobre el botón "Guardar" situado en la parte inferior de la pantalla en el pie de página para actualizar la línea de investigación, sino se pulsa sobre el botón "Guardar" todos los cambios realizados se perderán.

####### 4\.7\.2\.4\.2 Eliminar un equipo instrumental

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597880186.png)

Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y el equipo instrumental vinculado a la línea de investigación no será borrado.

Si se pulsa el botón Aceptar el equipo instrumental vinculado a la línea de investigación desaparecerá de la tabla de equipos instrumentales de la línea de investigación como se puede ver en la siguiente imagen mostrando el icono de la admiración en el menú de "Equipos instrumentales" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un borrado de un equipo instrumental vinculado a la línea de investigación) se consoliden.

![](/attachments/597853547/597880190.png)

##### 4\.7\.3 Eliminar línea de investigación

La eliminación de los datos de una línea de investigación vinculada a un grupo de investigación puede realizarse a través del icono de acción eliminar ![](/attachments/597853547/597879564.png) del listado de líneas de investigación.

![](/attachments/597853547/597879517.png)

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597880137.png)

Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y  la línea de investigación vinculada al grupo de investigación no será borrada.

Si se pulsa el botón Aceptar línea de investigación vinculada al grupo de investigación desaparecerá de la tabla de líneas de investigación como se puede ver en la siguiente imagen mostrando el icono de la admiración en el menú de "Líneas investigación" y el mensaje de información en la parte de abajo de la pantalla en el pie de página para recordar al personal de gestión que debe de pulsar el botón "Guardar" para que los cambios realizados (en este caso un borrado de una línea de investigación vinculada al grupo de investigación) se consoliden.

![](/attachments/597853547/597880134.png)

### 5\. Eliminar un grupo de investigación

Grupo de investigación es una de las entidades del SGI que admite desactivación, por lo que posteriormente podrá ser recuperada. La eliminación de los datos de un grupo de investigación puede realizarse a través del icono de acción eliminar ![](/attachments/597853547/597879564.png) del listado de grupos de investigación.

![](/attachments/597853547/597879824.png)

La acción eliminar solo estará disponible sobre los grupos de investigación activos.

Tras pulsar el icono eliminar se mostrará un mensaje de confirmación.

![](/attachments/597853547/597879531.png)  


  


Si se pulsa el botón Cancelar se cerrará la ventana del mensaje de confirmación y el grupo de investigación no será eliminado (desactivado).

Si se pulsa el botón Aceptar el grupo de investigación será desactivado, mostrándose un mensaje informativo al finalizar la operación:

![](/attachments/597853547/597879528.png)  


### 6\. Recuperar un grupo de investigación

Un grupo de investigación eliminado puede ser recuperado. La acción recuperar ![](/attachments/597853547/597879534.png) está disponible desde el listado de grupos de investigación. Para que los grupos de investigación desactivados se muestren en el listado de grupos de investigación se debe de hacer uso del filtro "activo" del buscador ampliado. Por defecto, el buscador de grupos de investigación muestra los grupos de investigación activados (filtro activo está preseleccionado al valor "sí"). Para mostrar los grupos de investigación desactivados se deberá establecer el valor "no" o "todos" en el filtro "activo".

![](/attachments/597853547/597879520.png)

Tras pulsar el icono recuperar se mostrará un mensaje de confirmación

![](/attachments/597853547/597879533.png)

  


Si se pulsa el botón Cancelar el grupo de investigación no será recuperado continuando desactivado.

Si se pulsa el botón  Aceptar se recuperará la el grupo de investigación, pasando de nuevo a estar activo. Cuando la operación se haya realizado se mostrará un mensaje informativo.

![](/attachments/597853547/597879525.png)  


  





