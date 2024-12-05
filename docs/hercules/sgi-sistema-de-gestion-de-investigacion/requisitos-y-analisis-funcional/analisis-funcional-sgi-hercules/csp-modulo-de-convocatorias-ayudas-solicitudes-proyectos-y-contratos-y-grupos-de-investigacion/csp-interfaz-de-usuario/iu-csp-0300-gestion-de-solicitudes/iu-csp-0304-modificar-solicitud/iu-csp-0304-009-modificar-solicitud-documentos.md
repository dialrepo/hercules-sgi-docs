# Hércules : IU\-CSP\-0304\-009 \- Modificar Solicitud \- Documentos



## Formulario Modificar Solicitud \- Documentos

Formulario que permite centralizar todos los documentos aportados a la solicitud.

Se mostrarán en forma de árbol los tipos de documentos  que estén definidos en la tabla "Documento Requerido Solicitud" (de "Configuración Solicitud" de la Convocatoria) y no exista ningún registro con ese tipo de documento en la tabla "Solicitud Documento" con un \* para mostrar que es un tipo de documento obligatorio y los documentos adjuntados a la solicitud registrados en al tabla "Solicitud Documento".



| Documento seleccionado | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de documentos de la solicitud | | |
| Árbol de documentos de la solicitud | Componente gráfico de árbol | El árbol de documentos se mostrará a partir de la tabla "Solicitud documento" que será la única tabla donde se almacenarán documentos de la solicitud. Cuando la solicitud se vincule a una convocatoria registrada en el SGI, se hará uso de la información almacenada en la tabla "documento requerido solicitud" referenciada a partir de la tabla "configuración solicitud" de la convocatoria con la que se vincula la solicitud. De la tabla "documento requerido solicitud" solamente se tomará la información de los tipos de documentos requeridos. Con estos se mostrará el símbolo "\*" de obligatoriedad sobre el árbol de documentos de la solicitud.Cuando la solicitud aún no dispone de documentos en la tabla "Solicitud documento" el árbol de documentos mostrará:* Si la solicitud tiene asociada una convocatoria del SGI, en la vista inicial el árbol solo mostrará los tipos de documentos que estuviesen definidos en la tabla "documento requerido solicitud" referenciada desde "configuración solicitud" de la convocatoria a la que pertenece la solicitud. Estos tipos de documentos se mostrarán con un \* para indicar al usuario que son documentos que debe adjuntar obligatoriamente. * Si la solicitud no tiene asociada una convocatoria del sGI, en la vista inicial este árbol se mostrará vacío.  Si la solicitud ya tiene documentos, es decir, ya existen registros para la solicitud en la tabla "Solicitud Documento":* Si la solicitud tiene asociada una convocatoria del SGI, se mostrarán los documentos en la estructura jerárquica de agrupación por Tipo de documento. Aquellos Tipos de documento que estuviesen identificados en la tabla "Documento requerido solicitud" referenciada desde la tabla "configuración solicitud" de la convocatoria con la que se vincula la solicitud, se mostrarán con el símbolo "\*" indicativo de obligatoriedad. * Si la solicitud no tiene asociada una convocatoria del SGI, se mostrarán los documentos con su estructura habitual, es decir, organizados por Tipo de documento.  Podrán existir documentos sin "Tipo de documento" que se mostrarán en el árbol de documentos bajo una rama genérica "sin tipo documento" |
| Datos del documento seleccionado | | |
| Nombre | TextoModo consulta | Nombre del documento |
| Tipo de documento | Texto cortoModo consulta | Nombre del tipo de documento. Procedente de la tabla "Tipo de documento" a través del identificador del tipo de documento. Los tipos disponibles serán los tipos de documento asociados a la fase de presentación de solicitudes configurada en la pantalla de "Configuración Solicitud de la Convocatoria". En caso de estar creando una solicitud no vinculada a una convocatoria del SGI o que no se haya definido dicha fase se mostrará el combo vacío.Aunque la solicitud esté vinculad a una convocatoria del SGI, no será obligatorio que un documento subido tenga obligatoriamente uno de los tipos de documentos del listado (podrá seleccionarse el valor vacío sobre él). En este caso el documento será uno de los que se visualice en el árbol bajo la rama genérica "sin tipo documento" |
| Documento | DocumentoModo consulta |  |
| Comentarios | TextoModo consulta | Comentarios sobre el documento subido |
| Editar documento | Botón | Acción modificar |
| Eliminar documento | Botón | Acción eliminar |
| Descargar | Icono de acción | Acción descargar el documento |
|  | | |
| Mensaje informativo | Texto largo | Este mensaje solo se mostrará si la solicitud cumple las dos condiciones siguientes:* Es una solicitud de RRHH (campo "formulario solicitud" de la tabla "solicitud" toma valor "rrhh") * La solicitud se encuentra en estado borrador (campo "estado" de la tabla "solicitud").  Se mostrará con los estilos de aviso informativo el siguiente mensaje "Para que la solicitud pueda ser validad por su tutor/a debe cambiar el estado de la misma a "Solicitada"". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Editar | Muestra la pantalla de Edición del documento | Muestra la pantalla [IU\-CSP\-0302\-013 \- Edición documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-016-modificar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-016-modificar-documento.md").Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |
| Eliminar | Elimina el documento de la solicitud | Elimina el documento de la vista del árbol de documento. Al dar a Guardar la solicitud se aplicará el cambio en base de datos eliminando el fichero del sistema documental y eliminando el registro de la tabla de documentos de la solicitud.Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |
| Descargar | Descargar el fichero seleccionado | Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |
| Añadir nuevo documento | Muestra la pantalla Nuevo documento | Muestra la pantalla [IU\-CSP\-0302\-014 \- Añadir documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-015-anadir-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-015-anadir-documento.md").Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todas las pestañas de la pantalla. | En caso de añadir un nuevo documento  habrá que subir dicho documento al sistema documental (ESB GDOC) y almacenar el registro en al tabla de documentos de solicitud.En caso de eliminar un documento se eliminará el fichero del sistema documental y se eliminará el registro de la tabla de documentos de  solicitud.En caso de modificar un documento, se actualizará el registro en la base de datos, pero si se modifica el fichero habrá que eliminar el anterior y subir el nuevo al sistema documentalVer precondiciones en [CU\-CSP\-1100\-001 Modificar solicitud \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md") | CSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-INV\-ER |
| Cancelar | Retorna al listado de Solicitudes sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




