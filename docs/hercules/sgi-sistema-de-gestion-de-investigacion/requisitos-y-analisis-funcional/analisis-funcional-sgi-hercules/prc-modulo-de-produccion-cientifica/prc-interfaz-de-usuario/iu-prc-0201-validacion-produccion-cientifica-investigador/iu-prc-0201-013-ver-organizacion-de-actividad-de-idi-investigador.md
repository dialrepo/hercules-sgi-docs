# Hércules : IU\-PRC\-0201\-013 \- Ver organización de actividad de I\+D\+i \- Investigador



## Formulario Ver organización de actividad de I\+D\+i \- Investigador

Formulario de consulta de una actividad de I\+D\+i. Se mostrarán todos los datos del item de actividades de I\+D\+i en modo consulta.

Se comprobará que el usuario logueado esta como miembro del equipo de investigación  con un rol que tenga el flag "principal" a true en la fecha actual o como persona autorizada de la validación de prc en la fecha actual  de uno de los Grupos de investigación referenciados en la tabla "AutorGrupo". En caso contrario no tendrá acceso a  la consulta del item.

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Estado | Texto corto | Estado actual de la actividad de I\+D\+i.Se corresponde con el "estado" de la tabla "ProduccionCientifica". |
| Título de la actividad | Texto largo | Es el valor del campo que corresponde con el  "Título de la actividad" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.020\.030\.010", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo").En caso de existir mas de un valor para el mismo código CVN ("060\.020\.030\.010") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| Fecha de inicio | Fecha | Es el valor del campo que corresponde con la "Fecha de inicio" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.020\.030\.160", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo".En caso de existir mas de un valor para el mismo código CVN ("060\.020\.030\.160") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| Tipo de la actividad | Texto largo | Es el valor del campo que corresponde con la "Tipo de la actividad" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.020\.030\.020", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo".En caso de existir mas de un valor para el mismo código CVN ("060\.020\.030\.020") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| País de celebración | Texto cortoEnumerado | Es el valor del campo que corresponde con el  "País celebración" del item de producción científica. Valor del enumerado TablaMaestraCVN.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.020\.030\.030", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo"). Como es un enumerado, se tendrá que obtener el texto correspondiente al código del enumerado para mostrarlo en la pantalla. Para obtener el código del enumerado habrá que comprobar si el código "060\.020\.030\.030" existe en la tabla "AliasEnumerado", en caso de no existir se coge el código "060\.020\.030\.030" y se concatena con un punto "." y el "valor". Si existiese el código "060\.020\.030\.030" en la tabla "AliasEnumerado" en vez de coger el código se coge el campo "prefijoEnumerado", en este caso como existe se coge el valor "PAIS" de la tabla y se concatena con un punto "." y el "valor", quedando por ejemplo una cadena del tipo "PAIS.724"En caso de existir mas de un valor para el mismo código CVN ("060\.020\.030\.030") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| Modo de participación | Texto cortoEnumerado | Es el valor del campo que corresponde con el  "Tipo de producción" del item de producción científica. Valor del enumerado TablaMaestraCVN.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.020\.030\.110", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo"). Como es un enumerado, se tendrá que obtener el texto correspondiente al código del enumerado para mostrarlo en la pantalla. Para obtener el código del enumerado habrá que comprobar si el código "060\.020\.030\.110" existe en la tabla "AliasEnumerado", en caso de no existir se coge el código "060\.020\.030\.110" y se concatena con un punto "." y el "valor", quedando por ejemplo una cadena como la siguiente "060\.020\.030\.110\.ORGANIZATIVO\_COMITE", dicha cadena es el código del enumerado TablaMaestraCVN. Si existiese el código "060\.020\.030\.110" en la tabla "AliasEnumeardo" en vez de coger el código se coge el campo "prefijoEnumerado" de la tabla y se concatena con un punto "." y el "valor".En caso de existir mas de un valor para el mismo código CVN ("060\.020\.030\.110") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| Listado de autores del item. Se obtendrá el listado de la tabla "Autor" relacionada con la tabla "ProduccionCientifica". Sacarlos ordenamos por Posición, de menor a mayor posición, 1, 2, 3\... | | |
| Firma | Texto | Campo "firma" de la tabla "Autor" |
| Nombre | Texto | Campo "nombre" de la tabla "Autor" si viene informado (distinto a null) y en caso contrario, si esta informado el campo "personaRef", se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para dicha referencia. |
| Apellidos | Texto | Campo "apellidos" de la tabla "Autor" si viene informado (distinto a null) y en caso contrario, si esta informado el campo "personaRef", se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para dicha referencia. |
| Posición | Número entero | Campo "orden" de la tabla "Autor" |
| Estado Responsable GI | Texto corto | Campo "estado" de la tabla "AutorGrupo" si existe dicha relación, sino vacío. Si existe mas de una relación se mostrará el campo "estado" separado por comas. |
| Listado de proyectos del SGI relacionados con el item. Se obtendrá el listado de la tabla "Proyecto" relacionada con la tabla "ProduccionCientifica". El usuario ACT\-PRC\-0031\-Investigador debe de tener el permiso CSP\-PRO\-PRC\-V para poder visualizar los datos del proyecto. Usar el servicio específico para obtener estos 5 campos de un proyecto, vinculado al permiso CSP\-PRO\-PRC\-V | | |
| Título | Texto | Título del proyecto.A partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "título" de la tabla "proyecto". |
| Acrónimo | Texto corto | Acrónimo del proyecto.A partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "acrónimo" de la tabla "proyecto". |
| Ref. entidad convocante | Texto | Referencia que la entidad convocante asigna al proyecto.A partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "código externo" de la tabla "proyecto". |
| Fecha inicio | Fecha | Fecha de inicio del proyecto. A partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "fecha inicio" de la tabla "proyecto". |
| Fecha fin | Fecha | Fecha de finalización del proyectoA partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "fecha fin definitiva" de la tabla "proyecto" si esta informada y sino el campo "fecha fin" de la tabla "proyecto" |
| Listado de acreditaciones del item. Se obtendrá el listado de la tabla "Acreditacion" relacionada con la tabla "ProduccionCientifica". | | |
| URL | Texto largo | URL acreditativa en repositorios ajenos a la UniversidadCampo "URL" de la tabla "Acreditacion" |
| Documento | Icono para descargar el documento | Identificador del documento acreditativo. Al pulsar el icono se descarga el documento. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Descargar documento | Descargar el fichero seleccionado | Acción descargar el documento |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Validar | Se valida el item y se actualiza el estado en la propia pantalla de consulta del item. Se informa de que la actividad de I\+D\+i se ha cambiado de estado correctamente. | El botón de "Validar" únicamente se muestra si el item esta en estado "Pendiente" o en estado "Validado parcialmente".Se comprobará que el usuario logueado esta como miembro del equipo de investigación  con un rol que tenga el flag "principal" a true en la fecha actual o como persona autorizada de la validación de prc en la fecha actual  de uno de los Grupos de investigación referenciados en la tabla "AutorGrupo". En caso contrario no tendrá permiso para realizar la acción.Si se pulsa el botón de "Validar" se hará un cambio de estado tanto a nivel de la tabla "ProduccionCientifica" como a nivel de la tabla "AutorGrupo".Se irá a la tabla "AutorGrupo" y para aquellos autores que corresponden al grupo del cual la persona logueada es el "Investigador Principal" o la "Persona autorizada" (mirar campo "grupoRef") se les cambiará el estado a "Validado". Si quedan autores por validar (quedan mas registros en la tabla "AutorGrupo" en estado "Pendiente") se creará un nuevo registro de la tabla "EstadoProduccionCientifica" con el estado a "Validado parcialmente" y con una fecha igual a la actual, y se actualizará el campo "estado" del item en la tabla "ProduccionCientifica" con el nuevo estado creado. Si no quedan mas autoers por validar (todos los registros de  la tabla "AutorGrupo" estan en estado "Validado") se creará un nuevo registro de la tabla "EstadoProduccionCientifica" con el estado a "Validado" y con una fecha igual a la actual, y se actualizará el campo "estado" del item en la tabla "ProduccionCientifica" con el nuevo estado creado. | PRC\-VAL\-INV\-ER |
| Rechazar | Se abre un popup para indicar el motivo del rechazo. | El botón de "Rechazar" únicamente se muestra si el item esta en estado "Pendiente" o en estado "Validado parcialmente".Se comprobará que el usuario logueado esta como miembro del equipo de investigación  con un rol que tenga el flag "principal" a true en la fecha actual o como persona autorizada de la validación de prc en la fecha actual  de uno de los Grupos de investigación referenciados en la tabla "AutorGrupo". En caso contrario no tendrá permiso para realizar la acción.En este se abrirá un popup para indicar el motivo del rechazo [IU\-PRC\-0200\-004 \- Rechazar item de producción científica \- Unidad de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0200-validacion-produccion-cientifica-unidad-de-gestion/iu-prc-0200-003-rechazar-item-de-produccion-cientifica-unidad-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0200-validacion-produccion-cientifica-unidad-de-gestion/iu-prc-0200-003-rechazar-item-de-produccion-cientifica-unidad-de-gestion.md") | PRC\-VAL\-INV\-ER |
| Cancelar | Retorna al listado de Actividades de I\+D\+i sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso



