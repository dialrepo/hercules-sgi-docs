# Hércules : IU\-CSP\-0204\-002 \- Modificar convocatoria \- Entidades convocantes



## Formulario Modificar convocatoria \- Entidades convocantes

### Formulario con el listado de entidades convocantes

**La modificación de los datos de una convocatoria se rige por lo establecido en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md")**



|  | | |
| --- | --- | --- |
| Nombre | Tipo |  |
| **La modificación de los datos de una convocatoria se rige por lo establecido en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md")** | | |
| Listado de entidades convocantes. Se listan las entidades contendidas en la relación "Convocatoria entidad convocante" | | |
| Nombre | Texto | Nombre de la entidad convocante. Obtener campo razón social de la empresa a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Número de identificación fiscal | Texto corto | Número de identificación de la entidad convocante, obtenido a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Plan | Texto | Plan de la entidad convocante. Nombre del plan de investigación recuperado de la tabla "Programa" a través del identificador almacenado en el atributo "programa" de "Convocatoria entidad convocante". El plan será el elemento raíz del árbol de programas, es decir, aquel elemento que no tenga antecesores. |
| Programa | Texto | Programa de la entidad convocante. Nombre del programa recuperado de la tabla "Programa" correspondiente al nodo del árbol de programas de nivel 1 del que depende el programa referenciado en "Convocatoria entidad convocante" |
| Item "hoja" del árbol del programa \= Modalidad | Texto | Item "hoja" del árbol del programa referenciado en el atributo "programa" de la relación "Convocatoria entidad convocante". Se recuperará el nombre de la tabla "Programa" y se mostrará en esta columna Modalidad, independientemente del nivel que ocupe el elemento correspondiente en el árbol de programas (salvo que sea el elemento raíz o un hijo de nivel 1\). Si el elemento que se recupera es el elemento raíz del árbol (Plan) o un hijo de nivel 1 (programa), esta columna Modalidad se mostrará vacía. |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |

  
  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la entidad seleccionada del listado de entidades convocantes | ****Esta opción solo estará disponible si la Convocatoria está en estado es "Borrador" o si estando en estado "Registrada"** no existen solicitudes o proyectos asociados a la convocatoria.**Muestra la pantalla de abajo "Modificar entidad convocante a la convocatoria".Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Eliminar | Elimina la entidad convocante | ******Esta opción solo estará disponible si la Convocatoria está en estado es "Borrador" o si estando en estado "Registrada"******no existen solicitudes o proyectos asociados a la convocatoria.****Elimina el registro de la relación "Convocatoria entidad convocante".Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir nueva entidad convocante | Muestra la pantalla de Nueva entidad convocante | ******Esta opción solo estará disponible si la Convocatoria está en estado es "Borrador" o si estando en estado "Registrada"****** **no existen solicitudes o proyectos asociados a la convocatoria.**Muestra la pantalla [IU\-CSP\-202\-003 \- Añadir entidad convocante](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-003-anadir-entidad-convocante.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-003-anadir-entidad-convocante.md").Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |

  


### Formulario para modificar las entidades convocantes de una convocatoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md")** | | |
| Entidad convocante | TextoSolo lectura | **Una vez que se ha añadido la entidad a la convocatoria, no se permite modificar su valor.**Entidad u organismo que convoca la convocatoria. Se visualizará el nombre de la entidad convocante obtenido a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Plan | SelectorTextoOpcional | Listado de planes de investigación activos. El listado se obtendrá de la tabla Programa. Los planes de investigación se corresponderán con aquellos elementos de la tabla "Programa" que no tienen ningún antecesor, es decir, son los nodos raíz de los árboles de programas. |
| Seleccione el item de menos nivel, dentro del árbol de programas del plan, al que se va a vincular la convocatoria. | ÁrbolOpcional | Árbol del programas y subprogramas del plan.  Se mostrará la estructura árbol cuyo elemento raíz ha sido seleccionado en el selector "Plan". Se mostrarán todos los niveles del árbol, pudiendo seleccionarse cualquier elemento, independientemente del nivel que ocupen en el árbol. Solo se mostrarán los elementos que tengan el campo activo a "true". Si un nodo está marcado con el campo activo a false no se mostrará y tampoco todos los que cuelguen de él. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Actualiza el registro en base de datos | Se guardarán los cambios modificando los datos de la relación "convocatoria entidad convocante"Si no se selecciona un Plan no se mostrará ningún árbol. Se permitirá almacenar la relación "Convocatoria Entidad Convocante" sin especificar ningún Plan. En este caso se mostrará un mensaje de advertencia "No se ha especificado el Plan para la convocatoria. ¿Desea continuar?"Si se selecciona un Plan se mostrará el árbol de programas correspondiente almacenado en la tabla "Programa". Se podrá seleccionar un elemento de cualquier nivel, siendo el identificador del mismo en la tabla Programa el que se almacene en la relación "Convocatoria Entidad Convocante". Si no se marca ningún elemento del árbol, la relación se almacenará con el identificador del Plan, pero previamente se mostrará el mensaje de advertencia "No se ha especificado el programa para la convocatoria. Estarán disponibles todos los Programas del Plan seleccionado. ¿Desea continuar?"Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se tendrán en cuenta los cambios indicados en el formulario y se volverá al listado de entidades convocantes de la convocatoria. |  |

### Permisos de acceso a la  pantalla

#### Por actor

#### Todos los permisos de acceso




