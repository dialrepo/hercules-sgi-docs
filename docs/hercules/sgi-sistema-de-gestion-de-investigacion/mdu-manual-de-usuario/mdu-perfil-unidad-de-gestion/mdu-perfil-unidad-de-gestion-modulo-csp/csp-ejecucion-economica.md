# Hércules : CSP\-Ejecución económica



### 1\. Introducción

La ejecución económica de los proyectos/contratos/becas/ayudas o de los grupos de investigación constituye un acceso independiente dentro del módulo CSP. Los datos disponibles en este apartado están sujetos a la integración con el SGE.

La gestión económica de los proyectos/contratos o grupos de investigación se realizará en el Sistema de gestión económica de la Universidad, en el SGI se muestra un resumen del estado económico de los proyectos o de los grupos de investigación.

Como ya se ha se recogido en el apartado [CSP\-Proyectos \- 4\.19 Configuración económica \- Identificación](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.19Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.19Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n") de los proyectos registrados en el SGI o en el apartado [CSP\-Grupos de investigación \- 4\.1 Datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141926817#CSPGruposdeinvestigaci%C3%B3n-4.1Datosgenerales "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141926817#CSPGruposdeinvestigaci%C3%B3n-4.1Datosgenerales") de los grupos de investigación, tanto los proyectos como los grupos deberán disponer del identificador de correspondencia en el SGE para poder tenter visibilidad de su información económica. En función de los procedimientos establecidos en las diferentes Universidades, podría darse el caso de que varios proyectos del SGI compartan un mismo identificador en el SGE. Esto implicará que en el SGI no se pueda distinguir qué operaciones y/o documentos contables se corresponden con cada proyecto particular del SGI que comparte el mismo identificador SGE. Es decir, el SGI recibirá el detalle de las operaciones a través del código de identificación del SGE y de las aplicaciones presupuestarias, si ambos datos son compartidos por varios proyectos del SGI, no será posible realizar la discriminación hacia uno u otro, mostrándose de manera unificada en este apartado de Ejecución económica. Desde el detalle de cada uno de los proyectos que compartan el mismo código identificador en el SGE se accederá al mismo detalle de Ejecución económica.

Los apartados incluidos en este bloque de Ejecución económica son:

* Listado de proyectos
* Ejecución presupuestaria
* Detalle de operaciones
* Facturas y justificantes
* Facturas emitidas
* Seguimiento justificación

### 2\. Listado y búsqueda de proyectos económicos

El acceso a la ejecución económica de proyectos de investigación y de grupos ocupa la sexta posición en el menú del módulo CSP.  Siguiendo la estructura general del SGI, tras pulsar en el menú Ejecución económica se accede a la página inicial que contiene el listado de proyectos económicos y su buscador, que sigue las normas básicas descritas en [MDU\-Manual de usuario \- 3\.2 Buscadores y listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.2Buscadoresylistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.2Buscadoresylistados").

  


![](/attachments/597853779/841089170.png)

  


Por defectos se muestran todos los proyectos económicos que se han relacionado con uno o varios proyectos del SGI sobre una tabla de resultados paginada, [MDU\-Manual de usuario \- 3\.5 Paginación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.5Paginaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.5Paginaci%C3%B3ndelistados").  La tabla muestra una serie de campos significativos:

* Identificador interno SGI: Identificador interno creado por el SGI para identificar al proyecto o grupo.
* Código SGE: Identificador del proyecto en el SGE (Sistema de Gestión Económica).
* Título proyecto: Título del proyecto.
* Referencia en entidad convocante. Identificador o referencia que la entidad convocante ha asignado al proyecto.
* Referencia interna: referencia que se asigna dentro del ámbito de la Universidad al proyecto.
* Responsable proyecto: Nombre y apellidos del investigador/a principal actual del proyecto.
* Fecha inicio: Fecha de inicio del proyecto.
* Fecha fin: Fecha de finalización del proyecto.
* Acciones: Conjunto de acciones que están disponibles sobre el proyecto

Los campos disponibles en el formulario de la búsqueda son:

* Datos económicos de: Desplegable con dos valores, Proyecto o Grupo. Si se selecciona "Proyecto" se mostrarán aquellos proyectos SGE relacionados con proyectos SGI (ver apartado [CSP\-Proyectos \- 4\.19 Configuración económica \- Identificación](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-pro_ec_identificacion4.19Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-pro_ec_identificacion4.19Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n")). Si se selecciona "Grupo" se mostrarán aquellos proyectos SGE relacionados con Grupos de investigación del SGI (ver apartado ).
* Título proyecto:  Si se introduce una cadena en este filtro, se mostrarán los proyectos económicos vinculados a un proyecto SGI que contengan la cadena introducida en cualquier parte del campo "título" del proyecto SGI. Este campo se mostrará si se ha seleccionado en el campo "Datos económicos de" el valor "Proyecto".
* Nombre grupo:  Si se introduce una cadena en este filtro, se mostrarán los proyectos económicos vinculados a un grupo de investigación SGI que contengan la cadena introducida en cualquier parte del campo "nombre" del grupo de investigación SGI. Este campo se mostrará si se ha seleccionado en el campo "Datos económicos de" el valor "Grupo".
* Código SGE: Si se introduce un código de un proyecto SGE se mostrará el proyecto económico que tenga exactamente ese identificador.
* Referencia en entidad externa. Sólo disponible en caso del que se haya seleccionado el valor "Proyecto" en el desplegable "Datos económicos de".
* Fecha inicio desde \- hasta: Si se ha seleccionado el valor "Proyecto" en el campo "Datos económicos de" el valor "Proyecto", con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los proyectos SGI cuya fecha de inicio esté comprendida en el mismo. En el caso de que se haya seleccionado el valor "Grupo" en el campo "Datos económicos de", se puede establecer un periodo que permitirá buscar los grupos de investigación cuya fecha de inicio esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.
* Fecha fin desde \- hasta: Si se ha seleccionado el valor "Proyecto" en el campo "Datos económicos de" el valor "Proyecto", con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los proyectos SGI cuya fecha de fin esté comprendida en el mismo. En el caso de que se haya seleccionado el valor "Grupo" en el campo "Datos económicos de", se puede establecer un periodo que permitirá buscar los grupos de investigación cuya fecha de fin esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.

Una vez introducidos los filtros de búsqueda se debe pulsar el botón "Buscar". Los resultados coincidentes se mostrarán en el listado de resultados. Todos los filtros de búsqueda actuarán como una conjunción "y", es decir, los proyectos que se muestren en el listado de resultados deberán cumplir todos los filtros especificados (incluidos los requisitos mencionados anteriormente).

Se puede utilizar el botón "Limpiar" para vaciar cualquier valor introducido en cualquiera de los campos. Además de vaciar los campos de búsqueda el botón "Limpiar" vuelve a realizar la búsqueda, mostrando el listado completo de proyectos económicos que cumplan los requisitos.

  


Utilizando el botón "Búsqueda ampliada", se mostrarán filtros de búsqueda adicionales.

![](/attachments/597853779/841089172.png)

  


Los filtros del buscador ampliado dependerá de si la búsqueda se aplica sobre Proyectos o Grupos. En el caso de que se esté aplicando la búsqueda sobre datos económicos de proyectos, la vista del buscador ampliado será:

![](/attachments/597853779/841089174.png)

  


Los filtros adicionales, en el caso de búsquedas sobre Proyectos, serán:

* Convocatoria. Se podrá indicar la convocatoria a la que deben pertenecer los proyectos SGI para los que se desea buscar el proyecto económico asociado. La convocatoria se seleccionará a través del buscador común de convocatorias (Ver [MDU\-Manual de usuario \- 7\.1 Buscador común de convocatorias)](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-7.1Buscadordeconvocatorias "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-7.1Buscadordeconvocatorias"). Al establecer un valor en el filtro Convocatoria se realizará la búsqueda sobre los proyectos económicos relacionados con los proyectos SGI vinculados a la convocatoria seleccionada.
* Responsable de proyecto. Este filtro actuará sobre los miembros del equipo de proyecto. Al establecer un valor en este filtro se listarán los proyectos económicos relacionados con los proyectos SGI en los que la persona indicada participe con rol principal. La persona se seleccionará a través del buscador común de personas (Ver [MDU\-Manual de usuario \- 8\.1\.1 Buscar personas](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1.1Buscarpersonas "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1.1Buscarpersonas")).
* Entidad convocante. Este filtro actuará sobre las entidades convocantes de los proyectos SGI. Al establecer un valor en este filtro se listarán los proyectos económicos relacionados con los proyectos SGI para los que la entidad seleccionada figure como entidad convocante. La entidad convocante se seleccionará a través del buscador común de entidades (Ver [MDU\-Manual de usuario \- 8\.2\.1 Buscar entidades o empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.2.1Buscarentidadesoempresas "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.2.1Buscarentidadesoempresas")).
* Entidad financiadora. Este filtro actuará sobre las entidades financiadoras de los proyectos SGI. Al establecer un valor en este filtro se listarán los proyectos económicos relacionados con los proyectos SGI para los que la entidad seleccionada figure como entidad financiadora. La entidad financiadora se seleccionará a través del buscador común de entidades (Ver [MDU\-Manual de usuario \- 8\.2\.1 Buscar entidades o empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.2.1Buscarentidadesoempresas "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.2.1Buscarentidadesoempresas")).

  


Los filtros adicionales, en el caso de búsquedas sobre Grupos, serán:

![](/attachments/597853779/597858617.png)

  


Los filtros adicionales, en el caso de búsquedas sobre Grupos, serán:

* Responsable de proyecto: Este filtro actuará sobre los miembros del Grupo. Al establecer un valor en este filtro se listarán los proyectos económicos relacionados con los grupos en los que la persona indicada participe con rol principal. La persona se seleccionará a través del buscador común de personas (Ver [MDU\-Manual de usuario \- 8\.1\.1 Buscar personas](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1.1Buscarpersonas "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/index.md#MDUManualdeusuario-8.1.1Buscarpersonas")).

  


### 3\. Ver detalle proyecto económico

Para ver el detalle de un proyecto económico se deberá de pulsar sobre el icono de acción ver ![](/attachments/597853779/597871610.png)del listado de proyectos económicos.

![](/attachments/597853779/841089176.png)

  


Tras pulsar la acción ver se mostrará el detalle del proyecto económico, en su apartado inicial "Listado de proyectos SGI".

![](/attachments/597853779/885620795.png)

  


Los apartados incluidos en la edición de un proyecto económico de Ejecución económica son:

* Listado de proyectos: listado de todos los proyectos SGI que están vinculados al identificador SGE para el que se va a mostrar el detalle económico. Todos los proyectos incluidos en el listado compartirán la misma información económica.
* Ejecución presupuestaria: balance de la situación de las aplicaciones presupuestarias que hubieran sido incluidas en el presupuesto del o los proyectos que estén vinculados al identificador SGE para el que se está consultando la información.
* Detalle de operaciones: se listará el detalle de operaciones contables asociadas a las aplicaciones presupuestarias que hubieran sido incluidas en el presupuesto del o los proyectos que estén vinculados al identificador SGE para el que se está consultando la información económica.
* Facturas y justificantes: se centralizarán los listados de los justificantes de gasto que estarán asociados a la fase de justificación y que procederán de la integración con el SGE.
* Facturas emitidas: desde este apartado se recuperará la información relativa a las facturas emitidas. Desde el SGI se podrá registrar el calendario de facturación previsto en el contrato pero el ciclo de facturación será siempre realizado desde el sistema de gestión económica (SGE). Ambos sistemas, SGI y SGE, dispondrán del mecanismo de integración correspondiente para que los items de facturación previstos en el calendario de facturación y la factura finalmente registrada en el SGE queden vinculadas. Desde este apartado de Ejecución económica el SGI recuperará del SGE la información relativa a las facturas finalmente registradas en el SGE mostrando el estado de cobro de las mismas (si bien este campo dependerá de las posibilidades de integración que ofrezca el SGE corporativo).
* Seguimiento justificación: permite registrar los requerimientos recibidos manteniendo la información relativa a cada gasto y mantener de manera global los importes totales del proyecto resultantes de todos los requerimientos registrados.

  


#### 3\.1 Listado de proyectos

Debido a que varios proyectos SGI pueden compartir el mismo identificador en el SGE, en este listado se informará de todos los proyectos que están vinculados al identificador SGE para el que se va a mostrar el detalle económico. Todos los proyectos incluidos en el listado compartirán la misma información económica.

Es una pantalla únicamente de información para el usuario para indicarle los datos mas relevantes del proyecto SGI o de los proyectos SGI con lo que está vinculado el identificador SGE que se esta consultando.

![](/attachments/597853779/885620795.png)

  


Las columnas mostradas son:

* Identificador interno SGI: Identificador interno creado por el SGI para identificar al proyecto o grupo.
* Código SGE: Código de identificación del proyecto en el SGE.
* Título proyecto/Nombre grupo: Título del proyecto o nombre del grupo.
* Referencia en entidad convocante. Identificador o referencia que la entidad convocante ha asignado al proyecto. No aplica en el caso de Grupos, sólo estará informada en el caso de que la fila represente los datos de un proyecto.
* Referencia interna: referencia que se asigna dentro del ámbito de la Universidad al proyecto. No aplica en el caso de Grupos, sólo estará informada en el caso de que la fila represente los datos de un proyecto.
* Responsable: Nombre y apellidos del responsable del proyecto/grupo.
* Fecha inicio: Fecha de inicio del proyecto o grupo.
* Fecha fin: Fecha de inicio del proyecto o grupo.
* Fecha fin definitiva: Fecha de fin definitiva del proyecto. Este campo solo se mostrará cuando en la fila se esté representando un proyecto.
* IVA deducible: Valor Sí o No, de acuerdo al campo "IVA deducible" incluido en la ficha general del proyecto. Este campo solo se mostrará cuando en la fila se esté representando un proyec
* % IVA: Porcentaje de IVA vigente del proyecto. Este campo solo se mostrará cuando en la fila se esté representando un proyecto.
* Causa exención: Causa de exención de IVA. Este campo solo se mostrará cuando en la fila se esté representando un proyecto.
* Sector IVA: Este campo solo se mostrará cuando en la fila se esté representando un proyecto y este habilitada la variable de configuración "[Habilitar campo Sector IVA del SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")". Indicará si el proyecto está o no sometido a gestión del IVA. Tomará valores "sí" o "no". Es un dato que no está almacenado en el SGI sino que será recuperado del SGE a través de una integración con el SGE.

Desde este listado de proyectos/grupos se podrá acceder al detalle de cada uno de ellos a través de la acción de "ver"

  


#### 3\.2 Ejecución presupuestaria

En este apartado se verá el balance de la situación de las aplicaciones presupuestarias que hubieran sido incluidas en el presupuesto del o los proyectos que estén vinculados al identificador SGE para el que se está consultando la información. Este balance de las aplicaciones presupuestarias se presentará desglosado en tres bloques:

* Estado actual
* Gastos
* Ingresos

La información mostrada será la íntegramente recuperada del sistema de gestión económico a través del mecanismo de integración establecido teniendo en cuenta la configuración establecida en el periodo de implantación en la Universidad.

##### 3\.2\.1 Estado actual

En esta sección se podrá consultar el balance de situación de una, varias o todas las anualidades del proyecto. Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](#CSPEjecucióneconómica-Listadodeproyectos "#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/597871659.png)

Para recuperar los datos del balance presupuestario actual se deberá de seleccionar  a través del campo "Anualidades" la anualidad o anualidades que se desea consultar o bien no seleccionar ninguna para que devuelva los datos de todas las anualidades del proyecto y pulsar el botón "Cargar".

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico el balance de la anualidad o anualidades seleccionadas. Para cada anualidad se mostrará el resumen global de todas las partidas presupuestarias de tipo "Gasto" y de tipo "Ingreso":

![](/attachments/597853779/597871660.png)

Se muestran las columnas agrupadas por la anualidad y el tipo. Si se desea visualizar el detalle de una anualidad concreta para ver el balance de sus partidas presupuestarias se debe de desplegar la anualidad pulsando el icono de "\>". Al desplegar la anualidad se vería la siguiente información:

![](/attachments/597853779/597871661.png)

Para cada anualidad se mostrarán todas las aplicaciones presupuestarias y para cada aplicación presupuestaria las columnas configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

El listado con el balance de la situación de las aplicaciones presupuestarias de una anualidad o de varias puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados"). Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación propias del estado actual de la ejecución presupuestaria:

  


![](/attachments/597853779/841089194.png)

  


Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

  


##### 3\.2\.2 Gastos

En esta sección se podrá consultar el el balance de las aplicaciones presupuestarias de gasto de una, varias o todas las anualidades del proyecto. Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](#CSPEjecucióneconómica-Listadodeproyectos "#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/597871643.png)

Para recuperar los datos del balance presupuestario actual de gastos se deberá de seleccionar  a través del campo "Anualidades" la anualidad o anualidades que se desea consultar o bien no seleccionar ninguna para que devuelva los datos de todas las anualidades del proyecto y pulsar el botón "Cargar".

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico el balance de gastos de la anualidad o anualidades seleccionadas. Para cada anualidad se mostrará el resumen global de todas las partidas presupuestarias de tipo "Gasto".

![](/attachments/597853779/597871652.png)

Se muestran las columnas agrupadas por la anualidad. Si se desea visualizar el detalle de una anualidad concreta para ver el balance de sus partidas presupuestarias se debe de desplegar la anualidad pulsando el icono de "\>". Al desplegar la anualidad se vería la siguiente información:

![](/attachments/597853779/597871653.png)

Para cada anualidad se mostrarán todas las aplicaciones presupuestarias de gastos y para cada aplicación presupuestaria las columnas configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

El listado con el balance de la situación de las aplicaciones presupuestarias de gastos de una anualidad o de varias puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados"). Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación propias de las partidas presupuestarias de gastos:

![](/attachments/597853779/841089196.png)

Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

Una vez introducidos todos los criterios de la exportación se deberá pulsar el botón "Exportar", se generará el documento asociado que podrá ser nombrado y descargado a la unidad de disco deseada. El contenido del fichero contendrá la misma información que la mostrada en el listado o podrá contener mas columnas de detalle si se ha definido así en la implantación en la Universidad de acuerdo a lo devuelto por el sistema externo económico.

##### 3\.2\.3 Ingresos

En esta sección se podrá consultar el el balance de las aplicaciones presupuestarias de ingreso de una, varias o todas las anualidades del proyecto. Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](#CSPEjecucióneconómica-Listadodeproyectos "#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/597871655.png)

Para recuperar los datos del balance presupuestario actual de ingresos se deberá de seleccionar  a través del campo "Anualidades" la anualidad o anualidades que se desea consultar o bien no seleccionar ninguna para que devuelva los datos de todas las anualidades del proyecto y pulsar el botón "Cargar".

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico el balance de ingresos de la anualidad o anualidades seleccionadas. Para cada anualidad se mostrará el resumen global de todas las partidas presupuestarias de tipo "Ingreso".

![](/attachments/597853779/597871656.png)

Se muestran las columnas agrupadas por la anualidad. Si se desea visualizar el detalle de una anualidad concreta para ver el balance de sus partidas presupuestarias se debe de desplegar la anualidad pulsando el icono de "\>". Al desplegar la anualidad se vería la siguiente información:

![](/attachments/597853779/597871657.png)

Para cada anualidad se mostrarán todas las aplicaciones presupuestarias de ingresos y para cada aplicación presupuestaria las columnas configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

El listado con el balance de la situación de las aplicaciones presupuestarias de ingresos de una anualidad o de varias puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados"). Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación propias de las partidas presupuestarias de ingresos:

  


![](/attachments/597853779/841089197.png)

  


Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

Una vez introducidos todos los criterios de la exportación se deberá pulsar el botón "Exportar", se generará el documento asociado que podrá ser nombrado y descargado a la unidad de disco deseada. El contenido del fichero contendrá la misma información que la mostrada en el listado o podrá contener mas columnas de detalle si se ha definido así en la implantación en la Universidad de acuerdo a lo devuelto por el sistema externo económico.

#### 3\.3 Detalle de operaciones

En este apartado se listará el detalle de operaciones contables asociadas a las aplicaciones presupuestarias que hubieran sido incluidas en el presupuesto del o los proyectos que estén vinculados al identificador SGE para el que se está consultando la información económica. Este detalle de las operaciones contables se presentará desglosado en tres bloques:

* Gastos
* Ingresos
* Modificaciones

La información mostrada será la íntegramente recuperada del sistema de gestión económico a través del mecanismo de integración establecido teniendo en cuenta la configuración establecida en el periodo de implantación  en la Universidad.

##### 3\.3\.1 Gastos

En esta sección se podrá consultar el detalle de operaciones contables asociadas a las aplicaciones presupuestarias de gasto de una, varias o todas las anualidades del proyecto. Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](#CSPEjecucióneconómica-Listadodeproyectos "#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/597871648.png)  


Para recuperar los datos del detalle de operaciones contables asociadas a las aplicaciones presupuestarias de gasto se deberá de seleccionar  a través del campo "Anualidades" la anualidad o anualidades que se desea consultar o bien no seleccionar ninguna para que devuelva los datos de todas las anualidades del proyecto y pulsar el botón "Cargar".

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico el detalle de operaciones de las partidas presupuestarias de tipo gasto de la anualidad o anualidades seleccionadas. Para cada anualidad se mostrará el resumen global del detalle de operaciones todas las partidas presupuestarias de tipo "Gasto" de esa anualidad (el resto de columnas se visualizarán cuando se despliegue una partida presupuestaria concreta).

![](/attachments/597853779/597871649.png)  


Se muestran las columnas agrupadas por la anualidad y por partida presupuestaria. Si se desea visualizar el detalle de las operaciones contables de una partida presupuestaria de gasto concreta se debe de desplegar la anualidad pulsando el icono de "\>" y luego la partida presupuestaria concreta sobre la que se quiere visualizar sus operaciones contables. Al desplegar la anualidad y dentro de ella una partida presupuestaria se vería la siguiente información:

![](/attachments/597853779/597871650.png)  


Para cada anualidad se mostrarán todas las aplicaciones presupuestarias y para cada aplicación presupuestaria las columnas de las operaciones contables configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

  


El listado con el detalle de operaciones contables asociadas a las aplicaciones presupuestarias de una anualidad o de varias puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados"). Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación:

 

![](/attachments/597853779/841089198.png)

  


Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

Una vez introducidos todos los criterios de la exportación se deberá pulsar el botón "Exportar", se generará el documento asociado que podrá ser nombrado y descargado a la unidad de disco deseada. El contenido del fichero contendrá la misma información que la mostrada en el listado o podrá contener mas columnas de detalle si se ha definido así en la implantación en la Universidad de acuerdo a lo devuelto por el sistema externo económico.

##### 3\.3\.2 Ingresos

En esta sección se podrá consultar el detalle de operaciones contables asociadas a las aplicaciones presupuestarias de ingreso de una, varias o todas las anualidades del proyecto. Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/782303389.png)  


Para recuperar los datos del detalle de operaciones contables asociadas a las aplicaciones presupuestarias de ingreso se deberá de seleccionar  a través del campo "Anualidades" la anualidad o anualidades que se desea consultar o bien no seleccionar ninguna para que devuelva los datos de todas las anualidades del proyecto y pulsar el botón "Cargar".

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico el detalle de operaciones de las partidas presupuestarias de tipo ingreso de la anualidad o anualidades seleccionadas. Para cada anualidad se mostrará el resumen global del detalle de operaciones todas las partidas presupuestarias de tipo "Ingreso" de esa anualidad (el resto de columnas se visualizarán cuando se despliegue una partida presupuestaria concreta).

![](/attachments/597853779/782303390.png)  


Se muestran las columnas agrupadas por la anualidad y por partida presupuestaria. Si se desea visualizar el detalle de las operaciones contables de una partida presupuestaria de ingreso concreta se debe de desplegar la anualidad pulsando el icono de "\>" y luego la partida presupuestaria concreta sobre la que se quiere visualizar sus operaciones contables. Al desplegar la anualidad y dentro de ella una partida presupuestaria se vería la siguiente información:

![](/attachments/597853779/782303387.png)  


Para cada anualidad se mostrarán todas las aplicaciones presupuestarias y para cada aplicación presupuestaria las columnas de las operaciones contables configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

  


El listado con el detalle de operaciones contables asociadas a las aplicaciones presupuestarias de una anualidad o de varias puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados"). Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación:

![](/attachments/597853779/841089199.png)  


  


Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

Una vez introducidos todos los criterios de la exportación se deberá pulsar el botón "Exportar", se generará el documento asociado que podrá ser nombrado y descargado a la unidad de disco deseada. El contenido del fichero contendrá la misma información que la mostrada en el listado o podrá contener mas columnas de detalle si se ha definido así en la implantación en la Universidad de acuerdo a lo devuelto por el sistema externo económico.

##### 3\.3\.3 Modificaciones

El menú "Modificaciones" sólo se mostrará cuando la variable de configuración del SGI "[Integración de modificaciones (ejecución económica \- detalle de operaciones)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")" este habilitada.

En esta sección se podrá consultar el detalle de operaciones contables de modificación asociadas a las aplicaciones presupuestarias de una, varias o todas las anualidades del proyecto. Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/782303392.png)  


Para recuperar los datos del detalle de operaciones contables de modificación asociadas a las aplicaciones presupuestarias se deberá de seleccionar  a través del campo "Anualidades" la anualidad o anualidades que se desea consultar o bien no seleccionar ninguna para que devuelva los datos de todas las anualidades del proyecto y pulsar el botón "Cargar".

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico el detalle de operaciones contables de modificación de las partidas presupuestarias de la anualidad o anualidades seleccionadas. Para cada anualidad se mostrará el resumen global del detalle de operaciones de modificación todas las partidas presupuestarias de esa anualidad (el resto de columnas se visualizarán cuando se despliegue una partida presupuestaria concreta).

![](/attachments/597853779/782303393.png)  


Se muestran las columnas agrupadas por la anualidad y por partida presupuestaria. Si se desea visualizar el detalle de las operaciones contables de modificación de una partida presupuestaria concreta se debe de desplegar la anualidad pulsando el icono de "\>" y luego la partida presupuestaria concreta sobre la que se quiere visualizar sus operaciones contables. Al desplegar la anualidad y dentro de ella una partida presupuestaria se vería la siguiente información:

![](/attachments/597853779/782303394.png)  


Para cada anualidad se mostrarán todas las aplicaciones presupuestarias y para cada aplicación presupuestaria las columnas de las operaciones contables de modificación configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

  


El listado con el detalle de operaciones contables de modificación asociadas a las aplicaciones presupuestarias de una anualidad o de varias puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados"). Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación:

![](/attachments/597853779/841089201.png)  


  


Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

Una vez introducidos todos los criterios de la exportación se deberá pulsar el botón "Exportar", se generará el documento asociado que podrá ser nombrado y descargado a la unidad de disco deseada. El contenido del fichero contendrá la misma información que la mostrada en el listado o podrá contener mas columnas de detalle si se ha definido así en la implantación en la Universidad de acuerdo a lo devuelto por el sistema externo económico.

#### 3\.4 Facturas y justificantes

En este apartado se centralizarán los listados de los justificantes de gasto que estarán asociados a la fase de justificación del o los proyectos que estén vinculados al identificador SGE para el que se está consultando la información económica. La información se agrupará en tres bloques:

* Facturas y gastos
* Viajes y dietas
* Personal contratado

La información mostrada será la íntegramente recuperada del sistema de gestión económico a través del mecanismo de integración establecido teniendo en cuenta la configuración establecida en el periodo de implantación  en la Universidad.

##### 3\.4\.1 Facturas y gastos

En esta sección se podrá consultar el detalle de los justificantes de facturas y gasto que estarán asociados a la fase de justificación de una, varias o todas las anualidades del proyecto. Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/597871688.png)

Para recuperar los datos del detalle de justificantes de facturas y gasto se deberá de seleccionar  a través del campo "Anualidades" la anualidad o anualidades que se desea consultar o bien no seleccionar ninguna para que devuelva los datos de todas las anualidades del proyecto y pulsar el botón "Cargar". También se podrán filtrar los justificantes de facturas y gasto por los siguientes campos de búsqueda:

* Fecha de devengo desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los justificantes de facturas y gasto cuya fecha de devengo esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.
* Fecha de contabilización desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los justificantes de facturas y gasto cuya fecha de contabilización esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.
* Fecha de pago desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los justificantes de facturas y gasto cuya fecha de pago esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico el detalle de justificantes de facturas y gasto de la anualidad o anualidades seleccionadas y que cumplan el resto de filtros introducidos. Para cada anualidad  y proyecto SGI se mostrará el importe total de todos los justificantes de facturas y gasto de esa anualidad y de ese proyecto (el resto de columnas se visualizarán cuando se despliegue un justificante de factura o de gasto concreto).

![](/attachments/597853779/597871689.png)

  


La columna "Proyecto" se corresponde con el título del proyecto SGI al que pertenece cada gasto. 

![](/attachments/597853779/597865302.png)

  


El listado de gastos se muestra agrupado por  anualidad y proyecto SGI. Si se desea visualizar el detalle de los justificantes de factura o gastos se debe de desplegar la anualidad pulsando el icono  "\>". Este mismo icono de agrupación está disponible sobre las columnas "concepto de gasto" y "clasificación SGE". Se deberán ir desplegando según se desee, hasta tener el detalle de cada gasto:

  


![](/attachments/597853779/597871690.png)

  


Por cada justificante de factura o gasto se mostrarán las columnas configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

Las únicas columnas que serán fijas independientemente del sistema de gestión económica que tenga la Universidad son:

* Anualidad: Año de la anualidad. Se recupera de los datos devueltos por el sistema de gestión económico.
* Proyecto: Título del proyecto SGI al que pertenece el gasto. Sólo se muestra si la variable de configuración "[Cardinalidad relación proyecto SGI \- identificador SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")" tiene uno de estos valores:
	+ Diferentes proyectos SGI pueden estar asociados a un mismo identificador SGE (n:1\)
	+ Diferentes proyectos SGI pueden estar asociados a diferentes identificadores SGE (n:n)

Esta columna es obtenida de la información registrada en el SGI. Se rellenará de forma diferente en función de la [configuración del parámetro validación/clasificación de gastos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). 

* + Bajo la configuración  "elegibilidad", la columna se rellenará automáticamente a partir de la correspondencia entre el código económico del gasto recogido del SGE y la configuración de "Elegibilidad" del proyecto (SGI), teniendo en cuenta la fecha del gasto (fecha devengo) recuperada del SGE. Si no se pudiera determinar la correspondencia entre el código económico del gasto y el concepto de gasto de SGI, bien por no estar establecida, bien por existir más de una,  se mostrará el texto "sin clasificar".
	+ Bajo la configuración "clasificación de gastos", la columna se recuperará a través de los datos introducidos para el gasto en el propio SGI (ver clasificación del gasto o acción editar descrita a continuación).
* Concepto gasto: Concepto de gasto asociado al gasto. Es una columna recuperada a partir de la información almacenada en el SGI.
	+ Bajo la configuración "elegibilidad": Como en el caso de la columna "proyecto", se buscará la correspondencia entre el código económico del gasto recogido del SGE y la configuración de "Elegibilidad" del proyecto (SGI), teniendo en cuenta la fecha del gasto (fecha devengo) recuperada del SGE.  Si no se pudiera determinar la correspondencia entre el código económico del gasto y el concepto de gasto de SGI, bien por no estar establecida, bien por existir más de una,  se mostrará el texto "sin clasificar".
	+ Bajo la configuración  "clasificación de gastos" la columna se recuperará a través de los datos introducidos para el gasto en el propio SGI (clasificación del gasto).
* Clasificación SGE: Clasificación que se le da en el sistema de gestión económico.  Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Su visualización se podrá configurar a través de la variable de configuración  [Columnas a mostrar en  Personal Contratado (ejecución económica \- facturas y justificantes)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). Si en la variable esta almacenado el valor "Clasificación SGE" se visualizará la columna en el listado.
* Aplicación presupuestaria: Aplicación presupuestaria asociado al gasto. Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Su visualización se podrá configurar a través de la variable de configuración  [Columnas a mostrar en  Personal Contratado (ejecución económica \- facturas y justificantes)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). Si en la variable esta almacenado el valor "Partidas Presupuestarias" se visualizará la columna en el listado.
* Código económico: Código económico  del SGE asociado al gasto. Se recupera de los datos devueltos por el SGE.
* Fecha de devengo: Fecha de devengo del gasto. Se recupera de los datos devueltos por el SGE.

  


A continuación se muestra un ejemplo de la pantalla con las columnas "Proyecto" y "Concepto de gasto" cumplimentadas.

  


![](/attachments/597853779/597865303.png)

  


Desde el listado de  justificantes de factura o gastos se podrá acceder al detalle del gasto. La columna de acciones tendrá disponible la acción "Ver detalle del gasto". Icono de acción ![](/attachments/597853779/597858356.png), que tendrá un comportamiento u otro en función de la configuración establecida para el parámetro de [validación/clasificación de gastos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). 

  


##### 3\.4\.1\.1 Detalle del gasto bajo la configuración "elegibilidad"

Al pulsar sobre el icono de acción "ver" se mostrará una ventana que contendrá el detalle del gasto. Toda esta información es proporcionada por el sistema de gestión económica. En este detalle también se incluye el listado de documentos asociados al gasto que estén disponibles en el sistema de gestión económica. 

![](/attachments/597853779/597871691.png)

##### 3\.4\.1\.2 Detalle del gasto bajo la  configuración "clasificación de gastos"

Al pulsar sobre el icono de acción "editar" se mostrará una ventana que contendrá el detalle del gasto. Toda esta información es proporcionada por el sistema de gestión económica. En este detalle también se incluye el listado de documentos asociados al gasto que estén disponibles en el sistema de gestión económica. 

Además la ventana contendrá unos campos que permitirán establecer la clasificación del gasto, es decir, indicar el proyecto SGI al que se asocia el gasto y clasificarlo bajo los conceptos de gasto de la convocatoria. Ver [clasificación del gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853779#CSPEjecuci%C3%B3necon%C3%B3mica-3.6Clasificaci%C3%B3ndegastos "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853779#CSPEjecuci%C3%B3necon%C3%B3mica-3.6Clasificaci%C3%B3ndegastos").

  


##### 3\.4\.1\.3 Exportación del listado de facturas y justificantes de tipo "facturas y gastos"

El listado con el detalle de los justificantes de factura o gastos de una anualidad o de varias puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.treelogic.com/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.treelogic.com/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados"). Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación:

![](/attachments/597853779/841089203.png)

  


Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

Una vez introducidos todos los criterios de la exportación se deberá pulsar el botón "Exportar", se generará el documento asociado que podrá ser nombrado y descargado a la unidad de disco deseada. El contenido del fichero contendrá la misma información que la mostrada en el listado o podrá contener mas columnas de detalle si se ha definido así en la implantación en la Universidad de acuerdo a lo devuelto por el sistema externo económico.

##### 3\.4\.2 Viajes y dietas

En esta sección se podrá consultar el detalle de los justificantes de gastos asociados  a viajes y dietas de una, varias o todas las anualidades del proyecto. Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/597865296.png)

Para recuperar los datos del detalle de gastos asociados  a viajes y dietas se deberá de seleccionar  a través del campo "Anualidades" la anualidad o anualidades que se desea consultar o bien no seleccionar ninguna para que devuelva los datos de todas las anualidades del proyecto y pulsar el botón "Cargar". También se podrán filtrar los justificantes de gastos asociados a viajes y dietas por los siguientes campos de búsqueda:

* Fecha de devengo desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los justificantes de gastos asociados a viajes y dietas cuya fecha de devengo esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.
* Fecha de contabilización desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los justificantes de gastos asociados a viajes y dietas cuya fecha de contabilización esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.
* Fecha de pago desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los justificantes de gastos asociados a viajes y dietas cuya fecha de pago esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico el detalle de justificantes de los gastos asociados a las nóminas de personal de la anualidad o anualidades seleccionadas y que cumplan el resto de filtros introducidos. Para cada anualidad  y proyecto SGI se mostrará el importe total de todos los gastos asociados a las nóminas del personal de esa anualidad y de ese proyecto (el resto de columnas se visualizarán cuando se despliegue un gasto concreto).

![](/attachments/597853779/597865294.png)

  


  


La columna "Proyecto" se corresponde con el título del proyecto SGI al que pertenece cada gasto. 

![](/attachments/597853779/597865295.png)

  


El listado de gastos se muestra agrupado por  anualidad y proyecto SGI. Si se desea visualizar el detalle de los justificantes de factura o gastos se debe de desplegar la anualidad pulsando el icono  "\>". Este mismo icono de agrupación está disponible sobre las columnas "concepto de gasto" y "clasificación SGE". Se deberán ir desplegando según se desee, hasta tener el detalle de cada gasto:

![](/attachments/597853779/597865292.png)

  


Por cada justificante de factura o gasto se mostrarán las columnas configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

Las únicas columnas que serán fijas independientemente del sistema de gestión económica que tenga la Universidad son:

* Anualidad: Año de la anualidad. Se recupera de los datos devueltos por el sistema de gestión económico.
* Proyecto: Título del proyecto SGI al que pertenece el gasto. Sólo se muestra si la variable de configuración "[Cardinalidad relación proyecto SGI \- identificador SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")" tiene uno de estos valores:
	+ Diferentes proyectos SGI pueden estar asociados a un mismo identificador SGE (n:1\)
	+ Diferentes proyectos SGI pueden estar asociados a diferentes identificadores SGE (n:n)

Esta columna es obtenida de la información registrada en el SGI. Se rellenará de forma diferente en función de la [configuración del parámetro validación/clasificación de gastos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). 

* + Bajo la configuración  "elegibilidad", la columna se rellenará automáticamente a partir de la correspondencia entre el código económico del gasto recogido del SGE y la configuración de "Elegibilidad" del proyecto (SGI), teniendo en cuenta la fecha del gasto (fecha devengo) recuperada del SGE. Si no se pudiera determinar la correspondencia entre el código económico del gasto y el concepto de gasto de SGI, bien por no estar establecida, bien por existir más de una,  se mostrará el texto "sin clasificar".
	+ Bajo la configuración "clasificación de gastos", la columna se recuperará a través de los datos introducidos para el gasto en el propio SGI (ver clasificación del gasto o acción editar descrita a continuación).
* Concepto gasto: Concepto de gasto asociado al gasto. Es una columna recuperada a partir de la información almacenada en el SGI.
	+ Bajo la configuración "elegibilidad": Como en el caso de la columna "proyecto", se buscará la correspondencia entre el código económico del gasto recogido del SGE y la configuración de "Elegibilidad" del proyecto (SGI), teniendo en cuenta la fecha del gasto (fecha devengo) recuperada del SGE.  Si no se pudiera determinar la correspondencia entre el código económico del gasto y el concepto de gasto de SGI, bien por no estar establecida, bien por existir más de una,  se mostrará el texto "sin clasificar".
	+ Bajo la configuración  "clasificación de gastos" la columna se recuperará a través de los datos introducidos para el gasto en el propio SGI (clasificación del gasto).
* Clasificación SGE: Clasificación que se le da en el sistema de gestión económico.  Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Su visualización se podrá configurar a través de la variable de configuración  [Columnas a mostrar en  Personal Contratado (ejecución económica \- facturas y justificantes)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). Si en la variable esta almacenado el valor "Clasificación SGE" se visualizará la columna en el listado.
* Aplicación presupuestaria: Aplicación presupuestaria asociado al gasto. Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Su visualización se podrá configurar a través de la variable de configuración  [Columnas a mostrar en  Personal Contratado (ejecución económica \- facturas y justificantes)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). Si en la variable esta almacenado el valor "Partidas Presupuestarias" se visualizará la columna en el listado.
* Código económico: Código económico  del SGE asociado al gasto. Se recupera de los datos devueltos por el SGE.
* Fecha de devengo: Fecha de devengo del gasto. Se recupera de los datos devueltos por el SGE.

  


A continuación se muestra un ejemplo de la pantalla con las columnas "Proyecto" y "Concepto de gasto" cumplimentadas.

  


![](/attachments/597853779/597865293.png)

  


Desde el listado de  justificantes de factura o gastos se podrá acceder al detalle del gasto. La columna de acciones tendrá disponible la acción "Ver detalle del gasto". Icono de acción ![](/attachments/597853779/597858356.png) ![](https://confluence.treelogic.com/download/thumbnails/141937936/accion_ver.png?version=3&modificationDate=1705910409376&api=v2), que tendrá un comportamiento u otro en función de la configuración establecida para el parámetro de validación/clasificación de gastos. 

##### 3\.4\.2\.1 Detalle del gasto bajo la configuración "elegibilidad"

Al pulsar sobre el icono de acción "ver" se mostrará una ventana que contendrá el detalle del gasto de tipo "viajes y dietas". Toda esta información es proporcionada por el sistema de gestión económica. En este detalle también se incluye el listado de documentos asociados al gasto que estén disponibles en el sistema de gestión económica. 

Para este tipo de gastos "viajes y dietas" además de la información devuelta por el SGE se mostrará un apartado titulado "Datos SGI" en el que se podrán introducir para que se puedan introducir los datos del congreso:

* Proyectos SGI: Proyecto SGI al que se vincula el viaje/congreso. Será un desplegable con el nombre de los proyectos SGI que están vinculados al proyecto SGE que se esta consultando su ejecución económica. Será obligatorio seleccionar el proyecto SGI para guardar los datos del congreso.
* Fecha congreso: Fecha del congreso. Se puede seleccionar a través del componente calendario ofrecido sobre el campo. Es un campo obligatorio para guardar los datos del congreso.
* Inscripción: Importe de la inscripción. Es un campo numérico decimal. Es un campo obligatorio para guardar los datos del congreso.
* Observaciones: Campo de texto libre para introducir las observaciones sobre el congreso. Es un campo opcional.

  


![](/attachments/597853779/597865580.png)

Una vez informados los datos obligatorios, se activará el botón "Aceptar".

![](/attachments/597853779/597865560.png)

Si se pulsa este botón, se cerrará la ventana emergente y se volverá al listado de gastos vinculados a viajes y dietas mostrando el icono de que existen datos sin guardar en el formulario tal y como muestra la siguiente imagen:

![](/attachments/597853779/597865564.png)

  


Para que se consoliden los datos del congreso el personal de gestión deberá pulsar sobre el botón "Guardar ejecución económica" situado en la parte inferior de la pantalla en el pie de página, sino se pulsa sobre el botón "Guardar ejecución económica" todos los cambios realizados se perderán.

##### 3\.4\.2\.2 Detalle del gasto bajo la  configuración "clasificación de gastos"

Al pulsar sobre el icono de acción "editar" se mostrará una ventana que contendrá el detalle del gasto. Toda esta información es proporcionada por el sistema de gestión económica. En este detalle también se incluye el listado de documentos asociados al gasto que estén disponibles en el sistema de gestión económica. 

Además de los campos indicados en el [apartado anterior](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853779#CSPEjecuci%C3%B3necon%C3%B3mica-3.4.2.1Detalledelgastobajolaconfiguraci%C3%B3n%22elegibilidad%22 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853779#CSPEjecuci%C3%B3necon%C3%B3mica-3.4.2.1Detalledelgastobajolaconfiguraci%C3%B3n%22elegibilidad%22") con esta configuración la ventana contendrá unos campos que permitirán establecer la clasificación del gasto, es decir, indicar el proyecto SGI al que se asocia el gasto y clasificarlo bajo los conceptos de gasto de la convocatoria. Ver [clasificación del gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853779#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.1Clasificaci%C3%B3ndelgasto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853779#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.1Clasificaci%C3%B3ndelgasto").

  


##### 3\.4\.2\.3 Exportación de facturas y justificantes de tipo "viajes y dietas"

El listado con el detalle de los gastos vinculados a viajes y dietas de una anualidad o de varias puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados"). Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación:

![](/attachments/597853779/841089204.png)

  


Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

Una vez introducidos todos los criterios de la exportación se deberá pulsar el botón "Exportar", se generará el documento asociado que podrá ser nombrado y descargado a la unidad de disco deseada. El contenido del fichero contendrá la misma información que la mostrada en el listado o podrá contener mas columnas de detalle si se ha definido así en la implantación en la Universidad de acuerdo a lo devuelto por el sistema externo económico.

  


##### 3\.4\.3 Personal contratado

En esta sección se podrá consultar el detalle de los gastos asociados a las nóminas de personal de una, varias o todas las anualidades del proyecto. Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/597865309.png)

Para recuperar los datos del detalle de gastos de nómina se deberá de seleccionar  a través del campo "Anualidades" la anualidad o anualidades que se desea consultar o bien no seleccionar ninguna para que devuelva los datos de todas las anualidades del proyecto y pulsar el botón "Cargar". También se podrán filtrar los gastos por los siguientes campos de búsqueda:

* Fecha de devengo desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los gastos asociados a nóminas cuya fecha de devengo esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.
* Fecha de contabilización desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los gastos asociados a nóminas cuya fecha de contabilización esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.
* Fecha de pago desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar los gastos asociados a nóminas cuya fecha de pago esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico el detalle de justificantes de los gastos asociados a las nóminas de personal de la anualidad o anualidades seleccionadas y que cumplan el resto de filtros introducidos. Para cada anualidad  y proyecto SGI se mostrará el importe total de todos los gastos asociados a las nóminas del personal de esa anualidad y de ese proyecto (el resto de columnas se visualizarán cuando se despliegue un gasto concreto).

![](/attachments/597853779/597865310.png)

  


  


La columna "Proyecto" se corresponde con el título del proyecto SGI al que pertenece cada gasto. 

![](/attachments/597853779/597865307.png)

  


El listado de gastos se muestra agrupado por  anualidad y proyecto SGI. Si se desea visualizar el detalle de los justificantes de factura o gastos se debe de desplegar la anualidad pulsando el icono  "\>". Este mismo icono de agrupación está disponible sobre las columnas "concepto de gasto" y "clasificación SGE". Se deberán ir desplegando según se desee, hasta tener el detalle de cada gasto:

![](/attachments/597853779/597865305.png)

  


Por cada justificante de factura o gasto se mostrarán las columnas configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

Las únicas columnas que serán fijas independientemente del sistema de gestión económica que tenga la Universidad son:

* Anualidad: Año de la anualidad. Se recupera de los datos devueltos por el sistema de gestión económico.
* Proyecto: Título del proyecto SGI al que pertenece el gasto. Sólo se muestra si la variable de configuración "[Cardinalidad relación proyecto SGI \- identificador SGE](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")" tiene uno de estos valores:
	+ Diferentes proyectos SGI pueden estar asociados a un mismo identificador SGE (n:1\)
	+ Diferentes proyectos SGI pueden estar asociados a diferentes identificadores SGE (n:n)

Esta columna es obtenida de la información registrada en el SGI. Se rellenará de forma diferente en función de la [configuración del parámetro validación/clasificación de gastos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). 

* + Bajo la configuración  "elegibilidad", la columna se rellenará automáticamente a partir de la correspondencia entre el código económico del gasto recogido del SGE y la configuración de "Elegibilidad" del proyecto (SGI), teniendo en cuenta la fecha del gasto (fecha devengo) recuperada del SGE. Si no se pudiera determinar la correspondencia entre el código económico del gasto y el concepto de gasto de SGI, bien por no estar establecida, bien por existir más de una,  se mostrará el texto "sin clasificar".
	+ Bajo la configuración "clasificación de gastos", la columna se recuperará a través de los datos introducidos para el gasto en el propio SGI (ver clasificación del gasto o acción editar descrita a continuación).
* Concepto gasto: Concepto de gasto asociado al gasto. Es una columna recuperada a partir de la información almacenada en el SGI.
	+ Bajo la configuración "elegibilidad": Como en el caso de la columna "proyecto", se buscará la correspondencia entre el código económico del gasto recogido del SGE y la configuración de "Elegibilidad" del proyecto (SGI), teniendo en cuenta la fecha del gasto (fecha devengo) recuperada del SGE.  Si no se pudiera determinar la correspondencia entre el código económico del gasto y el concepto de gasto de SGI, bien por no estar establecida, bien por existir más de una,  se mostrará el texto "sin clasificar".
	+ Bajo la configuración  "clasificación de gastos" la columna se recuperará a través de los datos introducidos para el gasto en el propio SGI (clasificación del gasto).
* Clasificación SGE: Clasificación que se le da en el sistema de gestión económico.  Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Su visualización se podrá configurar a través de la variable de configuración  [Columnas a mostrar en  Personal Contratado (ejecución económica \- facturas y justificantes)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). Si en la variable esta almacenado el valor "Clasificación SGE" se visualizará la columna en el listado.
* Aplicación presupuestaria: Aplicación presupuestaria asociado al gasto. Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Se recupera de los datos devueltos por el SGE. Su visualización se podrá configurar a través de la variable de configuración  [Columnas a mostrar en  Personal Contratado (ejecución económica \- facturas y justificantes)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). Si en la variable esta almacenado el valor "Partidas Presupuestarias" se visualizará la columna en el listado.
* Código económico: Código económico  del SGE asociado al gasto. Se recupera de los datos devueltos por el SGE.
* Fecha de devengo: Fecha de devengo del gasto. Se recupera de los datos devueltos por el SGE.

  


A continuación se muestra un ejemplo de la pantalla con las columnas "Proyecto" y "Concepto de gasto" cumplimentadas.

  


![](/attachments/597853779/597865308.png)

  


  


Desde el listado de  justificantes de factura o gastos se podrá acceder al detalle del gasto. La columna de acciones tendrá disponible la acción "Ver detalle del gasto". Icono de acción ![](/attachments/597853779/597858356.png) , que tendrá un comportamiento u otro en función de la configuración establecida para el parámetro de [validación/clasificación de gastos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP"). 

  


##### 3\.4\.3\.1 Detalle del gasto bajo la configuración "elegibilidad"

Al pulsar sobre el icono de acción "ver detalle" se mostrará una ventana que contendrá el detalle del gasto. Toda esta información es proporcionada por el sistema de gestión económica. En este detalle también se incluye el listado de documentos asociados al gasto que estén disponibles en el sistema de gestión económica. 

  


![](/attachments/597853779/597865306.png)

  


  


##### 3\.4\.3\.2 Detalle del gasto bajo la configuración "clasificación de gastos"

Al pulsar sobre el icono de acción "editar" se mostrará una ventana que contendrá el detalle del gasto. Toda esta información es proporcionada por el sistema de gestión económica. En este detalle también se incluye el listado de documentos asociados al gasto que estén disponibles en el sistema de gestión económica. 

Además la ventana contendrá unos campos que permitirán establecer la clasificación del gasto, es decir, indicar el proyecto SGI al que se asocia el gasto y clasificarlo bajo los conceptos de gasto de la convocatoria. Ver [clasificación del gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853779#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.1Clasificaci%C3%B3ndelgasto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853779#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.1Clasificaci%C3%B3ndelgasto").

  


##### 3\.4\.3\.3 Exportación de facturas y justificantes de tipo personal contratado

El listado con el detalle de los gastos del personal contratado de una anualidad o de varias puede ser exportado siguiendo los criterios generales indicados en [MDU\-Manual de usuario \- 3\.6 Exportación de listados](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.6Exportaci%C3%B3ndelistados"). Al pulsar el icono de exportación situado a pie del listado de resultados, se mostrarán las opciones de exportación:

![](/attachments/597853779/841089205.png)

Se debe seleccionar el formato de exportación. Los disponibles son:

* XLSX
* CSV

Una vez introducidos todos los criterios de la exportación se deberá pulsar el botón "Exportar", se generará el documento asociado que podrá ser nombrado y descargado a la unidad de disco deseada. El contenido del fichero contendrá la misma información que la mostrada en el listado o podrá contener mas columnas de detalle si se ha definido así en la implantación en la Universidad de acuerdo a lo devuelto por el sistema externo económico.

#### 3\.5 Facturas emitidas

En esta sección se podrá consultar la información relativa a las facturas emitidas, cuyo calendario ha sido configurado en [CSP\-Proyectos \- 4\.23 Configuración económica \- Calendario facturación](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.23Configuraci%C3%B3necon%C3%B3mica-Calendariofacturaci%C3%B3n "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.23Configuraci%C3%B3necon%C3%B3mica-Calendariofacturaci%C3%B3n"). Desde el SGI se podrá registrar el calendario de facturación previsto en el contrato pero el ciclo de facturación será siempre realizado desde el sistema de gestión económica (SGE). Ambos sistemas, SGI y SGE, dispondrán del mecanismo de integración correspondiente para que los items de facturación previstos en el calendario de facturación y la factura finalmente registrada en el SGE queden vinculadas. Desde este apartado de Ejecución económica el SGI recuperará del SGE la información relativa a las facturas finalmente registradas en el SGE mostrando el estado de cobro de las mismas (si bien este campo dependerá de las posibilidades de integración que ofrezca el SGE corporativo).

Este apartado solo estará disponible si el proyecto/contrato vinculado a la "Ejecución económica" dispone de la configuración "Requiere facturación" (en el apartado de "Datos generales" del proyecto).

Cuando se accede a la pantalla únicamente se muestra en la parte superior el listado de proyectos SGI con los que se vincula el proyecto económico que se esta consultando (la misma información que la mostrada en el apartado [Listado de proyectos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecucióneconómica-Listadodeproyectos")) sin realizar la carga de los datos. El aspecto de la pantalla será:

![](/attachments/597853779/597865781.png)

Para recuperar los datos de las facturas emitidas se deberá de pulsar el botón "Cargar". Se podrán filtrar las facturas emitidas por el campo:

* Fecha factura desde \- hasta: Con los campos "desde" y "hasta", ambos del tipo fecha, se puede establecer un periodo que permitirá buscar las facturas emitidas cuya fecha esté comprendida en el mismo. Ambos campos disponen de un control calendario a través del que se podrá seleccionar la fecha deseada.

Al pulsar el botón "Cargar" se recuperarán del sistema de gestión económico las facturas emitidas mostrańdolas agrupadas por anualidad. Para cada anualidad se mostrarán los importes totales de todas las facturas emitidas de esa anualidad, el resto de columnas se visualizarán cuando se despliegue una factura emitida concreta.

![](/attachments/597853779/597865779.png)

Si se desea visualizar el detalle de una factura emitida concreta para ver sus datos se debe de desplegar la anualidad pulsando el icono de "\>". Al desplegar la anualidad se vería la siguiente información:

![](/attachments/597853779/597865776.png)

Para cada anualidad se mostrarán todas las facturas emitidas con las columnas configuradas en la implantación de acuerdo a lo devuelto por el sistema externo económico.

Desde el listado de facturas emitidas se podrá ir al detalle de la factura para ver mas información que la mostrada en el listado a través de la acción "ver"  situada en la columna de "Acciones". Al pulsar sobre dicha acción se abrirá la siguiente ventana emergente con una información mas detallada de la factura emitida. Dicha información será la configurada en la implantación de acuerdo a lo devuelto por el sistema externo económico.

![](/attachments/597853779/597865777.png)

  


  


#### 3\.6 Clasificación de gastos

El menú "Clasificación de gastos" sólo estará habilitado cuando la configuración del SGI para la [validación/clasificación](https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP "https://confluence.treelogic.com/pages/viewpage.action?pageId=171411979#MDUPerfilAdministraci%C3%B3ndelsistemaConfiguraci%C3%B3n-1.2Configuraci%C3%B3nCSP") de gastos esté establecida a clasificación de gastos. Es decir, la clasificación del gasto de acuerdo a los conceptos de gasto de la convocatoria se realizará manualmente. Esta clasificación se podrá realizar desde este apartado o bien desde el listado de gastos del apartado [Ejecución económica \- facturas y justificantes](https://confluence.treelogic.com/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.4Facturasyjustificantes "https://confluence.treelogic.com/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.4Facturasyjustificantes").

En caso de estar habilitada, la opción "Clasificación de gastos" se encuentra en el menú principal de Ejecución económica:

![](/attachments/597853779/907935789.png)

  


Al acceder a este menú, se mostrará la pantalla inicial con su buscador:

![](/attachments/597853779/907935792.png)

  


En la gestión inicial de un proyecto todos los gastos estarán sin clasificar. Los gastos que se listan son los procedentes del Sistema de gestión económica, toda la información de detalle del gasto será la recopilada de este sistema externo. Esta pantalla permite clasificar os gastos se clasifican de acuerdo a los conceptos de gasto definidos en el SGI (que se deberían de corresponder con los establecidos por la convocatoria a la que pertenece el proyecto). Esta clasificación se almacena en el SGI y no se remite al Sistema de gestión económica.

El buscador consta de los siguientes filtros:

* Gastos clasificados SGI. El valor del filtro se debe seleccionar del listado que tiene los valores:
	+ Todos. Se muestran todos los gastos recuperados del sistema de gestión económica, independientemente de que ya estén clasificados bajo los conceptos de gasto del SGI o no.
	+ Gastos clasificados: De los gastos del proyecto recuperados del SGE, sólo se muestran aquellos que hayan sido clasificados.
	+ Gastos sin clasificar: De los gastos del proyecto recuperados del SGE, sólo se muestran aquellos que aún no hayan sido clasificados.
* Rango de fechas del gasto. A través de los filtros "fecha de gasto desde" y "fecha de gasto hasta" se podrá restringir el periodo entre los que debe estar la fecha del gasto. Es un filtro que aplica sobre la búsqueda de gastos en el sistema de gestión económica.

  


Indicados los filtros (no es obligatorio) se deberá pulsar el botón "buscar" para que se muestre el listado de gastos. Los gastos se recuperarán del SGE y sobre los datos recuperados de este sistema se aportará la información disponible en el SGI en caso de que hayan sido clasificados. La clasificación se muestra en la columna "concepto de gasto". Cuando el gasto aún está sin clasificar se mostrará el texto "sin clasificar"

  


![](/attachments/597853779/907935795.png)

  


##### 3\.6\.1 Clasificación del gasto

Haciendo uso del icono de acción ![](/attachments/597853779/597871609.png)se obtendrá el detalle del gasto. Desde esta ventana de detalle se podrá realizar la clasificación del gasto.

![](/attachments/597853779/907935797.png)

  


La clasificación del gasto consta de dos campos:

* Proyecto SGI. Si el identificador/proyecto/orgánica/centro de coste económico del que se están recuperando los gastos está asociado a un único proyecto del SGI, no será necesario especificar este valor  porque ya aparecerá cumplimentado. Pero si está asociado a más de un proyecto SGI se deberá seleccionar el proyecto SGI con el que se corresponde el gasto.
* Concepto de gasto. Se mostrará un listado con los conceptos de gasto disponibles para clasificar el gasto. Este listado se cargará de acuerdo a la opción marcada previamente ![](/attachments/597853779/907935798.png)
	+ Conceptos de gasto permitidos: Se listarán exclusivamente los conceptos de gasto que hubieran sido configurados en la Elegibilidad del proyecto como gastos permitidos. El proyecto del que se toman los conceptos de gastos es el seleccionado en el campo anterior "proyecto SGI".
	+ Todos los conceptos de gasto: Si se marca esta opción se listarán todos los conceptos de gasto activos que estén configurados en el SGI (Ver CSP \- Configuración \- Conceptos de gasto).

![](/attachments/597853779/907935799.png)

  


Seleccionado el concepto de gasto, se deberá pulsar el botón Aceptar:

![](/attachments/597853779/907935800.png)

  


Tras pulsar Aceptar se retornará al listado de gastos, el gasto se mostrará con las columnas Proyecto SGI y Concepto de gasto informados.

![](/attachments/597853779/907935801.png)

  


Se podrán seguir clasificando el resto de gastos. Se debe tener en cuenta que para que los datos sean almacenados definitivamente es necesario pulsar el botón Guardar Ejecución Económica.

![](/attachments/597853779/907935802.png)

  


En el caso que el gasto sea de de tipo viajes y dietas la pantalla de clasificación del gasto incluirá la posibilidad de indicar los datos del congreso (fecha, importe de inscripción y observaciones). El comportamiento para indicar el concepto de gasto será el mismo que el indicado anteriormente

![](/attachments/597853779/907935803.png)

  


#### 3\.7 Seguimiento de justificación

El flujo de la funcionalidad de justificación cubierta en la versión actual del SGI es el siguiente:

* Definición del calendario de justificación a nivel de proyectos (Ver [CSP\-Proyectos\-Configuración económica \- 2 Configuración económica \- Identificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-identificacion_sge2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-identificacion_sge2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n")) y de convocatoria (Ver [CSP \- Convocatorias \- Periodos de justificación](https://confluence.um.es/confluence/display/HERCULES/CSP-Convocatorias#CSPConvocatorias-3.6Periodosdejustificaci%C3%B3n "https://confluence.um.es/confluence/display/HERCULES/CSP-Convocatorias#CSPConvocatorias-3.6Periodosdejustificaci%C3%B3n")).
* Seguimiento de la justificación presentada, a través de la gestión de los requerimientos recibidos por parte de las entidades financiadoras.

Queda fuera de la cobertura del SGI la realización, propiamente dicha, de la justificación: no se mantiene en el SGI el detalle de la documentación y/o gastos presentados en las justificaciones, ni tampoco la información relativa al momento en que se remite esa documentación. 

  


La orientación del apartado de seguimiento de la justificación en el SGI parte del supuesto de que la justificación se realiza desde el SGE. En base a esto, para realizar el seguimiento de las justificaciones es necesario que el proyecto del SGI esté asociado a un identificador de proyecto económico del SGE (Ver [CSP\-Proyectos\-Configuración\-Económica \- 2 Configuración económica \- Identificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-identificacion_sge2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-identificacion_sge2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n")). El seguimiento de justificación implementado en el SGI se basa en el registro de los requerimientos remitidos desde las entidades financiadoras y la vinculación a éstos de los gastos justificados. La relación de gastos justificados deberá estar identificada en el SGE. El SGI dispone de un servicio de integración para recibir del SGE el detalle de los gastos justificados. Para que el seguimiento de justificación pueda ser realizado desde el SGI han de darse las dos premisas siguientes:

* Que el SGE de la Universidad disponga de un módulo de justificación de proyectos de investigación.
* Que el SGE de la Universidad disponga de los mecanismos de integración necesarios sobre ese módulo de justificación.

  


El apartado de seguimiento de la justificación dispone de dos opciones:

* Resumen
* Requerimientos

![](/attachments/597853779/597858362.png)

  


##### 3\.7\.1 Resumen

La opción "Resumen" muestra una página que permite conocer el estado actual de la justificación del proyecto económico. Es una página que contiene diferentes bloques de información:

* Proyectos SGI asociados al proyecto SGE
* Estado actual seguimiento justificación por proyecto SGI
* Estado actual seguimiento justificación por proyecto SGI y anualidad
* Calendario de justificación de proyectos SGI
* Calendario de seguimiento científico de proyectos SGI

![](/attachments/597853779/597858360.png)

  


Se detalla a continuación cada uno de estos bloques.

###### 3\.7\.1\.1 Proyectos SGI asociados al proyecto SGE

En esta primera tabla se listan todos los proyectos SGI vinculados al identificador económico del que se está realizando el seguimiento de justificación. Se recuerda que el SGI no establece ningún límite en la relación entre proyectos SGI e identificadores SGE (Ver [CSP\-Proyectos\-Configuración económica \- 2 Configuración económica\-Identificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-identificacion_sge2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-identificacion_sge2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n")), pudiendo darse la situación de que varios proyectos SGI están asociados a un mismo identificador SGE (aunque probablemente la situación más común será que un proyecto SGI se vincule a un solo identificador SGE y viceversa). 

Como se indicó en la introducción de este apartado el seguimiento de justificación parte de la base de que se dispone en el SGE de un módulo de justificaciones, el seguimiento de la justificación se hará partiendo de las justificaciones realizadas en el SGE. Si el código SGE sobre el que se está realizando el seguimiento de justificación está vinculado a varios proyectos SGI, querrá decir que varios proyectos SGI se habrán justificado de manera conjunta. En esta página de resumen se dará la posibilidad de fragmentar la información del seguimiento de justificación de forma independiente para cada uno de los proyectos SGI vinculados al mismo código SGE.

En esta primera tabla se listan todos los proyectos SGI que están vinculados al identificador económico o código SGE para el que se está realizando el seguimiento de justificación, permitiendo acceder a la información detallada de cada uno de ellos. La información mostrada en esta tabla es la siguiente:

* Código SGE. Es el identificador en el SGE del proyecto económico sobre el que se está realizando el seguimiento de la justificación. Todos los proyectos SGI listados en esta tabla tendrá el mismo código SGE.
* ID interno SGI. Es el identificador interno del proyecto SGI.
* Referencia en entidad convocante. Es la referencia en la entidad convocante correspondiente al proyecto SGI.
* Título del proyecto. Es el título del proyecto SGI.
* Responsable. Es el nombre de la persona que ocupa el rol IP sobre el proyecto SGI en el momento actual.
* Fecha de inicio. Fecha de inicio del proyecto SGI.
* Fecha de fin. Fecha de fin del proyecto SGI.
* Convocatoria. Título de la convocatoria a la que está vinculado el proyecto SGI.
* Entidad financiadora. Nombre de las entidades financiadoras del proyecto SGI. Las distintas entidades financiadoras estarán separadas por el carácter ",".
* Importe concedido \- costes directos. Dato obtenido del presupuesto del proyecto SGI (Ver [CSP\-Proyectos\-Configuración económica \- 5 Presupuesto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto")), se corresponderá con el valor manual en caso de estar informado y con el valor calculado en caso contrario (siempre y cuando se hubiera detallado el presupuesto por conceptos de gasto)
* Importe concedido \- costes indirectos. Dato obtenido del presupuesto del proyecto SGI (Ver [CSP\-Proyectos\-Configuración económica \- 5 Presupuesto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto")), se corresponderá con el valor manual en caso de estar informado y con el valor calculado en caso contrario (siempre y cuando se hubiera detallado el presupuesto por conceptos de gasto)
* Acciones. A través del icono ![](/attachments/597853779/597858356.png)se accede al detalle del proyecto SGI. Si se pulsa el icono con la combinación de teclas estándar Ctrl \+ click de ratón, el detalle del proyecto (Ver [CSP\-Proyectos](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md")) se mostrará en una pestaña nueva, lo que permitirá tener la información disponible sin perder la página en curso de seguimiento de justificación.

  


Sobre esta tabla no se podrán introducir nuevos proyectos SGI. En caso que se detecte que el identificador SGE debiera tener más proyectos SGI vinculados, esta vinculación deberá realizarse desde la opción [CSP\-Proyectos\-Configuración económica \- 2 Configuración económica\-Identificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-identificacion_sge2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-identificacion_sge2.Configuraci%C3%B3necon%C3%B3mica-Identificaci%C3%B3n") del menú Proyectos.

###### 3\.7\.1\.2 Estado actual seguimiento justificación por proyecto SGI

En esta segunda tabla se muestra el resumen del estado actual de la justificación por cada uno de los proyectos SGI vinculados al identificador SGE para el que se está realizando el seguimiento de la justificación. Se mostrará un elemento por cada proyecto SGI vinculado al identificador SGE. Inicialmente todos los campos de la tabla, a excepción del "identificador interno del proyecto SGI" estarán vacíos. La información detallada del estado actual del seguimiento debe ser introducida manualmente para cada proyecto SGI, a través del icono ![](/attachments/597853779/597871609.png)

  


![](/attachments/597853779/597858365.png)

  


Al pulsar el icono editar se mostrará la ventana de introducción del estado actual del seguimiento de justificación para el proyecto SGI correspondiente:

![](/attachments/597853779/597858363.png)

  


* Proyecto SGI: ID interno. Es un campo informativo que muestra el identificador interno del proyecto SGI con el que se corresponden todos los datos de esta ventana.
* Proyecto SGI: Título. Es un campo informativo que muestra el título del proyecto SGI con el que se corresponden todos los datos de esta ventana.
* Fecha última justificación. Es un campo informativo. Es la fecha de la justificación más actual realizada, de acuerdo a la información introducida en el apartado [calendario de justificación](#CSPEjecucióneconómica-seg_justificacion_calendario "#CSPEjecucióneconómica-seg_justificacion_calendario") de esta página.
* Importe concedido: costes directos. Es un campo informativo. Dato obtenido del presupuesto del proyecto SGI (Ver [CSP\-Proyectos\-Configuración económica \- 5 Presupuesto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto")), se corresponderá con el valor manual en caso de estar informado y con el valor calculado en caso contrario (siempre y cuando se hubiera detallado el presupuesto por conceptos de gasto).
* Importe concedido: costes indirectos. Es un campo informativo. Dato obtenido del presupuesto del proyecto SGI (Ver [CSP\-Proyectos\-Configuración económica \- 5 Presupuesto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-presupuesto5.Presupuesto")), se corresponderá con el valor manual en caso de estar informado y con el valor calculado en caso contrario (siempre y cuando se hubiera detallado el presupuesto por conceptos de gasto).
* Importe justificado. Es un campo de introducción manual que permite recoger el importe total que actualmente se ha justificado para el proyecto SGI.
* Importe justificado: costes directos. Es un campo de introducción manual que permite recoger el importe total que actualmente está justificado, correspondiente a los costes directos.
* Importe justificado: costes indirectos. Es un campo de introducción manual que permite recoger el importe total que actualmente está justificado, correspondiente a los costes indirectos.
* Importe aceptado. Es un campo de introducción manual. Se debe de introducir el importe que hasta el momento ha sido aceptado, de acuerdo a las justificaciones realizadas.
* Importe aceptado: costes directos. Es un campo de introducción manual. Se debe de introducir el importe que actualmente está aceptado para el proyecto SGI, de acuerdo a las justificaciones realizadas, correspondiente a costes directos.
* Importe aceptado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe que actualmente está aceptado para el proyecto SGI, de acuerdo a las justificaciones realizadas, correspondiente a costes indirectos.
* Importe rechazado. Es un campo de introducción manual. Se debe de introducir el importe que hasta el momento ha sido rechazado, de acuerdo a la respuesta a las justificaciones realizadas.
* Importe rechazado: costes directos. Es un campo de introducción manual. Se debe de introducir el importe que hasta el momento ha sido rechazado, de acuerdo a la respuesta a las justificaciones realizadas, correspondiente a costes directos.
* Importe rechazado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe que hasta el momento ha sido rechazado, de acuerdo a la respuesta a las justificaciones realizadas, correspondiente a costes indirectos.
* Importe alegado. Es un campo de introducción manual. Se debe de introducir el importe que hasta el momento ha sido alegado, de acuerdo a la respuesta a las justificaciones realizadas.
* Importe alegado: costes directos. Es un campo de introducción manual. Se debe de introducir el importe que hasta el momento ha sido alegado, de acuerdo a la respuesta a las justificaciones realizadas, correspondiente a costes directos.
* Importe alegado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe que hasta el momento ha sido alegado, de acuerdo a la respuesta a las justificaciones realizadas, correspondiente a costes indirectos.
* Importe no ejecutado. Es un campo de introducción manual. Se debe de introducir el importe concedido para el proyecto SGI y no ejecutado, hasta el momento actual.
* Importe no ejecutado: costes directo. Es un campo de introducción manual. Se debe de introducir el importe concedido para el proyecto SGI y no ejecutado, hasta el momento actual, correspondiente a costes directos.
* Importe no ejecutado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe concedido para el proyecto SGI y no ejecutado, hasta el momento actual, correspondiente a costes directos.
* Importe a reintegrar. Es un campo de introducción manual.  Se debe de introducir el importe que se ha determinado, al momento actual, que debe ser reintegrado.
* Importe a reintegrar: costes directos. Es un campo de introducción manual.  Se debe de introducir el importe que se ha determinado, al momento actual, que debe ser reintegrado para el proyecto SGI, correspondiente a costes directos.
* Importe a reintegrar: costes indirectos. Es un campo de introducción manual.  Se debe de introducir el importe que se ha determinado, al momento actual, que debe ser reintegrado para el proyecto SGI, correspondiente a costes indirectos.
* Reintegro realizado. Es un campo de introducción manual. Se debe de introducir el importe reintegrado, hasta el momento.
* Reintegro realizado: costes directos. Es un campo de introducción manual. Se debe de introducir el importe reintegrado, hasta el momento, correspondiente a costes directos.
* Reintegro realizado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe reintegrado, hasta el momento, correspondiente a costes indirectos.
* Intereses a reintegrar. Es un campo de introducción manual. Se debe de introducir el importe que, en el momento actual, se debe de reintegrar en concepto de intereses (por el importe concedido que debe ser reintegrado).
* Intereses reintegrados. Es un campo de introducción manual. Se debe de introducir el importe que, en el momento actual, ha sido reintegrado en concepto de intereses (por el importe concedido que debe ser reintegrado).
* Fecha último reintegro. Es un campo de introducción manual. Se debe de introducir la fecha del último reintegro realizado a la entidad financiadora correspondiente.
* Número justificante último reintegro. Es un campo de introducción manual. Se debe de introducir el número de justificante del último reintegro realizado a la entidad financiadora correspondiente.
* Reintegro pendiente. Es un campo calculado a partir de los valores introducidos en los campos "importe a reintegrar" y "reintegro realizado".
* Intereses pendientes de reintegrar. Es un campo calculado a partir de los valores introducidos en los campos "intereses a reintegrar" e "intereses reintegrados".

  


No hay ningún campo obligatorio. La unidad de gestión introducirá los valores que se considere oportuno de acuerdo al estado en el que se encuentre la justificación del proyecto SGI en cada momento.

  


Cuando se haya introducido valor sobre alguno de los campos, se activará el botón "Aceptar".

![](/attachments/597853779/597858338.png)

  


Cuando se pulse este botón se cerrará la ventana pasando a actualizarse el listado "Estado actual seguimiento ejecución por proyecto SGI" de acuerdo a los valores introducidos.

![](/attachments/597853779/597858337.png)

  


Para que los datos introducidos sean definitivamente almacenados se deberá pulsar el botón "Guardar ejecución económica". Este botón considerará todos los cambios introducidos tanto en el total de esta  página "Resumen" de "Seguimiento de justificación", como en cualquier apartado de Ejecución económica.

  


El estado actual del seguimiento de justificación por anualidad de los proyectos SGI puede ser actualizado en cualquier momento. El SGI no establece ninguna restricción sobre este punto, ni teniendo en cuenta la fecha actual respecto a las fechas de justificación del proyecto ni teniendo en cuenta las justificaciones registradas en el SGE.

  


###### 3\.7\.1\.3 Estado actual seguimiento justificación por proyecto SGI y anualidad

En esta tercera tabla de la página de resumen se corresponde con el estado del seguimiento de justificación por anualidad. La existencia de elementos en esta tabla dependerá de los requerimientos registrados. Solo se permitirá realizar el seguimiento de justificación por anualidad cuando se registre un  [requerimiento](#CSPEjecucióneconómica-seg_justificacion_requerimientos "#CSPEjecucióneconómica-seg_justificacion_requerimientos") vinculado a una justificación concreta de un proyecto SGI. Cuando se crean requerimientos vinculados a una justificación concreta será sinónimo de que la justificación se realiza por anualidades, dando lugar a que se pueda registrar el estado del seguimiento de justificación por anualidades.

En este tabla se mostrará un registro por cada requerimiento inicial vinculado a una justificación concreta. Inicialmente todos los campos para cada elemento de la tabla, a excepción del "identificador interno del proyecto SGI" , el ID de justificación y la fecha de justificación estarán vacíos. La información detallada del estado actual del seguimiento por anualidad debe ser introducida manualmente para cada proyecto SGI y anualidad, a través del icono ![](/attachments/597853779/597871609.png).

  


![](/attachments/597853779/597858333.png)

  


Al pulsar el icono editar se mostrará la ventana de introducción del estado actual del seguimiento de justificación por anualidad para el proyecto SGI correspondiente:

![](/attachments/597853779/597858332.png)

  


Los campos disponibles son:

* Proyecto SGI: ID interno. Es un campo informativo que muestra el identificador interno del proyecto SGI con el que se corresponden todos los datos de esta ventana.
* Proyecto SGI: Título. Es un campo informativo que muestra el título del proyecto SGI con el que se corresponden todos los datos de esta ventana.
* Identificador justificación: Es el identificador de justificación para el que se está realizando el seguimiento y que, previamente, ha debido de ser asociado tanto a un [periodo de justificación](#CSPEjecucióneconómica-seg_justificacion_calendario "#CSPEjecucióneconómica-seg_justificacion_calendario") como a un  [requerimiento](#CSPEjecucióneconómica-seg_justificacion_requerimientos "#CSPEjecucióneconómica-seg_justificacion_requerimientos") inicial del proyecto.
* Fecha justificación. Es la fecha en la que se ha realizado la justificación indicada por el campo anterior. Es un dato que ha tenido que ser previamente informado en el apartado [Calendario de justificación del proyecto SGI](#CSPEjecucióneconómica-seg_justificacion_calendario "#CSPEjecucióneconómica-seg_justificacion_calendario") disponible en esta misma página.
* Anualidad presupuesto. Es un campo obligatorio. Debe seleccionarse una anualidad de las listadas. El listado contendrá todas las anualidades en las que se haya desglosado el presupuesto (Ver [CSP\-Proyectos\-Configuración económica \- 5\.1 Desglose de presupuesto por anualidad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-5.1Desglosedepresupuestoporanualidad "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-5.1Desglosedepresupuestoporanualidad")) del proyecto. Por tanto, para que se pueda registrar el estado de la justificación por anualidad será necesario haber detallado el presupuesto del proyecto por anualidad.
* Importe concedido anualidad: costes directos. Es un campo informativo. Se obtiene del presupuesto (Ver [CSP\-Proyectos\-Configuración económica \- 5\.1 Desglose de presupuesto por anualidad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-5.1Desglosedepresupuestoporanualidad "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-5.1Desglosedepresupuestoporanualidad")) del proyecto. Es la suma del importe concedido de todos los conceptos de gasto, que no representen costes indirectos, en los que se haya desglosado el presupuesto de la anualidad indicada en el campo anterior.
* Importe concedido anualidad: costes indirectos.  Es un campo informativo. Se obtiene del presupuesto (Ver [CSP\-Proyectos\-Configuración económica \- 5\.1 Desglose de presupuesto por anualidad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-5.1Desglosedepresupuestoporanualidad "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-5.1Desglosedepresupuestoporanualidad")) del proyecto. Es la suma del importe concedido de todos los conceptos de gasto, que representen costes indirectos, en los que se haya desglosado el presupuesto de la anualidad indicada en el campo anterior.
* Importe justificado. Es un campo de introducción manual que permite recoger el importe total que actualmente se ha justificado para el proyecto SGI y la anualidad recogida.
* Importe justificado: costes directos. Es un campo de introducción manual que permite recoger el importe total, correspondiente a los costes directos, que actualmente está justificado para la anualidad.
* Importe justificado: costes indirectos. Es un campo de introducción manual que permite recoger el importe total, correspondiente a los costes indirectos, que actualmente está justificado para la anualidad.
* Importe aceptado. Es un campo de introducción manual. Se debe de introducir el importe de la anualidad que hasta el momento ha sido aceptado.
* Importe aceptado: costes directos. Es un campo de introducción manual. Se debe de introducir el importe de la anualidad, correspondiente a costes directos, que actualmente está aceptado.
* Importe aceptado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe de la anualidad, correspondiente a costes indirectos, que actualmente está aceptado.
* Importe rechazado. Es un campo de introducción manual. Se debe de introducir el importe que hasta el momento ha sido rechazado, de acuerdo a la respuesta a las justificación realizada.
* Importe rechazado: costes directos. Es un campo de introducción manual. Se debe de introducir el importe de la anualidad, que hasta el momento ha sido rechazado, correspondiente a costes directos.
* Importe rechazado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe de la anualidad, que hasta el momento ha sido rechazado, correspondiente a costes indirectos.
* Importe alegado. Es un campo de introducción manual. Se debe de introducir el importe de la anualidad que hasta el momento ha sido alegado.
* Importe alegado: costes directos. Es un campo de introducción manual. Se debe de introducir el importe de la anualidad, correspondiente a costes directos, que hasta el momento ha sido alegado.
* Importe alegado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe de la anualidad, correspondiente a costes indirectos, que hasta el momento ha sido alegado.
* Importe no ejecutado. Es un campo de introducción manual. Se debe de introducir el importe concedido y no ejecutado, hasta el momento actual, en la anualidad.
* Importe no ejecutado: costes directos. Es un campo de introducción manual. Se debe de introducir el importe no ejecutado en la anualidad, correspondiente a costes directos.
* Importe no ejecutado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe no ejecutado en la anualidad, correspondiente a costes indirectos
* Importe a reintegrar. Es un campo de introducción manual.  Se debe de introducir el importe que se ha determinado, al momento actual, que debe ser reintegrado en la anualidad.
* Importe a reintegrar: costes directos. Es un campo de introducción manual.  Se debe de introducir el importe, correspondiente a costes directos, que se ha determinado, al momento actual, que debe ser reintegrado en la anualidad.
* Importe a reintegrar: costes indirectos. Es un campo de introducción manual.  Se debe de introducir el importe, correspondiente a costes indirectos, que se ha determinado, al momento actual, que debe ser reintegrado en la anualidad.
* Reintegro realizado. Es un campo de introducción manual. Se debe de introducir el importe reintegrado, hasta el momento, para la anualidad de referencia.
* Reintegro realizado: costes directos. Es un campo de introducción manual. Se debe de introducir el importe, correspondiente a costes directos, que ha sido reintegrado, hasta el momento, para la anualidad de referencia.
* Reintegro realizado: costes indirectos. Es un campo de introducción manual. Se debe de introducir el importe, correspondiente a costes indirectos, que ha sido reintegrado, hasta el momento, para la anualidad de referencia.
* Intereses a reintegrar. Es un campo de introducción manual. Se debe de introducir el importe que, en el momento actual, debe de ser aún reintegrado en concepto de intereses (por el importe concedido que debe ser reintegrado) de la anualidad.
* Intereses reintegrados. Es un campo de introducción manual. Se debe de introducir el importe de la anualidad que, en el momento actual, ha sido reintegrado en concepto de intereses (por el importe concedido que debe ser reintegrado).
* Fecha último reintegro. Es un campo de introducción manual. Se debe de introducir la fecha del último reintegro realizado a la entidad financiadora correspondiente asociado a la anualidad en seguimiento.
* Número justificante último reintegro. Es un campo de introducción manual. Se debe de introducir el número de justificante del último reintegro realizado a la entidad financiadora correspondiente asociado a la anualidad en seguimiento.
* Reintegro pendiente. Es un campo calculado a partir de los valores introducidos en los campos "importe a reintegrar" y "reintegro realizado".
* Intereses pendientes de reintegrar. Es un campo calculado a partir de los valores introducidos en los campos "intereses a reintegrar" e "intereses reintegrados".

  


La unidad de gestión introducirá los valores que se considere oportuno de acuerdo al estado en el que se encuentre la justificación de la anualidad en cada momento. Será obligatorio introducir la anualidad a la que corresponde el seguimiento. Cuando se haya introducido, se activará el botón "Aceptar".

  


![](/attachments/597853779/597858355.png)

  


Cuando se pulse este botón se cerrará la ventana pasando a actualizarse el listado "Estado actual seguimiento ejecución por proyecto SGI y anualidad" de acuerdo a los valores introducidos.

  


![](/attachments/597853779/597858354.png)

  


Para que los datos introducidos sean definitivamente almacenados se deberá pulsar el botón "Guardar ejecución económica". Este botón considerará todos los cambios introducidos tanto en el total de esta  página "Resumen" de "Seguimiento de justificación", como en cualquier apartado de Ejecución económica.

  


El estado actual del seguimiento de justificación por anualidad de los proyectos SGI puede ser actualizado en cualquier momento. El SGI no establece ninguna restricción sobre este punto, ni teniendo en cuenta la fecha actual respecto a las fechas de justificación del proyecto ni teniendo en cuenta las justificaciones registradas en el SGE.

  


  


###### 3\.7\.1\.4 Calendario de justificación de proyectos SGI

En esta cuarta tabla de la página de Resumen se listan todos los periodos de justificación económica definidos en los proyectos SGI con los que está vinculado el identificador SGE sobre el que se está realizando el seguimiento de la justificación. Estos periodos deberán haber sido configurados en el apartado [CSP\-Proyectos\-Configuración económica \- 9 Calendario de justificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-9.Calendariodejustificaci%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=151454884#CSPProyectosConfiguraci%C3%B3necon%C3%B3mica-9.Calendariodejustificaci%C3%B3n") de cada proyecto. Esta tabla, aparte de servir como resumen informativo, permitirá vincular los datos de la justificación realizada en el SGE con los periodos definidos en el SGI. Esta vinculación se establecerá haciendo uso del identificador con el que se reconozca la justificación dentro del SGE. Para poder crear requerimientos vinculados a una justificación anual será necesario establecer este vínculo entre los periodos de justificación del SGI y las justificaciones realizadas en el SGE.

  


![](/attachments/597853779/597858547.png)

  


A través del icono ![](/attachments/597853779/597871609.png)disponible para todos los periodos de justificación incluidos en esta tabla se podrá aportar la información relativa a la justificación realizada. Se mostrará la siguiente ventana:

![](/attachments/597853779/857473246.png)

  


Se podrán cumplimentar los campos:

* Identificador de justificación. Se indicará el identificador que se haya asignado en el SGE a la justificación realizada correspondiente al periodo. El identificador debe de ser introducido manualmente. El formato de este identificador dependerá del SGE. Se incorpora un icono de aviso informativo sobre el campo que mostrará un mensaje con el formato que debe tener el dato introducido.

![](/attachments/597853779/857473247.png)

* Fecha de presentación de la justificación. Se introducirá la fecha de realización de la justificación.

  


Cumplimentados ambos campos se activará el botón "Aceptar":

![](/attachments/597853779/857473248.png)

  


Esta información se mostrará en la tabla del Calendario de justificación

![](/attachments/597853779/597858346.png)

  


Para que los datos introducidos sean definitivamente almacenados se deberá pulsar el botón "Guardar ejecución económica". Este botón considerará todos los cambios introducidos tanto en el total de esta  página "Resumen" de "Seguimiento de justificación", como en cualquier apartado de Ejecución económica.

  


Una vez introducidos los datos sobre un periodo éstos podrán ser actualizados. Para ello se utilizará el mismo botón ![](/attachments/597853779/597871609.png)del periodo. La ventana se mostrará con los datos cargados, se podrán borrar e introducir los nuevos.

![](/attachments/597853779/857473248.png)

  


También se podrán dejar vacíos. En este caso se aplicarán validaciones para comprobar si el Identificador de justificación tuviese requerimientos o gastos asociados. En este caso se informará con un mensaje para que se revise la información relacionada. Independientemente, se permitirá realizar la operación.

![](/attachments/597853779/857473250.png)

  


La información de realización de la justificación asociada a un periodo, podrá ser actualizada en cualquier momento. El SGI no establece ninguna restricción sobre este punto, ni teniendo en cuenta la fecha actual respecto a las fechas de justificación del proyecto ni teniendo en cuenta las justificaciones registradas en el SGE.

  


###### 3\.7\.1\.5 Calendario de seguimiento científico de proyectos SGI

En esta quinta tabla de la página de Resumen se listarán todos los periodos de seguimiento científico definidos sobre todos los proyectos SGI vinculados al identificador SGE para el que se está realizando el seguimiento de justificación. Los periodos de seguimiento científico habrán tenido que ser configurados sobre cada uno de los proyectos, en el apartado [CSP\-Proyectos \- 4\.13 Seguimiento científico](https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.13Seguimientocient%C3%ADfico "https://confluence.um.es/confluence/display/HERCULES/CSP-Proyectos#CSPProyectos-4.13Seguimientocient%C3%ADfico"). Sobre cada periodo de seguimiento científico se podrá aportar la fecha de entrega de la documentación asociada.

![](/attachments/597853779/597858563.png)

  


Pulsando el icono de acción ![](/attachments/597853779/597871609.png)se mostrará la siguiente ventana:

![](/attachments/597853779/597858559.png)

  


Se podrá introducir la fecha en la que se haya realizado la justificación científica. Cumplimentada la fecha se activará el botón "Aceptar".

![](/attachments/597853779/597858560.png)

  


Tras pulsar el botón "Aceptar", la información introducida se mostrará en la tabla de Seguimiento científico.

![](/attachments/597853779/597858558.png)

  


Para que los datos introducidos sean definitivamente almacenados se deberá pulsar el botón "Guardar ejecución económica". Este botón considerará todos los cambios introducidos tanto en el total de esta  página "Resumen" de "Seguimiento de justificación", como en cualquier apartado de Ejecución económica.

  


Una vez introducidos los datos sobre un periodo éstos podrán ser actualizados. Para ello se utilizará el mismo botón ![](/attachments/597853779/597871609.png)del periodo. La ventana se mostrará con la fecha de presentación informada, pudiendo borrar este dato e introducir otro.

![](/attachments/597853779/597858556.png)

  


La fecha de presentación de la justificación asociada a un periodo de seguimiento científico, podrá ser actualizada en cualquier momento. El SGI no establece ninguna restricción sobre este punto, ni teniendo en cuenta la fecha actual respecto a las fechas de justificación del proyecto ni teniendo en cuenta las justificaciones económicas registradas en el SGE.

  


##### 3\.7\.2\. Requerimientos

En este apartado se introducirán las notificaciones o requerimientos remitidos por las entidades financiadoras en referencia a las justificaciones realizadas. El SGI implementa un mecanismo de requerimientos único para todos los proyectos. Los tipos de requerimientos configurados en el SGI son:

* Requerimiento documental y su resolución
* Requerimiento de subsanación
* Acuerdo de inicio de procedimiento de reintegro
* Procedimiento de reintegro
* Informe de cierre
* Recurso

Los requerimientos, a su vez, se tratan de manera genérica, de forma que todos tendrán los mismos campos disponibles, debiendo cumplimentar los que apliquen en cada caso. Sobre cada requerimiento se podrá registrar la información asociada a la respuesta emitida.

  


Inicialmente el apartado de requerimientos estará vacío:

![](/attachments/597853779/597858555.png)

  


Para añadir un requerimiento se deberá pulsar el botón "Añadir requerimiento de justificación". Se mostrará la página inicial de Datos generales del requerimiento.

###### 3\.7\.2\.1 Datos generales

Como se indicaba previamente el detalle de los requerimientos será común independientemente del tipo de requerimiento. La pantalla de datos generales tiene el siguiente aspecto:

![](/attachments/597853779/597858554.png)

  


Los campos disponibles son:

* **Proyecto SGI**. Se listarán los proyectos SGI con los que esté vinculado el identificador SGE para el que se está realizando el seguimiento de justificación. Si el identificador SGE está vinculado a un único proyecto SGI, éste se mostrará por defecto seleccionado. Si el identificador SGE está vinculado a más de un proyecto SGI, se deberá seleccionar uno de los listados. Es un campo obligatorio, es decir, un requerimiento deberá pertenecer a un proyecto SGI concreto.
* **Identificador de la justificación**. De forma opcional, se puede vincular el requerimiento con una justificación concreta. Esto será tomado en cuenta por el SGI como que la justificación se realiza por anualidades. Por cada requerimiento vinculado a un identificador de justificación diferente, se mostrará un elemento en la tabla ["Seguimiento de justificación por proyecto SGI y anualidad" de la página resumen](#CSPEjecucióneconómica-estado_actual_por_anualidad "#CSPEjecucióneconómica-estado_actual_por_anualidad"). El identificador de justificación con el que se relaciona el requerimiento se corresponderá con una de las justificaciones realizadas desde el SGE. Se proporciona un listado que contiene todos los identificadores de justificación registrados sobre la tabla ["Calendario de justificación" de la página de resumen](#CSPEjecucióneconómica-seg_justificacion_calendario "#CSPEjecucióneconómica-seg_justificacion_calendario"). Si un requerimiento no se vincula a una justificación concreta, querrá decir que el requerimiento afecta a todo el proyecto SGI y que, por tanto, el seguimiento de la justificación del  proyecto no se realiza por anualidades.
* **Número de requerimiento.** Es un campo calculado, que no puede ser introducido manualmente. Se corresponde con el orden de los requerimientos, dentro de cada proyecto SGI, de acuerdo a la fecha de notificación indicada en cada requerimiento.
* **Tipo de requerimiento**. Es un campo obligatorio. Se debe indicar el tipo de requerimiento, seleccionando un valor del listado proporcionado. Los valores disponibles son:
	+ Requerimiento documental
	+ Resolución del requerimiento documental
	+ Requerimiento de subsanación
	+ Acuerdo de inicio de procedimiento de reintegro
	+ Resolución del procedimiento de reintegro
	+ Informe de cierre
	+ Resolución de recurso

Como se adelantaba previamente los campos disponibles para cualquier requerimiento son los mismos. Aquellos campos que no aplique cumplimentar sobre un requerimiento particular se dejarán vacíos.

No se establece ninguna limitación sobre el tipo que debe de tener el primer requerimiento creado sobre un proyecto SGI. Se podría iniciar el registro, por ejemplo, por un "acuerdo de inicio de procedimiento de reintegro" o directamente con un "informe de cierre".

* **Requerimiento previo**. Se puede vincular un requerimiento con otro creado previamente. Esto permitirá recoger en el SGI el ciclo habitual de estos requerimientos, asociando, por ejemplo, un acuerdo de inicio de procedimiento de reintegro con el requerimiento de subsanación previo o un informe de cierre con el requerimiento previo correspondiente. Al igual que, tal y como se indicaba en el punto anterior, no se limita que el primer requerimiento registrado para un proyecto SGI sea de un tipo u otro, no se limita que un requerimiento se pueda vincular con uno u otro requerimiento previo. Tampoco se establece ninguna limitación para forzar la introducción completa del ciclo, es decir, se podría registrar el "requerimiento de subsanación" y el "acuerdo de inicio de procedimiento de reintegro" sin finalizar posteriormente con el registro de los requerimientos posteriores.
* **Fecha de notificación**. Se debe de introducir la fecha de recepción de la notificación del requerimiento. En base a ella se calculará el "número de requerimiento". Es un campo opcional aunque recomendable para poder calcular el orden de los requerimientos
* **Fin del plazo de respuesta o alegación**. Es la fecha en la que finaliza el plazo disponible para dar respuesta al requerimiento. Es un campo opcional.
* **Importe total aceptado**. Es el importe que ha sido aceptado en la justificación de acuerdo a la notificación recibida. Es un campo opcional.
* **Importe aceptado: costes directos**. Es el importe aceptado en la justificación, correspondiente a costes directos. Es un campo opcional.
* **Importe aceptado: costes indirectos**. Es el importe aceptado en la justificación, correspondiente a los costes indirectos. Es un campo opcional.
* **Importe total rechazado**. Es el importe que ha sido rechazado en la justificación de acuerdo a la notificación recibida. Es un campo opcional.
* **Importe rechazado: costes directos**. Es el importe rechazado en la justificación, correspondiente a costes directos. Es un campo opcional.
* **Importe rechazado: costes indirectos**. Es el importe rechazado en la justificación, correspondiente a costes indirectos. Es un campo opcional.
* **Importe total a reintegrar**. Es el importe que debe de ser reintegrado de acuerdo a la notificación recibida. Es un campo opcional.
* **Importe a reintegrar: costes directos**. Es el importe que debe de ser reintegrado, correspondiente a costes directos. Es un campo opcional.
* **Importe a reintegrar: costes indirectos**. Es el importe que debe de ser reintegrado, correspondiente a costes indirectos. Es un campo opcional.
* **Intereses a reintegrar**. Es el importe que debe ser reintegrado en concepto de los intereses generados. Es un campo opcional.
* **Observaciones**. Campo libre para introducir cualquier observación. Es un campo opcional.
* **Informe de cierre**. Se unifican en este bloque los campos específicos que solo estarán presentes en los informes de cierre. En un informe de cierre también estarán disponibles todos los campos previos que también podrán ser informados.
	+ Subvención justificada. Importe total de la subvención que ha sido justificada. Es un campo opcional.
	+ Defecto de la subvención. Importe total de la subvención recibida no que ha sido justificada. Es un campo opcional.
	+ Anticipo justificado. Importe total del anticipo recibido la subvención que ha sido justificado. Es un campo opcional.
	+ Defecto del anticipo. Importe total sobre el anticipo recibido que no ha sido justificado. Es un campo opcional.
* **Resolución de recurso**. Apartado para indicar la resolución del recurso, en aquellos casos en los que la resolución de la justificación haya derivado en la interposición de un recurso.
	+ Recurso estimado. En este campo se recogerá la resolución de la estimación del recurso presentado. Es un campo opcional. Se podrán utilizar todos los campos previos para recoger el detalle final de los importes aceptados y rechazados.
* **Incidencias en documentación**. Se podrán registrar las incidencias notificadas en el requerimiento referentes a la documentación general aportada como justificación del proyecto. No todos los requerimientos supondrán revisión de la documentación general, por tanto, es un apartado opcional. Para añadir una incidencia de documentación se debe de pulsar el botón "Añadir incidencia documento". Se mostrará una ventana para introducir el detalle de la incidencia notificada:

![](/attachments/597853779/597858525.png)

Se podrá introducir el documento sobre el que se reporta la incidencia y la descripción de la incidencia. Para registrar una incidencia de documentación dentro del requerimiento, será obligatoria la introducción de, al menos, el documento sobre el que se reporta la incidencia. El documento se introducirá como un texto, sin que sea necesario que sea un documento que previamente hubiera sido adjuntado en el apartado de documentos del proyecto (Ver [CSP\-Proyectos\- 4\.16 Documentos](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.16Documentos "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-unidad-de-gestion/mdu-perfil-unidad-de-gestion-modulo-csp/csp-proyectos/index.md#CSPProyectos-4.16Documentos")).

Cumplimentado el campo "documento de justificación" se activará el botón "Añadir"

![](/attachments/597853779/597858523.png)

  


Tras pulsar el botón "Añadir" se actualizará el apartado "Incidencias en documentación" del requerimiento:

![](/attachments/597853779/597858522.png)

  


Se podrán añadir tantas incidencias en documentación como sea necesario. Sobre las incidencias creadas se podrán aplicar las acciones editar, ![](/attachments/597853779/597871609.png), y eliminar, ![](/attachments/597853779/597858519.png).

* + Editar. Mostrará la ventana con el detalle de la incidencia, pudiendo ser modificado cualquiera de sus dos campos

![](/attachments/597853779/597858517.png)

El botón "Aceptar" se activará cuando se introduzcan cambios en alguno de los dos campos.

* + Eliminar. Tras pulsar esta acción se mostrará un mensaje de confirmación

![](/attachments/597853779/597858535.png)

Si se pulsa el botón "Aceptar" se eliminará la incidencia de documentación del requerimiento. Si se pulsa el botón "Cancelar" no se realizará la eliminación.

  


Tras cumplimentar los campos necesarios en el apartado Datos generales, se deberá pulsar el botón "Guardar". Cuando la operación de guardado haya finalizado se mostrará un mensaje informativo:

![](/attachments/597853779/597858520.png)

  


Tras ello se seguirá mostrando el detalle del requerimiento, pasando a estar disponibles los apartados "Gastos" y "Respuesta/alegación" del requerimiento.

![](/attachments/597853779/597858534.png)

  


###### 3\.7\.2\.2 Gastos

En este apartado se podrán recoger los gastos que se reportan en el requerimiento. Los gastos reportados serán gastos que habrán sido incluidos en las justificaciones realizadas del proyecto. Como se indicaba en apartados previos, el flujo implementado en el SGI parte de la base que las justificaciones son realizadas y registradas en el SGE, por tanto, los gastos a añadir al requerimiento deberán ser proporcionados desde el SGE y tendrá que estar habilitada la variable de configuración "[Añadir entrada integración gastos justificados (seguimiento justificación)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")".

####### 3\.7\.2\.2\.1 Añadir gastos al requerimiento

Inicialmente el requerimiento no tendrá ningún gasto.

![](/attachments/597853779/597858532.png)

  


Para incluir un gasto al requerimiento se debe pulsar el botón "Añadir gasto". 

Se mostrará un buscador, que permitirá realizar búsquedas sobre los gastos que figuren como justificados en el SGE.

![](/attachments/597853779/597858531.png)

  


Se podrán aplicar filtros por los siguientes campos:

* ID justificación. Se mostrarán los identificadores de justificación del proyecto SGI sobre el que se ha creado el requerimiento (campo Proyecto SGI de los [datos generales del requerimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales")). Los identificadores de justificación habrán debido de ser introducidos en la tabla [Calendario de justificación de la página de Resumen](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-seg_justificacion_calendario3.6.1.4Calendariodejustificaci%C3%B3ndeproyectosSGI "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-seg_justificacion_calendario3.6.1.4Calendariodejustificaci%C3%B3ndeproyectosSGI") de acuerdo a las justificaciones realizadas en el SGE para el proyecto.

  


![](/attachments/597853779/597858530.png)

  


Se podrá seleccionar uno o más identificadores de justificación de los listados, marcando el check que acompaña a cada ID. Si no se indica ningún identificador de justificación se consultará al SGE por todos los gastos justificados del proyecto, independientemente de la justificación en la que fueran incluidos.

![](/attachments/597853779/597858529.png)

  


* Número registro proveedor. Campo de texto para introducir manualmente una cadena alfanumérica. El dato introducido será aplicado como filtro por el SGE para devolver los gastos justificados que tengan un número de registro proveedor que contenga la cadena introducida.  Es un filtro opcional.
* Importe presentado en justificación. Campo para introducir manualmente  un valor. El dato introducido será aplicado como filtro  por el SGE para devolver los gastos justificados que tengan un importe justificado coincidente. Es un filtro opcional.
* Fecha de devengo desde. Campo  para introducir manualmente una fecha. La fecha introducida será aplicada como filtro por el SGE para devolver los gastos justificados que tengan una fecha mayor o igual a la fecha indicada. Es un filtro opcional.
* Fecha de devengo hasta. Campo  para introducir manualmente una fecha. La fecha introducida será aplicada como filtro por el SGE para devolver los gastos justificados que tengan una fecha menor o igual a la fecha indicada. Es un filtro opcional.
* Fecha de pago desde. Campo  para introducir manualmente una fecha. La fecha introducida será aplicada como filtro por el SGE para devolver los gastos justificados que tengan una fecha de pago mayor o igual a la fecha indicada. Es un filtro opcional.
* Fecha de pago hasta. Campo  para introducir manualmente una fecha. La fecha introducida será aplicada como filtro por el SGE para devolver los gastos justificados que tengan una fecha de pago menor o igual a la fecha indicada. Es un filtro opcional.

  


Introducidos los filtros deseados se debe pulsar el botón "Buscar". No es obligatorio indicar ningún filtro, devolviendo en este caso todos los gastos justificados para el identificador SGE del que se está realizando el seguimiento de justificación. Desde el SGI se enviarán los filtros al SGE que será el sistema que realizará la búsqueda sobre los gastos justificados y devolverá el conjunto de gastos que cumplan las condiciones de búsqueda. 

![](/attachments/597853779/597858527.png)

  


En el listado se mostrarán los campos principales del gasto:

* ID justificación. Es el código de la justificación en la que ha sido incluido el gasto. La justificación habrá sido realizada desde el SGE.
* Número de registro. Es el número de registro del gasto en el SGE.
* Número de registro proveedor. Es el número de registro otorgado por el proveedor al gasto.
* Descripción de la factura o gasto. Descripción incluida en el gasto.
* Código económico. Tipo de gasto de acuerdo a la clasificación del SGE.
* Fecha de devengo. Fecha de devengo del gasto.
* Fecha de pago. Fecha de pago del gasto.
* Importe del gasto. Importe del gasto.
* Importe presentado en justificación. Importe de justificación del gasto. Será un dato que debería haber sido aportado en el momento de realizar la justificación desde el módulo de  justificaciones del SGE.
* Fecha de inicio de contrato. Es un campo que solo estará presente en los gastos de personal.
* Dedicación anual al proyecto. Es un campo que solo estará presente en los gastos de personal.

  


Cada gasto tendrá disponible el icono de acción, ![](/attachments/597853779/597858356.png), que mostrará su detalle completo recuperado del SGE. Si el gasto tuviera documentos adjuntos en el SGE también se mostrarían en esta pantalla de detalle:

  


![](/attachments/597853779/597858626.png)

  


Se deben de seleccionar los gastos que se desea añadir al requerimiento. Si se quieren incluir todos los gastos devueltos por el buscador, se podrá marcar la casilla disponible en la cabecera del listado:

![](/attachments/597853779/597858657.png)

  


Al marcar la casilla del listado quedarán seleccionados todos los gastos, tanto de la página mostrada como del resto de páginas (en caso de que el número de gastos devueltos ocupe varias páginas).

![](/attachments/597853779/597858627.png)

  


Si se quiere seleccionar solo uno o varios gastos concretos, deberán ser marcados individualmente a través de su casilla particular:

![](/attachments/597853779/597858528.png)

  


Cuando se hayan seleccionado los gastos se deberá pulsar el botón "Añadir". Los gastos seleccionados se mostrarán en el listado de gastos del requerimiento:

![](/attachments/597853779/597858625.png)

  


Para que el requerimiento sea definitivamente almacenado se deberá pulsar el botón "Guardar". Se guardarán los cambios a aportados tanto en el apartado "Gastos" como en el resto de apartados del requerimiento.

![](/attachments/597853779/597858623.png)

  


Se podrán añadir tantos gastos al requerimiento como sea necesario.

####### 3\.7\.2\.2\.2 Incluir información del requerimiento a los gastos

Desde el listado de gastos del requerimiento, se podrá incorporar información al mismo, para ello se pulsará el botón ![](/attachments/597853779/597871609.png) asociado a cada gasto. La información del gasto se agrupará en diferentes bloques:

* **Datos SGE**: En este bloque se mostrará el detalle de campos del gasto recuperados del SGE, incluidos los documentos del gasto si los tuviera. Los campos del gasto procedentes del SGE no podrán ser modificados.

![](/attachments/597853779/597858650.png)

  


* **Datos SGI \- Datos del requerimiento.** En este bloque se podrá aportar la información del gasto reportada en el requerimiento. Se podrá indicarla siguiente información:
	+ Aceptado/Rechazado. Se podrá marcar si el gasto ha sido aceptado o rechazado en la justificación de acuerdo a la información notificada en el requerimiento en curso. Por defecto, el gasto aparece marcado como "Aceptado".
	+ Importe aceptado. En este campo se podrá recoger el importe del gasto que ha sido aceptado en la justificación de acuerdo a la notificación del requerimiento en curso.
	+ Importe rechazado. En este campo se podrá recoger el importe del gasto que ha sido rechazado en la justificación de acuerdo a la notificación del requerimiento en curso.
	+ Incidencia en el gasto o motivo de rechazo. Se podrá recoger la incidencia o motivo de rechazo del gasto reportada en el requerimiento.
	+ No será obligatoria la cumplimentación de ningún campo.

![](/attachments/597853779/597858646.png)

  


* **Datos SGI \- Datos de la respuesta al requerimiento**. De forma simultánea, o con posterioridad, podrá registrarse la alegación realizada para el gasto remitida en la respuesta del requerimiento. Se podrá indicar:
	+ Importe alegado. Campo para indicar el importe del gasto que ha sido alegado de acuerdo a la respuesta remitida al requerimiento.
	+ Alegación. Campo de texto para recoger la alegación realizada sobre el gasto remitida en la respuesta al requerimiento.

  


![](/attachments/597853779/597858644.png)

  


Tras aportar al información deseada sobre el gasto, se deberá pulsar el botón "Aceptar". Se retornará al listado de gastos del requerimiento

![](/attachments/597853779/597858645.png)

  


Se podrá aportar la información anterior sobre cualquiera de los gastos del requerimiento. Como siempre para que toda la información sea definitivamente almacenada se debe pulsar el botón "Guardar". La información aportada en el SGI sobre el gasto, no será, en ningún caso, remitida al SGE. Es información propia del seguimiento de justificación que quedará almacenada en el SGI.

  


####### 3\.7\.2\.2\.3 Eliminar gastos del requerimiento

Una vez  que un gasto haya sido añadido a un requerimiento podrá ser eliminado. Se utilizará para ello la acción "eliminar", ![](/attachments/597853779/597858519.png), disponible en el listado de gastos del requerimiento.

Tras pulsar la acción "eliminar" se mostrará un mensaje de confirmación. Si se confirma el gasto será eliminado del listado de gastos de requerimiento. En ningún momento se eliminará el gasto del SGE, por lo que podrá volver a añadirse al requerimiento actual u otro requerimiento si fuese necesario.

  


###### 3\.7\.2\.3 Respuesta/Alegación

Además de poder aportar el detalle a nivel de gasto de la respuesta remitida al requerimiento, se puede registrar la información global de la misma. Para ello se dispone del apartado Respuesta/Alegación en cada requerimiento. 

![](/attachments/597853779/597858640.png)

  


Los campos disponibles son:

* Número requerimiento. Es un campo informativo que no puede ser modificado. Se corresponde con el número de requerimiento al que pertenece la respuesta que se está registrando. Es un recordatorio del requerimiento de procedencia, cuyo detalle puede verse en el apartado [Datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales").
* Tipo de requerimiento. Es un campo informativo que no puede ser modificado. Se corresponde con el tipo de requerimiento al que pertenece la respuesta que se está registrando. Es un recordatorio del requerimiento de procedencia, cuyo detalle puede verse en el apartado [Datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales").
* Fecha respuesta/alegación. Se podrá indicar la fecha en la que se remite la respuesta al requerimiento.
* Importe total alegado. Campo disponible para indicar el importe total que se alega como respuesta al requerimiento. Además, desde el listado de gastos del requerimiento, se podrá indicar el [importe alegado sobre cada gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.2.2Incluirinformaci%C3%B3ndelrequerimientoalosgastos "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.2.2Incluirinformaci%C3%B3ndelrequerimientoalosgastos").
* Importe alegado: costes directos. Campo disponible para indicar el importe total que se alega, correspondiente a costes directos.
* Importe alegado: costes indirectos. Campo disponible para indicar el importe total que se alega, correspondiente a costes indirectos.
* Importe total reintegrado. Si, como respuesta al requerimiento, se realizase ya algún reintegro, se podrá indicar el importe total reintegrado.
* Importe total reintegrado: costes directos. Si, como respuesta al requerimiento, se realizase ya algún reintegro, se podrá indicar el importe reintegrado correspondiente a costes directos.
* Importe total reintegrado: costes indirectos. Si, como respuesta al requerimiento, se realizase ya algún reintegro, se podrá indicar el importe reintegrado correspondiente a costes indirectos.
* Intereses reintegrados. Si, como respuesta al requerimiento, se realizase ya algún reintegro en concepto de los intereses generados por la subvención recibida en su momento, se podrá indicar la cantidad reintegrado.
* Fecha de pago del reintegro. Si, como respuesta al requerimiento en curso, se realizase algún reintegro, se podrá recoger en este campo la fecha del mismo.
* Justificante de pago del reintegro. Si, como respuesta al requerimiento en curso, se realizase algún reintegro, se podrá recoger en este campo el código asociado al justificante del mismo.
* Observaciones. Campo de texto para recoger cualquier observación referida a la respuesta al requerimiento.
* Respuesta a las incidencias en documentación.  En este apartado se listarán las incidencias de documentación que hubiesen sido informadas en el apartado [Datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales") del requerimiento. Se podrá aportar, ahora, la respuesta o alegación remitida sobre la incidencia. Para ello, se deberá pulsar el icono de la acción editar, ![](/attachments/597853779/597871609.png). Se mostrará la siguiente ventana:

![](/attachments/597853779/597858636.png)

  


  


* + - Documento de justificación. Campo no modificable que muestra la información aportada en el apartado "Incidencias en documentación" en el apartado [Datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales") del requerimiento.
		- Incidencia/motivo de rechazo. Campo no modificable que muestra la información aportada en el apartado "Incidencias en documentación" en el apartado [Datos generales](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141937936#CSPEjecuci%C3%B3necon%C3%B3mica-3.6.2.1Datosgenerales") del requerimiento
		- Alegación presentada. Campo de texto en el que se puede recoger la alegación remitida en la respuesta del requerimiento sobre la incidencia reportada. Al cumplimentar este campo se activará el botón "Aceptar".

![](/attachments/597853779/597858634.png)

  


Tras pulsar el botón "Aceptar" se actualizará el campo "Alegación presentada" de la tabla  "Respuesta a las incidencias en documentación"

![](/attachments/597853779/597858635.png)

  


Se podrá incluir la respuesta a todas las incidencias en documentación, si hubiese más de una, si bien no será obligatorio aportar esta información.

  


Para que esta información sea definitivamente almacenada se debe pulsar el botón "Guardar", que es común a todos los apartados del requerimiento en curso.

  


##### 3\.7\.3 Listado de requerimientos

Una vez registrado un requerimiento éste se mostrará en el listado de requerimientos del Seguimiento de justificación.

![](/attachments/597853779/597858631.png)

  


Se podrá utilizar la acción editar, ![](/attachments/597853779/597871609.png), para aportar más detalle al requerimiento. La información del requerimiento, "Datos generales", "Gastos" y "Respuesta/alegación", no tiene porqué ser aportada en el mismo momento. El SGI no marca ninguna restricción al respecto. Al pulsar el icono de acción ![](/attachments/597853779/597871609.png), se mostrarán el detalle del requerimiento, pudiendo acceder a cualquiera de sus apartados para cumplimentarlos y/o modificar sus datos.

![](/attachments/597853779/597858628.png)

  


  


Desde el listado de requerimientos del seguimiento de justificación, también estará disponible la acción eliminar, ![](/attachments/597853779/597858519.png). Como siempre, antes de proceder a la eliminación se mostrará un mensaje de confirmación

![](/attachments/597853779/597858606.png)

  


  


Se podrán añadir tantos requerimientos al seguimiento de justificación de un proyecto económico como sea necesario. Para ello, se utilizará el botón "Añadir requerimiento de justificación".

![](/attachments/597853779/597858603.png)

  


Como se indicaba en apartados anteriores, el SGI permite encadenar unos requerimientos con otros a través del campo "requerimiento previo". La vinculación de un requerimiento a su predecesor se podrá identificar desde el listado de requerimientos, ya que la columna "requerimiento previo" estará informada:

![](/attachments/597853779/597858602.png)

  


Aquellos requerimientos que tienen otros enlazados no tendrán disponible la acción eliminar, en su lugar se mostrará un icono de aviso informativo.

![](/attachments/597853779/597858601.png)

  


Al pasar el ratón por encima del icono se mostrará un mensaje informativo:

![](/attachments/597853779/597858599.png)

  


En el ejemplo anterior, para poder eliminar el requerimiento número 2 (de tipo "subsanación"), deberá eliminarse primero el requerimiento número 3 (de tipo "acuerdo de inicio de procedimiento de reintegro"). Una vez que un requerimiento no tenga enlazados otros requerimientos, tendrá disponible la acción "eliminar".

  


![](/attachments/597853779/597858597.png)

  


##### 3\.7\.4 Exportación de gastos justificados y de requerimientos

La información del seguimiento de justificación puede ser exportada. Por un lado, se permite la exportación de los gastos justificados y por otro la exportación de los requerimientos. Ambas exportaciones contienen además datos generales del proyecto y de su estado actual de seguimiento de justificación.

La exportación de los gastos justificados se realizará a través del botón "Exportar gastos justificados" disponible en la página de Resumen siempre y cuando este habilitada la variable de configuración "[Añadir entrada integración gastos justificados (seguimiento justificación)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP "https://confluence.um.es/confluence/pages/viewpage.action?pageId=721420329#MDUPerfildeAdministraci%C3%B3ndelsistema-1.2Configuraci%C3%B3nCSP")".:

  


  


![](/attachments/597853779/597858596.png)

  


Tras pulsar el botón se mostrará la ventana para selección del formato de exportación: XLSX o CSV.

![](/attachments/597853779/597858594.png)

  


  


Para generar el fichero de exportación se solicitarán al SGE todos los gastos justificados del proyecto económico, independientemente de que hayan sido introducidos o no en algún requerimiento. El fichero de exportación resultante contendrá los campos del gasto en el SGE así como la información aportada al gasto en cada uno de los requerimientos en los que ha sido incluido.

  


La exportación de los requerimientos se realizará desde el listado inicial del apartado Ejecución Económica.

![](/attachments/597853779/597858620.png)

  


Al pulsar el botón de exportación se mostrará la ventana de selección de formato. Los formatos disponibles son:

* XSLX
* CSV

![](/attachments/597853779/597858621.png)

  


El fichero resultante contendrá la información general de todos los proyectos económicos incluidos en el listado resultante de aplicar la búsqueda sobre ejecución económica, así como la información asociada a cada uno de los requerimientos de cada uno de los proyectos SGI vinculados a estos proyectos económicos.

  


  





