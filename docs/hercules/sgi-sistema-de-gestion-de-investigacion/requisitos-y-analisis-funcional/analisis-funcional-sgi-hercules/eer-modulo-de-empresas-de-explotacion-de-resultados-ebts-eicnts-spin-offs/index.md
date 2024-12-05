# Hércules : EER \- Módulo de empresas de explotación de resultados (EBTs, EICNTs, Spin\-offs)



## Modelo de dominio

![](/attachments/597853839/597874934.png)

Módulo de empresas de explotación de resultados para que desde la OTRI gestionen las empresas, tanto de base tecnológica (**EBT**s) como las intensivas de conocimiento no tecnológico (**EINCNT**s), así como la transferencia tecnológica.

El proceso se inicia cuando la OTRI recibe el documento de Solicitud de creación o de Solicitud de incorporación a una empresa.

El Gestor (ACT\-EER\-001\-Gestor) de la OTRI crea la empresa con los datos del documento e irá añadiendo la información del proceso de decisión de si se lleva a cabo la creación o incorporación.

Se puede gestionar todos los aspectos de la empresa durante toda la vida de la misma (documentación, equipo empresarial, ...).

## Descripción funcional

Desde el punto de vista de la OTRI no hay diferencias entre el personal a nivel de permisos en este módulo. Todos los usuarios con permiso para acceder al mismo son rol Gestor (ACT\-EER\-001\-Gestor)

### Flujo general

![](/attachments/597853839/597874853.png)

  


Al acceder al módulo se listan las empresas creadas ya en el sistema y se puede además filtrar esa lista buscando por los campos más relevantes. Se puede crear una empresa nueva o acceder y modificar los datos de una ya existente.

Al añadir una empresa, lo primero que ve el usuario es la sección de "Datos generales". Las secciones disponibles en el formulario en su orden lógico son las siguientes.  


### Secciones del formulario

#### Datos generales

Datos generales de la empresa proporcionados en el documento de solicitud.  


Los campos de este apartado son:

* **Fecha de la solicitud**. Campo de tipo fecha, obligatorio.
* **Solicitante**. Persona de la Universidad que hace la solicitud, obligatorio.
* **Tipo de empresa**. Desplegable obligatorio.
	+ EBT: empresa de base tecnológica, es una empresa que se crea para explotar un resultado surgido de la actividad investigadora de la universidad. Normalmente estos resultados son invenciones de PII.
	+ EINCNT: empresa intensiva en conocimiento no tecnológico, es una empresa que se crea para explotar el conocimiento adquirido de la activad de investigación universitaria. En este caso no se explota una patente sino un conocimiento, un know\-how. Normalmente estos resultados son invenciones de PII.
* **Estado**. Desplegable obligatorio.  

	+ En tramitación. Cuando se empieza a tramitar el expediente pero aún no se puede considerar la empresa como tal.
	+ No aprobada. Ha sido rechazada la solicitud por algún estamento de la Universidad.
	+ Activa. Es cuando ya se ha producido la aprobación del Consejo de Gobierno (CG) y la firma de la escritura (bien de incorporación, bien de constitución). Para poder poner este estado, ha de tener asociada una Entidad que esté dada de alta en la Universidad.
	+ Sin actividad. Cuando aún no se ha disuelto pero el negocio está parado, aunque podría reactivarse.
	+ Disuelta. Con fecha de cese incluida.
* **Nombre / Razón social**. Nombre o razón social de la empresa que se podrá rellenar, a modo informativo, previo a su asociación con una entidad de la Universidad a través del campo Entidad, ya que, en ese caso, este dato del nombre sería el de la propia entidad (empresa) vinculada a la empresa de explotación de resultados. Obligatorio.
* **Entidad**. Entidad empresa creada en los sistemas de la Universidad ya con su CIF y Razón social propios y que se podrá asociar a la Empresa de Explotación de Resultados del SGI, significando esto que son la misma empresa, si bien en el SGI se gestionan datos adicionales acerca de la misma a los gestionados en la Universidad. Opcional.
* **Objeto social**. Campo de texto largo, obligatorio.
* **Conocimiento/Tecnología**. Campo de texto largo, obligatorio. Si el tipo de empresa es EBT, se hará referencia a este campo como "Tecnología" y si es de tipo EINCNT, como "Conocimiento".
* **Número de protocolo**. Campo de texto para el número de la notaría asociado a la constitución o a la incorporación, opcional.
* **Notario**. Campo de texto para los datos del notario, opcional.
* **Fecha de constitución**. Campo de tipo fecha, opcional.
* **Fecha de aprobación en Consejo de Gobierno**. Campo de tipo fecha, opcional. Es la fecha de la creación del a empresa o de la aprobación en Consejo de Gobierno de la Universidad de la incorporación de la Universidad a la misma.
* **Fecha de incorporación**. Fecha de firma de la escritura notarial de incorporación de la Universidad. Campo de tipo fecha, opcional.
* **Fecha de desvinculación** (de la Universidad). Campo de tipo fecha, opcional.
* **Fecha de cese**. Campo de tipo fecha, opcional.

#### Documentos

Sección en la que el usuario puede ver, modificar y adjuntar documentación de diferente naturaleza asociada a la empresa.

Los campos de los que dispondrán los documentos serán comunes:

* **Nombre**. Nombre identificativo del documento, obligatorio.
* **Tipo**. Desplegable, opcional. Tendrá los siguientes valores posibles por defecto, si bien se podrán modificar/eliminar o incorporar otros nuevos en cada Universidad:  

	+ Documentos procedimiento
	+ Documentos corporativos
	+ Estatutos Sociales
* **Subtipo**: Desplegable, opcional. Tendrá diferentes valores en función del tipo seleccionado.
* **Documento**. Campo para subir el fichero que representa el documento. Obligatorio.
* **Comentarios**. Campo de texto largo, opcional.

Se podrá incorporar cualquier otro documento aunque no encaje en ninguna de estas tipologías, estando en este caso clasificado como "Sin tipo de documento".

Cada documento puede ser **visualizado**, **modificado** **descargado** o **borrado**.

##### Documentos procedimiento

Sección, dentro de la sección en forma de árbol **Documentos**, en la que el usuario puedever, modificar y adjuntar documentaciónrelativa al procedimiento que se genera antes de la aprobación de la solicitud.

Este tipo de documentos tendrá los siguientes valores de subtipo posibles por defecto, si bien se podrán modificar/eliminar o incorporar otros nuevos en cada Universidad:

* Solicitud de creación
* Solicitud de incorporación
* Informe de viabilidad de la OTRI
* Informe de valoración de la tecnología o conocimiento
* Informe económico del Área de Gestión Económica
* Informe jurídico de la Asesoría Jurídica
* Informe de Control Interno o Intervención
* Informe Consejo Social
* Informe aprobación o no del Consejo de Gobierno
* Estatutos de la compañía
* Plan de negocio
* Pactos sociales

Se podrá incorporar cualquier otro documento aunque no encaje en ninguna de estas subtipologías, estando en este caso clasificado como "Sin subtipo de documento".

##### Documentos corporativos

Sección, dentro de la sección en forma de árbol **Documentos**, en la que el usuario puedever, modificar y adjuntar documentaciónrelativa a la actividad de la empresa que se genera a partir de la aprobación de la solicitud.

Este tipo de documentos tendrá los siguientes valores de subtipo posibles por defecto, si bien se podrán modificar/eliminar o incorporar otros nuevos en cada Universidad:

* Informe anual de cuentas.
* Acta de reunión.

Se podrá incorporar cualquier otro documento aunque no encaje en ninguna de estas subtipologías, estando en este caso clasificado como "Sin subtipo de documento".

##### Estatutos sociales

Sección, dentro de la sección en forma de árbol **Documentos**, en la que el usuario puedever, modificar y adjuntar documentaciónrelativa a los cambios de los estatutos sociales de la empresa. 

Este tipo de documentos tendrá los siguientes valores de subtipo posibles por defecto, si bien se podrán modificar/eliminar o incorporar otros nuevos en cada Universidad:

* Modificación de composición de sociedad

Se podrá incorporar cualquier otro documento aunque no encaje en ninguna de estas subtipologías, estando en este caso clasificado como "Sin subtipo de documento".

#### Equipo empresarial

En este bloque el usuario dispondrá de toda la información relativa al equipo de personas y de entidades que de una u otra forma están relacionadas con la empresa en cuanto a su constitución, su participación en la sociedad o su administración, esto es:

* **Equipo emprendedor**: conjunto de personas que desempeñan la función de ser los que emprendieron en su origen la constitución de la Empresa de Explotación de Resultados.
* **Composición sociedad**: conjunto de entidades que tienen participación en la Empresa de Explotación de Resultados.
* **Administración sociedad**: conjunto de personas que desempeñan la función de administración de la Empresa de Explotación de Resultados.

##### Equipo emprendedor

En esta sección el usuario puede ver el listado de personas que componen el equipo emprendedor de la empresa.

La información que se presentará de cada persona en este listado es: **nombre**, **apellidos**, **email/s**, **categoría** y **entidad**, información toda ella obtenida desde los sistemas de la Universidad. 

Cada registro que asocia una persona con la empresa puede ser **visualizado** y **borrado**.

También se podrán asociar nuevas personas a la empresa como parte del equipo emprendedor, siendo siempre personas que se encuentren dadas de alta en los sistemas de la Universidad.   


##### Composición sociedad

En esta sección se muestran los miembros de la composición societaria de la empresa. Son entidades (empresas) o personas que participan en la sociedad. 

La información que se presentará de cada persona o entidad en este listado es: un nombre identificativo del **miembro** de la **sociedad** (nombre\+apellidos en el caso de personas y nombre en el caso de entidades), se obtendrá desde los sistemas de la Universidad, **fecha de inicio** y **fecha de fin**  de su participación en la sociedad , **% de participación**, **capital social**y **tipo de aportación**, se obtendrán del propio SGI.

Cada registro que asocia una persona o una entidad con la empresa puede ser **modificado**, **visualizado** y **borrado**.

También se podrán asociar nuevas personas y/o entidades a la empresa como miembros de al sociedad, siendo siempre personas y/o entidades que se encuentren dadas de alta en los sistemas de la Universidad. 

Por cada miembro de la sociedad se podrán introducir adicionalmente estos datos de los que no se dispone en los sistemas de la Universidad:

* **% Participación**. Campo de numérico de 1 a 100, obligatorio. Porcentaje de participación de la persona o entidad en la sociedad.
* **Capital social**. Campo de numérico, opcional. Capital que aporta la persona o entidad a la sociedad.
* **Tipo de aportación**. Desplegable de tipos, obligatorio:
	+ Dineraria
	+ No dineraria
* **Fecha de inicio**. Campo fecha, obligatorio. Fecha de inicio de la participación en la sociedad de la persona o entidad.
* **Fecha de fin**. Campo fecha, opcional. Fecha de fin de la participación en la sociedad de la persona o entidad.

##### Administración sociedad

En esta sección se muestra la composición de la administración de la empresa. Son personas que se encargarán de la administración de la empresa.

La información que se presentará de cada persona en este listado es: **tipo de administración**, se obtendrá del propio SGI, **nombre**, **apellidos**, **email/s**, **entidad**, información obtenida desde los sistemas de la Universidad y **fecha de inicio** y **fecha de fin** de su labor de administración, obtenida del SGI.   


Cada registro puede ser **visualizado**, **modificado** y **borrado**.

También se podrán asociar nuevas personas a la empresa como parte de la administración de la sociedad, siendo siempre personas que se encuentren dadas de alta en los sistemas de la Universidad. 

Por cada miembro de la administración de la sociedad se podrán introducir adicionalmente estos datos de los que no se dispone en los sistemas de la Universidad:

* **Tipo de administración**. Desplegable de tipos de administración, obligatorio:  

	+ Administrador único (1 persona)
	+ Administrador solidario (2 personas o más)
	+ Administrador mancomunado (2 personas o más)
	+ Consejo de administración (3 personas o más)
* **Fecha de inicio**. Campo fecha, obligatorio. Fecha de inicio de la labor de administración del tipo indicado en el campo "Tipo de administración" de la persona.
* **Fecha de fin**. Campo fecha, opcional. Fecha de fin de la labor de administración del tipo indicado en el campo "Tipo de administración" de la persona.

## Comunicados

No se identifican.

## Informes

No se identifican.

## Procesos

No se identifican.

## Integraciones

* Personas para:
	+ Solicitante
	+ Equipo emprendedor.
	+ Composición de la sociedad.
	+ Administración.
* Entidades (empresas) para:
	+ Composición de la sociedad

## Modelo lógico

![](/attachments/597852950/597855395.png)




