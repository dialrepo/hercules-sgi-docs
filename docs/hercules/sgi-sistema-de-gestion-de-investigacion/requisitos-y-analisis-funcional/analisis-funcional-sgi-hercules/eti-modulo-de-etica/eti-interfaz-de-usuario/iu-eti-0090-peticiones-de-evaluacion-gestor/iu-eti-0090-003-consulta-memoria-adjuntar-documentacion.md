# Hércules : IU\-ETI\-0090\-003 Consulta memoria \- Adjuntar Documentación



## Formulario de Consulta memoria

Pantalla compuesta por los siguientes formularios:

* Datos generales
* Formulario
* Documentación
* Seguimiento anual
* Seguimiento final
* Retrospectiva
* Evaluaciones
* Informes

El gestor visualizará todos las pantallas en modo consulta, excepto la de **Documentación** si tiene asignado el siguiente permiso ETI\-MEM\-EDOC.

Si tiene asignado el permiso ETI\-MEM\-V verá todas las pantallas en modo consulta (incluida la de Documentación).

### Documentación

Pantalla que muestra el formulario de documentación aportada a una memoria, a seguimiento anual, seguimiento final y/o retrospectiva. Dependiendo del permiso se podrá o no adjuntar y/o eliminar documentos a la memoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de documentos necesarios para la memoria | | |
| Tipo documento | Texto | Tipo del documento  (uno de los apartados del bloque 5 del formulario) |
| Nombre | Texto corto | Nombre del documento que le da el usuario al adjuntar el documento |
| Ver fichero | Icono de acción | Acción ver |
| Eliminar | Icono de acción | Acción eliminar |
| Documentos aportados al seguimiento anual | | |
| Texto | Texto | Dependiendo del tipo de memoria mostrar:* Adjuntar pdf de las publicaciones si se hubiesen generado con el proyecto, así como aquella documentación cuyo modelo fue aprobado por el comité (IF) y que requería firmas (por ejemplo: Autorización de Centros escolares, residenciales, deportivos, Convenios, etc.): para memorias de tipo M10 * Adjuntar pdf de las publicaciones si se hubiesen generado con el proyecto durante el primer año: para memorias de tipo M20 * Adjuntar pdf de las publicaciones si se hubiesen generado con el proyecto, así como aquella documentación cuyo modelo fue aprobado por el comité (IF) y que requería firmas (por ejemplo: MTA, Convenios, etc.): para memorias de tipo M30 |
| Listado de documentos aportados al seguimiento anual | | |
| Nombre | Texto | Nombre del documento |
| Ver fichero | Icono de acción | Acción ver |
| Eliminar | Icono de acción | Acción eliminar |
| Documentos aportados al seguimiento final | | |
| Texto | Texto | Adjuntar pdf de las publicaciones si se hubiesen generado durante el proyecto |
| Listado de documentos aportados al seguimiento final | | |
| Nombre | Texto | Nombre del documento |
| Ver fichero | Icono de acción | Acción ver |
| Eliminar | Icono de acción | Acción eliminar |
| Documentos aportados a la retrospectiva | | |
| Texto | Texto | Adjuntar la hoja de Control |
| Listado de documentos aportados a la retrospectiva | | |
| Nombre | Texto | Nombre del documento |
| Ver fichero | Icono de acción | Acción ver |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadirmemoria | Se abre la pantalla para adjuntar un documento a la memoria | Se va a la pantalla de Añadir nuevo documento [IU\-ETI\-0090\-004 Consultar Memoria \- Edición documentación \- Aportar documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0090-peticiones-de-evaluacion-gestor/iu-eti-0090-004-consultar-memoria-edicion-documentacion-aportar-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0090-peticiones-de-evaluacion-gestor/iu-eti-0090-004-consultar-memoria-edicion-documentacion-aportar-documento.md")Podrá adjuntar documentos si el estado de la memoria es igual o superior al estado "EN EVALUACIÓN" | ETI\-MEM\-EDOC |
| Ver fichero | Se visualiza el documento almacenado. |  | ETI\-MEM\-EDOC |
| Eliminar memoria | Se elimina el documento | Podrá eliminar documentos si el estado de la memoria es igual o superior al estado "EN EVALUACIÓN" | ETI\-MEM\-EDOC |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar la Memoria con la información introducida en el formulario.Al guardar una memoria se guardar la información de todos los apartados de definición de la memoria. | En caso de añadir un nuevo documento habrá que subir dicho documento al sistema documental (ESB GDOC) y almacenar el registro en al tabla de documentos de la memoria.En caso de eliminar un documento se eliminará el fichero del sistema documental y se eliminará el registro de la tabla de documentos de la memoria. | ETI\-MEM\-EDOC |
| Cancelar | Retorna al listado de peticiones de evaluación . |  |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso




