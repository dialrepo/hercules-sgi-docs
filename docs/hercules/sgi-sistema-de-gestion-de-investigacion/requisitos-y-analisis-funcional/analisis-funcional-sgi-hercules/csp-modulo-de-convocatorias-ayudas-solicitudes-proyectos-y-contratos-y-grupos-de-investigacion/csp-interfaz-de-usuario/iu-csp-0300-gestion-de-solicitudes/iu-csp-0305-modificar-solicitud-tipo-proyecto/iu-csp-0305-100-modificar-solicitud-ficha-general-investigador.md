# Hércules : IU\-CSP\-0305\-100 \- Modificar solicitud \- Ficha general \- Investigador



## Formulario Modificar solicitud \- Ficha general \- Investigador

Formulario para cumplimentación de la Ficha general del proyecto dentro de una solicitud de tipo "proyecto", para el actor ACT\-CSP\-001\-Investigador. 



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| El apartado "Ficha general" y, en general, todo del bloque "Datos proyecto" solamente estará visible si el campo "formulario solicitud" de la tabla "solicitud" toma valor "proyecto". | | |
| Referencia en entidad convocante | TextoOpcional | Código alfanumérico que la entidad convocante asigna al proyecto. Campo "código externo" de la tabla "solicitud proyecto" |
| Acrónimo | Texto cortoOpcional | Acrónimo del proyecto. Campo "acrónimo" de la tabla "solicitud proyecto" |
| Duración (meses) | Numérico entero genéricoOpcional | Duración del proyecto expresada en meses.Campo "duración" de la tabla "solicitud proyecto". Si es la primera vez que se accede a este formulario, es decir, la solicitud en modificación aún no tiene el registro correspondiente en la tabla "solicitud proyecto" y, además, la solicitud tiene vinculada una convocatoria del SGI (campo "convocatoria" de la tabla "solicitud" está informado), este campo se inicializará con el valor del campo "duración" de la tabla "convocatoria". El valor recuperado puede ser editado en este formulario o incluso eliminado. El valor que se guarde en el campo "duración" de la tabla "solicitud proyecto" será el que disponga el formulario en el momento de realizar la operación de guardado.Cuando se accede a este formulario cargando datos desde la tabla "solicitud proyecto" en este campo del formulario se mostrará directamente el valor del campo "duración" de la tabla "solicitud proyecto" pudiendo ser modificado. |
| Importe solicitado | EconómicoOpcional | Importe solicitado.Es un campo opcional.Se corresponde con el campo "total importe solicitado" de la tabla "solicitud proyecto". |
| Palabras clave | Componente a medidaOpcional | Lista de palabras clave asociadas al proyecto en la fase de solicitud.El comportamiento del componente será el descrito de manera general en [IU\-GEN\-0200 \- Gestión de palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md"). |
| Objetivos del proyecto | Texto largoOpcional | Campo abierto que permite introducir los objetivos fijados en la actividad de investigación |
| Justificación e interés | Texto largoOpcional | Campo abierto que permite introducir información referente a la justificación y datos de interés de la actividad de investigación |
| Resultados esperados | Texto largoOpcional | Campo abierto que permite introducir los resultados esperados de la actividad de investigación |
| Área temática: La tabla solo se mostrará si la solicitud ya tiene un área temática seleccionada (está informado el  campo "área temática"  de la tabla "solicitud proyecto"), o si, no teniendo aún área temática la solicitud, existen restricciones de áreas temáticas marcadas por la convocatoria a la que está asociada  (existen elementos en la tabla "convocatoria área temática" para la convocatoria referenciada por el campo "convocatoria" de la tabla "solicitud"). | | |
| Listado áreas | Texto corto | Nombre del listado de áreas temáticas. En caso de que la solicitud ya esté asociada a un área temática (está informado el  campo "área temática"  de la tabla "solicitud proyecto"): se debe recuperar el elemento raíz del área temática indicada por el campo "área temática" de la tabla "solicitud proyecto". Este elemento raíz se recuperará de la tabla "área temática", partiendo del elemento referenciado en la tabla "solicitud proyecto" y llegando, a través del campo "padre", hasta  el nodo raíz, que será el elemento para el que este campo "padre" tome el valor "null". Se mostrará el campo "nombre" de este nodo raíz.En caso de que la solicitud no esté asociada a un área temática (el campo "área temática" de la tabla "solicitud proyecto" toma valor "null") y siempre que la solicitud esté vinculada a una convocatoria (campo "convocatoria" de la tabla "solicitud" esté informado): se debe recuperar el elemento raíz del árbol de áreas temáticas empleado en la convocatoria. Para ello, se tomará cualquier elemento de la tabla "convocatoria área temática" (para la convocatoria a la que está vinculada la solicitud) y se recuperará de la tabla "área temática" el campo "nombre"  del nodo raíz (aquel para el que el campo "padre" tome valor "null"). |
| Áreas temáticas convocatoria | Texto largo | Se listan, separadas por el carácter coma, todas las áreas temáticas seleccionadas en la convocatoria. Si el texto a componer excede el espacio reservado para la columna de la tabla, se mostrará la cadena "..."  y el valor completo con todos los elementos se mostrará sobre un componente de tooltip.Se corresponde con "nombre" de la tabla "área temática" para todas las áreas temáticas recogidas en la convocatoria (tabla "convocatoria área temática").En caso que la solicitud no esté vinculada a una convocatoria (campo "convocatoria" de la tabla "solicitud" no está informado) o que la convocatoria no disponga de áreas temáticas (la tabla "convocatoria área temática" para la convocatoria de la solicitud) esta columna se mostrará vacía. |
| Área temática solicitud | Texto | Área temática seleccionada en la solicitud. Se corresponde con el campo "área temática" de la tabla "solicitud proyecto".En caso que no se haya especificado ningún área temática para la solicitud (el campo "área temática" de la tabla "solicitud proyecto" no estará informado) la columna se mostrará vacía. |
| Seleccionar área | Icono de acción | Acción "Seleccionar área" |
| Eliminar área | Icono de acción | Acción "Eliminar área" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Seleccionar área | Selección de una de las áreas temáticas restringidas por la convocatoria | Esta acción solo se mostrará cuando la solicitud esté vinculada a una convocatoria y ésta tenga restricciones sobre áreas temáticas: existen elementos en la tabla "convocatoria área temática" para la convocatoria referenciada por el campo "convocatoria" de la tabla "solicitud".Muestra la pantalla [IU\-CSP\-0302\-002 \- Seleccionar área temática solicitud](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-002-seleccionar-area-tematica-solicitud.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-002-seleccionar-area-tematica-solicitud.md")Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar") | CSP\-SOL\-INV\-EREdición restringido |
| Eliminar área | Elimina el área temática asociada a la solicitud | Se elimina el área temática seleccionada para la solicitud. Se actualiza el registro en la tabla "solicitud", poniendo el campo "área temática" a valor "null". | CSP\-SOL\-INV\-EREdición restringido |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar la solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todos los apartados de definición de la solicitud. | * Si la solicitud aún no tiene ningún miembro de equipo, no existe ningún registro en la tabla "solicitud proyecto equipo" vinculado a la solicitud en curso, se añadirá automáticamente el solicitante (campo "solicitante" de la tabla "solicitud") como miembro del equipo de proyecto: se creará un registro en la tabla "solicitud proyecto equipo" vinculado al "persona ref" correspondiente al solicitante asignándole el "rol proyecto" que tenga el campo "principal" a "true" y el campo "orden" tome el valor representativo del orden 1\. * Si se ha informado el campo "importe solicitado" del formulario: 	+ Se almacenará sobre el campo  "importe solicitado"  de la tabla "solicitud proyecto" * Como resultado final se creará/actualizará el correspondiente registro en la tabla "solicitud proyecto". * Aplicar precondiciones y validaciones recogidas [CU\-CSP\-1100\-001 Modificar solicitud \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md"). No se deberán aplicar, en este caso (creación desde perfil ACT\-CSP\-001\-Investigador ), las comprobaciones de obligatoriedad sobre los campo "tipo presupuesto" y "coordinado" de la tabla "solicitud proyecto) | CSP\-SOL\-INV\-ER |
| Cancelar | Retorna al listado de Solicitud sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




