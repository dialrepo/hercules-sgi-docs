# Hércules : EER \- Modelo lógico \- Documentación



### Entidades del modelo Empresas de Explotación de Resultados

#### Empresa

Representa a cada una de las empresas de explotación de resultados vinculadas a la Universidad que se considera que es interesante gestionar en el SGI.



| **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "Empresa". Obligatorio. |
| tipoEmpresa : StringTipo de la empresa de explotación de resultados. Posibles valores: \- EBT (Empresa de base tecnológica). \- EINCNT (Empresa intensiva en conocimiento no tecnológico).Obligatorio. |
| solicitanteRef : StringReferencia al solicitante que consta en la solicitud de creación de la empresa de explotación de resultados en los sistemas de la Universidad. Es una clave ajena al modelo SGP que se encuentra en otro esquema de BBDD. Opcional. |
| estado : StringEstado de la empresa. Tomará uno de los valores: \- En tramitación \- No aprobada \- Activa \- Sin actividad \- DisueltaObligatorio. |
| nombreRazonSocial : String Nombre / Razón social de la empresa de explotación de resultados.Estará informado únicamente si el campo entidadRef no tiene valor, en otro caso, no se deberá estar informado o, aunque lo estuviese anteriormente, su valor no se utilizará, ya que se manejará el nombre de la entidad que provenga de los sistemas de la Universidad.Obligatorio mientras no esté informado el campo empresaRef, Opcional en otro caso. |
| entidadRef : StringReferencia a la entidad que representa a la empresa de explotación de resultados en los sistemas de la Universidad. Es una FK al modelo del SGEMP. Opcional. |
| objetoSocial : StringObjeto social de la empresa de explotación de resultados. Obligatorio. |
| conocimientoTecnologia : StringDescripción del conocimiento o tecnología de la empresa de explotación de resultados. Si se trata de una EBT, representará la tecnología. Si se trata de una EINCNT, el conocimiento. Obligatorio. |
| fechaAprobacionCG : DateFecha de aprobación en Consejo de Gobierno de la constitución o incorporación de la Universidad a la empresa de explotación de resultados. Opcional. |
| fechaCese: DateFecha de cese de la empresa de explotación de resultados. Opcional. |
| fechaConstitucion: DateFecha de constitución de la empresa de explotación de resultados. Opcional. |
| fechaDesvinculacion : DateFecha de desvinculación de la Universidad de la empresa de explotación de resultados. Opcional. |
| fechaIncorporacion: DateFecha de incorporación de la Universidad a la empresa de explotación de resultados. Opcional. |
| fechaSolicitud : DateFecha de la solicitud de creación de la empresa de explotación de resultados o de la petición de la Universidad de incorporarse a ella. OIbligatorio. |
| Notario: StringDatos del notario que intervino en la constitución o a la incorporación de la Universidad a la empresa de explotación de resultados. Opcional. |
| numeroProtocolo : StringNúmero de la notaría asociado a la constitución o a la incorporación de la Universidad a la empresa de explotación de resultados. Opcional. |
| observaciones: StringObservaciones que se quieran aportar a la empresa de explotación de resultados. Opcional. |
| activo: Boolean \= TrueIndicador de si el registro está activo o no en el SGI. Obligatorio. Por defecto tendrá valor True. Obligatorio. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaCardinality:  \[0\..1] | Target: Public (Class) EmpresaCardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaCardinality:  \[0\..\*] | Target: Public (Enumeration) EstadoEmpresaCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaCardinality:  \[0\..\*] | Target: Public (Class) PersonaCardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaCardinality:  \[0\..\*] | Target: Public (Enumeration) TipoEmpresaCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaCardinality:  \[1] | Target: Public (Class) EmpresaAdministracionSociedadCardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaDocumentoCardinality:  \[0\..\*] | Target: Public (Class) EmpresaCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaEquipoEmprendedorCardinality:  \[0\..\*] | Target: Public (Class) EmpresaCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaComposicionSociedadCardinality:  \[0\..\*] | Target: Public (Class) EmpresaCardinality:  \[1] |

#### EmpresaAdministracionSociedad

Representa a cada uno de los miembros de los equipos de administración de las distintas empresas de explotación de resultados.



| **ATTRIBUTES** |
| --- |
| id : Long Clave primaria. Secuencia. Identificador único del registro dentro de la tabla "EmpresaAdministracionSociedad". |
| empresaId : LongIdentificador de la empresa a la que pertenece el miembro del equipo de administración de la sociedad. Es una FK sobre la tabla "Empresa". Obligatorio. |
| miembroEquipoAdministracionRef : StringReferencia a la persona miembro del equipo de administración de la sociedad. Es una FK al modelo del SGP. Obligatorio. |
| tipoAdministracion : StringTipo de administración del miembro del equipo de administración de la sociedad. Los miembros que componen la administración de la sociedad podrán ejercer uno de los tipos de administración del enumerado TipoAdministracion. Obligatorio. |
| fechaInicio : DateFecha desde que el miembro forma parte del equipo de administración con tipo indicado en tipoAdministracion. Obligatorio. |
| fechaFin : DateFecha hasta la que la persona desempeña su labor como miembro del equipo de administración de la sociedad del tipo indicado en tipoAdministracion. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaAdministracionSociedadCardinality:  \[0\..\*] | Target: Public (Enumeration) TipoAdministracionCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaAdministracionSociedadCardinality:  \[0\..\*] | Target: Public (Class) PersonaCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaCardinality:  \[1] | Target: Public (Class) EmpresaAdministracionSociedadCardinality:  \[0\..\*] |

#### EmpresaComposicionSociedad



| **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "EmpresaComposicionSociedad". |
| empresaId : LongIdentificador de la empresa al que pertenece el miembro de la composición de la sociedad. Clave ajena a "Empresa". Obligatorio. |
| miembroSociedadEmpresaRef : StringReferencia a la entidad miembro de la sociedad. Es una FK al modelo del SGEMP. Estará informado cuando el miembro de la sociedad sea una entidad. Opcional. |
| miembroSociedadPersonaRef : StringReferencia a la persona miembro de la sociedad. Es una FK al modelo del SGP. Estará informado cuando el mimbro de la sociedad sea una persona. Opcional. |
| fechaInicio : DateFecha desde que es socio la entidad/persona. Obligatorio. |
| fechaFin : Date Fecha hasta la que es socio la entidad/persona. Opcional. |
| participacion : DecimalPorcentaje de participación del socio en la sociedad. Numérico decimal menor o igual que 100\. Obligatorio. |
| tipoAportacion : StringTipo de aportación a la sociedad. Los miembros que componen la sociedad podrán aportar uno de los tipos de aportación del enumerado TipoAportacion. Obligatorio. |
| capitalSocial : DecimalImporte del capital social aportado por el socio. Numérico decimal. Opcional. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaComposicionSociedadCardinality:  \[0\..\*] | Target: Public (Class) PersonaCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaComposicionSociedadCardinality:  \[0\..\*] | Target: Public (Class) EmpresaCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaComposicionSociedadCardinality:  \[0\..\*] | Target: Public (Enumeration) TipoAportacionCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaComposicionSociedadCardinality:  \[0\..\*] | Target: Public (Class) EmpresaCardinality:  \[1] |

#### EmpresaDocumento



| **ATTRIBUTES** |
| --- |
| id : Long Identificador único del registro. Secuencia. Clave primaria. |
| empresaId : Long Identificador de la empresa a la que pertenece el documento. Es una FK sobre la tabla "Empresa". Obligatorio. |
| nombre : String Nombre del documento a nivel de usuario. No es ningún atributo del archivo físico. |
| documentoRef : String Referencia identificativa del documento en el repositorio de documentos global del SGI. |
| tipoDocumentoId : Long Clasificación del documento según su tipología. Es una FK a la tabla "TipoDocumento". Obligatorio. |
| comentarios : String Comentario de texto libre asociado al documento. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaDocumentoCardinality:  \[0\..\*] | Target: Public (Class) EmpresaCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaDocumentoCardinality:  \[0\..\*] | Target: Public (Class) TipoDocumentoCardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaDocumentoCardinality:  \[0\..1] | Target: Public (Class) DocumentoCardinality:  \[1] |

#### EmpresaEquipoEmprendedor

Representa a cada uno de los miembros de los equipos emprendedores de las distintas empresas de explotación de resultados.



| **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "EmpresaEquipoEmprendedor". |
| empresaId : Long Identificador de la empresa al que pertenece el miembro del equipo emprendedor. Clave ajena a "Empresa". Obligatorio. |
| miembroEquipoRef : String Referencia a la persona miembro del equipo emprendedor. Es una FK al modelo del SGP. Obligatorio. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaEquipoEmprendedorCardinality:  \[0\..\*] | Target: Public (Class) EmpresaCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaEquipoEmprendedorCardinality:  \[0\..\*] | Target: Public (Class) PersonaCardinality:  \[1] |

#### TipoDocumento

Contiene los tipos de documento disponibles para categorización de los documentos adjuntos en empresas de explotación de resultados.

El tipo de documento permitirá clasificar los documentos de acuerdo con la naturaleza de la información que contienen. Ejemplos de tipos de documento podrían ser: documentos de procedimiento, documentos corporativos, estatutos sociales, ...



| **ATTRIBUTES** |
| --- |
| id : LongIdentificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String Nombre del tipo de documento. Obligatorio. |
| descripcion : StringDescripción del tipo de documento. Obligatorio. |
| padreId : Long Identificador del tipo padre (en caso de que sea un subtipo). FK a TipoDocumento (a sí misma). Opcional. |
| activo : Booelan    \= TrueFlag con el que se da cobertura al borrado lógico de los registros de esta tabla. Un tipo de documento con al flag "activo" a "false" no estará disponible para su vinculación a los documentos de la empresa de explotación de resultados. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoDocumentoCardinality:  \[1] | Target: Public (Class) TipoDocumentoCardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoDocumentoCardinality:  \[1] | Target: Public (Class) TipoDocumentoCardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EmpresaDocumentoCardinality:  \[0\..\*] | Target: Public (Class) TipoDocumentoCardinality:  \[0\..1] |

### Enumerados

#### EstadoEmpresa

Enumerado que contiene los posibles estados de las empresas de explotación de resultados. Valores:

* En tramitación
* No aprobada
* Activa
* Sin actividad
* Disuelta



| **ATTRIBUTES** |
| --- |
| En tramitación : Long |
| No aprobada : Long |
| Activa : Long |
| Sin actividad : Long |
| Disuelta : Long |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source:  (Class) EmpresaCardinality:  \[0\..\*] | Target:  (Enumeration) EstadoEmpresaCardinality:  \[1] |

#### TipoAdministracion

Enumerado que contiene los posibles tipos de administración de la sociedad que representa la empresa de explotación de resultados. Valores:

* Administrador único (1 persona)
* Administrador solidario (2 personas o más)
* Administrador mancomunado (2 personas o más)
* Consejo de administración (3 personas o más)



| **ATTRIBUTES** |
| --- |
| Administrador único : Long |
| Administrador solidario : Long |
| Administrador mancomunado : Long |
| Consejo de administración : Long |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source:  (Class) EmpresaAdministracionSociedadCardinality:  \[0\..\*] | Target:  (Enumeration) TipoAdministracionCardinality:  \[1] |

#### TipoAportacion

Enumerado que contiene los posibles tipos de aportación a la composición de la sociedad que representa la empresa de explotación de resultado por parte de los miembros de la misma. Valores:

* Dineraria
* No dineraria



| **ATTRIBUTES** |
| --- |
| Dineraria : Long |
| No dineraria : Long |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source:  (Class) EmpresaComposicionSociedadCardinality:  \[0\..\*] | Target:  (Enumeration) TipoAportacionCardinality:  \[1] |

#### TipoEmpresa

Enumerado que contiene los posibles tipos de empresa de explotación de resultados. Valores:

* EBT (Empresa de base tecnológica).
* EINCNT (Empresa intensiva en conocimiento no tecnológico).



| **ATTRIBUTES** |
| --- |
| EBT : Long |
| EINCNT : Long |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source:  (Class) EmpresaCardinality:  \[0\..\*] | Target:  (Enumeration) TipoEmpresaCardinality:  \[1] |




