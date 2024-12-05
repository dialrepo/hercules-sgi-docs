# Hércules : IU\-CSP\-0050\-003 Modificar modelo de ejecución



## Formulario  Modificar modelo de ejecución

Formulario de detalle de un modelo de ejecución. Pestaña de Datos generales.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Pestaña de datos generales | | |
| Nombre | Texto cortoObligatorio | No se podrá modificar el nombre sobre un modelo activo (campo "activo" a "true").No se podrá dejar vacío.Se corresponde con el campo "nombre" de la tabla "modelo ejecución". |
| Descripción | TextoOpcional | Se podrá modificar libremente el valor, pasando a dejarlo vacío aunque ya estuviese relleno.Se corresponde con el campo "descripción" de la tabla "modelo ejecución". |
| Externo | CheckOpcional | Permite indicar si el modelo de ejecución será utilizado para representar proyectos/contratos en los que el personal investigador participa bajo la gestión de una entidad externa.No se permitirá la modificación de este campo si el modelo de ejecución ya tiene proyectos vinculados: existe algún registro en la tabla "proyectos" para el que el campo "modelo ejecución" referencia al modelo en curso. Si esto ocurre, el check se mostrará deshabilitado, mostrando a su izquierda un aviso informativo con  un tooltip que indicará: "No se puede modificar esta configuración del modelo de ejecución debido a que ya tiene proyectos/contratos vinculados."Se corresponde con el campo "externo" de la tabla "modelo ejecución". |
| Contrato/convenio | CheckOpcional | Permite indicar si el modelo de ejecución será utilizado para representar cualquier variedad de contrato o convenio.No se permitirá la modificación de este campo si el modelo de ejecución ya tiene proyectos vinculados: existe algún registro en la tabla "proyectos" para el que el campo "modelo ejecución" referencia al modelo en curso.Se corresponde con el campo "contrato" de la tabla "modelo ejecución". Si esto ocurre, el check se mostrará deshabilitado, mostrando a su izquierda un aviso informativo con  un tooltip que indicará: "No se puede modificar esta configuración del modelo de ejecución debido a que ya tiene proyectos/contratos vinculados." |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Acción guardar común a toda la página de modificación del modelo de ejecución.Actualiza en base de datos el registro del modelo de ejecución y sus relaciones | Se realizará la comprobación de unicidad sobre el campo Nombre sobre aquellos registros de la tabla "modelo ejecución" que tenga el campo "activo" a "true".Se guardarán los cambios modificando los datos del modelo de ejecución y sus relaciones en base de datos de acuerdo a la información que haya sido modificada en las diferentes pestañas.[CU\-CSP\-0020\-003 \- Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Cancelar | Acción cancelar común a toda la página de modificación del modelo de ejecución | No realiza ninguna operación en base de datosNo se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0050\-002 Buscar y listar modelos de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md") |  |

  


Formulario de modificación de un modelo de ejecución. Pestaña de Tipos de fase.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de tipos de fases del modelo. Se obtendrán los elementos de la relación "modelo de ejecución \- tipo de fase" para el modelo en ejecución que está siendo modificado, siempre que la relación esté activa (campo activo\=true) | | |
| Fase | Texto corto | Nombre del tipo de fase asociado al identificador referenciado en la relación modelo de ejecución \- tipo de fase.La columna "Fase" dispondrá de opción de ordenación de la tabla de listado de fases del modelo de ejecución. |
| Descripción | Texto | Descripción del tipo de fase asociado al identificador referenciado en la relación modelo de ejecución \- tipo de fase.La columna "Descripción" dispondrá de opción de ordenación de la tabla de listado de fases del modelo de ejecución. |
| Convocatorias | Boolean | Indica si el tipo de fase está o no disponible para las convocatorias que se creen bajo el modelo de ejecución. Un tipo de fase puede estar asociado a convocatorias a proyectos o a los dos. |
| Proyectos | Boolean | Indica si el tipo de fase está o no disponible para los proyectos que se creen bajo el modelo de ejecución.  Un tipo de fase puede estar asociado a convocatorias a proyectos o a los dos. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Acción modificar | Modifica la relación modelo de ejecución \- tipo de fase | Muestra la ventana de modificación de un tipo de fase al modelo de ejecución[IU\-CSP\-0050\-004 \- Añadir tipo de fase al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-004-anadir-tipo-de-fase-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-004-anadir-tipo-de-fase-al-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Acción eliminar | Elimina la relación modelo de ejecución \- tipo de fase | Se mostrará un mensaje de confirmación al usuario. Si la confirmación es positiva se modificará el registro de la relación "modelo ejecución tipo fase" poniendo el campo "activo" a "false". | CSP\-ME\-ECSP\-ME\-E\_UO |
| Paginación | Componente gráfico de paginación | Componente estándar de paginación que permitirá navegar por la tabla del listado |  |
| Añadir tipo de fase al modelo | Realiza inserción en la tabla de relación del modelo de ejecución y el tipo de fase. | Muestra la ventana de inserción de un tipo de fase al modelo de ejecución. [IU\-CSP\-0050\-004 \- Añadir tipo de fase al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-004-anadir-tipo-de-fase-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-004-anadir-tipo-de-fase-al-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Guardar | Acción guardar común a todo la página de modificación del modelo de ejecución. | Se realizará la comprobación de unicidad sobre el campo "nombre" del modelo de ejecución, verificando que no se repita para ningún registro activo (campo "activo" a "true") de la tabla "modelo ejecución" .Se guardarán los cambios modificando los datos del modelo de ejecución y sus relaciones en base de datos de acuerdo a la información que haya sido modificada en las diferentes pestañas.[CU\-CSP\-0020\-003 \- Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Cancelar | Acción cancelar común a toda la página de modificación del modelo de ejecución | No realiza ninguna operación en base de datosNo se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0050\-002 Buscar y listar modelos de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md") |  |

  


Formulario de modificación de un modelo de ejecución. Pestaña de Tipos de documentos.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de tipos de documento del modelo. Recuperados de la tabla de relación modelo de ejecución \- tipo de documento \- tipo de fase, para el modelo en ejecución que está siendo modificado, siempre que la relación tenga el campo activo a true. | | |
| Nombre del tipo de documento | Texto corto | Nombre del tipo de documento asociado al identificador referenciado en la relación modelo de ejecución \- tipo de documento \- tipo de fase, siempre que la relación tenga el campo "activo" \= true.La columna "Nombre del tipo de documento" dispondrá de opción de ordenación de la tabla de listado de documentos del modelo de ejecución. |
| Descripción del tipo de documento | Texto | Descripción del tipo de documento asociado al identificador referenciado en la relación modelo de ejecución \- tipo de documento \- tipo de fase, siempre que al relación tenga el campo Activo a "sí".La columna "Descripción del tipo de documento" dispondrá de opción de ordenación de la tabla de listado de documentos del modelo de ejecución. |
| Nombre de fase | Texto corto | Nombre del tipo de fase asociado al identificador referenciado en la relación modelo de ejecución \- tipo de documento \- tipo de fase, siempre que tenga el campo Activo a "sí".La columna "Nombre de fase" dispondrá de opción de ordenación de la tabla de listado de documentos del modelo de ejecución. |

  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Acción eliminar | Elimina la relación modelo de ejecución \- tipo de documento \- tipo de fase | Marcará como inactiva (campo "activo"\="false") la relación entre  modelo de ejecución \- tipo de documento \- tipo de fase. Se mostrará un mensaje de confirmación al usuario. | CSP\-ME\-ECSP\-ME\-E\_UO |
| Paginación | Componente gráfico de paginación | Componente estándar de paginación que permitirá navegar por la tabla del listado |  |
| Añadir tipo de documento al modelo | Realiza inserción en la tabla de relación triple de modelo de ejecución, tipo de fase y tipo de documento. | Muestra la ventana de inserción de un tipo de documento al modelo de ejecución[IU\-CSP\-0050\-005 Añadir tipo de documento al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-005-anadir-tipo-de-documento-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-005-anadir-tipo-de-documento-al-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Guardar | Acción guardar común a todo la página de modificación del modelo de ejecución | Se realizará la comprobación de unicidad sobre el campo "nombre" del modelo de ejecución, verificando que no se repita para ningún registro activo (campo "activo" a "true") de la tabla "modelo ejecución" .Se guardarán los cambios modificando los datos del modelo de ejecución y sus relaciones en base de datos de acuerdo a la información que haya sido modificada en las diferentes pestañas.[CU\-CSP\-0020\-003 \- Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Cancelar | Acción cancelar común a toda la página de modificación del modelo de ejecución | No realiza ninguna operación en base de datosNo se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0050\-002 Buscar y listar modelos de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md") |  |

  


Formulario de modificación de un modelo de ejecución. Pestaña de Tipos de enlace.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de tipos de enlace del modelo. Recuperados de la tabla de relación modelo de ejecución \- tipo de enlace, para el modelo en ejecución que está siendo modificado, siempre que la relación tenga el campo activo a true. | | |
| Tipo enlace | Texto corto | Nombre del tipo de enlace asociado al identificador referenciado en la relación modelo de ejecución \- tipo de enlace siempre que la relación tenga el campo "activo" a "true"La columna "Tipo de enlace" dispondrá de opción de ordenación de la tabla de listado de enlaces del modelo de ejecución. |
| Descripción | Texto | Descripción del tipo de enlace asociado al identificador referenciado en la relación modelo de ejecución \- tipo de enlaceLa columna "Descripción" dispondrá de opción de ordenación de la tabla de listado de enlaces del modelo de ejecución. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Acción eliminar | Elimina la relación modelo de ejecución \- tipo de enlace | Se mostrará un mensaje de confirmación al usuario. Si la confirmación es positiva, se marcará como inactiva (campo "activo"\="false") la relación entre modelo de ejecución \- tipo de enlace. | CSP\-ME\-ECSP\-ME\-E\_UO |
| Paginación | Componente gráfico de paginación | Componente estándar de paginación que permitirá navegar por la tabla del listado |  |
| Añadir tipo de enlace al modelo | Realiza inserción en la tabla de relación del modelo de ejecución y el tipo de enlace. | Muestra la ventana de inserción de un tipo de enlace al modelo de ejecución[IU\-CSP\-0050\-006 Añadir tipo de enlace al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-006-anadir-tipo-de-enlace-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-006-anadir-tipo-de-enlace-al-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Guardar | Acción guardar común a todo la página de modificación del modelo de ejecución. | Se realizará la comprobación de unicidad sobre el campo "nombre" del modelo de ejecución, verificando que no se repita para ningún registro activo (campo "activo" a "true") de la tabla "modelo ejecución" .Se guardarán los cambios modificando los datos del modelo de ejecución y sus relaciones en base de datos de acuerdo a la información que haya sido modificada en las diferentes pestañas.[CU\-CSP\-0020\-003 \- Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Cancelar | Acción cancelar común a toda la página de modificación del modelo de ejecución | No realiza ninguna operación en base de datosNo se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0050\-002 Buscar y listar modelos de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md") |  |

  


  


Formulario de modificación de un modelo de ejecución. Pestaña de Tipos de finalidad.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de tipos de finalidad del modelo. Recuperados de la tabla de relación modelo de ejecución \- tipo de finalidad, para el modelo en ejecución que está siendo modificado, siempre que la relación tenga el campo activo a true. | | |
| Tipo de finalidad | Texto corto | Nombre del tipo de finalidad asociado al identificador referenciado en la relación modelo de ejecución \- tipo de finalidad siempre que la relación tenga el campo "activo" a "true".La columna "Tipo de finalidad" dispondrá de opción de ordenación de la tabla de listado de finalidades del modelo de ejecución. |
| Descripción | Texto | Descripción del tipo de finalidad asociado al identificador referenciado en la relación modelo de ejecución \- tipo de finalidad.La columna "Descripción" dispondrá de opción de ordenación de la tabla de listado de finalidades del modelo de ejecución. |

  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Acción eliminar | Elimina la relación modelo de ejecución \- tipo de finalidad | Se mostrará un mensaje de confirmación al usuario. Si la confirmación es positiva, se marcará como inactiva (campo "activo" \= "false") la relación entre modelo de ejecución \- tipo de finalidad. | CSP\-ME\-ECSP\-ME\-E\_UO |
| Paginación | Componente gráfico de paginación | Componente estándar de paginación que permitirá navegar por la tabla del listado |  |
| Añadir tipo de finalidad al modelo | Realiza inserción en la tabla de relación del modelo de ejecución y el tipo de finalidad. | Muestra la ventana de inserción de un tipo de finalidad al modelo de ejecución[IU\-CSP\-0050\-007 Añadir tipo de finalidad al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-007-anadir-tipo-de-finalidad-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-007-anadir-tipo-de-finalidad-al-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Guardar | Acción guardar común a todo la página de modificación del modelo de ejecución. | Se realizará la comprobación de unicidad sobre el campo "nombre" del modelo de ejecución, verificando que no se repita para ningún registro activo (campo "activo" a "true") de la tabla "modelo ejecución" .Se guardarán los cambios modificando los datos del modelo de ejecución y sus relaciones en base de datos de acuerdo a la información que haya sido modificada en las diferentes pestañas.[CU\-CSP\-0020\-003 \- Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Cancelar | Acción cancelar común a toda la página de modificación del modelo de ejecución | No realiza ninguna operación en base de datosNo se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0050\-002 Buscar y listar modelos de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md") |  |

  


  


Formulario de modificación de un modelo de ejecución. Pestaña de Tipos de hito.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de tipos de hito de convocatoria del modelo. Recuperados de la tabla de relación modelo de ejecución \- tipo de hito, para el modelo en ejecución que está siendo modificado, siempre que la relación tenga el campo "Activo" a "true" | | |
| Tipo de hito | Texto corto | Nombre del tipo de hito de convocatoria asociado al identificador referenciado en la relación modelo de ejecución \- tipo de hito siempre que la relación tenga el campo "activo" a "true".La columna "Tipo de hito" dispondrá de opción de ordenación de la tabla. |
| Descripción | Texto | Descripción del tipo de hito de convocatoria asociado al identificador referenciado en la relación modelo de ejecución \- tipo de hito.La columna "Descripción" dispondrá de opción de ordenación de la tabla de listado. |
| Convocatorias | Boolean | Campo "convocatorias" de la relación "Modelo Tipo Hito". Indica que el tipo de hito se utilizará en la gestión de convocatorias asociadas al modelo de ejecución |
| Solicitudes | Boolean | Campo "solicitudes" de la relación "Modelo Tipo Hito". Indica que el tipo de hito se utilizará en la gestión de solicitudes asociadas al modelo de ejecución |
| Proyectos | Boolean | Campo "proyectos" de la relación "Modelo Tipo Hito". Indica que el tipo de hito se utilizará en la gestión de proyectos asociados al modelo de ejecución |

  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Acción modificar | Modifica la relación modelo de ejecución \- tipo de hito | Mostrará la pantalla que permitirá modificar los tipos de hito del modelo[IU\-CSP\-0050\-008 Añadir tipo de hito al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-008-anadir-tipo-de-hito-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-008-anadir-tipo-de-hito-al-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Acción eliminar | Elimina la relación modelo de ejecución \- tipo de hito | Se mostrará un mensaje de confirmación al usuario. Si la confirmación es positiva, se marcará como inactiva (campo "activo" \= "false") la relación entre modelo de ejecución \- tipo de hito. | CSP\-ME\-ECSP\-ME\-E\_UO |
| Paginación | Componente gráfico de paginación | Componente estándar de paginación que permitirá navegar por la tabla del listado |  |
| Añadir tipo de hito al modelo | Realiza inserción en la tabla de relación del modelo de ejecución y tipo de hito. | Muestra la ventana de inserción de un tipo de hito al modelo de ejecución[IU\-CSP\-0050\-008 Añadir tipo de hito al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-008-anadir-tipo-de-hito-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-008-anadir-tipo-de-hito-al-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Guardar | Acción guardar común a todo la página de modificación del modelo de ejecución. | Se realizará la comprobación de unicidad sobre el campo "nombre" del modelo de ejecución, verificando que no se repita para ningún registro activo (campo "activo" a "true") de la tabla "modelo ejecución" .Se guardarán los cambios modificando los datos del modelo de ejecución y sus relaciones en base de datos de acuerdo a la información que haya sido modificada en las diferentes pestañas.[CU\-CSP\-0020\-003 \- Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Cancelar | Acción cancelar común a toda la página de modificación del modelo de ejecución | No realiza ninguna operación en base de datosNo se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0050\-002 Buscar y listar modelos de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md") |  |

  


  


Formulario de modificación de un modelo de ejecución. Pestaña de Unidades de gestión.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de las unidades de gestión que tienen asociado el modelo de ejecución. Recuperados de la tabla de relación modelo de ejecución \- unidad de gestión, para el modelo en ejecución que está siendo modificado, siempre que la relación tenga el campo Activo \= "sí" (Activo \= true). | | |
| Acrónimo | Texto corto | Acrónimo de la unidad de gestión asociado al identificador referenciado en la relación modelo de ejecución \- unidad de gestión siempre que la relación tenga el campo Activo a "sí" (Activo\=true).La columna "Acrónimo" dispondrá de opción de ordenación de la tabla de listado de unidades de gestión del modelo de ejecución. |
| Nombre | Texto | Nombre de la unidad de gestión asociada al identificador referenciado en la relación modelo de ejecución \- unidad de gestión, siempre que al relación tenga el campo Activo a "sí".La columna "Nombre" dispondrá de opción de ordenación de la tabla de listado de unidades de gestión del modelo de ejecución. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Acción eliminar | Elimina la relación modelo de ejecución \- unidad de gestión | Se mostrará un mensaje de confirmación al usuario. Si la confirmación es positiva, se marcará como inactiva (campo "activo"\="false") la relación entre modelo de ejecución \- unidad de gestión. | CSP\-ME\-ECSP\-ME\-E\_UO |
| Paginación | Componente gráfico de paginación | Componente estándar de paginación que permitirá navegar por la tabla del listado |  |
| Añadir unidad de gestión al modelo | Realiza inserción en la tabla de relación del modelo de ejecución y unidad de gestión. | Muestra la ventana de asociación de una unidad de gestión al modelo de ejecución[IU\-CSP\-0050\-008 Añadir unidad de gestión al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-011-anadir-unidad-de-gestion-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-011-anadir-unidad-de-gestion-al-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Guardar | Acción guardar común a todo la página de modificación del modelo de ejecución. | Se realizará la comprobación de unicidad sobre el campo "nombre" del modelo de ejecución, verificando que no se repita para ningún registro activo (campo "activo" a "true") de la tabla "modelo ejecución" .Se guardarán los cambios modificando los datos del modelo de ejecución y sus relaciones en base de datos de acuerdo a la información que haya sido modificada en las diferentes pestañas.[CU\-CSP\-0020\-003 \- Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Cancelar | Acción cancelar común a toda la página de modificación del modelo de ejecución | No realiza ninguna operación en base de datosNo se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0050\-002 Buscar y listar modelos de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-002-buscar-y-listar-modelos-de-ejecucion.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  


  





