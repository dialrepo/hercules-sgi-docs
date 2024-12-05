# Hércules : IU\-CSP\-0953\-007 \- Modificar\-consultar línea de investigación \- Datos generales



## Formulario Modificar/consultar línea de investigación \- Datos generales

Formulario de modificación/consulta de una línea de investigación vinculada a un grupo de investigación, apartado de Datos generales. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán realizar cambios.

Si el usuario es un ACT\-CSP\-005\-Visor se mostrarán todos los campos en modo consulta y no podrá realizar modificaciones. El botón Guardar estará deshabilitado.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). El botón Guardar estará deshabilitado.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de datos generales. | | |
| Nombre | Texto largoSelectorObligatorio | Se mostrará un combo con los nombres de las líneas de investigación dadas de alta en el SGI activas. Campo "nombre" de la tabla "línea investigación".La línea seleccionada se guardará en el campo "línea investigación" de la tabla "grupo línea investigación")Será un campo obligatorio. |
| Fecha inicio | FechaObligatorio | Fecha de inicio de actuación de la línea de investigación en el grupo.Campo "fecha inicio" de la tabla "grupo línea investigación ". Por defecto, en la creación, se inicializa al valor de la fecha de inicio del grupo (campo "fecha inicio" de la tabla "grupo").Se comprobará que sea una fecha mayor o igual a la fecha de inicio del grupo (campo "fecha inicio" de la tabla "grupo").Será un campo obligatorio. |
| Fecha fin | FechaOpcional | Fecha de fin de actuación de la línea de investigación en el grupo.Campo "fecha fin" de la tabla "grupo línea investigación ".Se comprobará que sea una fecha menor o igual a la fecha de fin del grupo en caso de estar informada (campo "fecha fin" de la tabla "grupo").Será un campo opcional. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir nueva línea de investigación | Se podrá dar de alta una nueva línea de investigación desde la propia pantalla, sin necesidad de ir al menú de Configuración → Líneas investigación | Se abrirá la ventana emergente de alta de línea de investigación [IU\-CSP\-0954\-002 Crear\-modificar línea de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0954-configuracion/iu-csp-0954-002-crear-modificar-linea-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0954-configuracion/iu-csp-0954-002-crear-modificar-linea-de-investigacion.md") | CSP\-LIN\-C |
| Refrescar líneas de investigación | Refresca el selector de Líneas de investigación | Se vuelve a recuperar todas las líneas de investigación dadas de alta en el SGI activas. |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica o crea la vinculación de la línea de investigación con el grupo a partir de la información introducida en el formulario.Al guardar una línea de investigación se guarda la información de todos los apartados de definición de la línea (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a los Datos generales) | Se modifican (o se crean) los datos de la tabla "grupo línea investigación" con los datos del formulario. En caso de ser una línea no existente en el diccionario común del SGI se dará de alta primero en dicho diccionario (tabla "línea investigación") y luego se hará la vinculación con el grupo (tabla "grupo línea investigación").Se harán las siguientes comprobaciones:* Fecha inicio tendrá que ser una fecha mayor o igual a la fecha de inicio del grupo (campo "fecha inicio" de la tabla "grupo"). * Fecha fin tendrá que ser una fecha menor o igual a la fecha de fin del grupo en caso de estar informada (campo "fecha fin" de la tabla "grupo"). | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Líneas de investigación de un grupo sin salvar los posibles cambios.Al cancelar, se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




