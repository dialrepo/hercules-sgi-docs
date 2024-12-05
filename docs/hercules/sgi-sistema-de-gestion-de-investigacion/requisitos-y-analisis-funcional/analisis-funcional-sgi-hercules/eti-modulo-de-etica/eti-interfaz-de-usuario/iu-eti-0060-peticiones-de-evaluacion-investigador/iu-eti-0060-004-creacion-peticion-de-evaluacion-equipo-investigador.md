# Hércules : IU\-ETI\-0060\-004 \- Creación petición de evaluación \- Equipo investigador



## Formulario de Creación petición de evaluación \- Equipo investigador

Las peticiones de evaluación de ética pueden  provenir de una solicitud de convocatoria del módulo CSP, lo que supondrá que la petición parta de determinados datos ya cumplimentados, o bien crearse desde cero sin estar asociada a ninguna solicitud del módulo CSP.

La pantalla de creación de  una nueva petición de evaluación, consta de dos apartados:

* Datos generales
* Equipo investigador

Este IU se corresponde con el apartado de Equipo investigador

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de personas que forman parte del equipo investigador. Por defecto habrá sido introducido:* La persona que crea la solicitud de evaluación | | |
| Email | Texto | Email principal, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Nombre y apellidos | Texto | Nombre y apellidos, recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Vinculación | Texto | Vinculación de la persona con la Universidad, recuperado por medio de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") (campo categoría profesional) |
| Nivel académico | Texto | Nivel académico de la persona, recuperado por medio de [REQ\-INT\-0020\-SGP\-0034 \- Consultar datos académicos de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0034-consultar-datos-academicos-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0034-consultar-datos-academicos-de-persona.md") |
| Eliminar | Icono de acción | Acción eliminar |

  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Permite añadir una nueva persona al equipo de trabajo | [CU\-ETI\-0060\-006 \- Equipo investigador \- Alta](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-006-equipo-investigador-alta.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-006-equipo-investigador-alta.md")Se muestra la pantalla [IU\-ETI\-0060\-006 Equipo investigador \- Alta](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-006-equipo-investigador-alta.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-006-equipo-investigador-alta.md") | ETI\-PEV\-INV\-C |
| Eliminar | Permite eliminar una persona del equipo de trabajo | La acción no estará disponible sobre los siguientes miembros del equipo de trabajo:* La persona que actúa como solicitante (su persona ref coincide con el campo "persona ref" de la tabla "petición evaluación")  El resto de miembros del equipo, solamente tendrán habilitada la opción siempre y cuando todas  las tareas que tengan asociadas se correspondan con memorias que estén en uno de los siguientes estados:* En elaboración * Completada * Favorable Pendiente de Modificaciones Mínimas * Pendiente de correcciones * No procede evaluar  Se eliminará la persona del equipo de trabajo y las  tareas que tuviese asociadas en cualquier memoria. | ETI\-PEV\-INV\-C |
| Paginación | Muestra la pantalla de búsqueda para seleccionar una persona | Se hará uso del buscador común de personas [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") , resuelto por medio del requisito de integración  [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Se le deberá pasar a este buscador el tipo de colectivo "tutor csp". | No se necesita permiso para mostrar la pantalla de búsqueda de personas |

  


### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la petición de evaluación con la información introducida en el formulario | [CU\-ETI\-0060\-003 \- Alta Petición de evaluación \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-003-alta-peticion-de-evaluacion-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-003-alta-peticion-de-evaluacion-guardar.md") | ETI\-PEV\-INV\-C |
| Cancelar | Retorna al listado de peticiones de evaluación sin salvar los posibles cambios. |  |  |

  


### Acciones

#### Por actor

#### Todos los permisos de acceso




