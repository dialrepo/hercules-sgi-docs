# Hércules : IU\-CSP\-0201\-014 \- Crear convocatoria \- Configuración de solicitudes



## Formulario  Crear convocatoria \- Configuración de solicitudes

La información de una convocatoria estará distribuida en los siguientes apartados:

* Datos generales
* Entidades convocantes
* Entidades financiadoras
* Enlaces
* Fases
* Periodos justificación
* Seguimiento científico
* Hitos
* Documentos
* Requisitos IP
* Requisitos Equipo
* Elegibilidad
* **Configuración de solicitudes**

### Configuración de solicitudes

En este apartado se recogerán todos los parámetros relativos a la configuración de las solicitudes. Esta información se aislará de los datos de la convocatoria para que las convocatorias puedan tener un tratamiento genérico.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| ¿Habilitar presentación de solicitudes en SGI? | SelectorBooleanoValores: Sí, NoOpcional (es obligatorio para pasar al estado Registrada) | Indica la habilitación o no del registro de solicitudes a través del SGI para el personal investigador ACT\- CSP\-001\-Investigador.Tomará los valores Sí/No. |
| Seleccione plazo de presentación de solicitudes | SelectorTexto cortoObligatorio si se ha seleccionado en "¿Habilitar presentación de solicitudes en SGI?" la opción "Sí" | Listado de fases de la convocatoria. Las definidas en la pantalla de Fases y Plazos de la convocatoria |
| Fecha de inicio | Fecha \+ HoraConsulta | Fecha de inicio del plazo seleccionado para la presentación de solicitudes.Se muestra en modo consulta. Formato Fecha \+ Hora.Se obtiene directamente de la fecha de inicio indicada en el apartado "Fases" para la fase seleccionada en el campo "Seleccione plazo de presentación de solicitudes". |
| Fecha de fin | Fecha \+ HoraConsulta | Fecha de fin del plazo seleccionado para la presentación de solicitudes. Se muestra en modo consulta. Formato Fecha \+ Hora.Se obtiene directamente de la fecha de fin indicada en el apartado "Fases" para la fase seleccionada en el campo "Seleccione plazo de presentación de solicitudes". |
| Documentos requeridos: documentos que se solicitarán de forma obligatoria al cumplimentar la solicitud en el SGI | | |
| Nombre | Texto | Nombre del tipo de documento. Procedente de la tabla "Tipo de documento" a través del identificador del tipo de documento. |
| Descripción | Texto | Descripción del tipo de documento. Procedente de la tabla "Tipo de documento" a través del identificador del tipo de documento |
| Observaciones | Texto | Indicaciones u observaciones sobre el documento solicitado |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |
| Importe máximo a conceder en la solicitud | EconómicoOpcional | Importe máximo a conceder en la solicitud |

### Acciones



| Acción | Descripción | Enlace CU | Permisos |
| --- | --- | --- | --- |
| Editar documento requerido | Modifica los datos de un documento requerido | Muestra la ventana [IU\-CSP\-0202\-014 \- Añadir documento requerido](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0202-014-anadir-documento-requerido.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0202-014-anadir-documento-requerido.md") en modo edición | CSP\-CON\-CCSP\-CON\-C\_UO |
| Eliminar documento requeridos | Elimina el documento requerido | Elimina el registro de la tabla de Documentos requeridos de la convocatoria | CSP\-CON\-CCSP\-CON\-C\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir documento requerido | Inserta un nuevo documento requerido a la convocatoria | Muestra la ventana para añadir un nuevo documento [IU\-CSP\-0202\-014 \- Añadir documento requerido](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0202-014-anadir-documento-requerido.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0202-014-anadir-documento-requerido.md") | CSP\-CON\-CCSP\-CON\-C\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Convocatoria con la información introducida en el formulario.Al guardar una convocatoria se guardar la información de todas las pestañas de la pantalla. | Si el campo "Habilitar presentación de solicitudes en SGI" toma valor "Sí", deberá de seleccionarse un valor sobre el desplegable "Seleccione plazo de presentación de solicitudes". Se recuperarán las fechas de inicio y fin especificadas en la relación "Convocatoria Fase" y se rellenarán con su valor los campos del formulario "Fecha de inicio" y "Fecha de fin" de presentación de la solicitud. Ambos campos se mostrarán en formato "solo lectura". | CSP\-CON\-CCSP\-CON\-C\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




