# Hércules : IU\-PRC\-0200\-009 \- Ver comité editorial \- Unidad de gestión



## Formulario Ver comité editorial \- Unidad de gestión

Formulario de consulta de un comité editorial. Se mostrarán todos los datos del item de comité editorial en modo consulta.

La unidad de gestión podrá Validar o Rechazar el item de comité editorial.

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Estado | Texto corto | Estado actual del comité editorial.Se corresponde con el "estado" de la tabla "ProduccionCientifica". |
| Nombre del comité editorial | Texto largo | Es el valor del campo que corresponde con el  "Nombre del comité editorial" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.030\.030\.010", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo").En caso de existir mas de un valor para el mismo código CVN ("060\.030\.030\.010") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| Fecha de inicio | Fecha | Es el valor del campo que corresponde con la "Fecha de inicio" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.030\.030\.140", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo".En caso de existir mas de un valor para el mismo código CVN ("060\.030\.030\.140") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| País de radicación | Texto cortoEnumerado | Es el valor del campo que corresponde con el  "País de radicación" del item de producción científica. Valor del enumerado TablaMaestraCVN.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.030\.030\.020", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo"). Como es un enumerado, se tendrá que obtener el texto correspondiente al código del enumerado para mostrarlo en la pantalla. Para obtener el código del enumerado habrá que comprobar si el código "060\.030\.030\.020" existe en la tabla "AliasEnumerado", en caso de no existir se coge el código "060\.030\.030\.020" y se concatena con un punto "." y el "valor". Si existiese el código "060\.030\.030\.020" en la tabla "AliasEnumerado" en vez de coger el código se coge el campo "prefijoEnumerado", en este caso como existe se coge el valor "PAIS" de la tabla y se concatena con un punto "." y el "valor", quedando por ejemplo una cadena del tipo "PAIS.724"En caso de existir mas de un valor para el mismo código CVN ("060\.030\.030\.020") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| ISSN | Texto corto | Es el valor del campo que corresponde con el  "ISSN" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "ISSN", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo").En caso de existir mas de un valor para el mismo código CVN ("ISSN") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| Categoría profesional | Texto cortoEnumerado | Es el valor del campo que corresponde con la  "Categoría profesional" del item de producción científica. Valor del enumerado TablaMaestraCVN.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "060\.030\.030\.100", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo"). Como es un enumerado, se tendrá que obtener el texto correspondiente al código del enumerado para mostrarlo en la pantalla. Para obtener el código del enumerado habrá que comprobar si el código "060\.030\.030\.100" existe en la tabla "AliasEnumerado", en caso de no existir se coge el código "060\.030\.030\.100" y se concatena con un punto "." y el "valor", quedando por ejemplo una cadena como la siguiente "060\.030\.030\.100\.EDITOR", dicha cadena es el código del enumerado TablaMaestraCVN. Si existiese el código "060\.030\.030\.100" en la tabla "AliasEnumeardo" en vez de coger el código se coge el campo "prefijoEnumerado" de la tabla y se concatena con un punto "." y el "valor".En caso de existir mas de un valor para el mismo código CVN ("060\.030\.030\.100") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| Listado de índices de impacto del item. Se obtendrá el listado de la tabla "IndiceImpacto" relacionada con la tabla "ProduccionCientifica". | | |
| Fuente de impacto | Texto cortoEnumerado | Campo "fuenteImpacto" de la tabla "IndiceImpacto". Valor del enumerado TipoFuenteImpacto.Excepción: Si el valor de este campo es "OTHERS" y esta informado el campo "otraFuenteImpacto", entonces se muestra la concatenación de "TipoFuenteImpacto.OTHERS \- otraFuenteImpacto". En caso de que no este informado el campo "otraFuenteImpacto" únicamente sale el valor del enumerado TipoFuenteImpacto.OTHERS. |
| Año | Número entero | Campo "anio" de la tabla "IndiceImpacto". |
| Valor | Número o Texto | Campo "indice" de la tabla "IndiceImpacto". |
| Posición publicación | Número | Campo "posicionPublicacion" de la tabla "IndiceImpacto". |
| Número de revistas | Número | Campo "numeroRevistas" de la tabla "IndiceImpacto". |
| Cuartil | Texto corto | Se calcula a partir de los campos "revista25", "posicionPublicacion" y "numeroRevistas" de la tabla "IndiceImpacto"Si "revista25" tiene valor a true se pone en este campo el valor "Q1"En caso contrario (tiene valor false o esta a null), si los campos "numeroRevistas" y  "numeroRevistas" están informados se hará la siguiente operación:  "posicionPublicacion" \* 100 / "numeroRevistas". Dependiendo del resultado:* Si el resultado es \<\= 25, se pone en este campo el valor "Q1" * Si el resultado \> 25 y \<\= 50, se pone en este campo el valor "Q2" * Si el resultado \> 50 y \<\= 75, se pone en este campo el valor "Q3" * Si el resultado \> 75, se pone en este campo el valor "Q4" |
| Listado de autores del item. Se obtendrá el listado de la tabla "Autor" relacionada con la tabla "ProduccionCientifica". Sacarlos ordenamos por Posición, de menor a mayor posición, 1, 2, 3\... | | |
| Firma | Texto | Campo "firma" de la tabla "Autor" |
| Nombre | Texto | Campo "nombre" de la tabla "Autor" si viene informado (distinto a null) y en caso contrario, si esta informado el campo "personaRef", se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para dicha referencia. |
| Apellidos | Texto | Campo "apellidos" de la tabla "Autor" si viene informado (distinto a null) y en caso contrario, si esta informado el campo "personaRef", se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para dicha referencia. |
| Posición | Número entero | Campo "orden" de la tabla "Autor" |
| Estado Responsable GI | Texto corto | Campo "estado" de la tabla "AutorGrupo" si existe dicha relación, sino vacío. Si existe mas de una relación se mostrará el campo "estado" separado por comas. |
| Listado de proyectos del SGI relacionados con el item. Se obtendrá el listado de la tabla "Proyecto" relacionada con la tabla "ProduccionCientifica". El usuario ACT\-PRC\-003\-Gestor o ACT\-PRC\-004\-Visor debe de tener el permiso CSP\-PRO\-PRC\-V para poder visualizar los datos del proyecto. Crear un servicio específico para obtener estos 5 campos de un proyecto, vinculado al permiso CSP\-PRO\-PRC\-V | | |
| Título | Texto | Título del proyecto.A partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "título" de la tabla "proyecto". |
| Acrónimo | Texto corto | Acrónimo del proyecto.A partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "acrónimo" de la tabla "proyecto". |
| Ref. entidad convocante | Texto | Referencia que la entidad convocante asigna al proyecto.A partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "código externo" de la tabla "proyecto". |
| Fecha inicio | Fecha | Fecha de inicio del proyecto. A partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "fecha inicio" de la tabla "proyecto". |
| Fecha fin | Fecha | Fecha de finalización del proyectoA partir de la referencia del proyecto (campo "proyectoRef" ) se consultará el detalle del proyecto y se recuperará el campo "fecha fin definitiva" de la tabla "proyecto" si esta informada y sino el campo "fecha fin" de la tabla "proyecto". |
| Listado de acreditaciones del item. Se obtendrá el listado de la tabla "Acreditacion" relacionada con la tabla "ProduccionCientifica". | | |
| URL | Texto largo | URL acreditativa en repositorios ajenos a la UniversidadCampo "URL" de la tabla "Acreditacion" |
| Documento | Icono para descargar el documento | Identificador del documento acreditativo. Al pulsar el icono se descarga el documento. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Descargar documento | Descargar el fichero seleccionado | Acción descargar el documento |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Validar | Se valida el item y se actualiza el estado en la propia pantalla de consulta del item. Se informa de que el comité editorial se ha cambiado de estado correctamente. | El botón de "Validar" únicamente se muestra si el item esta en estado "Pendiente" o en estado "Validado parcialmente".Si se pulsa el botón de "Validar" se hará un cambio de estado, para ello se creará un nuevo registro de la tabla "EstadoProduccionCientifica" con el estado a "Validado" y con una fecha igual a la actual, y se actualizará el campo "estado" del item en la tabla "ProduccionCientifica" con el nuevo estado creado. | PRC\-VAL\-E |
| Rechazar | Se abre un popup para indicar el motivo del rechazo. | El botón de "Rechazar" únicamente se muestra si el item esta en estado "Pendiente" o en estado "Validado parcialmente".En este se abrirá un popup para indicar el motivo del rechazo [IU\-PRC\-0200\-004 \- Rechazar item de producción científica \- Unidad de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0200-validacion-produccion-cientifica-unidad-de-gestion/iu-prc-0200-003-rechazar-item-de-produccion-cientifica-unidad-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0200-validacion-produccion-cientifica-unidad-de-gestion/iu-prc-0200-003-rechazar-item-de-produccion-cientifica-unidad-de-gestion.md") | PRC\-VAL\-E |
| Cancelar | Retorna al listado de Comités editoriales sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




