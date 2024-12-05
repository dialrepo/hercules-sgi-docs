# Hércules : UM \- SGI \- ESB \- SGP \- Adaptaciones integración



## Transformaciones de objetos

### Método GET /vinculaciones/persona/{id}

#### Objeto Vinculacion UM → Objeto Vinculacion SGI



| Objeto Vinculacion UM\-ESB | Transformación a realizar UM\-ESB\-SGI | Objeto Vinculacion ESB\-SGI |
| --- | --- | --- |
| Cada objeto de tipo Vinculacion\-UM tiene estos campos:vinculacionesCategoriasProfesionales: Lista\[VinculacionCategoriaProfesional];vinculacionesDepartamentos: Lista\[VinculacionDepartamento]areaConocimiento: AreaConocimiento;empresaRef: String;personalPropio: Boolean;entidadPropiaRef: String;Dentro de las listas de objetos del tipo VinculacionCategoriaProfesional y del tipo VinculacionDepartamento pueden venir 1, 2 o ningún elemento. Si viene 1 elemento podrá ser una vinculación para un tipo de personal PAS o PDI. Si vienen 2, cada una será para un tipo de personal distinto, una para PAS y otra para PDI.No hay opción en principio de que vengan más elementos. | **La prioridad será siempre de los datos como PDI frente a como PAS aunque se divida en 3 transformaciones independientes, si viene un mix de información, sería un error en  los datos.****Transformación 1:** **DE vinculacionCategoriaProfesional.categoriaProfesional donde vinculacionCategoriaProfesional.tipoPersonal \= PDI y/o vinculacionCategoriaProfesional.categoriaProfesional donde  vinculacionCategoriaProfesional.tipoPersonal \= PAS → A** **vinculacionCategoriaProfesional.categoriaProfesional**Se habrá rellenar en el campo del objeto del SGI la vinculación con la categoría profesional que esté informada con la siguiente prioridad en caso de que se informen las dos:1. Categoría profesional como PDI (vinculacionCategoriaProfesional.categoriaProfesional donde vinculacionCategoriaProfesional.tipoPersonal \= PDI). 2. Categoría profesional como PAS  (vinculacionCategoriaProfesional.categoriaProfesional donde vinculacionCategoriaProfesional.tipoPersonal \= PAS).  **Transformación 2:** **DE vinculacionCategoriaProfesional.fechaObtencion donde vinculacionCategoriaProfesional.tipoPersonal \= PDI y vinculacionCategoriaProfesional.fechaObtencion donde  vinculacionCategoriaProfesional.tipoPersonal \= PAS → A vinculacionCategoriaProfesional.****fechaObtencion**Se habrá rellenar en el campo del objeto del SGI la categoría profesional que esté informada con la siguiente prioridad en caso de que se informen las dos:1. Fecha de obtención de categoría profesional como PDI (vinculacionCategoriaProfesional.fechaObtencionCategoria donde vinculacionCategoriaProfesional.tipoPersonal \= PDI). 2. Fecha de obtención de categoría profesional como PAS (vinculacionCategoriaProfesional.fechaObtencionCategoria donde vinculacionCategoriaProfesional.tipoPersonal \= PAS).  **Transformación 3:** **DE vinculacionDepartamento.departamento donde vinculacionCategoriaProfesional.tipoPersonal \= PDI y vinculacionDepartamento.departamento donde vinculacionCategoriaProfesional.tipoPersonal \= PAS →** **A departamento**Se habrá rellenar en el campo del objeto del SGI el departamento que esté informado con la siguiente prioridad en caso de que estén los dos:1. Departamento como PDI (vinculacionDepartamento.departamento donde vinculacionCategoriaProfesional.tipoPersonal \= PDI). 2. Departamento como PAS (vinculacionDepartamento.departamento donde vinculacionCategoriaProfesional.tipoPersonal \= PAS).  Del resto de campos (areaConocimiento, personalPropio, empresaRef, entidadPropiaRef), se hará el paso tal cuál de los del mismo nombre de uno a otro objeto y en cuanto a los campos fechaFinCategoria de los objetos de tipo VinculacionCategoriaProfesional, no son de interés para el SGI, por lo que no se informarán en su objeto. | categoriaProfesional: CategoriaProfesional;fechaObtencionCategoria: Date;departamento: Departamento;areaConocimiento: AreaConocimiento;empresaRef: String;personalPropio: Boolean;entidadPropiaRef: String; |

### Método GET /vinculaciones/persona/{id}/vinculaciones\-categorias\-profesionales

#### Lista de objetos VinculacionCategoriaProfesional UM → Objeto VinculacionCategoriaProfesional SGI



| Lista de objetos VinculacionCategoriaProfesional UM\-ESB | Transformación a realizar UM\-ESB\-SGI | Objeto VinculacionCategoriaProfesional |
| --- | --- | --- |
| Cada objeto de tipo VinculacionCategoriaProfesional tiene estos campos:categoriaProfesional: CategoriaProfesional;fechaObtencion: Date;fechaFin: Date;tipoPersonal: PAS o PDI;Dentro de las listas de objetos del tipo VinculacionCategoriaProfesional que devuelve el método */vinculaciones/persona/{id}/vinculaciones\-categorias\-profesionales* pueden venir 1, 2 o ningún elemento. Si viene 1 elemento podrá ser una vinculación para un tipo de personal PAS o PDI. Si vienen 2, cada una será para un tipo de personal distinto, una para PAS y otra para PDI.No hay opción en principio de que vengan más elementos. | **Transformación:** **DE vinculacionCategoriaProfesional.categoriaProfesional donde vinculacionCategoriaProfesional.tipoPersonal \= PDI y/o vinculacionCategoriaProfesional.categoriaProfesional donde  vinculacionCategoriaProfesional.tipoPersonal \= PAS →** **A categoriaProfesional**Se habrá de devolver en un objeto de tipo CategoriaProfesional del SGI la vinculación con la categoría profesional que esté informada con la siguiente prioridad en caso de que se informen las dos:1. Categoría profesional como PDI (vinculacionCategoriaProfesional.categoriaProfesional donde vinculacionCategoriaProfesional.tipoPersonal \= PDI). 2. Categoría profesional como PAS  (vinculacionCategoriaProfesional.categoriaProfesional donde vinculacionCategoriaProfesional.tipoPersonal \= PAS). | categoriaProfesional: CategoriaProfesional;fechaObtencion: Date; |

### Método GET /datos\-contacto/persona/{id}

#### Objeto DatosContacto UM → Objeto DatosContacto SGI



| Objeto DatosContacto UM\-ESB | Transformación a realizar UM\-ESB\-SGI | Objeto DatosContacto ESB\-SGI |
| --- | --- | --- |
| paisContacto: Pais;comAutonomaContacto: ComunidadAutonoma;provinciaContacto: Provincia;ciudadContacto: String;codigoPostalContacto: String;tipoViaContacto: TipoVia;nombreViaContacto: String;numeroViaContacto: String;ampliacionDireccionContacto: String; | **Transformación:** **tipoViaContacto, nombreViaContacto, numeroViaContacto, ampliacionDireccionContacto****→** **direccionContacto**Se habrá de rellenar el campo direccionContacto del objeto del SGI concatenando, en el orden indicado y con algún tipo de separador (",", "\-", ...) definido al momento de la integración, los campos indicados del objeto de UM.En el caso del tipo de vía, se usará el campo descripción del objeto TipoVia para la concatenación.El resto de campos, se trasladarán tal cuál entre un objeto y otro, ya que mantienen además el mismo nombre. | paisContacto: Pais;comAutonomaContacto: ComunidadAutonoma;provinciaContacto: Provincia;ciudadContacto: String;codigoPostalContacto: String;direccionContacto: String; |

  





