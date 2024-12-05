# Hércules : IU\-CSP\-0402\-018 \- Añadir\-modificar concepto de gasto no permitido



## Formulario Añadir\-modificar concepto de gasto no permitido

Formulario que permite añadir un concepto de gasto no permitido a la configuración económica del proyecto.

Se divide en dos pantallas:

* Datos del propio concepto de gasto
* Códigos económicos: listado con los códigos económicos correspondientes al concepto de gasto



| **Concepto de gasto (cuando el concepto no está vinculado a un concepto de gasto de la convocatoria: el campo "convocatoria concepto gasto ID" no está informado)****Concepto de gasto (cuando el concepto está vinculado a un concepto de gasto de la convocatoria: campo "convocatoria concepto gasto ID" está informado)****)**En el caso de que el registro no exista en el Proyecto y sí en la Convocatoria, todos los datos del proyecto estarán en modo no editable hasta que se pulse el botón de "Aplicar al proyecto". En ese momento los campos del proyecto se inicializarán con los valores de la convocatoria y se mostrarán en modo editable, excepto el campo "Concepto de gasto" que no se podrá modificar.Cuando el registro del concepto de gasto vinculado a la convocatoria ya existe en el proyecto, todos los campos serán editables, excepto el campo "Concepto de gasto" que no se podrá modificar.**Códigos económicos** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Datos del concepto de gasto (tabla "proyecto concepto gasto") | | |
| Concepto de gasto | SelectorTexto corto Obligatorio | Listado de los conceptos de gasto en estado activo. El listado mostrará el campo "nombre" de los registro en estado activo (campo "activo" a "true") de la tabla "conceptos gasto"Se mostrará en modo no editable (modo consulta), cuando el registro esté vinculado a un concepto de gasto de la convocatoria (campo "convocatoria concepto gasto ID" está informado). |
| Coste indirecto | Booleano | Campo informativo que recoge la configuración del concepto de gasto indicando si en concepto que se utiliza para la gestión de los costes indirectos.Se muestra en modo solo lectura.Se corresponde con el campo "costes indirectos" de la tabla "concepto de gasto". |
| Importe máximo | EconómicoOpcional | Se corresponde con el campo "importe máximo" de la tabla "proyecto concepto gasto". |
| Fecha inicio | FechaOpcional | Fecha inicial en el que el proyecto admite gastos del tipo asociado al concepto de gasto.Se corresponde con el campo "fecha inicio" de la tabla "proyecto concepto gasto". |
| Fecha fin | FechaOpcional | Fecha final en el que el proyecto admite gastos del tipo asociado al concepto de gasto.Se corresponde con el campo "fecha fin" de la tabla "proyecto concepto gasto". |
| Observaciones del concepto de gasto en la convocatoria | Texto largoOpcional | Recoge cualquier comentario que aplique de forma concreta al gasto.Se corresponde con el campo "observaciones" de la tabla "proyecto concepto gasto". |
| Datos del concepto de gasto de la convocatoria (tabla "convocatoria concepto gasto"). En este bloque todos los campos se mostrarán en modo solo lectura. | | |
| Concepto de gasto | Texto corto Modo consulta | Nombre del concepto de gasto de la de la tabla "convocatoria concepto gasto". |
| Coste indirecto | Booleando | Campo informativo que recoge la configuración del concepto de gasto indicando si en concepto que se utiliza para la gestión de los costes indirectos.Se muestra en modo solo lectura.Se corresponde con el campo "costes indirectos" de la tabla "concepto de gasto". |
| Importe máximo | EconómicoModo consulta | Campo "importe máximo" de la tabla "convocatoria concepto gasto". |
| Fecha inicio | FechaModo consulta | Se debe de calcular a partir de la fecha de inicio del proyecto (campo "fecha inicio" de la tabla "proyecto") y del campo "mes inicio" de la tabla "convocatoria concepto de gasto"Por ejemplo, si el concepto gasto de la convocatoria tiene puesto mes inicio 2 y la fecha de inicio del proyecto es 15/06/2020, la fecha inicio calculada será 15/07/2020 |
| Fecha fin | FechaModo consulta | Se debe de calcular partir de la fecha de fin del proyecto (campo "fecha fin" de la tabla "proyecto") y del campo "mes fin" de la tabla "convocatoria concepto de gasto"Por ejemplo, si el concepto gasto de la convocatoria tiene puesto mes fin 6 y la fecha de inicio del proyecto es 15/06/2020, la fecha inicio calculada será 30/11/2020\. Se pone el último día del mes, siempre teniendo en cuenta que no sobrepase la fecha fin del proyecto, en este caso, sería la fecha fin del proyecto |
| Observaciones del concepto de gasto en la convocatoria | Texto largoModo consulta | Campo "observaciones" de la tabla "convocatoria concepto gasto" |
| Correspondencia del concepto de gasto no permitido y códigos económicos del SGE. El listado se obtendrá de la tabla "proyecto concepto gasto código económico" (filas sin icono o con el icono naranja) y de la tabla "convocatoria concepto gasto código económico" para las filas con el icono rojo | | |
|  | Icono de ayuda con tooltip | Se dibujará el icono de ayuda de color naranja en las siguientes situaciones:1. Datos del código económico del proyecto no coinciden con los datos del código económico de la convocatoria ( los campos del registro de la tabla "proyecto concepto gasto código ec" no son iguales al registro de la tabla de la convocatoria "convocatoria concepto gasto código económico"): El texto en esta situación del tootip será "Existen diferencias en los datos del código económico respecto a la convocatoria, puede editar el código económico para visualizarlas" 2. El código económico se ha creado en el proyecto directamente (el identificador del registro de la convocatoria es null en la tabla "proyecto concepto gasto código ec"): El texto en esta situación del tootip será "El código económico no existe en la convocatoria, se ha creado directamente en el proyecto"  Se dibujará el icono de ayuda de color rojo en la siguiente situación:  3 . El código económico no existe en el proyecto (registro no existe en la tabla "proyecto concepto gasto código ec")  pero sí en la convocatoria (registro en la tabla "convocatoria concepto gasto código ec"), bien porque se han eliminado en el proyecto o porque se ha creado nuevo en la convocatoria una vez creado el proyecto: El texto en esta situación del tootip será "Es un nuevo código económico creado en la convocatoria después de haber creado el proyecto, puede editar el código económico si desea añadirlo al proyecto" |
| Código económico | Texto | Código económico del SGE con el que se asocia el concepto de gasto. Se mostrará una cadena de texto formada con la concatenación de los campos identificador (referencia) y nombre del código económico recuperados a través de la integración con el SGE:  [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md"). |
| Fecha inicio | Fecha | Fecha de inicio de la correspondencia entre el concepto de gasto y el código económico. Delimitación inicial de la vigencia de la vinculación entre concepto de gasto y código económico, puesto que ésta podrá variar a lo largo de la duración del proyecto , en caso que en el SGE se registren modificaciones.Se corresponde con el campo "fecha inicio" de la tabla "proyecto concepto gasto código económico". |
| Fecha fin | Fecha | Fecha de inicio de la correspondencia entre el concepto de gasto y el código económico. Delimitación inicial de la vigencia de la vinculación entre concepto de gasto y código económico, puesto que ésta podrá variar a lo largo de la duración del proyecto , en caso que en el SGE se registren modificaciones.Se corresponde con el campo "fecha inicio" de la tabla "proyecto concepto gasto código económico". |
| Observaciones | Texto largo | Campo para recoger cualquier observación aclaratoria que aplique a la correspondencia entre concepto de gasto y código económico.Se corresponde con el campo "observaciones" de la tabla "proyecto concepto gasto código económico". |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aplicar al proyecto | Copia los datos de la convocatoria al formulario del proyecto | Se copiaran los datos de "Concepto de gasto", "fecha inicio", "fecha fin" , "importe máximo" y "observaciones" de la convocatoria al propio formulario del concepto de gasto del proyecto. En caso de que el formulario ya tuviera unos datos informados se macharán con los de la convocatoria. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Modificar correspondencia de concepto de gasto no permitido y código económico | Muestra la pantalla de modificación de la correspondencia del concepto de gasto no permitido y su código económico del SGE | Muestra la pantalla [IU\-CSP\-0402\-020 \- Añadir correspondencia de concepto de gasto no permitido y código económico del SGE](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-020-anadir-modificar-correspondencia-de-concepto-de-gasto-no-permitido-y-codigo-economico-del-sge.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-020-anadir-modificar-correspondencia-de-concepto-de-gasto-no-permitido-y-codigo-economico-del-sge.md")Sobre aquellos registros que son convocatoria se mostrará el icono de editar, pero realmente será como una creación y se tratará como un nuevo registro para el proyecto. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar correspondencia de concepto de gasto no permitido y código económico | Elimina el código económico  del listado | Elimina el código económico  del listadoLos registros que son de la convocatoria no se pueden eliminar. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir nuevo código económico no permitido relacionado con el concepto de gasto | Muestra la pantalla de creación de un nuevo código económico no permitido relacionado con el concepto de gasto | Muestra la pantalla [IU\-CSP\-0402\-020 \- Añadir correspondencia de concepto de gasto no permitido y código económico del SGE](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-020-anadir-modificar-correspondencia-de-concepto-de-gasto-no-permitido-y-codigo-economico-del-sge.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-020-anadir-modificar-correspondencia-de-concepto-de-gasto-no-permitido-y-codigo-economico-del-sge.md") | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Añade concepto de gasto permitido al proyectoSe guardan los códigos económicos introducidos en el listado | Se crea un nuevo registro en la tabla "proyecto concepto gasto" con los valores:* Identificador asociado al concepto de gasto seleccionado en el desplegable (identificador en tabla "concepto gasto" * Campo "Importe máximo" \= null * Campo "Permitido" \= false * Campo "fecha inicio" con el valor cumplimentado en el formulario * Campo "fecha fin" con el valor cumplimentado en el formulario * Campo "observaciones" con el valor cumplimentado en el formulario * Activo \= true * Campo "identificador convocatoria concepto gasto" será null si es un nuevo concepto del proyecto, pero en caso de copiarlo de la convocatoria se pondrá el identificador correspondiente.  Se tiene que comprobar que un mismo concepto de gasto no puede estar en dos rangos distintos de fechas, es decir, no puede existir solapamiento de rango de meses para el mismo concepto entre los conceptos no permitidos del proyecto.Se crean los registros necesarios en la tabla "proyecto concepto gasto código económico": Se deberá validar la unicidad de la tupla  concepto gasto \-código económico de acuerdo a:* + Para un mismo identificador del proyecto la misma tupla  concepto gasto \-código económico (independientemente si son permitidos o no permitidos) solo puede aparecer una vez, salvo que lo haga en periodos de vigencia no solapados. La vigencia se mira con las fecha inicio y fin del concepto de gasto (no de las fecha de inicio y fin de la tabla de códigos económicos, es decir, las de la tabla "proyecto concepto gasto") 	+ La no información de las fechas de inicio y fin actuará como vigencia activa, es decir, en estos casos el código económico no se puede repetir. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al formulario de la convocatoria, sin salvar los posibles cambios. |  |  |



