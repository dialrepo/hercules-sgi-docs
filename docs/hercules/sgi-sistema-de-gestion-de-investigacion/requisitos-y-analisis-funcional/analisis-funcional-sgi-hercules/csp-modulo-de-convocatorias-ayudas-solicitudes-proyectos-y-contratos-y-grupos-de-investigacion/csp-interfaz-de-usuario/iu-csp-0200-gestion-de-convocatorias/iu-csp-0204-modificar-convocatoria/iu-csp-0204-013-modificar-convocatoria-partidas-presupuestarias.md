# Hércules : IU\-CSP\-0204\-013 \- Modificar convocatoria \- Partidas presupuestarias



## Formulario Modificar convocatoria \- Partidas presupuestarias

Pantalla compuesta por las siguientes pestañas:

* Datos generales
* Entidades convocantes
* Entidades financiadoras
* Enlaces
* Plazos y fases
* Periodos justificación
* Seguimiento científico
* Hitos
* Documentos
* Requisitos IP
* Requisitos Equipo
* Elegibilidad
* **Partidas presupuestarias**
* Configuración de solicitudes

### Formulario listado de Partidas presupuestarias

**La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")**



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")** | | |
| Listados de partidas de la convocatoria recuperados de la tabla "convocatoria partida" para la convocatoria que está siendo modificada | | |
| Código | Texto | Código alfanumérico que identifica la partida o aplicación presupuestaria.Se corresponde con el campo "código" de la tabla "convocatoria partida". |
| Tipo | Texto corto | Tipo de la partida presupuestaria según sea su naturaleza de gastos o ingresos.Se mostrará el valor recuperado del enumerado "Tipo partida" a partir del campo "tipo partida" de la tabla "convocatoria partida". |
| Descripción | Texto largo | Descripción de la partida.Se corresponde con el campo "descripción" de la tabla "convocatoria partida". |
| Modificar | Icono de acción | Acción modificar. Solamente será posible modificar las partidas a las que no se haya vinculado ningún dato presupuestario en los proyectos derivados de la convocatoria. |
| Eliminar | Icono de acción | Acción eliminar. Solamente será posible eliminar las partidas a las que no se haya vinculado ningún dato presupuestario en los proyectos derivados de la convocatoria. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la partida seleccionada del listado de partidas de la convocatoria | Solo será posible modificar partidas que no estén asociadas  a datos económicos en los proyectos derivados de la convocatoria. Para ello deberá cumplirse alguna de las condiciones siguientes: * Que  la convocatoria está en estado "borrador" * Que la convocatoria esté en estado "registrada" pero no tenga proyectos asociados (ningún elemento de  la tabla "proyecto" referencia desde el campo "convocatoria" a la convocatoria a la que pertenecen las partidas) * Que la convocatoria esté en estado "registrada", tenga proyectos asociados pero estos aún tengan información de presupuesto vinculada a la partida. Para ello: 	+ Si la partida es de tipo "gasto" se comprobará que ésta no exista en la tabla "anualidad gasto" (campo "partida presupuestaria") para algún proyecto derivado de la convocatoria. Para los proyectos de la convocatoria (tabla "proyectos", campo "convocatoria"), se obtendrán sus anualidades (tabla "proyecto anualidad"), y para cada una de ellas las partidas de gasto vinculadas (tabla "anualidad gasto"). 	+ Si la partida es de tipo "ingreso" se comprobará que ésta no exista en la tabla "anualidad ingreso" (campo "partida presupuestaria") para algún proyecto derivado de la convocatoria. Para los proyectos de la convocatoria (tabla "proyectos", campo "convocatoria"), se obtendrán sus anualidades (tabla "proyecto anualidad"), y para cada una de ellas las partidas de gasto vinculadas (tabla "anualidad ingreso").  Si se cumple alguna de las condiciones anteriores se permitirá la modificación, mostrando la pantalla descrita en [IU\-CSP\-202\-016 \- Añadir\-modificar partida presupuestaria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-016-anadir-modificar-partida-presupuestaria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-016-anadir-modificar-partida-presupuestaria.md") a la que se accede en modo edición.En caso contrario, la acción modificar no estará disponible y se mostrará el icono de información con el siguiente texto "No se puede modificar ni eliminar la partida porque esta siendo usada en uno de los presupuestos de los proyectos vinculados a la convocatoria" | CSP\-CON\-ECSP\-CON\-E\_UO |
| Eliminar | Elimina la partida de la convocatoria | Solo será posible eliminar partidas que no estén asociadas  a datos económicos en los proyectos derivados de la convocatoria. Para ello deberá cumplirse alguna de las condiciones siguientes: * Que  la convocatoria está en estado "borrador" * Que la convocatoria esté en estado "registrada" pero no tenga proyectos asociados (ningún elemento de  la tabla "proyecto" referencia desde el campo "convocatoria" a la convocatoria a la que pertenecen las partidas) * Que la convocatoria esté en estado "registrada", tenga proyectos asociados pero estos aún tengan información de presupuesto vinculada a la partida. Para ello: 	+ Si la partida es de tipo "gasto" se comprobará que ésta no exista en la tabla "anualidad gasto" (campo "partida presupuestaria") para algún proyecto derivado de la convocatoria. Para los proyectos de la convocatoria (tabla "proyectos", campo "convocatoria"), se obtendrán sus anualidades (tabla "proyecto anualidad"), y para cada una de ellas las partidas de gasto vinculadas (tabla "anualidad gasto"). 	+ Si la partida es de tipo "ingreso" se comprobará que ésta no exista en la tabla "anualidad ingreso" (campo "partida presupuestaria") para algún proyecto derivado de la convocatoria. Para los proyectos de la convocatoria (tabla "proyectos", campo "convocatoria"), se obtendrán sus anualidades (tabla "proyecto anualidad"), y para cada una de ellas las partidas de gasto vinculadas (tabla "anualidad ingreso").  Si se cumple alguna de las condiciones anteriores se permitirá la eliminación, realizando un borrado físico sobre la tabla "convocatoria partida" para la partida seleccionada. En caso contrario, la acción eliminar no estará disponible. | CSP\-CON\-ECSP\-CON\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir  partida presupuestaria | Permite añadir una nueva partida a la convocatoria | Muestra la pantalla [IU\-CSP\-202\-016 \- Añadir\-modificar partida presupuestaria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-016-anadir-modificar-partida-presupuestaria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-016-anadir-modificar-partida-presupuestaria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |

### Botones generales de la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica la convocatoria. Al guardar una convocatoria se guarda la información de todos los apartados que presenten cambios. | Ver restricciones de la acción de modificación en  [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md") | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar la modificación no se almacena ningún cambio realizado sobre ninguno de los apartados. |  |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




