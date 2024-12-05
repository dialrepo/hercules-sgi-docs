# Hércules : IU\-ETI\-0060\-001 Búsqueda y listado de mis peticiones de evaluación \- Creador



## Formulario de Búsqueda y listado de mis peticiones de evaluación \- Creador

Pantalla que muestra un formulario, que permite aplicar filtros sobre el listado de peticiones de valuación que tiene creadas un investigador o solicitante. Son las asignadas al usuario que esta logueado en el sistema.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Código | Texto cortoOpcional | Es un código generado automáticamente al crear una nueva petición. Tiene el formato YYYY/secuencia , donde YYYY es el año y secuencia en un código secuencial desde 000 hasta 999 del año. |
| Título proyecto | TextoOpcional | Es el título del proyecto. |
| Comité | SelectorTexto cortoOpcional | Listado con los tres comités: CEISH, CEEA y CEIAB. |
| Listado de resultados | | |
| Código | Texto corto | Código de la petición de evaluación de proyecto. |
| Título proyecto | Texto | Es el título del proyecto |
| Financiación | Texto corto | Fuente de financiación que va a tener el proyecto. |
| Fecha de inicio | Fecha | Fecha de inicio del proyecto. |
| Fecha de fin | Fecha | Fecha fin del proyecto. |
| Modificar | Icono de acción | Acción modificar. |
| Eliminar | Icono de acción | Acción eliminar. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica los filtros introducidos sobre la lista de Peticiones de evaluación mostrando las que cumplen las condiciones | [CU\-ETI\-0060\-001 \- Buscar Mis Peticiones de evaluación \- Creador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-001-buscar-mis-peticiones-de-evaluacion-creador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-001-buscar-mis-peticiones-de-evaluacion-creador.md") | ETI\-PEV\-INV\-ERETI\-PEV\-INV\-BR |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Peticiones de evaluación. |  |  |
| Añadir | Muestra la pantalla de nueva petición de evaluación [IU\-ETI\-0060\-003 Alta petición de evaluación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-003-creacion-peticion-de-evaluacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-003-creacion-peticion-de-evaluacion-datos-generales.md") | [CU\-ETI\-0060\-003 \- Alta Petición de evaluación \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-003-alta-peticion-de-evaluacion-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-003-alta-peticion-de-evaluacion-guardar.md") | ETI\-PEV\-INV\-C |
| Editar | Muestra la pantalla de modificación de una petición evaluación  [IU\-ETI\-0060\-005 Modificación petición de evaluación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-005-modificacion-peticion-de-evaluacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-005-modificacion-peticion-de-evaluacion.md") | [CU\-ETI\-0060\-004 \- Modificar Petición de evaluación \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-004-modificar-peticion-de-evaluacion-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-004-modificar-peticion-de-evaluacion-guardar.md") | ETI\-PEV\-INV\-ER |
| Eliminar | Únicamente se mostrará el icono del Eliminar si todas las memorias están en los estados "En elaboración" y/o  "Completada", es decir, no se ha enviado nada a Secretaría y no tienen ninguna evaluación.Se desactivará la memoria. Funcionalidad transversal a toda la aplicación del SGI. |  | ETI\-PEV\-INV\-BR |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Exportar | Genera el informe asociado al listado de solicitudes de evaluación. | Muestra la pantalla [IU\-ETI\-0090\-005 \- Exportación listado de solicitudes de evaluación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0090-peticiones-de-evaluacion-gestor/iu-eti-0090-005-exportacion-listado-de-solicitudes-de-evaluacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0090-peticiones-de-evaluacion-gestor/iu-eti-0090-005-exportacion-listado-de-solicitudes-de-evaluacion.md") | ETI\-PEV\-INV\-ER |

  


### Acciones

#### Por actor

#### Todos los permisos de acceso




