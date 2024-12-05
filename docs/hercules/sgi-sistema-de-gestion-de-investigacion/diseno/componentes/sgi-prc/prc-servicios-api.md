# Hércules : PRC \- Servicios API



## ProduccionCientifica

Ver detalle de los servicios del ESB en [ESB \- SGI \- Producción Científica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-produccion-cientifica/index.md"). En esa página se especifica los servicios necesarios a implementar en el ESB que serán llamados desde una entidad externa al SGI (la aplicación del CVN).

### Creación de item de Producción científica

Detalle del servicio del ESB:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| POST | /producciones\-cientificas | ProduccionCientifica | ProduccionCientifica | Recibe como parámetro los campos necesarios para crear un item de producción científica. |

  


Detalle servicios del SGI:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| POST | /producciones\-cientificas\-api | ProduccionCientifica | ProduccionCientifica | Recibe como parámetro los campos necesarios para crear un item de producción científica. |

  


Se debe de insertar en las siguientes tablas del SGI:

#### Tabla ProduccionCientifica y EstadoProduccionCientifica

Se crea un registro en la tabla "ProduccionCientifica" con los campos:

* idRef: el dato que le llega por parámetro
* epigrafeCVN: el dato que le llega por parámetro
* estado: si en el parámetro le llega el valor "VALIDADO" se creará un registro en la tabla "EstadoProduccionCientifica" con el campo "estado" igual al valor del enumerado TipoEstadoProduccion.VALIDADO y con fecha, la fecha actual. Si en el parámetro le llega otro valor distinto a "VALIDADO" o vacío se creará un registro en la tabla "EstadoProduccionCientifica" con el campo "estado" igual al valor del enumerado TipoEstadoProduccion.PENDIENTE y con fecha, la fecha actual.
* convocatoriaBaremacionId: valor null

#### Tabla CampoProduccionCientifica y ValorCampo

Se crearán tantos registros en la tabla "CampoProduccionCientifica" como campos tenga la lista de "campos" que viene por parámetro, con los siguientes campos:

* codigoCVN: el dato que le llega por parámetro
* por cada valor que le llega en la lista "valor" se crea un registro en la tabla "ValorCampo" con el valor indicado y el orden según venga en la lista. Si sólo hay un valor el orden  será 1, si hay dos valores, pues el primero de la lista se le pondrá orden 1 y al segundo el orden 2\.

#### Tabla Autor y AutorGrupo

Se crearán tantos registros en la tabla "Autor" como autores tenga la lista de "autores" que viene por parámetro, con los siguientes campos:

* firma: el dato que le llega por parámetro. Será obligatorio que llegue este dato o nombre y apellidos o personaRef. Uno de los tres casos es obligatorio que llegue sino se dará un error.
* personaRef: el dato que le llega por parámetro, es el identificador único de la persona dentro del sistema de gestión de personas de la Universidad, en caso de ser un investigador que pertenezca a la Universidad o este dado de alta como externo. En caso de que no exista en la Universidad dicho campo vendrá vacío. En esos casos será obligatorio que venga la firma o el nombre y apellidos. En otro caso se dará error.
* nombre: el dato que le llega por parámetro. Nombre de la persona. Obligatorio si personaRef y la firma no vienen informados.
* apellidos: el dato que le llega por parámetro. Apellidos de la persona. Obligatorio si personaRef y la firma no vienen informados.
* orden: el dato que le llega por parámetro.
* orcidId: el dato que le llega por parámetro.
* fechaInicio: se pondrá a null
* fechaFin: se pondrá a null
* ip: si viene por parámetro se cogerá del parámetro, sino se pondrá a false.

Por cada autor que tenga informado el campo "personaRef" se comprobará si dicho identificador existe como miembro de un grupo de investigación o de varios (en el módulo de Grupos de investigación \- GIN)  a fecha 31 de diciembre del año de la fecha del item, si la fecha del item es anterior a la fecha actual, sino se cogerá la fecha actual. Para obtener la fecha del item, se buscará en la tabla "ConfiguracionCampo" el "codigoCVN" cuyo campo "fechaReferenciaInicio" tenga el valor true (se buscarán entre todos los campos que pertenecen al mismo "epígrafe CVN" al que pertenece el item). Una vez obtenido el "codigoCVN" que corresponde a la fecha del item se saca su valor de la tabla "ValorCampo" del registro cuyo "código CVN" es el obtenido.

Para esos grupos de investigación a los que pertenece el autor a fecha 31 de diciembre del año del item se crea un registro por cada grupo de investigacion en la tabla "AutorGrupo" asociada a la tabla "Autor" con los siguientes campos:

* grupoRef: referencia del Grupo de investigación
* estado: valor del enumerado TipoEstadoProduccion.VALIDADO si el item de producción científica se ha creado con estado actual VALIDADO o TipoEstadoProduccion.PENDIENTE en otro caso. En caso de que el estado sea PENDIENTE se tiene que crear un comunicado para informar al IP del grupo de investigación de que tiene que validar el item ([CU\-COM\-0020 \- Generar comunicado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado"))

#### Tabla IndiceImpacto

Se crearán tantos registros en la tabla "IndiceImpacto" como índices de impacto tenga la lista de "indicesImpacto" que viene por parámetro, con los siguientes campos:

* fuente de impacto: el dato que le llega por parámetro, que tendrá que ser uno de los valores del enumerado FuenteImpacto (000, 010, 020, BCI, ICEE, DIALNET, CITEC, SCIMAGO, ERIH, MIAR, FECYT, GII\_GRIN\_SCIE, CORE, OTHERS)
* indice: el dato que le llega por parámetro. Este valor llega cuando la FuenteImpacto es un índice, un número, para la fuentes de impacto que no son ni GII\_GRIN\_SCIE ni CORE
* ranking: el dato que le llega por parámetro. Este valor llega cuando la FuenteImpacto es un ranking, una cadena, para la fuentes de impacto GII\_GRIN\_SCIE o CORE. Valor del enumerado TipoRanking
* anio: el dato que le llega por parámetro
* otraFuenteImpacto: el dato que le llega por parámetro
* posicionPublicacion: el dato que le llega por parámetro
* numeroRevistas: el dato que le llega por parámetro
* revista25: el dato que le llega por parámetro

#### Tabla Acreditación

Se crearán tantos registros en la tabla "Acreditacion" como acreditaciones tenga la lista de "acreditaciones" que viene por parámetro, con los siguientes campos:

* url: el dato que le llega por parámetro. O tendrá informado el campo url o el documentoRef.
* documentoRef: el dato que le llega por parámetro. O tendrá informado el campo url o el documentoRef. Será la referencia al documento almacenado en el sistema de gestión de documentación del SGI (previamente desde el CVN se habrá almacenado el documento y nos enviarán la referencia al mismo).

#### Tabla Proyecto

Se crearán tantos registros en la tabla "Proyecto" como proyectos tenga la lista de "proyectos" que viene por parámetro, con los siguientes campos:

* proyectoRef: el dato que le llega por parámetro. Será una referencia a un proyecto almacenado en el módulo de CSP del SGI.

  


### Modificación de item de Producción científica

Detalle del servicio del ESB:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| PUT | /producciones\-cientificas/{idRef} | ProduccionCientifica | ProduccionCientifica | Recibe como parámetro los campos necesarios para modificar un item de producción científica.El id pasado por URL es el identificador que tienen en el CVN |

  


Detalle servicios del SGI:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| PUT | /producciones\-cientificas\-api/{idRef} | ProduccionCientifica | ProduccionCientifica | Recibe como parámetro los campos necesarios para modificar un item de producción científica.El id pasado por URL es el identificador que tienen en el CVN |

  


Sólo se podrá modificar un item de producción científica si el estado actual del item es VALIDADO o RECHAZADO. En caso de que el item tenga como estado actual VALIDADO\_PAR o PENDIENTE se devolverá un error diciendo "No se pueden enviar a producción científica porque el item esta en estado Pendiente o Validado parcialmente".

El item a modificar en el SGI es el item de la tabla "ProduccionCientifica" cuyo campo "idRef" coincide con el identificador del parámetro pasado en la URL y que el campo "convocatoriaBaremacionId" es null. (y el epigrafeCVN sea igual al indicado en el parámetro).

Si el item en producción científica tiene estado VALIDADO o RECHAZADO se modifica su valores en las tablas:

#### Tabla ProduccionCientifica y EstadoProduccionCientifica

Se modifica el campo "estado" del  registro en la tabla "ProduccionCientifica":

* Si el estado actual del item en el SGI es VALIDADO mirar si se dan una de estas dos situaciones:
	+ - que cambie el valor de uno de los campos que necesitan validación adicional: se comprobará si alguno de los campos del item almacenados en la tabla "CampoProduccionCientifica" existe en la tabla "ConfiguracionCampo" con el campo "validacionAdicional" igual a true y su valor en el SGI (tabla "ValorCampo") es distinto al valor que le llega por parámetro. En este caso, se deberá de volver a validar el item por los IP de grupos
		- que cambie el listado de autores: que los autores almacenados en el SGI (tabla "Autor") no coinciden con los autores que llegan por parámetro (cambia el nombre, apellidos, firma o personaRef). En este caso, se deberá de volver a validar el item por los IP de grupos
	+ Si se dan una de estas dos situaciones anteriores el estado del item se debe de cambiar a estado PENDIENTE, por lo que se creará un registro en la tabla "EstadoProduccionCientifica" con el campo "estado" igual al valor del enumerado TipoEstadoProduccion.PENDIENTE y con fecha, la fecha actual
	+ Sino se da ninguna de las situaciones anteriores el estado no se modifica.
* Si el estado actual del item en el SGI es RECHAZADO se debe de cambiar a estado PENDIENTE, por lo que se creará un registro en la tabla "EstadoProduccionCientifica" con el campo "estado" igual al valor del enumerado TipoEstadoProduccion.PENDIENTE y con fecha, la fecha actual

#### Tabla CampoProduccionCientifica y ValorCampo

Se modificará el campo "valor" de la tabla "ValorCampo" de cada uno de los campos que lleguen en la lista de "campos" que viene por parámetro, se buscarán los valores a partir del campo "codigoCVN". En caso de que llegue un nuevo "codigoCVN" que no estuviera registrado en el SGI se creará entonces el registro en la tabla "CampoProduccionCientifica" con el "codigoCVN" que viene y por cada valor que le llega en la lista "valor" se crea un registro en la tabla "ValorCampo" con el valor indicado y el orden según venga en la lista. Si sólo hay un valor el orden  será 1, si hay dos valores, pues el primero de la lista se le pondrá orden 1 y al segundo el orden 2\.

#### Tabla Autor y AutorGrupo

Si el estado del item se ha modificado a PENDIENTE (mirar condiciones en la parte de Tabla ProduccionCiencitifica y EstadoProduccionCientifica) se eliminan todos los autores (tabla Autor y AutorGrupo) y se vuelven a crear de la siguiente manera:

* Se crearán tantos registros en la tabla "Autor" como autores tenga la lista de "autores" que viene por parámetro, con los siguientes campos:
	+ firma: el dato que le llega por parámetro. Será obligatorio que llegue este dato o nombre y apellidos o personaRef. Uno de los tres casos es obligatorio que llegue sino se dará un error.
	+ personaRef: el dato que le llega por parámetro, es el identificador único de la persona dentro del sistema de gestión de personas de la Universidad, en caso de ser un investigador que pertenezca a la Universidad o este dado de alta como externo. En caso de que no exista en la Universidad dicho campo vendrá vacío. En esos casos será obligatorio que venga la firma o el nombre y apellidos. En otro caso se dará error.
	+ nombre: el dato que le llega por parámetro. Nombre de la persona. Obligatorio si personaRef y la firma no vienen informados.
	+ apellidos: el dato que le llega por parámetro. Apellidos de la persona. Obligatorio si personaRef y la firma no vienen informados.
	+ orden: el dato que le llega por parámetro.
	+ orcidId: el dato que le llega por parámetro.
	+ fechaInicio: se pondrá a null
	+ fechaFin: se pondrá a null
	+ ip: si viene por parámetro se cogerá del parámetro, sino se pondrá a false.
* Por cada autor que tenga informado el campo "personaRef" se comprobará si dicho identificador existe como miembro de un grupo de investigación o de varios (en el módulo de Grupos de investigación \- GIN)  a fecha 31 de diciembre del año de la fecha del item, si la fecha del item es anterior a la fecha actual, sino se cogerá la fecha actual. Para obtener la fecha del item, se buscará en la tabla "ConfiguracionCampo" el "codigoCVN" cuyo campo "fechaReferenciaInicio" tenga el valor true (se buscarán entre todos los campos que pertenecen al mismo "epígrafe CVN" al que pertenece el item). Una vez obtenido el "codigoCVN" que corresponde a la fecha del item se saca su valor de la tabla "ValorCampo" del registro cuyo "código CVN" es el obtenido.
* Para esos grupos de investigación a los que pertenece el autor a fecha 31 de diciembre del año del item se crea un registro por cada grupo de investigacion en la tabla "AutorGrupo" asociada a la tabla "Autor" con los siguientes campos:
	+ grupoRef: referencia del Grupo de investigación
	+ estado: valor del enumerado TipoEstadoProduccion.VALIDADO si el item de producción científica se ha creado con estado actual VALIDADO o TipoEstadoProduccion.PENDIENTE en otro caso. En caso de que el estado sea PENDIENTE se tiene que crear un comunicado para informar al IP del grupo de investigación de que tiene que validar el item ([CU\-COM\-0020 \- Generar comunicado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado"))

Si el estado del item no se ha modificado (mirar condiciones en la parte de Tabla ProduccionCiencitifica y EstadoProduccionCientifica), continúa en estado VALIDADO no se realizan modificaciones en los autores.

#### Tabla IndiceImpacto

Se eliminan todos los registros de la tabla "IndiceImpacto" y se vuelven a crear:

* Se crearán tantos registros en la tabla "IndiceImpacto" como índices de impacto tenga la lista de "indicesImpacto" que viene por parámetro, con los siguientes campos:
	+ fuente de impacto: el dato que le llega por parámetro, que tendrá que ser uno de los valores del enumerado FuenteImpacto (000, 010, 020, BCI, ICEE, DIALNET, CITEC, SCIMAGO, ERIH, MIAR, FECYT, GII\_GRIN\_SCIE, CORE, OTHERS)
	+ indice: el dato que le llega por parámetro. Este valor llega cuando la FuenteImpacto es un índice, un número, para la fuentes de impacto que no son ni GII\_GRIN\_SCIE ni CORE
	+ ranking: el dato que le llega por parámetro. Este valor llega cuando la FuenteImpacto es un ranking, una cadena, para la fuentes de impacto GII\_GRIN\_SCIE o CORE. Valor del enumerado TipoRanking
	+ anio: el dato que le llega por parámetro
	+ otraFuenteImpacto: el dato que le llega por parámetro
	+ posicionPublicacion: el dato que le llega por parámetro
	+ numeroRevistas: el dato que le llega por parámetro
	+ revista25: el dato que le llega por parámetro

#### Tabla Acreditación

Se eliminan todos los registros de la tabla "Acreditacion" y se vuelven a crear:

* Se crearán tantos registros en la tabla "Acreditacion" como acreditaciones tenga la lista de "acreditaciones" que viene por parámetro, con los siguientes campos:
	+ url: el dato que le llega por parámetro. O tendrá informado el campo url o el documentoRef.
	+ documentoRef: el dato que le llega por parámetro. O tendrá informado el campo url o el documentoRef. Será la referencia al documento almacenado en el sistema de gestión de documentación del SGI (previamente desde el CVN se habrá almacenado el documento y nos enviarán la referencia al mismo).

#### Tabla Proyecto

Se eliminan todos los registros de la tabla "Acreditacion" y se vuelven a crear:

* Se crearán tantos registros en la tabla "Proyecto" como proyectos tenga la lista de "proyectos" que viene por parámetro, con los siguientes campos:
	+ proyectoRef: el dato que le llega por parámetro. Será una referencia a un proyecto almacenado en el módulo de CSP del SGI.

  


  


### Borrado de item de Producción científica

Detalle del servicio del ESB:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| DETELE | /producciones\-cientificas/{idRef} |  |  | Elimina un item de producciín científica.El id pasado por URL es el identificador que tienen en el CVN |

  


Detalle servicios del SGI:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| DETELE | /producciones\-cientificas\-api/{idRef} |  |  | Elimina un item de producciín científica.El id pasado por URL es el identificador que tienen en el CVN |

  


  


Se elimina de forma física (se elimina el registro en la tabla ProduccionCientifica y de todas sus tablas relacionadas, ValorCampo, CampoProduccionCientifica, EstadoProduccionCientifica, Autor, AutorGrupo, Proyecto, Acreditacion e IndiceImpaco) el item cuyo campo "idRef" coincide con al identificador pasado por parámetro en la URL y tenga el campo "convocatoriaBaremacionId" a null (los que tienen valor en este campo no se eliminan). Y  el epigrafeCVN sea uno de los que llegan por el CVN (en la tabla ConfiguracionBaremo el tipo de Fuente es CVN o CVN\_OTRO\_SISTEMA)

### Listado estado de items de Producción científica

Detalle del servicio del ESB:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /producciones\-cientificas/estado | q\+sLa query estará formada por:* fechaEstado | Lista\[ProduccionCientificaEstado] | Devuelve el identificador CVN y el estado (Validado O Rechazado) de aquellos items almacenados en producción científica que han cambiado al estado Validado o Rechazado en una fecha igual o superior a la fecha de estado pasada por parámetro |

  


Detalle servicios del SGI:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /producciones\-cientificas\-api/estado | q\+sLa query estará formada por:* fechaEstado | Lista\[ProduccionCientificaEstado] | Devuelve el identificador CVN y el estado (Validado O Rechazado) de aquellos items almacenados en producción científica que han cambiado al estado Validado o Rechazado en una fecha igual o superior a la fecha de estado pasada por parámetro |

  


  


Se buscarán los registros de producción científica que han sido modificados al estado VALIDADO O RECHAZADO en una fecha igual o superior a la fecha de estado pasado por parámetro (mirar campo "fecha" \>\= fecha del parámetro del campo "estado" de la tabla "ProduccionCientifica" y con campo "baremacionConvocatoriaId" igual a null. Para estos registros se devolverá el campo "idRef" y el estado (VALIDADO o RECHAZADO). Y  el epigrafeCVN sea uno de los que llevan por el CVN (en la tabla ConfiguracionBaremo el tipo de Fuente es CVN o CVN\_OTRO\_SISTEMA)

### Listado de epígrafes de Producción científica

Detalle del servicio del ESB:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /epigrafes |  | Lista\[EpigrafeCVN] | Listado con los códigos de los apartados del CVN que forman parte de la Producción científica y que necesitan validación. Se enviarán los epígrafes marcados en el SGI de la última convocatoria creada.Por cada epígrafe se enviarán los campos dinámicos del CVN que se tienen que enviar a PRC. Será un subconjunto de los de la Fecyt. |

  


Detalle servicios del SGI:



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /epigrafes\-api |  | Lista\[EpigrafeCVN] | Listado con los códigos de los apartados del CVN que forman parte de la Producción científica y que necesitan validación. Se enviarán los epígrafes marcados en el SGI de la última convocatoria creada.Por cada epígrafe se enviarán los campos dinámicos del CVN que se tienen que enviar a PRC. Será un subconjunto de los de la Fecyt. |

  


  


Se buscará la convocatoria del último año, es decir, el registro de la tabla "ConvocatoriaBaremacion" cuyo campo "anio" sea el mayor. Para esa convocatoria se obtendrá el campo "epigrafeCVN" de los registros de la tabla "Baremo"  y tengan en "configuracionBaremo" una configuración con el campo "tipoFuente" igual a "CVN" o "CVN\_OTRO\_SISTEMA". Si varios baremos pertenecen al mismo epigrafeCVN solo se envía una vez el epigrafeCVN.

Se devolverá una lista con cada "epigrafeCVN" distinto y para cada epígrafe CVN se devolverá el código y  el listado de "codigoCVN" definidos para ese epígrafe. El listado de "codigoCVN" se obtiene de la tabla "ConfiguracionCampo" filtrando por el campo "epigrafeCVN"

  


OJO: Sólo los baremos de "Publicaciones", "Comités editoriales", "Trabajos presentados en congresos", "Obras artísticas dirigidas", "Organización de actividades de I\+D\+i"  están configurados con el tipoFuente \= CVN y el baremo "Dirección de tesis" esta configurado con el tipoFuente \= CVN\_OTRO\_SISTEMA. 

  


## Convocatoria baremación



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |




