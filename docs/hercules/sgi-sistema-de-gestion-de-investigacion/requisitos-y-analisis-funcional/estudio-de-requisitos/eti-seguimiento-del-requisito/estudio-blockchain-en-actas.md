# Hércules : Estudio Blockchain en Actas



## Introducción

Se quiere añadir en el SGI una integración con el blockchain de la Universidad. El caso de uso a implementar es el de las actas de la comisión de ética.

Al finalizar un acta se creará el documento del acta y se guardará en el SGDOC.

El SGI se lo enviará a un servicio web habilitado en un servidor. Este servicio devolverá el identificador de la transacción que el SGI deberá de almacenar.

Para las actas finalizadas se mostrará un nuevo icono para confirmar el blockchain y se llamará al servicio habilitado para ello del blockchain (o los servicios)

Se usará una variable de configuración del módulo CONF en el SGI para indicar si se va a hacer la integración con el blockchain o no.

## Actas

### Finalizar acta

![](/attachments/597852414/597876581.png)

Actualmente el documento del acta se genera online, es decir, no se guarda en ningún momento el documento, siempre se genera en el momento que el usuario pincha sobre el icono del pdf.

Añadir a la acción "**Finalizar acta**" (icono del candado) la siguiente funcionalidad:

* Generar el documento del acta llamando al servicio de reporting.
* Guardar el documento generado en el SGDOC.
* Llamar al servicio **POST /documentos** con el documento del acta generado. El SGDOC generará el hash del documento y lo guardará como un metadato. Devuelve el identificador del documento.  NUEVA FUNCIONALIDAD A AÑADIR EN EL SGDOC, QUE AL ALMACENAR UN DOCUMENTO CALCULE SU HASH Y LO GUARDE COMO UN METADATO.
* Guardar en la tabla "Acta" el identificador del documento devuelto por el SGDOC (campo "documentoRef")
* En el caso que la variable de CONF "blockchain\_enable" este a true:
	+ Se llamará al servicio para sellar el  documento en blockchain pasando como parámetro el hash del documento.
	+ Guardar el id de la transacción devuelta en la tabla "Acta" (campo "transaccionRef").

### Confirmar registro blockchain

Sólo accesible para el rol ACT\-ETI\-001\-Gestor (con el permiso ETI\-ACT\-FIN que es el mismo que para Finalizar acta)

En el caso que la variable de configuración  CNF "blockchain\_enable" este a true  y si el acta esta en estado "Finalizada" se añadirá un nuevo icono en el listado de resultados del buscador de actas que represente a la acción "Confirmar registro".

Esta acción consistirá en:

* Obtener  los metadatos almacenado en el SGDOC del acta (llamar al servicio GET /documentos)
* Llamar al servicio del blockchain que devuelve la cadena (el hash) que enviamos en su momento pasando como parámetro el id de la transacción almacenada en nuestra tabla acta (campo "transaccionRef").
* Comprobar que el hash del documento es igual a la cadena devuelta por el servicio.
* En caso afirmativo mostrar el mensaje "El acta no se ha alterado, es un documento correcto" , en otro caso mostrar el mensaje "El acta se ha alterado, no es documento correcto."

### Documento acta

Si el acta esta en estado "En elaboración" al pinchar sobre el icono de descarga del fichero (icono del pdf) se seguirá generando de forma automática a partir de la plantilla el informe de acta (en ese momento). Si el alta esta en estado "Finalizada" se descargará el documento almacenado en el SGDOC (a partir del identificador "documentoRef" almacenado en la tabla "Acta").

## Cambios en la base de datos

Crear en la tabla "Acta" los campos:

* documentoRef
* transaccionRef

## Variables de configuración

Crear en el módulo de CNF (configuración) una nueva variable que indique si se va a realizar la integración con el blockchain o no. Dicha variable se llamará "blockchain\_enable" que por defecto estará a false.

  





