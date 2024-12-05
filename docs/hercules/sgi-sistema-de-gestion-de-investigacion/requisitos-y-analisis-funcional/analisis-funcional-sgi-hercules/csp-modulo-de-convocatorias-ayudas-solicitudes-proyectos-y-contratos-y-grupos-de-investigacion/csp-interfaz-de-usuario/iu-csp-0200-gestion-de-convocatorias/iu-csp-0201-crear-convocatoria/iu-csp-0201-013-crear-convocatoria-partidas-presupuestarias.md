# Hércules : IU\-CSP\-0201\-013 \- Crear convocatoria \- Partidas presupuestarias



## Formulario  Crear convocatoria \- Partidas presupuestarias

La información de una convocatoria estará distribuida en los siguientes apartados:

* Datos generales
* Entidades convocantes
* Entidades financiadoras
* Enlaces
* Fases
* Periodos justificación
* Seguimiento científico
* Hitos
* Documentos
* Requisitos IP
* Requisitos Equipo
* Elegibilidad
* **Partidas presupuestarias**
* Configuración de solicitudes

### Partidas presupuestarias

En este apartado se configurarán las partidas o aplicaciones presupuestarias que se utilizarán posteriormente en la gestión económica de los proyectos derivados de la convocatoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de partidas presupuestarias de la convocatoria. Se recuperarán de la tabla "convocatoria partida" | | |
| Código | Texto | Código alfanumérico que identifica la partida o aplicación presupuestaria.Se corresponde con el campo "código" de la tabla "convocatoria partida". |
| Tipo | Texto corto | Tipo de la partida presupuestaria según sea su naturaleza de gastos o ingresos.Se mostrará el valor recuperado del enumerado "Tipo partida" a partir del campo "tipo partida" de la tabla "convocatoria partida". |
| Descripción | Texto | Descripción de la partida.Se corresponde con el campo "descripción" de la tabla "convocatoria partida". |
| Modificar | Icono de acción | Acción modificar. |
| Eliminar | Icono de acción | Acción eliminar. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la partida presupuestaria | En la operación de creación de la convocatoria (estado "borrador"), será posible modificar  los datos de cualquier partida, para ello se mostrará la pantalla  [IU\-CSP\-202\-016 \- Añadir\-modificar partida presupuestaria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-016-anadir-modificar-partida-presupuestaria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-016-anadir-modificar-partida-presupuestaria.md") | CSP\-CON\-CCSP\-CON\-C\_UO |
| Eliminar | Elimina la partida presupuestaria de la convocatoria | En la operación de creación de la convocatoria (estado "borrador"), será posible eliminar cualquier partida. Se realizará un borrado físico del registro en la tabla "convocatoria partida | CSP\-CON\-CCSP\-CON\-C\_UO |
| Paginación de gasto permitido | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir partida presupuestaria | Muestra la pantalla Nueva partida presupuestaria | Muestra la pantalla [IU\-CSP\-202\-016 \- Añadir\-modificar partida presupuestaria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-016-anadir-modificar-partida-presupuestaria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-016-anadir-modificar-partida-presupuestaria.md") | CSP\-CON\-CCSP\-CON\-C\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Convocatoria con la información introducida en el formulario.Al guardar una convocatoria se guardará la información de todos los apartados sobre los que se hubieran introducido datos. |  | CSP\-CON\-CCSP\-CON\-C\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todos los apartados, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




