# Hércules : IU\-CSP\-0952\-001 \- Crear grupo investigación \- Datos generales



## Formulario Crear grupo investigación \- Datos generales

Formulario de creación de un grupo de investigación, apartado de Datos generales.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de datos generales. | | |
| Nombre | Texto largoObligatorio | Nombre por el que se conoce al grupo de investigación. Campo "nombre" de la tabla "grupo".Será un campo obligatorio. |
| Investigador/a principal | BuscadorTextoObligatorio | A través del buscador [IU\-GEN\-0060 \- Búsqueda de personas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453") se permitirá la búsqueda y selección del ACT\-CSP\-001\-Investigador principal del grupo de investigación. Se dará de alta automáticamente como miembro del  "Equipo de investigación" con el rol que tanga marcado el flag "principal" a true y con el campo "orden" a 1\. La referencia de la persona recuperada se almacenará en el campo "personaRef" de la tabla "grupo equipo". |
| Departamento | TextoConsulta | Será un campo de información para el usuario únicamente visible en la creación del nuevo grupo.Se muestra el campo "nombre" del departamento al que esta adscrito la persona seleccionada en el campo "Investigador/a principal". El departamento se recuperará por medio de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") de la persona seleccionada en el campo "Investigador/a principal".Modo consulta. |
| Código | Texto cortoObligatorio | Se genera de forma automática al seleccionar el "Investigador/a principal" , a partir del código del departamento al que esta adscrito el investigador/a principal y un secuencial por departamento. El código del departamento se recuperará por medio de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") de la persona seleccionada en el campo "Investigador/a principal".Para saber el secuencial que le corresponde, se buscará en la tabla "grupo" todos los grupos que tengan en el campo "departamentoOrigenRef" el código del departamento del "Investigador/a principal" se contabilizarán y se sumará uno. En caso de que exista ya ese código se cogerá el sucesivo y así hasta encontrar uno que no exista.Este código será único por grupo de investigación. Campo "código" de la tabla "grupo".Será un campo obligatorio y podrá ser modificado por el ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor. |
| Código de identificación SGE | TextoModo consulta | Identificador del proyecto del económico en los sistemas de la Universidad asociado al grupo.Para el alta, este campo se mostrará en modo solo lectura. |
| Fecha inicio | FechaObligatorio | Fecha de inicio del grupo de investigación. Campo "fecha inicio" de la tabla "grupo".Será un campo obligatorio. |
| Fecha fin | FechaOpcional | Fecha de fin del grupo de investigación. Campo "fecha fin" de la tabla "grupo".Será un campo opcional. |
| Palabras clave | Componente a medidaOpcional | Lista de palabras clave asociadas al grupo.El comportamiento del componente será el descrito de manera general en [IU\-GEN\-0200 \- Gestión de palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md"). |
| Tipo grupo | SelectorTexto cortoOpcional | Indica el grado de madurez del grupo de investigación.Desplegable con los valores del enumerado "Tipo grupo":* Emergente * Consolidado * Precompetitivo * Grupo de alto rendimiento  Campo "tipo" de la tabla "grupo". |
| Grupo especial de investigación | SelectorBooleanoOpcional | Indica si el grupo de investigación en un "Grupo especial de investigación".Podrá tomar valor afirmativo o negativo, se tomará como valor por defecto el valor "No" por lo que estará inicializado a dicho valor.Campo "especial investigación" de la tabla "grupo". |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea el Grupo con la información introducida en el formulario.Al guardar un grupo se guardar la información de todos los apartados de definición del grupo. | Se crearán los siguientes registros:* en la tabla "grupo" con los datos "nombre", "fecha inicio", "fecha fin" y "código". Se comprobará que el campo "código" sea único en la tabla "grupo" entre los grupos activos. * en la tabla "grupo especial investigación" con la "fecha inicio" igual a la fecha actual, el campo "especial investigación" el seleccionado por el usuario y "grupo id" el identificador del registro creado en la tabla "grupo". Con el identificador devuelto en esta creación se actualizará el grupo que se acaba de crear para añadirle el campo "especial investigación". * en caso de que el usuario haya seleccionado un "tipo grupo", en la tabla "grupo tipo" con la "fecha inicio" igual a la fecha actual, el campo "tipo grupo" el  seleccionado por el usuario y "grupo id" el identificador del registro creado en la tabla "grupo". Con el identificador devuelto en esta creación se actualizará el grupo que se acaba de crear para añadirle el campo "tipo". * en la tabla "grupo equipo" con los datos: 	+ "persona ref": el campo "Investigador/a principal" 	+ "fecha inicio": el campo "Fecha inicio" 	+ "grupo": el grupo que se acaba de crear 	+ "fecha fin": sin informar 	+ "rol": de la tabla "rol proyecto" se busca el que tiene el flag "rol principal" a true y el campo "orden" con valor "primario" 	+ "dedicacion": sin informar 	+ "participacion": sin informar * por cada palabra clave seleccionada se creará un registro en la tabla "grupo palabra clave". En caso de ser un nueva palabra clave, se creará primero la palabra clave en el diccionario de palabras clave del SGI invocando al método definido dentro del Diseño [SGI \- ESB \- SGO](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO") (POST /palabras\-clave). | CSP\-GIN\-C |
| Cancelar | Retorna al listado de Grupos sin salvar los posibles cambios.Al cancelar un grupo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




