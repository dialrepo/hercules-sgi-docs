# Hércules : IU\-CSP\-0305\-007 \- Modificar solicitud \- Autoevaluación ética



## Formulario Autoevaluación ética

Formulario que permitirá responder a varias preguntas para identificar si el futuro proyecto asociado a la solicitud deberá ser evaluado por la Comisión de ética.

Es un formulario Formly almacenado en la tabla "Formly".

Las respuestas se almacenarán en la tabla "Checklist".

Se podrá modificar siempre y cuando cumpla las precondiciones del caso de uso [CU\-CSP\-1100\-001 Modificar solicitud \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md") y no se haya creado la solicitud de petición de evaluación de ética en el módulo de ética, es decir, mientras el campo "peticionEvaluacionRef" de la tabla "SolicitudProyecto" sea null.

Será obligatorio contestar a todas las preguntas si el estado no es "Borrador" ni "Desistida" ni "Renunciada"



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| El apartado "Autoevaluación ética" y, en general, todo del bloque "Datos proyectos" solamente estará visible si el campo "formulario solicitud" de la tabla "solicitud" toma valor "proyecto". | | |
| Mi investigación conlleva la recogida de datos personales de seres humanos  (a través de cuestionarios, entrevistas, grupos de discusión, grabaciones de audio  o video, fotografías…). | CheckBooleanoValores: Sí, No | La respuesta afirmativa a una sola de las preguntas del formulario provoca que cuando la solicitud pase a otro estado que no sea "Renunciada" ni "Desistida"  se cree de forma automática una solicitud de evaluación ética gestionadas en el Módulo de Ética en [IU\-ETI\-0060\- Peticiones de evaluación \- Investigador](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87818940 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87818940") (siempre y cuando no se haya creado ya) . |
| Mi investigación permite identificar a los participantes (o permite que puedan llegar a ser identificables a partir de los datos recogidos). | CheckBooleanoValores: Sí, No |
| Mi investigación conlleva el estudio con animales de experimentación. Sobre la recogida de muestras biológicas del estudio a realizar. | CheckBooleanoValores: Sí, No |
| Mi investigación conlleva la recogida y tratamiento de muestras biológicas –de humanos o animales– (saliva, sangre, cabello, tejidos…). | CheckBooleanoValores: Sí, No |
| Mi investigación cuenta con informe favorable pero se van a realizar cambios. | CheckBooleanoValores: Sí, No |
| Mi investigación supone trabajar con personas. | CheckBooleanoValores: Sí, No |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
|  |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todas las pestañas de la pantalla. | Las respuestas se almacenarán en la tabla "Checklist".Se podrá modificar siempre y cuando cumpla las precondiciones del caso de uso [CU\-CSP\-1100\-001 Modificar solicitud \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md") y no se haya creado la solicitud de petición de evaluación de ética en el módulo de ética, es decir, mientras el campo "peticionEvaluacionRef" de la tabla "SolicitudProyecto" sea null.Será obligatorio contestar a todas las preguntas si el estado no es "Borrador" ni "Desistida" ni "Renunciada" | ETI\-CHKLST\-MOD\-C |
| Cancelar | Retorna al listado de Solicitudes sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




