# Hércules : IU\-ETI\-0060\-007 Asignación de tareas \- Alta\-modificación



## Formulario de Alta\-modificación asignación de tareas

Pantalla que muestra el formulario para ir asignando tareas dentro de una memoria a las personas del equipo. Se usa el mismo formulario para el alta y para la modificación.



| Formulario de alta:Formulario de modificación: | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Nombre y apellidos | SelectorTextoObligatorio | Desplegable con el nombre y apellidos de las personas del equipo, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Memoria | SelectorReferenciaObligatorio | Desplegable con las memorias del proyecto |
| Tarea | Texto SelectorObligatorio | Si la memoria seleccionada tiene como comité CEISH (M10\) o  CEIAB (M30\) es una caja de textoSi la memoria seleccionada tiene como comité CEEA (M20\) es un desplegable con los siguientes valores:* Diseño de proyecto y procedimientos * Manipulación de animales * Eutanasia |
| Experiencia/Formación | SelectorTextoObligatorio | Si la memoria seleccionada tiene como comité CEISH (M10\) o CEIAB (M30\) es una caja de textoSi la memoria seleccionada tiene como comité  CEEA (M20\)  es un desplegable con los siguientes valores:* A: Cuidado de los animales * B: Eutanasia de los animales * C: Realización de los procedimientos * D: Diseño de los proyectos y procedimientos * E: Responsable de la supervisión «in situ» del bienestar y cuidado de los animales * F: Veterinario designado * G: Sin especificar * H: No requiere |
| Organismo | Texto corto Obligatorio | Solo se pide si la memoria seleccionada tiene uno de los dos comités CEEA o CEIAB |
| Año | Numérico entero genéricoObligatorio | Solo se pide si la memoria seleccionada tiene uno de los dos comités CEEA o CEIAB |

  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Va añadiendo las tareas a las personas del equipo en el listado de asignación de tareas. Dichos cambios se hacen en memoria, no se consolidan hasta pulsar el botón Guardar | [CU\-ETI\-0060\-007 \- Asignación de tareas \- Alta/modificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-007-asignacion-de-tareas-altamodificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-007-asignacion-de-tareas-altamodificacion.md") | ETI\-PEV\-INV\-ER |
| Modificar | Va modificando las tareas a las personas del equipo en el listado de asignación de tareas. Dichos cambios se hacen en memoria, no se consolidan hasta pulsar el botón Guardar | [CU\-ETI\-0060\-007 \- Asignación de tareas \- Alta/modificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-007-asignacion-de-tareas-altamodificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-007-asignacion-de-tareas-altamodificacion.md") | ETI\-PEV\-INV\-ER |

  


### Acciones

#### Por actor

#### Todos los permisos de acceso




