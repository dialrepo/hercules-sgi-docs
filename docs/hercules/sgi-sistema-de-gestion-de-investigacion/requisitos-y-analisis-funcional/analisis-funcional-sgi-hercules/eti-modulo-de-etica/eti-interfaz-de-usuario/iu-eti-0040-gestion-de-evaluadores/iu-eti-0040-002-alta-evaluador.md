# Hércules : IU\-ETI\-0040\-002 Alta evaluador



## Formulario de Alta evaluador

Pantalla que muestra un formulario que permite dar de alta a un nuevo evaluador y el listado de usuarios con los que entra en conflicto de intereses.

Pantalla compuesta por dos formularios:

* Datos generales
* Conflicto de intereses

### Datos generales



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Evaluador | Botón BuscarTexto cortoObligatorio | Se muestra la pantalla genérica del SGI para buscar una la persona [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md").En caso de no existir, se podrá solicitar por parte del usuario gestor el alta de la persona a través del formulario común de alta [IU\-GEN\-0061\- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md").Una vez buscada, se mostrará el nombre y apellidos de la persona. |
| Comité | DesplegableabreviaturaObligatorio | Desplegable con los valores: * CEISH * CEEA * CEIAB |
| Fecha alta | fechaObligatorio | Calendario para marcar el día de alta. |
| Fecha baja | fechaObligatorio | Calendario para marcar el día de baja. Debe de ser mayor que la fecha de alta. |
| Cargo | DesplegableTexto cortoObligatorio | Desplegable con los valores: * Presidente * Vocal * Secretario |
| Resumen | TextoOpcional | Caja de texto para explicar la actividad que realiza. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"). El listado de investigadores disponible se obtendrá del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md").Se le deberá pasar a este buscador el tipo de colectivo que haya sido identificado en periodo de implantación como personal de investigación que puede realizar las evaluaciones de las memorias de investigación o bien personal de técnico que puede realizar las tareas de evaluación de memorias ("Evaluador ética").En caso de no existir la persona, se podrá solicitar por parte del usuario gestor el alta de la misma a través del formulario de alta [IU\-GEN\-0061\- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md") que hará uso del requisito de integración [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md").En el caso de que el buscador devolviese la persona, pero se quisiera realizar alguna modificación en sus datos, se podrá solicitar dicha modificación, utilizando para ello el formulario de solicitud de modificación [IU\-GEN\-0062 \- Ver detalle \- Solicitar modificación de persona](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0062+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+persona&linkCreation=true&fromPageId=597853802 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0062+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+persona&linkCreation=true&fromPageId=597853802"), que cumple con el requisito de integración [REQ\-INT\-0020\-SGP\-0060 \- Solicitar modificación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0060-solicitar-modificacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0060-solicitar-modificacion-de-persona.md") y a la que se accede desde el propio formulario de búsqueda [IU\-GEN\-0100\-0060 \- Búsqueda de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"). Solamente podrá realizar esta solicitud de modificación el usuario gestor. |  | No se necesita permiso para abrir la pantalla de búsqueda de personas |

### Conflicto de intereses



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de usuarios con conflicto de interes | | |
| NIF/NIE | Texto corto | NIF/NIE del usuario con el que tiene un conflicto de interés, por lo que no podrá estar en una evaluación de una memoria en la que dicho usuario forme parte del equipo. Recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Nombre y apellidos | Texto | Nombre y apellidos del usuario con el que tiene un conflicto de interés, por lo que no podrá estar en una evaluación de una memoria en la que dicho usuario forme parte del equipo. Recuperado por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Se añade una relación de conflicto de interés con el usuario. [IU\-ETI\-0040\-004 Conflicto de intereses \- Añadir](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0040-gestion-de-evaluadores/iu-eti-0040-004-conflicto-de-intereses-anadir.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0040-gestion-de-evaluadores/iu-eti-0040-004-conflicto-de-intereses-anadir.md") | [CU\-ETI\-0040\-003 \- Alta usuario conflicto de intereses](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0040-gestion-de-evaluadores/cu-eti-0040-003-alta-usuario-conflicto-de-intereses.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0040-gestion-de-evaluadores/cu-eti-0040-003-alta-usuario-conflicto-de-intereses.md") | ETI\-EVR\-C |
| Eliminar | Se elimina la relación con el usuario |  | ETI\-EVR\-C |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea al evaluador con la información introducida en los formularios | [CU\-ETI\-0040\-002 \- Alta/Modificar Evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0040-gestion-de-evaluadores/cu-eti-0040-002-altamodificar-evaluador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0040-gestion-de-evaluadores/cu-eti-0040-002-altamodificar-evaluador.md") | ETI\-EVR\-C |
| Cancelar | Retorna al listado de Evaluadores sin salvar los posibles cambios. |  |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso




