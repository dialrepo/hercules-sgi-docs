# Hércules : IU\-CSP\-0201\-002 \- Crear convocatoria \- Entidades convocantes



## Formulario Crear convocatoria \- Entidades convocantes

La información de una convocatoria estará distribuida en los siguientes apartados:

* Datos generales
* **Entidades convocantes**
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
* Configuración de solicitudes.

### Entidades convocantes

Para crear una convocatoria no será obligatorio que se indique ninguna entidad convocante.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de entidades convocantes. Se listan las entidades contendidas en la relación "Convocatoria entidad convocante" | | |
| Nombre | Texto | Nombre de la entidad convocante. Obtener campo nombre de la empresa económica a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Número de identificación fiscal | Texto corto | Número de identificación de la entidad convocante, obtenido a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Plan | Texto | Plan de la entidad convocante. Nombre del plan de investigación recuperado de la tabla "Programa" a través del programa enlazado en "Convocatoria entidad convocante". El Plan será el elemento raíz del árbol de programas, es decir, el elemento que no tiene antecesores recuperado a partir del identificador del programa almacenado en la relación  "Convocatoria entidad convocante" |
| Programa | Texto | Programa de la entidad convocante. Se mostrará el nombre del programa recuperado de la tabla "Programa" correspondiente al nodo del árbol de programas de nivel 1 del que depende el programa referenciado en "Convocatoria entidad convocante". Si el identificador almacenado en "Convocatoria entidad convocante" hace referencia al elemento raíz del árbol, es decir, al Plan, esta columna se mostrará vacía. |
| Modalidad | Texto | Item "hoja" del árbol del programa de la entidad convocante, recuperado de la tabla "Programa" a través de la referencia de la relación "Convocatoria entidad convocante". Se mostrará el nombre del programa que se recupere directamente a partir del identificador almacenado en la relación  "Convocatoria entidad convocante"Si el identificador almacenado en "Convocatoria entidad convocante" hace referencia al elemento raíz del árbol, es decir, al Plan, esta columna se mostrará vacía.Si el identificador almacenado en "Convocatoria entidad convocante" hace referencia a un elemento de primer nivel 1, es decir, a un Programa, esta columna se mostrará vacía. |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la entidad seleccionada del listado de entidades convocantes | Muestra la pantalla [IU\-CSP\-0204\-002 \- Modificar convocatoria \- Entidades convocantes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-002-modificar-convocatoria-entidades-convocantes.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-002-modificar-convocatoria-entidades-convocantes.md") | CSP\-CON\-CCSP\-CON\-C\_UO |
| Eliminar | Elimina la entidad convocante | Elimina el registro de la relación "Convocatoria entidad convocante" | CSP\-CON\-CCSP\-CON\-C\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir entidad convocante | Muestra la pantalla de Nueva entidad convocante | Muestra la pantalla [IU\-CSP\-202\-003 \- Añadir entidad convocante](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-003-anadir-entidad-convocante.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-003-anadir-entidad-convocante.md") | CSP\-CON\-CCSP\-CON\-C\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Crea la Convocatoria con la información introducida en el formulario.Al guardar una convocatoria se guardar la información de todas las pestañas de la pantalla. | Almacena los nuevos registros en la relación "Convocatoria entidad convocante", referenciando a la entidad convocante y al identificador del elemento del árbol de programas seleccionado. |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. | Se muestran los mensajes de advertencia sobre los apartados en los que hubieran sido introducidos cambios sin guardar |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  


  





