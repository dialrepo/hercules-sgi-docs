# Hércules : IU\-PII\-0020\-0010\-001 Crear solicitud de protección \- Datos generales



## Formulario Crear solicitud de protección \- Datos generales

Pantalla con el formulario de alta o creación de solicitudes de protección de una invención. Pestaña de "Datos generales".

A la hora de crear una invención aparecerán más o menos datos o tendrán nombre distinto en función del tipo de propiedad que se trate, industrial o intelectual o dentro de la propiedad industrial, dependiendo además de la vía y de cuántas solicitudes previas existen para esa misma invención.

A nivel de pantallas, no se han recogido todas las casuísticas posibles, sino que se ha tratado de mostrar las que cubran el mayor número de casos.

Sí se han descrito, pero de manera textual, todas las posibilidades que dan lugar a las diferentes combinaciones.



| ***Crear solicitud de protección \- Propiedad intelectual******Crear solicitud de protección \- Propiedad industrial \- Primera solicitud (Vía NO PCT)******Crear solicitud de protección \- Propiedad industrial \- Segunda solicitud y posteriores (Vía NO PCT)******Crear solicitud de protección \- Propiedad industrial \- Vía PCT*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| *Campos comunes* | | |
| Título | TextoObligatorio | Título de la solicitud de protección.Al crear una solicitud, se cargará por defecto el título de la invención asociada como título de la solicitud, pero el usuario podrá modificarla. |
| Fecha solicitud / Fecha  prioridad | Fecha (sin hora)Obligatorio | Fecha de la solicitud o fecha de prioridad.Hay dos casuísticas que determinan el texto a mostrar como nombre para este campo:1. Para cualquier vía asociada a tipos de protección de "Propiedad industrial" excepto las vías del tipo extensión internacional (PCT p.ej.), y solo en caso de que sea la primera solicitud, el texto a mostrar como nombre del campo será "Fecha de prioridad". 2. Para cualquier vía asociada a tipos de protección de "Propiedad intelectual", para las vías del tipo extensión internacional (PCT p.ej.) y para solicitudes posteriores a la primera que se encuentren en el caso descrito en el punto 1, el texto a mostrar como nombre del campo será "Fecha de solicitud". |
| Vía de protección | SelectorTexto cortoObligatorio | Listado de tipos de protección. Las vías de protección posibles saldrán acorde al tipo de propiedad asociado al tipo de protección que tenga la invención, existirá una lista asociada a "Propiedad intelectual" y otra a "Propiedad industrial".A priori esta lista tendrá los siguientes valores:* Protecciones de tipo "Protección industrial": 	+ España 	+ PCT 	+ Europea 	+ País específico * Protecciones de tipo "Protección intelectual": 	+ Registro autonómico 	+ Acta notarial 	+ Registro interno  En todo caso, esta lista es configurable en [IU\-PII\-0060\-Gestión de Vías de protección](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/index.md").Si se selecciona una vía de protección con el indicador de que dicha vía es por país \= "Sí" (País específico p.ej.), se mostrará además el campo de selección "País" de donde se podrá escoger opcionalmente uno por el que filtrar.Si se selecciona una vía de protección con el indicador de que dicha vía es del tipo extensión internacional \= "Sí" (PCT p.ej.), los campos Fecha de solicitud y Fecha de fin de prioridad variarán en cuanto al texto a mostrar por pantalla como nombre del mismo. Se detalla cómo han de mostrarse en cada campo concreto. |
| Número de solicitud | Texto cortoObligatorio | Número de la solicitud que es comunicada por el organismo donde se solicita. |
| Comentarios | TextoOpcional | Comentarios a la solicitud de protección. |
| *Campos específicos "Propiedad intelectual"* | | |
| Número de registro | Texto cortoOpcional | Número del registro que es comunicada por el organismo que concede la protección. |
| *Campos específicos "Propiedad industrial"* | | |
| Fecha fin prioridad / Fecha fin de presentación fases nacionales/regionales | Fecha (sin hora)Obligatorio | Fecha de finalización de la prioridad de la solicitud o de fin del plazo de presentación de solicitudes en fases nacionales/regionales. Si la solicitud NO es la primera solicitud de la invención, este campo no será visible salvo que la vía de protección sea del tipo extensión internacional \= "Sí" (PCT p.ej.).Esta fecha se calculará en función de la vía de protección, por ejemplo, en el caso concreto de la vía "España", son 12 meses, pero podrá ser modificada por el usuario.En todo caso, el tiempo en meses de duración bien de la prioridad bien del plazo para la presentación de solicitudes en fases nacionales/regionales será configurable en función de la vía en [IU\-PII\-0060\-Gestión de Vías de protección](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/index.md") y siempre se calculará tomando como base para el cálculo de la fecha de fin la fecha de prioridad. |
| Agente de la propiedad | TextoOpcional | Agente de la propiedad a asociar a la solicitud de protección.Campo de búsqueda de empresas/entidades en los sistemas de la Universidad. |
| Estado | SelectorObligatorioOculto | Estado de la solicitud.Las solicitudes podrán tener los siguientes estados:* Solicitada * Publicada * Concedida * Caducada  Al crear la solicitud se establecerá por defecto el valor "Solicitada" para su estado de manera implícita.El campo no será visible por pantalla. |
| *Campos específicos "Propiedad industrial"  \- Vía país específico* | | |
| País | SelectorObligatorio | Este campo se mostrará si se selecciona una vía de protección con el indicador de desplegable de países asociados \= "Sí" (País específico p.ej.).Se cargará una lista con de países para seleccionar uno a asociar con la solicitud de protección.Esta lista de países será recuperada a través del requisito de integración [REQ\-INT\-0030\-SGO\-0060 \- Listar países](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0060-listar-paises.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0060-listar-paises.md"). |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (agente de la propiedad) | A través del botón Buscar se dará acceso al buscador de empresas/entidades común a todo el SGI [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md")  de las que seleccionar una a asociar como Agente de la propiedad a la solicitud de invención. El listado de entidades disponibles se obtendrá del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0015-SGEMP-0020+-+Buscar+empresa "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0015-SGEMP-0020+-+Buscar+empresa"), que realizará la búsqueda de entidades en los sistemas de la universidad. |  | No se necesitan permisos para mostrar la pantalla de búsqueda de empresas |
| Guardar solicitud de protección | Crea la solicitud de protección y retorna al listado de solicitudes de protección asociadas a la invención.Validaciones de obligatoriedad:* Campos comunes Propiedad industrial y Propiedad intelectual: 	+ Título 	+ Fecha de solicitud / Fecha de prioridad 	+ Vía de protección * Solo para Propiedad industrial: 	+ País (si aplica) 	+ Fecha fin prioridad / Fecha fin de presentación fases nacionales/regionales 	+ Estado  Se ha de validar además que la invención solo tenga una solicitud de protección por vía, a excepción de la vía que tenga el indicador por país \= "Sí" (País específico p.ej.), en este caso, se validará que sea solamente una por cada país.Al crear la solicitud, el campo de fecha fin prioridad / fecha fin de presentación fases nacionales/regionales, será utilizado para generar las tareas programadas y los comunicados correspondientes, en los módulos de tareas programadas y de comunicados respectivamente, según lo descrito en el apartado [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md").Se crearán los registros necesarios en la tabla "solicitud de protección aviso" para almacenar las referencias a los comunicados y tareas programadas generados en el punto anterior. |  | PII\-INV\-E |
| Cancelar | Retorna a la pantalla listado de solicitudes, sin salvar los posibles cambios. |  |  |

### Comunicados

Se deberán programar varios avisos, en diferentes momentos, ante la cercanía del fin de la prioridad o del plazo para presentación a fases nacionales/regionales de las solicitudes de protección, generándose para cada aviso los correspondientes comunicados y tareas programadas en los módulos de comunicados [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente.  


La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Fin de prioridad (excepto PCT) \- Unidad gestión** para los avisos de fin de prioridad de solicitudes NO PCT yen el apartado **Fin de plazo de presentación fases nacionales/regionales (PCT) \- Unidad gestión** para los avisos de fin de plazo de presentación a fases nacionales/regionales de solicitudes PCT. Ambos apartados están dentro de [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md"). El flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado").

### Permisos de acceso a la pantalla

#### Por actor



| ACT\-PII\-001\-Gestor | PII\-INV\-E |
| --- | --- |

#### Todos los permisos de acceso



| Permisos | PII\-INV\-V, PII\-INV\-E |
| --- | --- |




