# Hércules : IU\-CSP\-0406\-001 \- Modificar proyecto \- Datos generales \- Ficha



## Formulario Modificar proyecto \- Datos generales \- Ficha

Formulario que permitirá modificar la ficha de datos generales de un proyecto, incluyendo su estado.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Ficha general del proyecto | | |
| Estado | TextoModo Consulta | Estado del proyecto. Modo consulta. |
| Comentario | TextoModo Consulta | Comentario indicando el motivo del que se ha pasado al estado indicado en el campo Estado del proyecto.Este campo se mostrará únicamente para los estados sobre los que aplica el comentario. |
| Identificador interno | Numérico enteroModo consulta | Código numérico generado automáticamente por el SGI para identificar de forma única al proyecto.Se corresponde con el campo "ID" de la tabla "proyecto".Se mostrará en formato "solo lectura". |
| Código/s de identificación SGE | TextoSelector multivalor Modo consulta | Se mostrará el código o códigos (separados por coma) de identificación SGE.  Los definidos en la pantalla de "Configuración económica \- Identificación".Se corresponde con el campo "proyecto SGE Ref" de la tabla "proyecto proyecto SGE" (mostrando todos los registros asociados al proyecto en curso, relación establecida a través del campo "proyecto" de la tabla "proyecto proyecto SGE").Se mostrará en formato "solo lectura". |
| Título | TextoObligatorio | Título del proyecto. Campo "título" de la tabla "proyecto"Será un campo obligatorio, incluso para guardar el proyecto/contrato en estado Borrador. |
| Acrónimo | Texto cortoOpcional | Identificador corto del proyecto. Campo "acrónimo" de la tabla "proyecto" |
| Ámbito geográfico | SelectorTexto cortoObligatorio en estado concedido | Si se selecciona una convocatoria, tomará el mismo valor que el campo "ámbito geográfico" de la Convocatoria correspondiente. Aún así el valor podrá ser modificado.  En el caso de que el valor en el proyecto no coincida con el valor que tiene en la convocatoria se mostrará un icono de ayuda indicando el siguiente texto: "El valor no coincide con el de la convocatoria. En la convocatoria tiene el valor XXXXX"El listado de valores disponibles se cargará a partir de los registros activos de la tabla "tipo ámbito geográfico" comunes a todo el SGI. Un ejemplo de listado posible sería: propio, local, regional, autonómico, estatal, europeo, internacional no europeo.Será obligatorio desde el momento en que el proyecto pase a estado "Concedido". |
| Convocatoria | Texto cortoModo consulta | Título de la convocatoria (campo "título" de la tabla "convocatoria") asociada al proyecto en caso de tenerla (el campo "convocatoria" de la tabla "proyecto" estará informado).Se muestra en modo consulta (no podrá ser modificada la convocatoria vinculada una vez creado el proyecto). |
| Identificación convocatoria | TextoOpcional | Se corresponde con el campo "convocatoria externa" de la tabla "proyecto".Este campo solo estará habilitado si el campo "convocatoria"  de la tabla "proyecto" está vacío, permitiendo, en este caso, recoger un identificador representativo de la convocatoria (que no será validado ni permitirá el acceso a la información externa de la convocatoria).En caso que el campo "convocatoria" esté relleno, se recuperará el campo "código" de la tabla "convocatoria" y se mostrará en este campo "identificación convocatoria". En este caso el campo se mostrará en formato solo lectura. |
| Convocatoria de excelencia | BooleanoSelector (valores sí/no)Opcional | Permite indicar si el proyecto deriva de una convocatoria con la categoría de excelencia.Aunque en la creación del proyecto este campo hubiera tomado el valor heredado de la convocatoria, se permitirá modificar.Se corresponde con el campo "excelencia" de la tabla "proyecto". |
| Referencia en entidad convocante | Texto cortoOpcional | Código externo con el que se identifica el proyecto en la entidad convocante externa (en caso de existir). Se corresponde con el campo "código externo" de la tabla "proyecto". Este campo solo se mostrará activo cuando el proyecto no esté vinculado a una solicitud, es decir, cuando el campo "solicitud" de la tabla "proyecto" esté vacío.  En este caso el campo será de introducción libre.Cuando el proyecto esté asociado a una solicitud, este campo se mostrará en formato solo lectura y recuperará el valor "código externo" de la tabla "solicitud proyecto" vinculada a la solicitud referenciada por el campo "solicitud" de la tabla proyecto. |
| Solicitud | Texto cortoModo consulta | En caso que el proyecto se cree a partir de la concesión de una Solicitud registrada en el SGI, se muestra el campo "código registro interno" de la tabla "solicitud". Se mostrará en modo consulta.En caso que el proyecto no esté vinculado a una solicitud, este campo no se muestra. (La vinculación a la solicitud se hará solamente desde la pantalla de gestión de Solicitud, botón  "Crear proyecto") |
| Proyectos relacionados | Texto Modo consulta | Referencia en entidad convocante de los proyectos relacionados.Los proyectos relacionados se obtendrán de la tabla "relación", buscando todos los registros en los que o bien el campo "entidad destino ref" o bien el campo "entidad origen ref" coincida con el identificador interno (campo "id") del proyecto en curso y los campos "tipo entidad origen" y "tipo entidad destino" tomen el valor "proyecto". Para todos los proyectos obtenidos, se mostrará el campo "código externo" de la tabla "proyecto" concatenados por el carácter ",". Cuando la cadena así formada exceda el tamaño reservado para el campo "proyectos relacionados" se finalizará la cadena con "..." y se mostrará su contenido total sobre un tooltip.Este campo no se mostrará para ACT\-CSP\-001\-Investigador (se realizará la comprobación a través la disponibilidad o no de los permisos REL\-V y REL\-E). Para el resto de actores se mostrará siempre en modo "solo lectura". |
| Unidad de gestión | SelectorTexto cortoObligatorio | Si el proyecto se ha vinculado a una convocatoria del SGI, campo "Convocatoria" de este formulario, se tomará el valor de la Unidad de gestión asociada a dicha convocatoria. Aún así este valor podrá ser modificado. En el caso de que el valor en el proyecto no coincida con el valor que tiene en la convocatoria se mostrará un icono de ayuda indicando el siguiente texto: "El valor no coincide con el de la convocatoria. En la convocatoria tiene el valor XXXXX"Las unidades de gestión disponibles en el desplegable serán solamente aquellas sobre las que el usuario que está creando la convocatoria, disponga de un rol ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador.Será un campo obligatorio, incluso para guardar el proyecto/contrato en estado "Borrador" y no tomará ningún valor por defecto (salvo en caso que este campo se recupere de la convocatoria, como se indica en párrafo previo).En el caso que ya se hubieran asociado al proyecto datos dependientes de la Unidad de gestión, no se podrá modificar su valor. Se mostrará icono de información con el texto "No se puede modificar el campo porque tiene dependencias en fases, hitos o documentos. Si desea modifica el valor del campo tendrá que ir primero a eliminar dichos registros". Por ello este campo se presentará en modo consulta una vez que ya se hubieran registrado datos sobre las pantallas:* Fases e hitos * Documentos  La dependencia de los datos de estas pantallas respecto a la unidad de gestión se establece a través del modelo de ejecución. |
| Modelo de ejecución | SelectorTexto cortoObligatorio | Si el proyecto se ha vinculado a una convocatoria del SGI, campo "Convocatoria" de este formulario, este campo tomará el mismo valor que el campo "modelo ejecución" recuperado de la convocatoria. Aún así este valor podrá ser modificado. En el caso de que el valor en el proyecto no coincida con el valor que tiene en la convocatoria se mostrará un icono de ayuda indicando el siguiente texto: "El valor no coincide con el de la convocatoria. En la convocatoria tiene el valor XXXXX"El listado disponible serán los valores de modelos de ejecución activos que tenga asociados la unidad de gestión a la que se ha asociado el proyecto través del campo "Unidad de gestión". Puede consultarse [CSP \- Modelo de ejecución.](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092")Será obligatorio indicar un modelo de ejecución para poder guardar el proyecto, incluso en estado Borrador y no tomará ningún valor por defecto (salvo que se recupere su valor de la convocatoria, como se indica en párrafo previo).En el caso que ya se hubieran asociado al proyecto datos dependientes del Modelo de ejecución, no se podrá modificar su valor. Se mostrará icono de información con el texto "No se puede modificar el campo porque tiene dependencias en fases, hitos o documentos. Si desea modifica el valor del campo tendrá que ir primero a eliminar dichos registros". Por ello este campo se presentará en modo consulta una vez que ya se hubieran registrado datos sobre las pantallas:* Fases e hitos * Documentos |
| Finalidad | SelectorTexto cortoObligatorio | Ejemplos de valores: proyectos i\+d, contratación rrhh, servicios técnicos, asesorías, movilidades, constitución grupos, infraestructuras, royalties, etc. Puede consultarse [CSP \- Modelo de ejecución](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092") e [IU\-CSP\-0020 \- Gestión de tipos de finalidad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821827 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821827")).Si el proyecto se ha vinculado a una convocatoria del SGI, campo "Convocatoria" de este formulario, este campo tomará el mismo valor que el campo "finalidad" recuperado de la convocatoria. Aún así este valor podrá ser modificado. En el caso de que el valor en el proyecto no coincida con el valor que tiene en la convocatoria se mostrará un icono de ayuda indicando el siguiente texto: "El valor no coincide con el de la convocatoria. En la convocatoria tiene el valor XXXXX"El listado estará cargado con los tipos de finalidad activos que estén asociados al Modelo de ejecución al que se haya vinculado el proyecto en el campo anterior. Salvo que se recupere el valor de la convocatoria, el campo no tomará valor por defecto.El tipo de finalidad del proyecto/contrato será  un valor obligatorio para poder guardar el proyecto, en estado "Concedido". |
| Fecha de inicio | FechaObligatorio | Fecha de inicio del proyecto.Será un campo obligatorio, incluso para guardar el proyecto/contrato en estado Borrador. |
| Fecha de fin | FechaObligatorio | Fecha de fin del proyecto.Se validará que sea una fecha superior a la fecha de inicio.Será un campo obligatorio, incluso para guardar el proyecto/contrato en estado Borrador. |
| Fecha de fin definitiva | FechaOpcional | Fecha de fin definitiva del proyecto.Se podrá informar manualmente en caso de renuncias o rescisiones o se completará de forma automática por el sistema cuando se registren prórrogas sobre el proyecto. En caso de estar informada, prevalecerá sobre el campo "fecha fin" para tomarla como referencia de la fecha de finalización del proyecto.Con su valor, se actualizará la fecha fin de pertenencia al equipo de los miembros (ver acción Guardar).No podrá ser inferior a la fecha fin de ninguna de las prórrogas que pudiera tener el proyecto (ver acción Guardar).Deberá ser mayor que la fecha de inicio, pero no se incluirá ninguna comprobación para que sea mayor o menor que la fecha de fin ya que podría darse cualquiera de las dos circunstancias.Se corresponde con el campo "fecha fin definitiva" de la tabla "proyecto". |
| Confidencial | SelectorBooleanoObligatorio | Indica si el proyecto es confidencial.Listado con los siguientes valores:* Sí * No  Si este campo toma valor Sí, el proyecto/contrato se entiende confidencial y el SGI no lo incluirá de forma automática en la producción científica y CVN de ninguno de los miembros del equipo de investigación.La confidencialidad del proyecto/contrato será  un valor obligatorio para poder guardar el proyecto, en estado "Concedido". |
| Clasificación producción científica/CVN | SelectorTexto cortoOpcional | Si al crear el proyecto se selecciona un valor de este listado, la actividad derivada del proyecto pasará automáticamente a formar parte de la producción científica y/o CVN bajo el epígrafe indicado en este campo.El listado de valores disponibles se cargará a partir de un listado fijo del SGI (listado de enumerados "Apartado CVN"). Este listado se corresponderá con apartados de Producción científica y/o CVN.No será un campo obligatorio pero si el estado del Proyecto está "Concedido" y campo "Confidencial" se ha marcado a No, se mostrará un mensaje de advertencia para indicar al usuario que el proyecto/contrato no será incluido de forma automática en la producción científica y CVN de ninguno de los  miembros del equipo de investigación. |
| Proyecto coordinado | SelectorBooleanoValores: Sí, NoObligatorio en estado Concedido | Indica si el proyecto se realizará de forma coordinada con otros socios.No tomará ningún valor por defecto. En función del valor seleccionado:* Si se indica "Sí", se activará: 	+ El campo "coordinador externo" de este formulario 	+ El campo "proyecto colaborativo" de este formulario 	+ El apartado "Socios"  Si el proyecto es creado a partir de la concesión de una solicitud este campo tomará inicialmente el valor indicado en la Solicitud, pero podrá ser modificado (salvo si ya existen datos en "proyecto socio").Se mostrará en modo consulta si ya se ha registrado información de Socios (tabla "proyecto socio"). En este caso además de mostrarse en modo solo lectura se acompañará de un icono de información con un tooltip cuyo mensaje será: "Para poder modificar este valor debe eliminar los datos del apartado socios". Será obligatorio cuando el proyecto pase a estado "Concedido"Se corresponde con el campo "coordinado" de la tabla "proyecto" |
| Coordinador Externo | SelectorTexto cortoObligatorio si proyecto coordinado. | Indica quién actúa como coordinador del proyecto. Un valor "No" indicará  que es la propia universidad quien actúa en calidad de coordinador del proyecto. En caso que quien coordine el proyecto no sea la universidad sino uno de los socios,  se indicaría en este campo el valor "sí". El rol que desempeña cada socio estará disponible en el apartado Socios.Este campo no tomará ningún valor por defecto y se mostrará tras haber seleccionado el valor "sí" sobre el campo "proyecto coordinado" de este formulario, siendo en este caso obligatorio. Si toma el valor "no", es decir, es la propia universidad quien coordina se dará visibilidad, dentro del apartado Socios, a los subapartados:* Periodos de pago * Periodos de justificación  Si toma el valor "sí", es decir, el coordinador es la universidad, no estarán disponibles los subapartados (dentro del apartado Socios):* Periodos de pago * Periodos de justificación  No se podrá modificar el valor de este campo de "No" a "Sí" en caso que ya existan registros en los subapartados "periodos de pago" y "periodos de justificación", tablas "proyecto socio periodo pago" y "proyecto socio periodo justificación" respectivamente. En este caso, el campo se mostrará en modo solo lectura acompañado de un icono de información con tooltip de aviso:   "Para poder modificar este valor debe eliminar los datos de los apartados Periodos de pago y periodos de justificación de todos los socios del proyecto".Si tomando el valor "sí", no se ha especifico ningún socio con rol coordinador (no existe ningún registro en el tabla "proyecto socio" que tenga un rol que esté definido en la tabla "rol socio" con el campo "coordinador" a "true"), se mostrará el icono de información sobre el que se mostrará un tooltip de aviso "No se ha indicado el socio que actuará como coordinador del proyecto.Verifique los datos en el apartado Socios."Se corresponde con el campo "coordinador externo" de la tabla "proyecto". |
| Proyecto colaborativo | SelectorBooleanoValores: Sí, No | Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada).Este campo no tomará ningún valor por defecto y se mostrará tras haber seleccionado el valor "sí" sobre el campo "proyecto coordinado" de este formulario.Si el proyecto es creado a partir de la concesión de una solicitud este campo tomará, en el momento de la creación del proyecto,  el mismo valor indicado en la solicitud, pero podrá ser modificado respecto a este valor inicial.Se corresponde con el campo "colaborativo" de la tabla "proyecto" |
| Palabras clave | Componente a medidaOpcional | Lista de palabras clave asociadas al proyecto.El comportamiento del componente será el descrito de manera general en [IU\-GEN\-0200 \- Gestión de palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md"). |
| Paquetes de trabajo | SelectorBooleanoObligatorio en estado Concedido | Indica si el proyecto requiere gestión de paquetes de trabajo, para su uso en los Timesheet.Listado con los siguientes valores:* Sí * No  No tomará ningún valor por defecto y será obligatorio cuando el proyecto pase a estado "Concedido".En caso de indicar que el proyecto dispondrá de Paquetes de trabajo se habilitará el apartado de menú "Paquetes de trabajo".No se podrá modificar el valor de este campo de "Sí" a "No" en caso que ya existan registros en el apartado "Paquetes de trabajo" (tabla "proyecto paquete trabajo"). En este caso, el campo se mostrará en modo solo lectura acompañado de un icono de información con tooltip de aviso:   "Para poder modificar este valor debe eliminar los datos del apartado Paquetes de trabajo". |
| Porcentaje IVA | Numérico entero genéricoOpcional | Campo para recoger el porcentaje de IVA cuando aplique. Es un campo opcional.En este campo del formulario se mostrará el valor del campo "iva" de la tabla "proyecto iva" referenciado desde el campo "iva" de la tabla "proyecto".Si se modifica su valor, se deberán realizar las siguientes acciones:* Se comprobará que el valor introducido esté comprendido entre 0 y 100\. * Si el proyecto ya está vinculado a un proyecto SGE (existen registros en la tabla "proyecto \- proyecto SGE") no se permitirá que pase de tomar un valor mayor que 0 a tomar valor igual a 0\. * Si el proyecto no está vinculado a un proyecto SGE (no existen registros en la tabla "proyecto \- proyecto SGE"): 	+ Se permitirá que pase a tomar valor 0, pasando a mostrarse, en este caso, el campo "causa exención IVA". 	+ Si pasa de tomar valor 0 a tomar un valor mayor que 0, deberá eliminarse el contenido del campo "causa exención" si ya estuviese almacenado en la tabla "proyecto". * Cuando cambie de valor se deberá historificar el valor previo, para ello: 	+ Se actualizará el registro actual de la tabla "proyecto iva" referenciado desde el campo "iva" de la tabla "proyecto" dándole valor a su fecha de fin: 		- Fecha de fin: Fecha actual (con hora 23:59:59\) 	+ Se creará un nuevo registro en la tabla "proyecto IVA" con los siguientes datos: 		- Porcentaje IVA: el nuevo valor indicado sobre este campo en el formulario. 		- Fecha de inicio: fecha actual \+1 (con hora 00:00:00\). Que será equivalente a decir "fecha de fin \+1" del registro de IVA anterior (el que se historifica). 		- Fecha de fin: valor "null" (lo que indicará que es el valor vigente). 	+ El nuevo registro creado en "proyecto iva" será referenciado desde el campo "iva" de la tabla "proyecto". |
| Causa exención IVA | SelectorTextoOpcional | Campo para recoger la causa de exención de IVA cuando aplique.Se corresponde con el campo "causa exención" de la tabla "proyecto". Si ya tiene un valor registrado (campo "causa exención" de la tabla "proyecto" está informado):* Si el proyecto está vinculado a un proyecto SGE, es decir, existen registros en la tabla "proyecto \- proyecto SGE": 	+ No se permitirá su modificación, mostrándose en modo sólo lectura. * Si el proyecto no está vinculado  a un proyecto SGE, es decir, no existen registros en la tabla "proyecto \- proyecto SGE": 	+ Se eliminará su valor en caso de que el valor indicado en el campo "porcentaje IVA"  pase a tomar un valor distinto de 0\. 	+ Se permitirá su edición en caso de que el valor  indicado en el campo "porcentaje IVA"  siga tomando valor 0\.  Si aún no tiene un valor registrado en la tabla "proyecto" solo se mostrará en caso que el campo "porcentaje IVA" tome valor 0El valor se seleccionará de un listado con las siguientes opciones (enumerado "Causa exención"):* Sujeto y exento * No sujeto (arts. 7, 14 y otros) * No sujeto por reglas de localización. Sin derecho a deducción * No sujeto por reglas de localización. Con derecho a deducciónSolo estará disponible cuando el valor introducido en el campo "porcentaje IVA" sea 0, siendo en este caso un campo **obligatorio**. |
| Histórico IVA: Esta tabla solo se mostrará en caso de existir más de un registro en la tabla "proyecto iva" asociados al proyecto. Los registros se mostrarán ordenados por el campo fecha inicio, de más a menos reciente. | | |
| Histórico IVA \- Porcentaje IVA | Numérico entero genérico | Se corresponde con el campo "iva" de la tabla "proyecto iva". |
| Histórico IVA \- Fecha inicio | Fecha | Se corresponde con el campo "fecha inicio" de la tabla "proyecto iva". |
| Histórico IVA \- Fecha fin | Fecha | Se corresponde con el campo "fecha fin" de la tabla "proyecto iva". Podrá ser "null", para el caso del registro activo. |
| Observaciones | Texto largoOpcional | Observaciones de carácter interno del proyectoSe corresponde con el campo observaciones de la tabla "proyecto" |

  


### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Si existen registros en la tabla  "proyecto prórroga":* Se comprobará que "fecha fin definitiva" no sea menor que la fecha fin de la  última prórroga (campo "fecha fin" del registro de "proyecto prórroga" con campo "num. prórroga" mayor).  Si existen registros en la tabla "proyecto equipo":* Si "fecha fin definitiva" se informa por primera vez (pasa de tener valor null en la tabla "proyecto" a estar informada) se actualizará el campo "fecha fin" de la tabla "proyecto equipo" para todos aquellos miembros cuya "fecha fin" actual coincida con la "fecha fin" del proyecto. * Si se actualiza el valor de "fecha fin definitiva" a un nuevo valor, se actualizará el campo "fecha fin" de la tabla "proyecto equipo" para todos aquellos miembros cuya "fecha fin" actual coincida con el valor original de la "fecha fin definitiva" del proyecto o sea mayor.  Si se modifica el valor del campo "porcentaje IVA":* Se actualizará el registro actual de la tabla "proyecto iva" referenciado desde el campo "iva" de la tabla "proyecto" marcándolo con fecha de fin: 	+ Fecha de fin: Fecha actual (con hora 23:59:59\) * Se creará un registro en la tabla "proyecto IVA" con los siguientes datos: 	+ Porcentaje IVA: el valor indicado en el campo "porcentaje IVA" de este formulario. 	+ Fecha de inicio: fecha actual \+1 (con hora 00:00:00\). Que será equivalente a decir fecha de fin \+1 del registro de IVA anterior (el que se historifica). 	+ Fecha de fin: valor "null" (pasará a ser el valor vigente). * El nuevo registro creado en "proyecto iva" será referenciado desde el campo "iva" de la tabla "proyecto". * Se realizarán las comprobaciones indicadas sobre el campo "causa exención" para determinar si se debe eliminar su valor. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso



