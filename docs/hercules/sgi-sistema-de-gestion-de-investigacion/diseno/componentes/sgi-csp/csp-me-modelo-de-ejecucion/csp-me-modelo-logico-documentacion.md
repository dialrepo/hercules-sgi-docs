# Hércules : CSP\-ME \- Modelo lógico \- Documentación



### 

  


### Entidad Modelo de ejecución: "modeloejecucion"

Modelos de ejecución configurados en el SGI. Pueden ser definidos a través del interface de usuario. Un modelo de ejecución es el mecanismo o formato bajo el que se ejecuta la actividad de investigación. Es obligatorio vincular las convocatorias y proyectos a un modelo de ejecución, por lo que los modelos actuarán implícitamente como una clasificación para convocatorias y proyectos. La naturaleza concreta a la que responda la clasificación de los modelos de ejecución podrá ser particular de cada Universidad. 

Un modelo de ejecución contiene una serie de elementos relacionados que otorgarán flexibilidad a la gestión de convocatorias, solicitudes y proyectos. Estos elementos relacionados son: 

* Tipos de fase
* Tipos de hitos
* Tipos de enlace
* Tipos de documento
* Tipos de finalidad

  


  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Indica si el registro está activo o no. A través de este atributo se da cobertura al borrado lógico de los registros de esta entidad. A través del interface de usuario del SGI no se permite realizar borrado físico de los modelos de ejecución. |
| contrato : Boolean  Private  \= False Flag que distingue los modelos de ejecución basados en facturación (contratos). El SGI utiliza este campo para mostrar determinados apartados. |
| descripcion : String  Private Descripción del modelo de ejecución |
| externo : Boolean  Private  \= False Flag que distingue los modelos de ejecución que representan proyectos externos (proyectos registrados en el SGI en los que participa personal investigador de la Universidad pero cuya gestión y responsabilidad recae sobre otra Universidad). |
| id : Long  Private  Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre del modelo de ejecución |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloEjecucion  Cardinality:  \[1] | Target: Public (Class) ModeloTipoHito  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloEjecucion  Cardinality:  \[1] | Target: Public (Class) ModeloTipoFinalidad  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloEjecucion  Cardinality:  \[1] | Target: Public (Class) ModeloTipoDocumento  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoEnlace  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloEjecucion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloEjecucion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloUnidad  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloEjecucion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoFase  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloEjecucion  Cardinality:  \[1] |

  


### Entidad Tipos de documento de un modelo de ejecución: "ModeloTipoDocumento"

Relación de los tipos de documento incluidos en un modelo de ejecución. La inclusión de tipos de documento a los modelos de ejecución está disponible a través del interface de usuario. Los tipos de documento asociados a un modelo estarán disponibles para la clasificación de los documentos adjuntos en convocatorias, solicitudes y proyectos. Los tipos de documento se pueden vincular a los tipos de fase añadidos al modelo de ejecución. 



| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de documento que tenga el flag "activo" a "false" dentro de un modelo, no estará disponible para tipificar los documentos añadidos a las convocatorias, solicitudes y proyectos. |
| id : Long  Private  Identificador único de la tabla. Secuencia. Clave primaria. |
| modeloEjecucion : ModeloEjecucion  Private  Identificador del modelo de ejecución al que pertenece el registro. Es una FK a la tabla "modelo ejecución". |
| modeloTipoFase : ModeloTipoFase  Private Identificador del modelo tipo fase al que se vincula el tipo de documento. No es obligatorio que el tipo de documento se vincule a un tipo de fase. Es una FK a la tabla "modelo tipo fase". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoDocumento  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloTipoFase  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoDocumento  Cardinality:  \[0\..\*] | Target: Public (Class) TipoDocumento  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoDocumento  Cardinality:  \[0\..1] | Target: Public (Class) ConvocatoriaDocumento  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloEjecucion  Cardinality:  \[1] | Target: Public (Class) ModeloTipoDocumento  Cardinality:  \[0\..\*] |

  


### Entidad Tipos de enlace de un modelo de ejecución: "ModeloTipoEnlace"

Relación de los tipos de enlace incluidos en un modelo de ejecución. La inclusión de tipos de enlace a los modelos de ejecución está disponible a través del interface de usuario. 

  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de enlace que tenga el flag "activo" a "false" para un modelo, no estará disponible para ser incluido en la clasificación de los enlaces de las convocatorias vinculados al modelo de ejecución. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| modeloEjecucion : ModeloEjecucion  Private Identificador del modelo de ejecución al que se asocia el tipo de enlace. Es una FK a la tabla "modelo ejecución". |
| tipoEnlace : TipoEnlace  Private Identificador del tipo de enlace asociado al modelo de ejecución. Es una FK a la tabla "tipo enlace" |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoEnlace  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloEjecucion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoEnlace  Cardinality:  \[1] | Target: Public (Class) ModeloTipoEnlace  Cardinality:  \[0\..\*] |

  


  


### Entidad Tipos de fase de un modelo de ejecución: "ModeloTipoFase"

Relación de los tipos de fases incluidos en un modelo de ejecución. La inclusión de tipos de fase a los modelos de ejecución está disponible a través del interface de usuario. Los tipos de fases de un modelo se pueden configurar para que estén disponibles sobre las convocatorias y/o proyectos/contratos. 

  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de fase que tenga el flag "activo" a "false" para un modelo, no estará disponible para ser añadida a las convocatorias y/o proyectos/contratos (según su configuración) vinculados al modelo de ejecución. |
| convocatoria : Boolean  Private  \= False Un tipo de fase puede estar asociado a las convocatorias y/o a los proyectos/contratos. Este flag identifica si el tipo de fase, dentro del modelo de ejecución al que pertenece, se habilita para las convocatorias. |
| id : Long  Private Clave primaria. Identificador de la tabla. |
| modeloEjecucion : ModeloEjecucion  Private Identificador del modelo de ejecución al que pertenece la fase. Es una FK a la tabla "modelo ejecución". |
| proyecto : Boolean  Private  \= False Un tipo de fase puede estar asociado a las convocatorias y/o a los proyectos/contratos. Este flag identifica si el tipo de fase, dentro del modelo de ejecución al que pertenece, se habilita para los proyectos (entidad que también representa a los contratos). |
| solicitud : Boolean  Private  \= False Flag previsto para incorporar los tipos de fase a las solicitudes aunque actualmente no se da cobertura a nivel de interface de usuario ni en el modelo lógico de solicitudes. |
| tipoFase : TipoFase  Private Identificador del tipo de fase. Es una FK a la tabla "tipo fase". |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoFase  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloEjecucion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoDocumento  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloTipoFase  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoFase  Cardinality:  \[1] | Target: Public (Class) ModeloTipoFase  Cardinality:  \[0\..\*] |

  


  


### Entidad Tipos de finalidad de un modelo de ejecución: "ModeloTipoFinalidad"

Relación de los tipos de finalidad incluidos en un modelo de ejecución. La inclusión de tipos de finalidad a los modelos de ejecución está disponible a través del interface de usuario. 

  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de finalidad que tenga el flag "activo" a "false" para un modelo, no estará disponible para tipificar las convocatorias y proyectos vinculados al modelo de ejecución. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| modeloEjecucion : ModeloEjecucion  Private Identificador del modelo de ejecución al que pertenece el registro. Es una FK a la tabla "modelo ejecución". |
| tipoFinalidad : TipoFinalidad  Private Identificador del tipo de finalidad que se asocia al modelo de ejecución. Es una FK a la tabla "tipo finalidad" |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoFinalidad  Cardinality:  \[0\..\*] | Target: Public (Class) TipoFinalidad  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloEjecucion  Cardinality:  \[1] | Target: Public (Class) ModeloTipoFinalidad  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Convocatoria  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloTipoFinalidad  Cardinality:  \[1] |

  


  


### Entidad Tipos de hito de un modelo de ejecución: "ModeloTipoHito"

Relación de los tipos de hitos incluidos en un modelo de ejecución. La inclusión de tipos de hitos a los modelos de ejecución está disponible a través del interface de usuario. Los tipos de hito de un modelo se pueden configurar para que estén disponibles sobre las convocatorias, solicitudes y/o proyectos/contratos. 



| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de hito que tenga el flag "activo" a "false" para un modelo, no estará disponible para ser añadido como hito a las convocatorias, solicitudes y/o proyectos/contratos (según su configuración) vinculados al modelo de ejecución. |
| convocatoria : Boolean  Private  \= False  Un tipo de hito puede estar asociado a las convocatorias, solicitudes y/o a los proyectos/contratos. Este flag identifica si el tipo de hito, dentro del modelo de ejecución al que pertenece, se habilita para las convocatorias. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| modeloEjecucion : ModeloEjecucion  Private Identificador del modelo de ejecución al que pertenece el tipo de hito. Es una FK a la tabla "modelo ejecución". |
| proyecto : Boolean  Private  \= False  Un tipo de hito puede estar asociado a las convocatorias, a las solicitudes y/o a los proyectos/contratos. Este flag identifica si el tipo de hito, dentro del modelo de ejecución al que pertenece, se habilita para los proyectos (entidad que también representa a los contratos). |
| solicitud : Boolean  Private  \= False  Un tipo de hito puede estar asociado a las convocatorias, a las solicitudes y/o a los proyectos/contratos. Este flag identifica si el tipo de hito, dentro del modelo de ejecución al que pertenece, se habilita para las solicitudes. |
| tipoHito : TipoHito  Private  Identificador del tipo de hito al que se asocia el modelo. Es una FK a la tabla "tipo hito" |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoHito  Cardinality:  \[0\..\*] | Target: Public (Class) TipoHito  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloEjecucion  Cardinality:  \[1] | Target: Public (Class) ModeloTipoHito  Cardinality:  \[0\..\*] |

  


### Entidad Unidades de gestión de un modelo de ejecución: "ModeloUnidad"

Relación de unidades de gestión para las que se configura el modelo de ejecución. La disponibilidad de los modelos de ejecución para los/las usuarios/as queda restringida por la unidad de gestión habilitadas en el SGI para cada usuario/a.

  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Si la relación de una unidad de gestión con un modelo de ejecución tiene el flag "activo" a "false" ningún usuario/a vinculado a esta unidad de gestión tendrá el modelo de ejecución disponible para la creación/ modificación de convocatorias y proyectos. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| modeloEjecucion : ModeloEjecucion  Private Identificador del modelo de ejecución al que pertenece el registro. Es una FK a la tabla "modelo ejecución". |
| unidadGestionRef : String  Private  Identificador de la unidad de gestión a la que se habilita el modelo de ejecución. Es una FK a la tabla "unidad" disponible en el modelo lógico USR. |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloUnidad  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloEjecucion  Cardinality:  \[1] |

  


  


### Entidad Tipos de documento: "TipoDocumento"

Contiene los tipos de documento disponibles para categorización de los documentos adjuntos en convocatorias, solicitudes y proyectos. 

El tipo de documento permitirá clasificar los documentos de acuerdo a la naturaleza de la información que contienen. Ejemplos de tipos de documento podrían ser: bases de convocatoria, borrador de contrato, presupuesto, plan de trabajo, CVA, etc. 

Esta tabla admite configuración a través del interface de usuario. 

  




| **ATTRIBUTES** |
| --- |
| activo : Booelan  Private  \= True  Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de documento con al flag "activo" a "false" no estará disponible para su vinculación a los modelos de ejecución. |
| descripcion : String  Private  Descripción del tipo de documento |
| id : Long  Private  Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private  Nombre del tipo de documento. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoDocumento  Cardinality:  \[0\..\*] | Target: Public (Class) TipoDocumento  Cardinality:  \[1] |

  


### Entidad Tipos de enlace: "TipoEnlace"

Contiene los tipos de enlace disponibles para la gestión de convocatorias. Los tipos de enlace no son más que una tipología para clasificar, según la naturaleza de la información que contienen, los enlaces a URLs externas con las que se complementa el detalle de las convocatorias. Ejemplos de tipos de enlace podrían ser: portal de publicación de la convocatoria, bases de convocatoria, portal de justificación, etc. 

Esta tabla está disponible para su configuración a través del interface de usuario. 

  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True  Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de enlace con al flag "activo" a "false" no estará disponible para su vinculación a los modelos de ejecución. |
| descripcion : String  Private  Descripción del tipo de enlace. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre del tipo de enlace. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoEnlace  Cardinality:  \[1] | Target: Public (Class) ModeloTipoEnlace  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoEnlace  Cardinality:  \[0\..1] | Target: Public (Class) ConvocatoriaEnlace  Cardinality:  \[0\..\*] |

  


  


### Entidad Tipos de fase: "TipoFase"

Contiene los tipos de fase disponibles para la gestión de convocatorias y proyectos/contratos. Las fases están ligadas al proceso de gestión administrativa de la convocatoria o proyecto/contrato dentro de los procedimientos internos de la Universidad. Ejemplos de fases podrían ser: presentación interna solicitudes, presentación de solicitudes en entidad externa, presentación de alegaciones, presentación contrato a empresa, ejecución del contrato, etc. 

Las fases están disponibles para las convocatorias y proyectos/contratos a través del modelo de ejecución al que se vinculan.  

Esta tabla admite configuración a través del interface de usuario. 

  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de fase con al flag "activo" a "false" no estará disponible para su vinculación a los modelos de ejecución. |
| descripcion : String  Private Descripción de la fase. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre de la fase. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoFase  Cardinality:  \[1] | Target: Public (Class) ModeloTipoFase  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoFase  Cardinality:  \[1] | Target: Public (Class) ConvocatoriaFase  Cardinality:  \[0\..\*] |

  


  


### Entidad Tipos de finalidad: "TipoFinalidad"

Contiene los tipos de finalidad disponibles para la gestión de convocatorias y proyectos/contratos. 

La naturaleza de esta tipificación queda a elección de cada Universidad. La propuesta inicial es utilizarla para tipificar las convocatorias y proyectos en base al tipo de actividad desarrollada (proyecto de investigación, ayuda de rrhh, explotación de patente, asistencia técnica, etc.) 

Los tipos de finalidad están disponibles para la clasificación de convocatorias y proyectos a través del modelo de ejecución al que se vinculen. 

Esta tabla está disponible para su configuración a través del interface de usuario. 

  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de finalidad con al flag "activo" a "false" no estará disponible para su vinculación a los modelos de ejecución. |
| descripcion : String  Private Descripción del tipo de finalidad. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| nombre : String  Private Nombre del tipo de finalidad. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoFinalidad  Cardinality:  \[1] | Target: Public (Class) Proyecto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Convocatoria  Cardinality:  \[0\..\*] | Target: Public (Class) TipoFinalidad  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoFinalidad  Cardinality:  \[0\..\*] | Target: Public (Class) TipoFinalidad  Cardinality:  \[1] |

  


  


### Entidad Tipos de hito: "TipoHito"

Contiene los tipos de hito disponibles para la gestión de convocatorias, solicitudes y proyectos/contratos. Un hito es cualquier acontecimiento que resulte de interés dejar historificado. Mientras que las fases están pensadas para estar definidas por un periodo marcado por una fecha de inicio y fin, los hitos están orientados a dejar un registro de una situación puntual ocurrida en una fecha, pasada o futura. Ejemplos de tipos de hito podrían ser: firma del contrato por parte de la empresa, firma del contrato por parte de la Universidad, paralización de convocatoria, etc. 

Los tipos de hito están disponibles para registrar hitos en las convocatorias, solicitudes y proyectos/contratos a través del modelo de ejecución al que se vinculan.  

Esta tabla admite configuración a través del interface de usuario. 

  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de hito con al flag "activo" a "false" no estará disponible para su vinculación a los modelos de ejecución. |
| descripcion : String  Private  Descripción del tipo de hito. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre del tipo de hito. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudHito  Cardinality:  \[0\..\*] | Target: Public (Class) TipoHito  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ConvocatoriaHito  Cardinality:  \[0\..\*] | Target: Public (Class) TipoHito  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ModeloTipoHito  Cardinality:  \[0\..\*] | Target: Public (Class) TipoHito  Cardinality:  \[1] |




