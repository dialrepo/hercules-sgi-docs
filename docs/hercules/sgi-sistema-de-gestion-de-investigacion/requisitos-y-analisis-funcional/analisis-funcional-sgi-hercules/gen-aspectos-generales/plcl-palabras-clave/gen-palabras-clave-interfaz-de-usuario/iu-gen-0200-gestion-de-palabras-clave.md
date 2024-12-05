# Hércules : IU\-GEN\-0200 \- Gestión de palabras clave







## Gestión de palabras clave

La gestión de las palabras clave de una entidad se llevará a cabo de forma que "palabras clave" sea un campo de dicha entidad. Aparecerá en general en la pestaña de datos generales y en la posición que según el caso se considere que debe aparecer. Este campo tendrá un tratamiento especial tal y como se describe a continuación.

A modo de ejemplo, se presenta la pantalla de modificación de un proyecto del módulo CSP, pero la filosofía sería la misma para el resto de entidades que dispongan de esta funcionalidad.

Toda la gestión de las palabras clave asociada a un registro de una entidad concreta (en el ejemplo, a un proyecto) se realizará en esta pantalla, de forma que, a la hora de añadir una nueva palabra clave, al comenzar a escribir en la caja de texto correspondiente los primeros caracteres, se sugerirán palabras ya existentes en el diccionario general del SGI para poder seleccionar una. Si la palabra que se quiere asociar al registro no existe en el diccionario general del SGI, se podrá añadir la nueva palabra clave al mismo, quedando  además asociada directamente a la entidad (en este ejemplo, al proyecto que se esté gestionando).



| *Añadir nueva palabra clave*   |  | *Existe en diccionario* | *NO Existe en diccionario* | | --- | --- | --- | | *Paso 1* | Si se decide seleccionar una palabra del diccionario, por ejemplo, "vespertino", la elegimos del desplegable y pulsamos la tecla "enter" y se añadiría la palabra clave a la lista de palabras clave del proyecto. | Escribimos una palabra que, en este caso, no existe en el diccionario, como por ejemplo, "vespa velutina". En este caso, la palabra se ha de introducir completa manualmente.Una vez escrita, pulsamos la tecla "enter" y se añadiría la palabra clave "vespa velutina" a la lista de palabras clave del proyecto (además de al diccionario).palabrasclavegestin1_2_1_1.png | | *Paso 2* | Vemos a continuación cómo la nueva palabra clave "vespertino" aparece en la lista de palabras asociadas al proyecto.palabrasclavegestin1_2_1.png | Vemos a continuación cómo la nueva palabra clave "vespertino" aparece en la lista de palabras asociadas al proyecto. |  *Desasociar palabra clave \- Pulsar sobre el aspa al lado derecho de dicha palabra clave* | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Campos del registro de la entidad principal (en el ejemplo, al proyecto que se esté gestionando) | | |
| Gestión de palabras clave | | |
| Palabras clave | Componente a medidaOpcional | Lista de palabras clave asociadas al registro.Al comenzar a escribir en la caja de texto los primeros caracteres, se sugerirán palabras ya existentes en el diccionario común de palabras clave del SGI, que se obtendrá a través del requisito de integración [REQ\-INT\-0030\-SGO\-0091 \- Buscar palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0091-buscar-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0091-buscar-palabras-clave.md"), para poder seleccionar una a asociar al registro.Si la palabra que se quiere asociar al registro no existe en dicho diccionario, se deberá escribir completamente en el componente.Tanto en un caso como en otro, la acción de indicar que se quiere asociar la palabra clave al registro deberá completarse pulsando a continuación la tecla "enter".La funcionalidad de este componente seguirá la definida en [https://material.angular.io/components/chips/overview\#chips\-input](https://material.angular.io/components/chips/overview#chips-input "https://material.angular.io/components/chips/overview#chips-input"). |
| Eliminar | Icono de acción | Acción "Eliminar" la asociación entre el registro de la entidad que se está gestionando y la palabra clave. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Eliminar (asociación con palabra clave) | Se elimina la relación entre el registro y la palabra clave.La palabra clave seguirá existiendo en el diccionario y manteniendo las relaciones con el resto de registros con los que estuviera asociada. Aún en el caso en el que dicha palabra clave pasase a no tener ningún registro asociado, no se dará de baja del sistema. |  |
| Pulsar "enter" tras seleccionar o escribir palabra clave | Se asocia la nueva palabra clave indicada en la caja de texto "Palabras clave" al registro que se está gestionando.Se validará que la palabra clave no esté ya asociada previamente al registro.Si todas las validaciones se cumplen, se mostrará la palabra añadida como una palabra clave más en el listado de palabras clave asociadas al registro.Una vez se añadan las palabras clave deseadas, se finalizará el proceso en el botón "Guardar" de la entidad correspondiente que, a través del requisito de integración [REQ\-INT\-0030\-SGO\-0090 \- Dar de alta palabra clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0090-dar-de-alta-palabra-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0090-dar-de-alta-palabra-clave.md"), además de asociar estas palabras a la entidad, añadirá al diccionario las palabras clave que no existiesen previamente. |  |

### Interfaces y casos de uso relacionados





















### Permisos de acceso a la pantalla

Los permisos que aplican en estas pantallas y por tanto a este campo adicional serán las ya definidas en cada funcionalidad o IU concreto donde aplique.







