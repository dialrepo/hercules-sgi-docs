# Hércules : IU\-GEN\-0061\-UM \- Formulario Solicitar alta de persona







## Formulario Solicitar alta de persona para UM

Pantalla que muestra el formulario con los datos identificados como necesarios o de interés para la Universidad de Murcia a la hora de solicitar el alta de una persona en sus sistemas. Es por tanto un planteamiento a medida para UM del formulario [IU\-GEN\-0061\- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md") que podría llegar a implementarse a futuro como común al SGI.

Se abrirá en una ventana emergente o popup desde el popup de búsqueda de empresas [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md").



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **Datos Generales** | | |
| Nombre | TextoObligatorio | Nombre propio de la persona. |
| Apellidos | TextoObligatorio | Apellidos de la persona. |
| Tipo de documento | SelectorTextoObligatorio | Tipo de documento de identificación personal de la persona.Se cargará un listado de tipos de documentos de identificación personal de los que seleccionar uno. Recuperados a través de [REQ\-INT\-0020\-SGP\-0015 \- Listar tipos de documento de identificación personal.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0015-listar-tipos-de-documento-de-identificacion-personal.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0015-listar-tipos-de-documento-de-identificacion-personal.md") |
| Número de documento | TextoObligatorio | Número de documento de identificación de la persona del tipo indicado en "Tipo de documento". |
| Sexo | SelectorTexto cortoObligatorio | Sexo de la persona. Se cargará un listado de sexos de los que seleccionar uno. Recuperados a través de [REQ\-INT\-0020\-SGP\-0014 \- Listar sexos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md"). |
| **Datos Personales** | | |
| Fecha de nacimiento | FechaOpcional | Fecha de nacimiento de la persona. |
| País de nacimiento | SelectorTextoOpcional | Listado de países de los que seleccionar el país de nacimiento de la persona. Recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0060 \- Listar países](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0060-listar-paises.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0060-listar-paises.md") |
| C. Autón./Reg. de nacimiento | SelectorTextoOpcional | Listado de comunidades autónomas o regiones (o equivalente) de las que seleccionar la de nacimiento de la persona. Se cargará con valores, recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0070 \- Listar comunidades autónomas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0070-listar-comunidades-autonomas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0070-listar-comunidades-autonomas.md"), solo si previamente se ha seleccionado un país de nacimiento, en otro caso, estará vacío. |
| Ciudad de nacimiento | TextoOpcional | Ciudad de nacimiento de la persona. |
| **Datos de Vinculación** | | |
| Entidad externa | TextoOpcional | Campo de búsqueda de empresas/entidades en los sistemas de la Universidad. Permitirá seleccionar una empresa/entidad a la que vincular la persona en caso o además de que ésta esté vinculada con la propia universidad. A través del botón Buscar se dará acceso al buscador común a todo el SGI [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md") que cumple con el requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md")Si la empresa buscada no existe, se podrá solicitar darla de alta, cumpliendo con el requisito de integración [REQ\-INT\-0015\-SGEMP\-0040 \- Solicitar alta de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0040-solicitar-alta-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0040-solicitar-alta-de-empresa.md"). |
| **Datos de Contacto** | | |
| *Domicilio* | | |
| Tipo de vía | TextoSelectorObligatorio | Tipo de vía de la dirección de contacto de la persona.Se cargará un listado de tipos de vía de los que seleccionar el tipo de vía de la dirección de contacto de la persona. Recuperados a partir del servicio a medida del API [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| Nombre de vía | TextoObligatorio | Dirección de contacto de la persona. |
| Número | Texto cortoOpcional | Número dentro de la vía de la dirección de contacto de la persona. |
| Ampliación | TextoOpcional | Campo libre para la ampliación de la información de dirección de contacto de la persona. |
| País de dirección de contacto | SelectorTextoOpcional | Listado de países de los que seleccionar el país de la dirección de contacto de la persona. Recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0060 \- Listar países](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0060-listar-paises.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0060-listar-paises.md"). |
| C. Autón./Reg. de dirección de contacto | SelectorTextoOpcional | Listado de comunidades autónomas o regiones (o equivalente) de las que seleccionar la de la dirección de contacto de la persona. Se cargará con valores, recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0070 \- Listar comunidades autónomas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0070-listar-comunidades-autonomas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0070-listar-comunidades-autonomas.md"), solo si previamente se ha seleccionado un país de dirección de contacto, en otro caso, estará vacío. |
| Provincia de dirección de contacto | SelectorTextoOpcional | Listado de comunidades provincias de las que seleccionar la de la dirección de contacto de la persona. Se cargará con valores, recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0080 \- Listar provincias](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0030-SGO-0080+-+Listar+provincias "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0030-SGO-0080+-+Listar+provincias"), solo si previamente se ha seleccionado una comunidad autónoma o región de contacto, en otro caso, estará vacío. |
| Código postal de dirección de contacto | TextoOpcional | Código postal de la dirección de contacto de la persona. |
| Ciudad de dirección de contacto | TextoOpcional | Ciudad de la dirección de contacto de la persona. |
| *Listado de teléfonos de contacto \- Opcional* | | |
| Teléfonos | Texto | Lista de teléfonos de contacto de la persona. |
| Borrar | Icono de acción | Acción "borrar (teléfono)" |
| Teléfono | Texto | Teléfono que se quiere añadir a la lista de teléfonos de contacto de la persona. |
| Añadir teléfono | Icono de acción | Acción "añadir teléfono" |
| *Listado de emails de contacto *\- Opcional** | | |
| Emails | Texto | Lista de emails de contacto de la persona. |
| Borrar | Icono de acción | Acción "borrar (email)" |
| Email | Texto | Email que se quiere añadir a la lista de emails de contacto de la persona. |
| Añadir email | Icono de acción | Acción "añadir email" |



| Acciones | Descripción | Permisos |
| --- | --- | --- |
| Buscar (Entidad externa) | Muestra la pantalla de búsqueda para seleccionar la empresa a asociar a la persona.El buscador de empresas será común a todo el SGI, [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md") ,  quedando resuelto por medio del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0015-SGEMP-0020+-+Buscar+empresa "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0015-SGEMP-0020+-+Buscar+empresa"). | ESB\-EMP\-V |
| Solicitar alta | Se solicita el alta de la persona a partir de los datos introducidos.Validaciones de obligatoriedad:* Nombre * Apellidos * Tipo de documento * Número de documento * Sexo * Tipo de vía * Nombre de vía  A partir de los datos introducidos se invocará al servicio de integración del ESB que resolverá la solicitud de alta de persona [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md"). | ESB\-PER\-C |
| Cancelar | No se realiza ninguna operación y se cierra el popup dejando al usuario en el popup de búsqueda de personas [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"). |  |







### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso







