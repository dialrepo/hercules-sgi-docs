# Hércules : IU\-CSP\-0204\-001 \- Modificar convocatoria \- Datos generales



## Formulario Modificar convocatoria \- Datos generales

### Formulario para modificar los Datos generales de una convocatoria.

**La modificación de los datos de una convocatoria se rige por lo marcado en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md")**



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md")** | | |
| Estado | Texto cortoObligatorio | Estado actual de la convocatoria. Se muestra en modo solo lectura. |
| Título | Texto (1000 caracteres)Obligatorio | Título de la convocatoria. Campo "título" de la tabla "convocatoria"Tamaño específico de 1000 caracteres. |
| Tipo solicitud SGI | SelectorTexto cortoObligatorio | Campo para especificar el tipo de formulario con el que se recogerán en el SGI las solicitudes asociadas a la convocatoria. Podrá tomar uno de los valores:* Proyecto. Se utilizará este valor cuando la convocatoria se corresponda con una ayuda para el desarrollo de proyectos. Seleccionar este valor implica además de que el formulario para recoger la solicitud tenga unos campos determinados que el resultado final de la convocatoria dé lugar al registro, en el SGI, de un Proyecto. * Grupo. Se utilizará este valor cuando la convocatoria se corresponda con una convocatoria de constitución de Grupos de investigación. Seleccionar este valor implica además de que el formulario para recoger la solicitud tenga unos campos determinados que el resultado final de la convocatoria dé lugar al registro, en el SGI, de un Grupo de investigación. * RRHH. Se utilizará este valor cuando la convocatoria se corresponda con una ayuda de contratación de RRHH. Seleccionar este valor implica además de que el formulario para recoger la solicitud tenga unos campos determinados que el resultado final de la convocatoria dé lugar al registro, en el SGI, de un Proyecto.  El listado se corresponde con los valores del enumerado "Tipo formulario solicitud". Es un campo de introducción obligatoria. Se corresponde con el campo "formulario solicitud" de la tabla "convocatoria". |
| Unidad de gestión | SelectorTexto cortoObligatorio | Listado con los valores de la unidad u oficina (OTRI, OPE, UGI, etc.) que realiza la gestión de la convocatoria.Las unidades de gestión disponibles en el desplegable serán solamente aquellas sobre las que el usuario que está creando la convocatoria, disponga de un rol ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador.SE MOSTRARÁ EN MODO CONSULTA SI EXISTEN REGISTROS EN LAS PANTALLAS* Enlaces * Plazos y fases * Hitos * Documentos  (Para ello implementar un método específico que compruebe si una convocatoria tiene enlaces, plazos, hitos o documentos asociados a ella, en caso de tenerlos se muestra en modo consulta)Mostrar icono de información en el caso de que no se pueda modificar con el siguiente texto: "No se puede modificar el campo porque tiene dependencias en enlaces, fases, hitos o documentos. Si desea modificar el valor del campo tendrá que ir primero a eliminar dichos registros." |
| Modelo de ejecución | SelectorTexto cortoObligatorio si estado es Registrada | Listado con los valores de modelos de ejecución activos que tenga asociados la unidad de gestión a la que se ha asociado la convocatoria a través del campo "Unidad de gestión". Puede consultarse [CSP \- Modelo de ejecución](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092")SE MOSTRARÁ EN MODO CONSULTA SI EXISTEN REGISTROS EN LAS PANTALLAS* Enlaces * Plazos y fases * Hitos * Documentos  (Para ello implementar un método específico que compruebe si una convocatoria tiene enlaces, plazos, hitos o documentos asociados a ella, en caso de tenerlos se muestra en modo consulta)Mostrar icono de información en el caso de que no se pueda modificar con el siguiente texto: "No se puede modificar el campo porque tiene dependencias en enlaces, fases, hitos o documentos. Si desea modificar el valor del campo tendrá que ir primero a eliminar dichos registros." |
| Finalidad | SelectorTexto cortoObligatorio si estado es Registrada | Listado con los tipos de finalidad activos que estén asociados al Modelo de ejecución al que se haya vinculado la convocatoria en el campo anterior.Ejemplos de valores: proyectos i\+d, contratación rrhh, servicios técnicos, asesorías, movilidades, constitución grupos, infraestructuras, royalties, etc. Puede consultarse [CSP \- Modelo de ejecución](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092") e [IU\-CSP\-0020 \- Gestión de tipos de finalidad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821827 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821827")) |
| Identificación | Texto cortoOpcional | Código de identificación de la convocatoria. Campo "código" de la tabla "convocatoria" |
| Entidad gestora | BuscadorTexto Opcional | Entidad u organismo que actúa como gestor de la convocatoria.Si estamos en una modificación y este campo ya tiene valor, los datos de la entidad serán recuperados a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md").El listado de entidades disponible se obtendrá a través del buscador de Empresas [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), común a todo el SGI, procedente del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md").SE MOSTRARÁ EN MODO CONSULTA si el estado de la convocatoria es "Registrada" y existen solicitudes o proyectos vinculados a la convocatoria.Mostrar icono de información a nivel de vista cuando no se pueda modificar con el siguiente texto: "No se puede modificar el campo porque existen solicitudes y/o proyectos vinculados a la convocatoria" |
| Fecha publicación | FechaOpcional | Fecha de publicaciónSe corresponde con el campo "fecha publicación" de la tabla "convocatoria". |
| Fecha provisional | FechaOpcional | Fecha de resolución provisional.Se corresponde con el campo "fecha provisional" de la tabla "convocatoria". |
| Fecha concesión | FechaOpcional | Fecha de concesión.Se corresponde con el campo "fecha concesión" de la tabla "convocatoria". |
| Duración de la actividad resultante (meses) | OpcionalNuméricoOpcional | Valor numérico, expresado en meses, que indicará la duración prevista de la actividad de investigación (proyecto, contrato) resultante de la convocatoria.Se mostrará en modo consulta si el estado de la convocatoria es "Registrada" y existen solicitudes o proyectos vinculados a la convocatoria.Mostrar icono de información a nivel de vista cuando no se pueda modificar con el siguiente texto: "No se puede modificar el campo porque existen solicitudes y/o proyectos vinculados a la convocatoria".Se corresponde con el campo "duración" de la tabla "convocatoria" |
| Convocatoria de excelencia | Selector (valores sí/no)BooleanOpcional | Indicará si la convocatoria está considerada o no como  una convocatoria de excelencia.Podrá tomar valor Sí/No.Se corresponde con el campo "excelencia" de la tabla "convocatoria" |
| Ámbito geográfico | SelectorTexto cortoObligatorio si estado es Registrada | El listado de valores disponibles se cargará a partir de los registros activos de la tabla "tipo ámbito geográfico". Un ejemplo de listado posible sería: propio, local, regional, autonómico, estatal, europeo, internacional no europeoSe corresponde con el campo "ámbito geográfico" de la tabla "convocatoria". |
| Régimen de concurrencia | SelectorTexto cortoOpcional | El listado de valores disponibles se cargará a partir de los registros activos de la tabla "Tipo régimen concurrencia". Un ejemplo de listado posible sería:* Concurrencia competitiva * Concesión directa  Se mostrará en modo "solo lectura" si el estado de la convocatoria es "Registrada" y existen proyectos asociados a la convocatoria. En este caso se acompañará  de un icono informativo a nivel de vista que mostrará un tooltip con el siguiente texto: "No se puede modificar el campo porque existen proyectos vinculados a la convocatoria".Se corresponde con el campo "régimen concurrencia" de la tabla "convocatoria". |
| Clasificación producción científica/CVN | SelectorTexto cortoOpcional | El listado de valores disponibles se cargará a partir de un listado fijo del SGI (listado de enumerados "Apartado CVN"). Este listado se corresponderá con apartados de Producción científica y/o CVN. Si al crear la convocatoria se selecciona un valor de este listado, la actividad derivada de la convocatoria pasará automáticamente a formar parte del CVN bajo el epígrafe indicado en este campo. Se mostrará en modo "solo lectura" si el estado de la convocatoria es "Registrada" y existen proyectos asociados a la convocatoria. En este caso se acompañará  de un icono informativo a nivel de vista que mostrará un tooltip con el siguiente texto: "No se puede modificar el campo porque existen proyectos vinculados a la convocatoria"Se corresponde con el campo "apartado cvn" de la tabla "convocatoria". |
| Palabras clave | Componente a medidaOpcional | Lista de palabras clave asociadas a la convocatoria.El comportamiento del componente será el descrito de manera general en [IU\-GEN\-0200 \- Gestión de palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md"). |
| Objeto o descripción general de la convocatoria | Texto largoOpcional | Objetivos de la convocatoria. |
| Observaciones | Texto largoOpcional | Observaciones de carácter interno de la convocatoria. |
| Áreas temáticas: Áreas temáticas a las que se limita la convocatoria. Se obtiene de la tabla "convocatoria área temática".  Es opcional, la convocatoria podría no tener establecidas áreas temáticas. | | |
| Listado de áreas | TextoOpcional | Nombre del listado de áreas temáticas. Se corresponde con el campo "nombre" del elemento raíz del árbol (aquel cuyo campo "padre" toma valor "null") de áreas temáticas (tabla "área temática") relacionadas a la convocatoria (tabla "convocatoria área temática"). |
| Áreas temáticas | TextoOpcional | Se listan, separados por el carácter coma, todos los elementos que hayan sido seleccionados del árbol de áreas temáticas. Si el texto a componer excede el espacio reservado para el campo se mostrará la cadena "..."  y el valor completo con todos los elementos se mostrará con el componente de tooltip.Se corresponde con "nombre" de la tabla "área temática" para las áreas temáticas de la convocatoria (tabla "convocatoria área temática"). |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (entidad gestora) | Muestra la pantalla de búsqueda para seleccionar la entidad gestora | Disponible sólo si la convocatoria está en estado  "Borrador" o si está en estado "Registrada" pero no existen solicitudes o proyectos asociados a la convocatoria.El listado de entidades disponible se obtendrá a través del buscador de Empresas [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), común a todo el SGI, procedente del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md") |  |
| Añadir área temática | Muestra la pantalla Añadir área temática | Esta opción solo estará disponible en caso de no existir aún áreas temáticas vinculadas a la convocatoria (tabla "convocatoria área temática" no tiene registros asociados a la convocatoria en curso). Si ya existen áreas temáticas asociadas a la convocatoria no se mostrará esta opción.Además, se realizarán las siguientes validaciones, referidas al estado de la convocatoria,  para habilitar la opción:* La convocatoria debe estar en estado "Borrador". * Si la convocatoria está en estado "Registrada" se ha de comprobar que no  existan solicitudes o proyectos asociados a la convocatoria.  Se muestra la ventana [IU\-CSP\-202\-001 \- Añadir área temática](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87824424 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87824424").Ver precondiciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Modificar área temática | Modificación del registro al que está vinculado el botón de modificar. | Esta opción solo estará disponible si:* La convocatoria está en estado "Borrador". * La convocatoria está en estado "Registrada" y no existen solicitudes o proyectos asociados a la convocatoria.  Se muestra la ventana de modificación de área temática [IU\-CSP\-202\-001 \- Añadir área temática](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-001-anadir-area-tematica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-001-anadir-area-tematica.md").Ver precondiciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md").En caso de que la convocatoria esté en estado "Registrada"  y existan solicitudes o proyectos asociados a la convocatoria se mostrará el icono de información con el siguiente texto "No se puede modificar ni eliminar porque existen solicitudes y/o proyectos vinculados a la convocatoria**".** | CSP\-CON\-ECSP\-CON\-E\_UO |
| Eliminar área temática | Elimina el registro de la relación "areas tematicas convocatoria" al que está vinculado el botón eliminar | Esta opción solo estará disponible si:* La convocatoria está en estado "Borrador". * La convocatoria está en estado "Registrada" y no existen solicitudes o proyectos asociados a la convocatoria.  Ver precondiciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla del listado de resultados |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Guarda todos los cambios introducidos en los diferentes apartados de Convocatoria. | En estado "Borrador" los campos obligatorios son:* Título * Tipo solicitud SGI * Unidad de gestión * Estado  En estado "Registrada" los campos obligatorios en la pestaña de Datos generales* Título * Tipo solicitud SGI * Unidad de gestión * Modelo de ejecución * Finalidad * Ámbito geográfico  Y en la de Configuración solicitud* + ¿Habilitar presentación de solicitudes en SGI? 	+ Si el campo "¿Habilitar presentación de solicitudes en SGI?" toma valor afirmativo: 		- Se ha cumplimentado el campo "Seleccione plazo de presentación de solicitudes"  Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-001-modificar-convocatoria.md"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Registrar | Se cambia el estado de la convocatoria de Borrador a Registrada | **SÓLO ESTARÁ ACTIVO EL BOTÓN SI EL ESTADO DE LA CONVOCATORIA ES "Borrador" y no hay datos sin guardar.**Se activarán las siguientes validaciones de obligatoriedad sobre la pestaña de Datos generales* + - Título 		- Tipo solicitud SGI 		- Unidad de gestión 		- Modelo de ejecución 		- Finalidad 		- Ámbito geográfico  Se activarán las siguientes validaciones de obligatoriedad sobre la pestaña de Configuración solicitud* + ¿Habilitar presentación de solicitudes en SGI? 	+ Si el campo "¿Habilitar presentación de solicitudes en SGI?" toma valor afirmativo: 		- Se ha cumplimentado el campo "Seleccione plazo de presentación de solicitudes"  Se hará el cambio de estado de "Borrador" a "Registrada".Se mostrará un aviso de warning en entidad gestora si queda vacía.Se mostrará un aviso de warning en la pestaña de entidades convocantes si no se ha introducido ninguna entidad convocante.Se mostrará un aviso de warning en la pestaña de entidades financiadoras si no se ha introducido ninguna entidad financiadora.[CU\-CSP\-1000\-002 \- Modificar convocatoria \- Registrar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-002-modificar-convocatoria-registrar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1000-gestion-de-convocatorias/cu-csp-1000-002-modificar-convocatoria-registrar.md") | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | Al cancelar una convocatoria se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. | Retorna al listado de Convocatorias sin salvar los posibles cambios. |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso



