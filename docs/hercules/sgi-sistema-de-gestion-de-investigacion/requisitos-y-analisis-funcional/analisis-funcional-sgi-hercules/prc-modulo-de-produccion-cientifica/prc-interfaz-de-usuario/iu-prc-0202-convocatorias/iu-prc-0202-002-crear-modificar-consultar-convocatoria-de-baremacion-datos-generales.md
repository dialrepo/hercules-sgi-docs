# Hércules : IU\-PRC\-0202\-002 \- Crear\-Modificar\-Consultar convocatoria de baremación \- Datos generales



## Formulario Crear/Modificar/consultar convocatoria de baremación \- Datos generales

Formulario de creación/modificación/consulta de una convocatoria de baremación, apartado de Datos generales. El usuario ACT\-PRC\-003\-Gestor podrá crear o realizar cambios.

Si el usuario es un ACT\-PRC\-004\-Visor se mostrarán todos los campos en modo consulta y no podrá realizar modificaciones. El botón Guardar estará deshabilitado.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de datos generales. | | |
| Nombre | TextoObligatorio | Nombre por el que se conoce a la convocatoria de baremaciónCampo "nombre" de la tabla "convocatoria baremación".Será un campo obligatorio. |
| Año | Número enteroObligatorio | Año al que pertenece la convocatoria de baremación de grupos. Únicamente se puede crear una convocatoria por año. Se comprobará que no exista una convocatoria creada para ese mismo año.Campo "año" de la tabla "convocatoria baremación".Será un campo obligatorio. |
| Años que son baremables | Número enteroObligatorio | Número de años que se van a tener en cuenta para el proceso de baremación.Campo "años baremables" de la tabla "convocatoria baremación".Será un campo obligatorio. |
| Último año a considerar | Número enteroObligatorio | Es el último año que se va a baremar. A partir de este año se restan el número de años baremables mas uno, para saber en que año empieza la baremación.Por ejemplo, si en el campo "Años que son baremables" se informa con un 3 y el campo "Último año a considerar" se pone el año 2021, los años que se van a baremar son los años 2019, 2020 y 2021  (2021 \-3 \+1 \= 2019\).Campo "ultimo año" de la tabla "convocatoria baremación".Será un campo obligatorio. |
| Importe total | Número decimalObligatorio | Cantidad de dinero disponible para el reparto de la baremación entre los grupos de investigación.Campo "importe total" de la tabla "convocatoria baremación".Será un campo obligatorio. |
| Partida presupuestaria | Texto cortoOpcional | Código de la partida presupuestaria de donde salen los fondos para realizar el reparto entre los grupos de investigación.Campo "partida presupuestaria" de la tabla "convocatoria baremación".Será un campo opcional. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Convocatoria de baremación con la información introducida en el formulario.Al guardar una convocatoria se guarda la información de todos los apartados de definición de la convocatoria, es decir, los datos generales, baremos y rangos. En esta pantalla sólo se describe la parte de Datos generales, ver las pantallas de Baremos y Rangos para ver su descripción. | Se crea/modifica los valores en la tabla "convocatoria baremación" con los valores del formulario.Si es una creación y no se ha ido a las pantallas de "Baremos y puntuaciones" no se guardará ningún baremo asociado a la convocatoria (no se crea ningún registro en la tabla "Baremo"). Si es una clonación se guardarán los baremos que tuviera la convocatoria que se esta clonando.Si es una creación y no se ha ido a las pantallas de "Moduladores y rangos" no se guardará ningún modulador ni rango relacionado con la convocatoria (no se crea ningún registro en la tabla "Modulador" ni en la tabla "Rango") . Si es una clonación se guardarán los datos que tuviera la convocatoria que se esta clonando. | PRC\-CON\-CPRC\-CON\-E |
| Cancelar | Retorna al listado de Convocatorias de baremación sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




