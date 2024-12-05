# Hércules : SGEMP \- Adaptaciones integración



## Transformaciones de objetos

### Objeto DatosContacto  UM → Objeto DatosContacto SGI



| Objeto DatosContacto UM\-ESB | Transformación a realizar UM\-ESB\-SGI | Objeto DatosContacto ESB\-SGI |
| --- | --- | --- |
| pais: Pais;comAutonoma: ComunidadAutonoma;provincia: Provincia;ciudad: String;codigoPostal: String;tipoVia: TipoVia;nombreVia: String;numero: String;ampliacion: String;email: String;fax: String;telefono: String;direccionWeb: String; | **pais, comAutonoma, provincia, ciudad, codigoPostal, tipoVia, nombreVia, numero, ampliacion****→** **direccion**Se habrá de rellenar el campo direccion del objeto del SGI concatenando, en el orden indicado y con algún tipo de separador (",", "\-", ...) definido al momento de la integración, los campos indicados del objeto de UM.En el caso del tipo de vía, se usará el campo descripción del objeto TipoVia para la concatenación.El resto de campos no son de interés para el SGI, por lo que no se informarán en su objeto. | direccion: String; |




