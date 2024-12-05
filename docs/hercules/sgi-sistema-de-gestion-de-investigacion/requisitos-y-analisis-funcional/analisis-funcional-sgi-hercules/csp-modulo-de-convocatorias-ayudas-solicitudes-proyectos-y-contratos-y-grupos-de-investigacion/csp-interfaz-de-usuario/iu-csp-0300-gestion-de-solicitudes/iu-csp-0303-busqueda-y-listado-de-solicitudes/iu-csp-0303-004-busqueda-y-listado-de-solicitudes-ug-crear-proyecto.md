# Hércules : IU\-CSP\-0303\-004 \- Búsqueda y listado de solicitudes \- UG \- Crear proyecto



## Formulario Búsqueda y listado de solicitudes \- UG \- Crear proyecto

Formulario que permite la creación de un proyecto asociado a una solicitud. 

Desde el listado de resultados de los buscadores [IU\-CSP\-0303\-002\- Búsqueda simple y listado de solicitudes \- Unidades de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-002-busqueda-simple-y-listado-de-solicitudes-unidades-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-002-busqueda-simple-y-listado-de-solicitudes-unidades-de-gestion.md") y [IU\-CSP\-0303\-003\- Búsqueda ampliada y listado de solicitudes \- Unidades de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-003-busqueda-ampliada-y-listado-de-solicitudes-unidades-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-003-busqueda-ampliada-y-listado-de-solicitudes-unidades-de-gestion.md") se mostrará  el botón Crear proyecto, solo disponible para ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador. El botón Crear proyecto se mostrará cuando la solicitud cumpla:

* Que esté en uno de los siguientes estados (campo "estado" de la tabla "solicitud"):
	+ Concedida provisional
	+ Concedida provisional alegada
	+ Concedida provisional no alegada
	+ Concedida
* El formulario sea de tipo "Proyecto" o "RRHH" (campo "formulario solicitud" de la tabla "solicitud")

  




| Si el formulario es de tipo "Proyecto":Si el formulario es de tipo "RRHH": | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Título | TextoObligatorio | Título del proyecto a crear.Si el campo "formulario solicitud" de la tabla "solicitud es de tipo "Proyecto" se precarga con el valor del campo "título" de la tabla "solicitud", pudiendo ser modificado. En caso de que el título de la solicitud no estuviera informado se precargará vacío y será de obligatoria introducción.  Si el campo "formulario solicitud" de la tabla "solicitud es de tipo "RRHH" se precarga con la concatenación (por el carácter "\-") de los siguientes valores:* Título de la convocatoria * Año de la convocatoria (extraído del campo "fecha publicación" de la convocatoria" * Nombre y apellidos del solicitante  Es un campo obligatorio.El valor introducido se almacenará sobre el campo "título" de la tabla "proyecto". |
| Fecha inicio | Fecha (sin hora)Obligatorio | Fecha de inicio del proyecto a crear.Se recogerá en formato fecha (sin hora).Es un campo obligatorio.El valor indicado se almacenará sobre el campo "fecha inicio" de la tabla "proyecto". |
| Fecha fin | Fecha (sin hora)Obligatorio | Fecha de fin del proyecto a crear.Se recogerá en formato fecha (sin hora).Es un campo obligatorio.Si el campo "duración" de la tabla "solicitud" está informado, se realizará el cálculo de la fecha de fin a partir  de la fecha de inicio introducida  en el campo anterior más el campo "duración" de la tabla "solicitud" (en caso de estar informado) y restando un día. A pesar de calcularse será un valor modificable. Para su introducción manual, solo se permitirá la introducción de fecha (sin hora).El valor calculado o recogido se almacenará sobre el campo "fecha fin" de la tabla "proyecto". |
| Modelo ejecución | SelectorTextoObligatorio | Modelo de ejecución al que se asociará el proyecto a crear. Si la solicitud tiene una convocatoria del SGI vinculada, el campo "convocatoria" de la tabla "solicitud" está informado,  este campo se cargará con el modelo de ejecución de la convocatoria y se mostrará en modo solo lectura.  En caso que la solicitud no esté vinculada a una convocatoria del SGI (campo "convocatoria" de la tabla "solicitud" vacío) el campo se cargará con el listado de modelos de ejecución asociados a la unidad de gestión con la que se vincula la solicitud (campo "unidad gestión" de la tabla "solicitud").Es un campo obligatorio. |
| Listado de proyectos ya vinculados a la solicitud: Esta tabla solo se mostrará si existen proyectos vinculados a la solicitud. Se recuperarán de la tabla "proyecto" todos los registros cuyo campo "solicitud" se corresponda con la solicitud sobre la que se pulsa el botón "crear proyecto".  Para cada proyecto se mostrará una fila en la tabla, con las columnas: | | |
| ID interno | Numérico entero | Campo "id" de la tabla "proyecto". |
| Código SGE | Texto | campo "proyecto SGE ref" de la tabla "proyecto proyecto SGE". |
| Título | Texto | Campo "título" de la tabla "proyecto". |
| Fecha inicio | Fecha (sin hora) | Campo "fecha inicio" de la tabla "proyecto". |
| Fecha fin | Fecha (sin hora) | Campo "fecha inicio" de la tabla "proyecto". |
| Estadto | Texto | Nombre del estado (obtenido de la tabla "tipo estado proyecto") correspondiente al estado indicado en el campo "estado" de la tabla "proyecto". |

### Acciones



| Acción | Descripción | Enlace C.U. | Permisos |
| --- | --- | --- | --- |
| Aceptar | Confirma la operación de creación del proyecto. | Se crea el registro sobre la tabla "proyecto":* Campo "título" de la tabla "proyecto" tomará el valor recogido en el campo "título" del formulario. * Campo "fecha de inicio" de la tabla "proyecto" tomará el valor indicado en el campo "fecha inicio" del formulario. * Campo "fecha de fin" de la tabla "proyecto" tomará el valor recogido en el campo "fecha fin" del formulario. * Campo "modelo de ejecución" de la tabla "proyecto" tomará el valor recogido en el campo "modelo ejecución" del formulario.  Ver resto de condiciones y datos a volcar en las tablas de proyecto en [CU\-CSP\-1200\-005 \- Crear proyecto desde solicitud concedida](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-005-crear-proyecto-desde-solicitud-concedida.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-005-crear-proyecto-desde-solicitud-concedida.md")Si se cumplen las validaciones de obligatoriedad se creará el proyecto y se mostrará la pantalla de edición de datos generales \- ficha  del proyecto creado. |  |
| Cancelar | Cancela la operación sin realizar la creación del proyecto. | No se realiza ninguna operación y se cierra la ventana, retornando al listado de solicitudes. |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




