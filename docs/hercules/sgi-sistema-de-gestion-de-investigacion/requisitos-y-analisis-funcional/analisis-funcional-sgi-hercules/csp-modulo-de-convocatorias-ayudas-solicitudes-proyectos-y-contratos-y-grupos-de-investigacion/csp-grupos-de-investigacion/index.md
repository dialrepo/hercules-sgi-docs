# Hércules : CSP \- Grupos de investigación



  


## Descripción funcional

Los Grupos de investigación son agrupaciones estables de personal investigador que coopera en una o varias líneas de investigación. Forman equipos de trabajo específicos para realizar proyectos de investigación que pueden durar varios años.

La gestión de Grupos de Investigación es una funcionalidad integrada en el módulo de CSP del SGI Hércules que incluye el ciclo de vida completo, desde la solicitud de constitución mediante la correspondiente convocatoria hasta su mantenimiento histórico de sus miembros y de sus líneas de investigación.

El/la investigador/a principal del Grupo (ACT\- CSP\-001\-Investigador) realizará la solicitud de constitución  a través de la funcionalidad de "Solicitudes" del módulo de CSP. (Ver [CSP \- Solicitudes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md")). Deberá de adjuntar en la pantalla de "Documentos" el formulario de constitución del grupo con toda la información requerida.

La solicitud al igual que cualquier otra solicitud seguirá su curso y  ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor  irán cambiando al estado o estados correspondientes. Una vez que la solicitud este en estado "Concedida"  ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor tendrán la posibilidad de crear el grupo desde la propia pantalla de solicitud.  La opción de creación del grupo estará disponible desde la solicitud concedida (listado disponible en opción de menú Solicitudes) o desde la opción de menú de "Grupos de investigación".

ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor deberán introducir los datos del grupo de investigación en el SGI a partir de la información aportada por el ACT\- CSP\-001\-Investigador en el documento de formulario de constitución del grupo. Los grupos de investigación contendrán diferentes bloques de información: 

* Datos generales.
* Miembros del grupo con su histórico de pertenencia.
* Persona autorizada a realizar la solicitud de modificación del grupo y a validar/rechaza items de producción científica.
* Responsable económico.
* Líneas de investigación.
* Palabras clave.
* Equipos instrumentales
* Enlaces a direcciones web de interés para el grupo.

Una vez creado el grupo de investigación el investigador principal  o la persona autorizada (ACT\- CSP\-001\-Investigador) podrá solicitar una modificación del mismo bien porque se ha añadido un nuevo miembro al grupo o una nueva línea de investigación o cualquier otra modificación que sea necesaria registrar en el SG. Para ello deberá crear una solicitud de modificación de grupo a través de la funcionalidad de "Solicitudes" del módulo de CSP. (Ver [CSP \- Solicitudes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md")).

La solicitud de modificación seguirá su curso al igual que cualquier otra solicitud y ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor irán cambiando al estado o estados correspondientes. Una vez que la solicitud esté en estado "Concedida", ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor dispondrán de la opción que permita acceder a la pantalla de edición del grupo desde el listado de solicitudes. ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor tendrán acceso a la modificación de los datos del grupo desde el listado de solicitudes  (siempre que esté en estado concedida) o desde la opción de menú de "Grupos de investigación". Solamente ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor podrán introducir cambios en los datos del grupo de investigación a partir de la información aportada por el ACT\- CSP\-001\-Investigador en el documento de formulario adjuntado en la solicitud de modificación de grupo.

### Perfil Unidad de gestión (ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor)

El ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor accederá dentro del módulo de CSP a la funcionalidad de **Grupos de Investigación** donde podrá ver los grupos de investigación dados de alta en el SGI. Inicialmente se muestra un buscador para poder filtrar por:

* Nombre
* Código
* Miembro del equipo
* Código de identificación SGE
* Fecha Inicio
* Palabra clave
* Línea de investigación

Se mostrará un listado de aquellos grupos que cumplen los criterios de búsqueda.

El listado contendrá las columnas: 

* Nombre. Nombre del grupo de investigación.
* Investigador/a principal. Nombre y apellidos del investigador/a que tiene el "rol principal" y orden 1\.
* Código. Código del grupo, formado por el código del departamento al que esta adscrito el investigador/a principal y un secuencial.
* Fecha Inicio. Fecha de inicio del grupo de investigación.
* Fecha fin. Fecha de fin del grupo de investigación.
* Tipo grupo. Indica el grado de madurez del grupo de investigación.
* Activo. Indicador del borrado lógico del grupo.

Además de realizar una búsqueda, se podrá dar de alta un Grupo si no existiera.

Desde el listado se podrá acceder a la funcionalidad de consulta y modificación de los datos de un Grupo.

#### Nuevo Grupo de Investigación

Para realizar un alta de **Grupo de Investigación,**un ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor, incorpora la información mínima para que pueda registrarse.

Los datos mínimos a rellenar serán los siguientes:

* **Nombre**: Será el nombre por el que se conocerá al grupo de investigación.  Será un campo obligatorio.
* **Investigador/a principal**: Será el investigador/a principal del nuevo grupo de investigación que se quiere constituir. Es un campo obligatorio.
* **Departamento**: Será un campo de información para el usuario únicamente visible en la creación del nuevo grupo. Se muestra el nombre del departamento al que esta adscrito la persona seleccionada en el campo "Investigador/a principal". Modo consulta.
* **Código**: Código automático, que incluirá el código del departamento al que esta adscrito el investigador/a principal y un secuencial por departamento. Este código será único por grupo de investigación y podrá ser utilizado posteriormente en listados con fines identificativos del grupo. Será un campo obligatorio y podrá ser modificado por el ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor en caso necesario.
* **Código de identificación SGE**: Código con el que se va a identificar el grupo de investigación en el SGE (Sistema de gestión económico). Para asegurar la compatibilidad con los SGE, el SGI no partirá de ningún formato preestablecido, sino que admitirá un código alfanumérico. El código de identificación introducido aquí será la base a partir de la que el SGI deberá de poder recuperar todas las operaciones contables configuradas en la integración con el SGE
* **Fecha inicio**: Fecha de inicio del grupo de investigación. Será un campo obligatorio para la creación de un nuevo grupo.
* **Fecha fin**: Fecha de fin del grupo de investigación. Será un campo opcional. En caso de no estar informado se considerará que el grupo esta en activo.
* **Palabras clave**: Listado de palabras clave. Una palabra clave será una cadena de texto, formada por una una o varias palabras, única a nivel de todo el SGI, que se registrará dentro de lo que se llamará diccionario de palabras clave.
* **Tipo grupo:** Indica el grado de madurez del grupo de investigación. Será un campo opcional. Será un desplegable con los valores: Emergente, consolidado, percompetitivo y grupo de alto rendimiento. Se guardará el histórico con la fechas en las que se realiza un cambio del campo.
* **Grupo especial de investigación:** Indica si el grupo de investigación en un "Grupo especial de investigación". Podrá tomar valor afirmativo o negativo, se tomará como valor por defecto el valor "No" por lo que estará inicializado a dicho valor. Campo opcional. Se guardará el histórico con la fechas en las que se realiza un cambio del campo. Si el campo es afirmativo no se tendrá en cuenta en la baremación de ese año.

#### Edición Grupo de Investigación

Una vez creado el grupo de investigación con la información mínima se podrá ir a la edición para completar el resto de información.

##### Datos generales

En este apartado se recogerá información general del grupo de investigación:

* **Nombre**: Será el nombre por el que se conocerá al grupo de investigación.  Será un campo obligatorio.
* **Código**: Será el código informado durante la creación del grupo. Este código será único por grupo de investigación y podrá ser utilizado posteriormente en listados con fines identificativos del grupo. Será un campo obligatorio y podrá ser modificado por el ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor en caso necesario.
* **Código de identificación SGE**: Código con el que se va a identificar el grupo de investigación en el SGE (Sistema de gestión económico). Para asegurar la compatibilidad con los SGE, el SGI no partirá de ningún formato preestablecido, sino que admitirá un código alfanumérico. El código de identificación introducido aquí será la base a partir de la que el SGI deberá de poder recuperar todas las operaciones contables configuradas en la integración con el SGE
* **Fecha inicio**: Fecha de inicio del grupo de investigación. Será un campo obligatorio para la creación de un nuevo grupo.
* **Fecha fin**: Fecha de fin del grupo de investigación. Será un campo opcional. En caso de no estar informado se considerará que el grupo esta en activo.
* **Palabras clave**: Listado de palabras clave. Una palabra clave será una cadena de texto, formada por una una o varias palabras, única a nivel de todo el SGI, que se registrará dentro de lo que se llamará diccionario de palabras clave.
* **Tipo grupo:** Indica el grado de madurez del grupo de investigación. Será un campo opcional. Será un desplegable con los valores: Emergente, consolidado, percompetitivo y grupo de alto rendimiento. Se guardará el histórico con la fechas en las que se realiza un cambio del campo.
* **Grupo especial de investigación:** Indica si el grupo de investigación en un "Grupo especial de investigación". Podrá tomar valor afirmativo o negativo, se tomará como valor por defecto el valor "No" por lo que estará inicializado a dicho valor. Campo opcional. Se guardará el histórico con la fechas en las que se realiza un cambio del campo. Si el campo es afirmativo no se tendrá en cuenta en la baremación de ese año.

##### Equipo investigación

Apartado para recoger el equipo de investigación. El equipo de investigación quedará constituido por una serie de miembros, para cada uno de los cuales debe indicarse:

* Rol con el que participará en el equipo de investigación. Se deberá especificar obligatoriamente un rol para cada uno de los miembros del equipo. Los roles disponibles serán los configurados en la tabla ["rol equipo"](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-rol_equipo "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-rol_equipo").
* Fecha de inicio y fecha de fin de participación. Es el rango de participación en el grupo.
* Dedicación y el porcentaje de participación. El es tiempo de dedicación del investigador en el grupo.

La configuración de los tipos de rol marcará el colectivo bajo el que se debe de realizar la búsqueda del personal que puede ejercer el rol.

Los miembros del equipo se añadirán a partir de un buscador. Este buscador devolverá resultados a partir de la integración con el Sistema de gestión de personas corporativo (SGP). Este sistema debe disponer de algún campo que permita identificar en qué conjunto de población universitaria se clasifica cada persona (ejemplo PDI, PAS, Alumnos). En el proceso de implantación del SGI, cada Universidad debe de determinar, a partir de los filtros que se puedan establecer en la integración con el SGP, que grupos de personas deberán estar disponibles en el SGI para ser candidatas a formar parte de los equipos de proyecto. La búsqueda de las personas para cada colectivo debe de quedar resuelta a través del requisito de integración [REQ\-INT\-0020\-SGP\-0010 \- Listar colectivos SGI](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0010+-+Listar+colectivos+SGI "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0010+-+Listar+colectivos+SGI") y [REQ \-](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos") [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos") con el/los correspondientes sistemas corporativos de la Universidad.  Si el buscador no devolviese al investigador que desea ser añadido al equipo de proyecto, éste no podrá ser registrado de manera directa en el SGI. Si fuese necesario registrar una nueva persona porque no estuviese aún identificada en los sistemas corporativos, el SGI facilitará los mecanismos de integración correspondientes, [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0050+-+Solicitar+alta+de+persona"), pero será necesario que este registro se realice sobre el sistema corporativo (externo al SGI) que centralice la información de personas con las que la Universidad mantiene algún vínculo.   


Las fechas de inicio en el grupo de cada miembro tomarán por defecto las fechas de inicio del grupo. Estas fechas podrán ser modificadas, verificando el SGI que nunca se sobrepasen las fechas de inicio y fin del grupo ni haya solapes de fechas para un mismo miembro que pueda participar en periodos de tiempo diferentes. Un mismo miembro puede participar en el grupo en diferentes periodo de tiempo, con diferente dedicación y/o con diferentes roles. Se mostrará siempre todo el histórico de composición del equipo. El campo fecha de inicio será un campo obligatorio.  


La dedicación será un dato obligatorio porque se utilizará en la baremación de los grupos de investigación para saber el tiempo de dedicación del miembro en el grupo. En el caso de que el porcentaje de dedicación sea un 50% los puntos obtenidos por el investigador se tendrán que dividir a la mitad. 

La dedicación podrá ser:

* Parcial: será obligatorio introducir el porcentaje de dedicación que será un número mayor o igual a la dedicación mínima definida por implantación (en el caso de Murcia el 20%) y menor de 100\. En el caso de que no exista una dedicación mínima (es decir es 0\) se comprobará que el valor introducido en el campo "% porcentaje" sea mayor que 0 (en este caso no podrá ser igual a 0\).
* Completa: el porcentaje de dedicación será el 100% siempre.

Un investigador podrá formar parte de más de un grupo de investigación no pudiendo superarse el 100% de dedicación entre todos los grupos en el que forma parte.  


##### Responsable económico

En este apartado quedará recogido el responsable económico del grupo. El responsable económico quedará constituido por:

* Un ACT\-CSP\-001\-Investigador
* Fecha de inicio y fecha de fin de participación. Es el rango de participación en el grupo.

Las fechas de inicio y fin de participación en el grupo del responsable económico no podrán sobrepasar las fechas de inicio y fin del grupo ni se permitirá que haya solapes de fechas. Sólo puede existir un único responsable económico en el mismo instante. Se mostrará siempre todo el histórico de responsables económicos del grupo.

El responsable económico se añadirá a partir de un buscador. Este buscador devolverá resultados a partir de la integración con el Sistema de gestión de personas corporativo (SGP). Este sistema debe disponer de algún campo que permita identificar en qué conjunto de población universitaria se clasifica cada persona (ejemplo PDI, PAS, Alumnos). En el proceso de implantación del SGI, cada Universidad debe de determinar, a partir de los filtros que se puedan establecer en la integración con el SGP, que grupos de personas deberán estar disponibles en el SGI para ser candidatas a ser responsables económicos de un proyecto. 

Si el buscador no devolviese a la persona que desea ser añadida, éste no podrá ser registrado de manera directa en el SGI. El registro de nuevas personas estará centralizado de forma común en el SGI por medio de la correspondiente integración con el sistema de gestión de personas (SGP) corporativo . Este módulo notificará al SGP la "orden" de creación de una nueva persona. Para ello desde el SGI de deben recoger los campos necesarios para remitir esta información en la notificación de registro de nuevo investigador al SGP. La disponibilidad de este nuevo investigador, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo, SGP.

##### Líneas investigación

Los grupos de investigación están constituidos de acuerdo con las líneas de investigación que desarrollan. En este apartado quedarán recogidas las líneas de investigación de cada grupo. Una línea de investigación quedará constituida por:

* Nombre: nombre o descripción de la línea de investigación
* Fecha de inicio y fecha de fin de duración de la línea en el grupo
* Miembros adscritos. Investigadores/as que forman parte del grupo de investigación se pueden adscribir a una o varias líneas de investigación del grupo.
* Clasificaciones. Una línea de investigación podrá clasificarse por medio de los códigos UNESCO, códigos CNAE, etc..
* Equipos instrumentales adscritos. Una línea de investigación podrá hacer uso de uno o varios equipos instrumentales definidos en el grupo.

Una línea de investigación puede ser utilizada en un grupo de investigación o en varios, existirá por lo tanto una gestión de líneas de investigación común a todo el SGI donde se podrá dar de alta, modificar o eliminar una línea de investigación. El ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor podrá seleccionar una de las líneas de investigación definidas ya en el SGI o crear una nueva línea, que se añadirá automáticamente a la tabla maestra de líneas de investigación para que pueda ser usada por otro grupo. No podrá existir dos líneas con el mismo nombre.

Se tendrá que definir el rango de fechas en las que la línea esta activa en el grupo, siendo la fecha de inicio un campo obligatorio y deberá ser mayor o igual a la fecha de inicio del grupo. La fecha de fin de la línea podrá ser vacía, en caso de estar informada tendrá que ser menor o igual a la fecha de fin del grupo.

Los investigadores miembros del grupo de investigación se podrán adscribir a una o a varías líneas de investigación asignadas al grupo. Un investigador/a podrá estar en dos rangos de pertenencia distintos al grupo, pero definir uno único como miembro adscrito a la línea de investigación que abarque los dos rangos, para no tener que definir por cada rango de participación del investigador en el grupo un rango de participación del investigador/a en la línea.  


El SGI contará con una estructura dinámica de listados de clasificación. Una línea de investigación de un grupo de investigación podrá clasificarse bajo tantos listados como se desee. Listados de clasificación tipo que podrían ser cubiertas bajo esta estructura abierta son: 

* Código UNESCO. No será un campo de obligada cumplimentación. Una línea de investigación de un grupo de investigación se podrá vincular a un código UNESCO. El listado de códigos UNESCO estará precargado.
* Código NABS. No será un campo de obligada cumplimentación. Una línea de investigación de un grupo de investigación se podrá vincular a un código NABS. El listado de códigos NABS estará precargado.

Una línea de investigación podrá hacer uso de uno o de varios de los equipos instrumentales definidos en el grupo, para ello se mostrará el listado de los equipos instrumentales del grupo y el ACT\-CSP\-004\-Administrador y/o ACT\-CSP\-003\-Gestor seleccionará el que se usará en la línea de investigación.

##### Equipos instrumentales

En este apartado se incluirán los equipos instrumentales con los que trabajará el grupo de investigación. Para cada equipo instrumental incluido en el grupo se indicará:

* Nombre: nombre del equipo instrumental. Será un campo obligatorio.
* Descripción: descripción larga del equipo instrumental, para que sirve, que se puede hacer con él, etc. Será un campo opcional.
* Número de registro: identificador del equipo instrumental en la Universidad. Será un campo opcional.

##### Enlaces

En este apartado se incluirán todos los enlaces (en formato URL) que se considere útil y/o necesario recoger en los datos del grupo. Este es un apartado meramente informativo. Para cada enlace incluido en el grupo se indicará:

* Enlace: url de la página web con la información de interés

##### Personas autorizadas

En este apartado quedará recogido la persona delegada a la tarea de validar/rechazar items de producción científica y a la tarea de solicitud de modificación del grupo. La persona autorizada quedará constituido por:

* Un ACT\-CSP\-001\-Investigador
* Fecha de inicio y fecha de fin de participación. Es el rango de participación en el grupo.

Las fechas de inicio y fin de participación en el grupo de la persona autorizada no podrán sobrepasar las fechas de inicio y fin del grupo ni se permitirá que haya solapes de fechas. Sólo puede existir una única persona autorizada en el mismo instante. Se mostrará siempre todo el histórico de personas autorizadas del grupo.

La persona autorizada se añadirá a partir de un buscador. Este buscador devolverá resultados a partir de la integración con el Sistema de gestión de personas corporativo (SGP). Este sistema debe disponer de algún campo que permita identificar en qué conjunto de población universitaria se clasifica cada persona (ejemplo PDI, PAS, Alumnos). En el proceso de implantación del SGI, cada Universidad debe de determinar, a partir de los filtros que se puedan establecer en la integración con el SGP, que grupos de personas deberán estar disponibles en el SGI para ser candidatas a ser responsables económicos de un proyecto. 

Si el buscador no devolviese a la persona que desea ser añadida, éste no podrá ser registrado de manera directa en el SGI. El registro de nuevas personas estará centralizado de forma común en el SGI por medio de la correspondiente integración con el sistema de gestión de personas (SGP) corporativo . Este módulo notificará al SGP la "orden" de creación de una nueva persona. Para ello desde el SGI de deben recoger los campos necesarios para remitir esta información en la notificación de registro de nuevo investigador al SGP. La disponibilidad de este nuevo investigador, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo, SGP.

### Perfil Investigador  (ACT\-CSP\-001\-Investigador)

El ACT\-CSP\-001\-Investigador accederá a la funcionalidad de **Grupos de Investigación,** dentro del módulo de CSP, donde podrá ver los grupos de investigación a los que pertenece o ha pertenecido. Inicialmente se muestra un buscador para poder filtrar por:

* Nombre
* Código
* Código de identificación SGE

Se mostrará un listado de aquellos grupos que cumplen los criterios de búsqueda y a los que pertenece o ha pertenecido el ACT\-CSP\-001\-Investigador.

El listado contendrá las columnas: 

* Nombre. Nombre del grupo de investigación.
* Investigador/a principal. Nombre y apellidos del investigador/a que tiene el "rol principal" y orden 1\.
* Código. Código del grupo, formado por el código del departamento al que esta adscrito el investigador/a principal y un secuencial.
* Fecha Inicio. Fecha de inicio del grupo de investigación.
* Fecha fin. Fecha de fin del grupo de investigación.
* Tipo grupo. Indica el grado de madurez del grupo de investigación.

Desde el listado se podrá acceder a la funcionalidad de **consulta** de los datos de un Grupo:  


* Datos generales.
* Miembros del grupo con su histórico de pertenencia.
* Persona autorizada a realizar la solicitud de modificación del grupo y a validar/rechaza items de producción científica.
* Responsable económico.
* Líneas de investigación.
* Palabras clave.
* Equipos instrumentales
* Enlaces a direcciones web de interés para el grupo.

Los ACT\-CSP\-001\-Investigador que participen en el grupo con un rol principal y/o sea el responsable económico tendrán acceso al apartado **Ejecución económica (**Ver [CSP \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-ejecucion-economica/index.md")) del grupo. Este acceso solo se ofrecerá durante el periodo de tiempo que dispongan de ese rol principal o sea responsable económico.

## Modelo lógico

![](/attachments/597852830/597876552.jpg)

  


  





