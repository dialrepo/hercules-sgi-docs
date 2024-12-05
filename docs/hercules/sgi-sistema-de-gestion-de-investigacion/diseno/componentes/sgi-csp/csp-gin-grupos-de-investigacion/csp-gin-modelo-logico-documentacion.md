# Hércules : CSP\-GIN \- Modelo lógico \- Documentación



## CSP Grupo

### Modelo lógico CSP Grupo

![](/attachments/597852701/597861129.jpg)

## Entidades del modelo CSP Grupo

### Entidad grupo: "grupo"

Entidad principal del modelo lógico de Grupos de investigación. Representa a agrupaciones estables de personal investigador que coopera en una o varias líneas de investigación. Forman equipos de trabajo específicos para realizar proyectos de investigación que pueden durar varios años.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateClave primaria. Secuencia. Identificador único del registro dentro de la tabla "grupo". |
| nombre : String PrivateEs el nombre por el que se conoce al grupo de investigación. Es un campo obligatorio. |
| fechaInicio : Timestamp PrivateFecha de inicio del grupo de investigación. Es un campo obligatorio. |
| fechaFin : Timestamp PrivateFecha de fin del grupo de investigación. |
| proyectoSGERef : String PrivateCódigo con el que se va a identificar el grupo de investigación en el SGE (Sistema de gestión económico). |
| solicitud : Solicitud PrivateIdentificador de la Solicitud concedida de la que se contituyó el grupo de investigación. Solo estará informado en caso que la solicitud esté registrada en el SGI. Es una FK a la tabla "solicitud". |
| codigo : String PrivateEs un código identificativo del grupo de investigación. Debe de ser un campo único y obligatorio. |
| tipo : GrupoTipo PrivateIndica el grado de madurez actual del grupo de investigación. Es una FK a la tabla "grupo tipo" |
| especialInvestigacion : GrupoEspecialInvestigacion PrivateIndica si el grupo de investigación en el moment o actual es un "grupo especial de investigación". Es una FK a la tabla "grupo especial investigación" |
| departamentoOrigenRef : String PrivateIdentificador del departamento al que esta adscrito el investigador principal del grupo de investigación en el momento de la solicitud de constitución del grupo o creación del grupo. |
| activo : Boolean PrivateCampo interno al SGI con el que se da cobertura al borrado lógico. El valor "true" será indicativo de que el registro (grupo) está activo mientras que un valor "false" será indicativo de que el registro (grupo) ha sido eliminado a nivel de usuario. Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoEspecialInvestigacion Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoEquipo Cardinality: \[1\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1\..] | Target: Public (Class) GrupoPersonaAutorizada Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoTipo Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoEnlace Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoEquipoInstrumental Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1\..] | Target: Public (Class) GrupoResponsableEconomico Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoPalabraClave Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaInvestigacion Cardinality: \[1] | Target: Public (Class) Grupo Cardinality: \[0\..\*] |

### Entidad enlaces del grupo: "GrupoEnlace"

Enlaces (en formato URL) que se considere útil y/o necesario recoger en los datos del grupo.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| grupo : Grupo PrivateIdentificador del grupo al que pertenece el enlace. Es una FK a la tabla "grupo". Es un campo obligatorio. |
| enlace : String PrivateUrl de la página web con la información de interés. Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoEnlace Cardinality: \[0\..\*] |

### Entidad equipo del grupo "GrupoEquipo"

Entidad que contiene los miembros del Grupo, tanto actuales como todo su histórico.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateClave primaria. Identificador de la tabla. |
| grupo : Grupo PrivateIdentificador del Grupo al que pertenece la persona referenciada. Es una FK a la tabla "grupo". Es un campo obligatorio.  Es una FK a la tabla "grupo". Es un campo obligatorio. |
| personaRef : String PrivateIdentificador o Referencia de la persona miembro del equipo de grupo. Es el identificador de la persona en el sistema de personas de la Universidad. Es un campo obligatorio. |
| fechaInicio : Timestamp PrivateFecha de inicio de la participación del miembro del equipo con el rol seleccionado. Es un campo obligatorio. |
| fechaFin : Timestamp PrivateFecha de fin de la participación del miembro del equipo con el rol seleccionado. |
| rol : RolProyecto PrivateIdentificador del rol con el que participa el miembro en el Grupo de investigación. Es un FK a la tabla "rol proyecto". Es un campo obligatorio. |
| dedicacion : Dedicacion PrivateTipo de dedicación del miembro en el grupo. Toma el valor del enumerado "dedicación". |
| participacion : BigDecimal PrivatePorcentaje de dedicación del miembro en el equipo (de forma relativa a su participación en grupos de investigación, sin considerar su participación en otras actividades de investigación, docencia, etc.).Si el campo "dedicación" toma el valor "COMPLETA", la dedicación tomará el valor 100%.  Si el campo "dedicación" toma el valor "PARCIAL", la dedicación tomará el valor inferior al 100%. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoEquipo | Target: Public (Enumeration) Dedicacion |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoEquipo Cardinality: \[1\..\*] |

### Entidad equipo instrumental del grupo: "GrupoEquipoInstrumental"

Equipos instrumentales de los que dispone el grupo de investigación.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| grupo : Grupo PrivateIdentificador del grupo al que pertenece el equipo instrumental Es una FK a la tabla "grupo". Es un campo obligatorio. |
| numRegistro : String PrivateIdentificador del equipo instrumental en la Universidad, en caso que se desee informar de dicho campo. |
| nombre : String PrivateNombre del equipo instrumental. Es un campo obligatorio. |
| descripcion : String PrivateDescripción larga del equipo instrumental, para que sirve, que se puede hacer con él, etc. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaEquipoInstrumental Cardinality: \[0\..\*] | Target: Public (Class) GrupoEquipoInstrumental Cardinality: \[1] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoEquipoInstrumental Cardinality: \[0\..\*] |

### Entidad histórico grupo especial: "GrupoEspecialInvestigacion"

Un Grupo podrá pasar o dejar de tener la consideración de "Grupo especial" en diferentes ocasiones a lo largo de su trayectoria. En esta tabla se almacena tanto el dato actual como el histórico.  Por defecto, un grupo se crea con la configuración de Grupo especial \= No.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| especialInvestigacion : Boolean PrivateIndica si el grupo es un "Grupo especial de investigación". Podrá tomar los valores true o false. En un campo obligatorio. |
| fechaInicio : Timestamp PrivateFecha de fin en la que empieza a aplicarse el valor indicado en el campo "especial investigación" al que se refiere el registro. Es un campo obligatorio. |
| fechaFin : Timestamp PrivateFecha de fin en la que deja de aplicarse el valor indicado en el campo "especial investigación" al que se refiere el registro. |
| grupoId : Long PrivateGrupo al que pertenece el registro. Es una FK a la tabla "grupo". Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoEspecialInvestigacion Cardinality: \[0\..\*] |

### Entidad clasificación de las líneas de investigación del grupo: "GrupoLineaClasificacion"

Tabla que recoge todas las clasificaciones de una línea de investigación de un grupo. El SGI dispone de una estructura genérica "clasificación" , en

forma de árbol, que permite, en tiempo de implantación, configurar los listados bajo los que resulte de interés clasificar la línea de investigación. No se establecen límites al respecto. En cada implantación se definirán las clasificaciones a utilizar. Esta estructura clasificación reside en el ESB, de forma que cada uno de los listados asociados a cada clasificación podrá ser alimentado desde un sistema de gestión corporativo (de forma genérica en el SGI se hace referencia a este posible sistema como SGO, sistema de gestión de la organización), a través del servicio de integración correspondiente, o bien ser configurados en tiempo de implantación.

Algunas clasificaciones tipo serían:

* Clasificación de códigos UNESCO.
* Clasificación de códigos NABS.
* Clasificación de códigos CNAE



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| grupoLinea : GrupoLineaInvestigacion PrivateLínea de investigación al que pertenece el registro. Es una FK a la tabla "grupo línea investigación". Es un campo obligatorio. |
| codClasificacionRef : String PrivateElemento dentro de una clasificación con el que se vincula la línea de investigación. La referencia es el identificador del elemento dentro de la tabla "clasificación" incluida en modelo lógico del SGO (sistema de gestión de la organización). Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaClasificacion Cardinality: \[0\..\*] | Target: Public (Class) GrupoLineaInvestigacion Cardinality: \[1] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaClasificacion Cardinality: \[0\..\*] | Target: Public (Class) Clasificacion Cardinality: \[1] |

### Entidad línea de investigación del equipo instrumental del grupo: "GrupoLineaEquipoInstrumental"

Relaciona un equipo instrumental definido en un grupo con la línea de investigación (perteneciente también al mismo grupo) que va a hacer uso del equipo.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| grupoLinea : GrupoLineaInvestigacion PrivateIdentificador de la línea de investigación del grupo. Es una FK a la tabla "grupo línea investigación". Es un campo obligatorio. |
| equipoInstrumental : GrupoEquipoInstrumental PrivateIdentificador del equipo instrumental del grupo. Es una FK a la tabla "grupo equipo instrumental". Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaEquipoInstrumental Cardinality: \[0\..\*] | Target: Public (Class) GrupoEquipoInstrumental Cardinality: \[1] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaInvestigacion Cardinality: \[1] | Target: Public (Class) GrupoLineaEquipoInstrumental Cardinality: \[0\..\*] |

### Entidad línea de investigación del grupo: "GrupoLineaInvestigacion"

Líneas de investigación en las que trabaja un grupo de investigación.

Una línea de investigación quedará constituida por:

* Nombre: nombre o descripción de la línea de investigación
* Fecha de inicio y fecha de fin de duración de la línea en el grupo
* Miembros adscritos. Investigadores/as que forman parte del grupo de investigación se pueden adscribir a una o varias líneas de investigación del grupo.
* Clasificaciones. Una línea de investigación podrá clasificarse por medio de los códigos UNESCO, códigos CNAE, etc..
* Equipos instrumentales adscritos. Una línea de investigación podrá hacer uso de uno o varios equipos instrumentales definidos en el grupo.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| grupo : Grupo PrivateIdentificador del grupo al que pertenece la línea de investigación. Es una FK a la tabla "grupo". Es un campo obligatorio. |
| lineaInvestigacion : LineaInvestigacion PrivateIdentificador de la línea de investigación. Es una FK a la tabla "línea investigación". Es un campo obligatorio. |
| fechaInicio : Timestamp PrivateFecha de inicio de actuación de la línea de investigación en el grupo. Es un campo obligatorio. |
| fechaFin : Timestamp PrivateFecha de fin de de actuación de la línea de investigación en el grupo |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaInvestigacion Cardinality: \[1\..] | Target: Public (Class) GrupoLineaInvestigador Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaInvestigacion Cardinality: \[1] | Target: Public (Class) GrupoLineaEquipoInstrumental Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaInvestigacion Cardinality: \[1] | Target: Public (Class) Grupo Cardinality: \[0\..\*] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaClasificacion Cardinality: \[0\..\*] | Target: Public (Class) GrupoLineaInvestigacion Cardinality: \[1] |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) LineaInvestigacion Cardinality: \[1] | Target: Public (Class) GrupoLineaInvestigacion Cardinality: \[0\..\*] |

### Entidad línea de investigación de los miembros del grupo: "GrupoLineaInvestigador"

Listado de miembros del equipo de grupo vinculados a la línea de investigación.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| grupoLinea : GrupoLineaInvestigacion PrivateLínea de investigación al que pertenece el registro. Es una FK a la tabla "grupo línea investigación". Es un campo obligatorio. |
| personaRef : String PrivateReferencia de la persona que forma parte del equipo del grupo y esta adscrita a la línea de investigación. Es el identificador de la persona en el sistema de gestión de personas corporativo. Es un campo obligatorio. |
| fechaInicio : Timestamp PrivateFecha de inicio del miembro del equipo adscrito a la línea de investigación. Es un campo obligatorio. |
| fechaFin : Timestamp PrivateFecha de fin del miembro del equipo adscrito a la línea de investigación. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoLineaInvestigacion Cardinality: \[1\..] | Target: Public (Class) GrupoLineaInvestigador Cardinality: \[0\..\*] |

### Entidad palabras clave del grupo: "GrupoPalabraClave"

Palabras clave asociadas al grupo. El catálogo de palabras clave común al SGI se implementa en la tabla "palabra clave" del ESB (modelo SGO).



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| palabraClave : String PrivatePalabra clave asociada al grupo. Es una FK a la tabla "palabra clave" del modelo ESB\-SGO. Es un campo obligatorio. |
| grupo : Grupo PrivateGrupo al que pertenece la palabra clave. Es una FK a la tabla "grupo". Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoPalabraClave | Target: Public (Class) PalabraClave |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoPalabraClave Cardinality: \[0\..\*] |

### Entidad persona autorizada del grupo: "GrupoPersonaAutorizada"

Persona delegada a la tarea de validar/rechazar items de producción científica y a la tarea de solicitud de modificación del grupo. La tabla almacena la persona autorizada ctual del grupo e histórico de las mismas. Cada grupo solo puede una persona autorizada en un momento determinado.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| grupo : Grupo PrivateIdentificador del grupo al que pertenece el registro persona autorizada. Es una FK a la tabla "grupo". Es un campo obligatorio. |
| fechaInicio : Timestamp PrivateFecha en la que comienza la participación en el grupo como persona autorizada. Es un campo obligatorio. |
| fechaFin : Timestamp PrivateFecha en la que finaliza la participación en el grupo como persona autorizada. |
| personaRef : iString PrivateReferencia de la persona que actúa como persona autorizada del grupo. Es el identificador de la persona en el sistema de gestión de personas corporativo. Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1\..] | Target: Public (Class) GrupoPersonaAutorizada Cardinality: \[0\..\*] |

### Entidad responsable económico del grupo: "GrupoResponsableEconomico"

Responsable económico actual del grupo e histórico de los mismos. Cada grupo solo puede un responsable económico en un momento determinado.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| grupo : Grupo PrivateIdentificador del grupo al que pertenece el registro responsable económico. Es una FK a la tabla "grupo". Es un campo obligatorio. |
| fechaInicio : Timestamp PrivateFecha en la que comienza la participación en el grupo como responsable económico. Es un campo obligatorio. |
| fechaFin : Timestamp PrivateFecha en la que finaliza la participación en el grupo como responsable económico. |
| personaRef : String PrivateReferencia de la persona que actúa como responsable económico del grupo. Es el identificador de la persona en el sistema de gestión de personas corporativo. Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1\..] | Target: Public (Class) GrupoResponsableEconomico Cardinality: \[0\..\*] |

### Entidad histórico de tipos del grupo: "GrupoTipo"

Histórico de los diferentes valores del campo "tipo grupo" durante toda la duración del grupo de investigación.

Indica el grado de madurez del grupo de investigación.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| tipoGrupo : TipoGrupo PrivateIndica el grado de madurez del grupo de investigación. Toma el valor del enumerado "tipo grupo". Es un campo obligatorio. |
| fechaInicio : Timestamp PrivateFecha de inicio en la que empieza a aplicarse el valor indicado en el campo "tipo grupo" al que se refiere el registro. Es un campo obligatorio. |
| fechaFin : Timestamp PrivateFecha de fin en la que deja de aplicarse el valor indicado en el campo "tipo grupo" al que se refiere el registro. |
| grupoId : Long PrivateGrupo al que pertenece el registro. Es una FK a la tabla "grupo". Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoTipo | Target: Public (Enumeration) TipoGrupo |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) Grupo Cardinality: \[1] | Target: Public (Class) GrupoTipo Cardinality: \[0\..\*] |

### Entidad línea de investigación: LineaInvestigacion

Una línea de investigación puede ser utilizada en un grupo de investigación o en varios, por lo tanto esta tabla contiene el listado de líneas de investigación común a todo el SGI.



 | **ATTRIBUTES** |
| --- |
| id : Long PrivateIdentificador único del registro. Secuencia. Clave primaria. |
| nombre : String PrivateNombre o descripción de la línea de investigación. Es un campo obligatorio. |
| activo : Boolean PrivateCampo interno al SGI con el que se da cobertura al borrado lógico. El valor "true" será indicativo de que el registro (línea de investigación) está activa mientras que un valor "false" será indicativo de que el registro (línea de investigación) ha sido eliminada a nivel de usuario. Es un campo obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) LineaInvestigacion Cardinality: \[1] | Target: Public (Class) GrupoLineaInvestigacion Cardinality: \[0\..\*] |

## Enumerados del modelo CSP Grupo

### Enumerado tipo de dedicación: "Dedicacion"

Tiempo de dedicación del miembro en el grupo.

Enumerado con los siguientes valores:

* COMPLETA
* PARCIAL



 | **ATTRIBUTES** |
| --- |
| COMPLETA : Public |
| PARCIAL : Public |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoEquipo | Target: Public (Enumeration) Dedicacion |

### Enumerado tipo de grupo: "TipoGrupo"

Grado de madurez del grupo de investigación.

Enumerado con los siguientes valores:

* EMERGENTE
* CONSOLIDADO
* PRECOMPETITIVO
* ALTO\_RENDIMIENTO



 | **ATTRIBUTES** |
| --- |
| EMERGENTE : Public |
| CONSOLIDADO : Public |
| PRECOMPETITIVO : Public |
| ALTO\_RENDIMIENTO : Public |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| --- | --- |
| Source: Public (Class) GrupoTipo | Target: Public (Enumeration) TipoGrupo |




