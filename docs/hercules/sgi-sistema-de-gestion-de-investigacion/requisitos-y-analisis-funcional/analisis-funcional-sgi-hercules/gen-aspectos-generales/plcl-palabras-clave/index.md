# Hércules : PLCL \- Palabras Clave



La funcionalidad de palabras clave es reutilizada a lo largo del SGI por los diferentes módulos y consistirá en asociar uno o varios textos, formados cada uno únicamente por una palabra, a un registro específico de una entidad, a modo de "etiqueta" que trate así de remarcar o destacar algún tipo de información concreta acerca de ese registro y que estas palabras clave sirvan además de criterio de búsqueda de los registros que las tengan asociadas.

### Descripción Funcional

La funcionalidad de palabras clave aplicará o estará disponible solo para aquellas entidades de las consideradas principales o de mayor relevancia dentro de Hércules [REQ \- GEN \- 0006 \- Entidades principales](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+GEN+-+0006+-+Entidades+principales&linkCreation=true&fromPageId=597853849 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+GEN+-+0006+-+Entidades+principales&linkCreation=true&fromPageId=597853849").

Una palabra clave será una cadena de texto, formada por una una o varias palabras, única a nivel de todo el SGI, que se registrará dentro de lo que se llamará diccionario de palabras clave y que se asignará a una instancia de una entidad, esto es, será asignable a nivel de registros concretos que sean instancias de una de las entidades principales del SGI referenciadas anteriormente. Estas palabras claves que se asocien a los registros se podrán explotar mediante a través de los buscadores de dichas entidades, esto es, "palabras clave" será un campo más de dichas entidades por el que se podría buscar.

Una palabra clave podrá contener espacios en blanco, si bien no se contemplará ningún tratamiento que requiera identificación de subcadenas independientes dentro de ella. Por ejemplo, el texto "cabeza de turco" se tratará a todos los efectos como una palabra.

Los caracteres permitidos para las palabras claves serán por tanto los siguientes: a\-zA\-Z0\-9 y el espacio en blanco. En el caso de las vocales, se permitirá también el uso del carácter con tilde. No serán por tanto caracteres permitidos, por ejemplo, los siguientes: "\_", "\-", '.' , ',', '/', ... ni otros similares que puedan ser confundidos con caracteres comodín para las búsquedas.

No se hará distinción entre mayúsculas y minúsculas, esto es, a los efectos del SGI serán equivalentes los caracteres A y a, y por tanto tanto la cadena de texto que se almacene internamente al SGI como palabra clave, como la que se le presente en las pantallas correspondientes, será la que el usuario haya introducido pero con capitalización unificada a minúsculas.  


Las palabras clave serán únicas a nivel de todo el SGI, esto es, no se permitirá dar de alta una misma palabra clave 2 veces. Si la palabra clave que se quiere asociar a un elemento de información ya existe en el SGI, lo que habrá que hacer es asociársela. Al no haber distinción entre mayúsculas y minúsculas, se considerará que por ejemplo las palabras clave "clase", "Clase" y "CLASE" son equivalentes y por tanto no se pueda dar de alta ninguna de ellas si existe ya en el sistema "clase", ya que como se comenta anteriormente, las palabras clave se almacenarán en minúsculas independientemente de cómo las haya escrito el usuario. 

Cara a su gestión en el diccionario de palabras clave, se considerará que las palabras con tilde y sin tilde son palabras clave distintas, si bien a la hora de buscar por ellas, se aplicará el criterio que se establezca de modo general en el SGI a la hora de tratar las búsquedas de cadenas de texto con y sin tilde.  


A nivel de presentación al usuario la gestión de palabras clave aparecerá como un campo adicional con una operativa especial, descrita a detalle en las páginas [GEN \- Palabras Clave \- Navegación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-navegacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-navegacion.md"), [IU\-GEN\-0200 \- Gestión de palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md") y [IU\-GEN\-0201 \- Búsqueda por palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0201-busqueda-por-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0201-busqueda-por-palabras-clave.md"), y que se presentará a la hora de modificar o consultar los datos de un registro concreto de una de esas entidades del principales en la pantalla y posición que se determine según el caso funcionalmente. Generalmente, en la ficha de Datos Generales de la entidad.

Relativo a las palabras clave se podrán realizar las siguientes acciones:

* Ver las palabras claves asociadas al registro actual.
* Añadir nuevas palabras clave, que por defecto se asociarán automáticamente al registro desde donde se esté realizando la acción.
* Añadir o asociar a un registro de una entidad una o varias palabras ya existentes.
* Desasociar a un registro de una entidad una o varias palabras ya existentes. Con ello, no se darán de baja del diccionario, únicamente dejarán de estar asociadas al registro pero continuarán existiendo en el SGI y manteniendo las demás asociaciones que pudiesen tener o estando disponibles para nuevas asociaciones.
* Buscar por palabras clave las entidades que dispongan de este campo

Existirá un control en cuanto al acceso a la gestión de palabras clave de una entidad y a la búsqueda de entidades por el campo palabra clave, de forma que, la gestión de palabras clave estará disponible en las mismas condiciones que cualquier otra opción de menú de gestión de los campos básicos o generales de una entidad y la búsqueda por el campo palabra clave estará disponible en las mismas condiciones que cualquier otro campo de búsqueda que aparezca en los buscadores de dicha entidad. Es por ello que los actores y permisos serán los que apliquen bajo estas condiciones y estarán ya definidos en los propios módulos en los que se gestionan las entidades que contemplen palabras clave.  





