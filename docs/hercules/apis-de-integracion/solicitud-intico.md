# Hércules : Solicitud INTICO



Se requiere conocer los endpoints para obtener, de Hércules el listado de personas, proyectos, artículos, patentes y líneas de investigación, así como los relativos a los datos de cada uno de los elementos. 

Recuperar la información básica:

1\) Listado de los miembros de un grupo de investigación y las líneas de investigación: documentado en detalle en  [SGI \- Grupos de investigación](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/sgi-grupos-de-investigacion.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/sgi-grupos-de-investigacion.md")

En el enlace anterior hay una lista exhaustiva de todos los disponibles. Los que creo que proporcionan la información solicitada son:



| GET | /grupos/{id} |  | Grupo | Datos generales de un Grupo |
| --- | --- | --- | --- | --- |
| GET | /proyectos/{id}/miembrosequipo |  | Lista\[GrupoEquipo] | Listado de miembros del equipo de un Grupo |
| GET | /proyectos/{id}/palabrasclave |  | Lista\[GrupoPalabraClave] | Listado de palabras clave de un Grupo |

  


2\) Listados de los proyectos del equipo, importe, fuente financiadora comienzo y fin, y sus integrantes: documentado en detalle en [Gestión proyectos](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md")

En el enlace anterior hay una lista exhaustiva de todos los disponibles. Los que creo que proporcionan la información solicitada son:



| GET | /proyectos/{id} |  | Proyecto | Datos generales de un Proyecto |
| --- | --- | --- | --- | --- |
| GET | /proyectos/{id}/contexto |  | ProyectoContexto | Datos del contexto de un Proyecto |
| GET | /proyectos/{id}/equipos |  | Lista\[ProyectoEquipo] | Listado de miembros del equipo de un Proyecto |
| GET | /proyectos/{id}/entidadgestoras |  | Lista\[ProyectoEntidadGestora] | Listado de entidades gestoras de un Proyecto |
| GET | /proyectos/{id}/entidadconvocantes |  | Lista\[ProyectoEntidadConvocante] | Listado de entidades convocantes de un Proyecto |
| GET | /proyectos/{id}/entidadfinanciadoras |  | Lista\[ProyectoEntidadFinanciadora] | Listado de entidades financiadoras de un Proyecto |
| GET | /proyectos/{id}/anulidades |  | Lista\[ProyectoAnualidadResumen] | Listado de anualidades de un Proyecto |
| GET | /proyectos/{id}/proyectoclasificaciones |  | Lista\[ProyectoClasificacion] | Listado de clasificaciones de un Proyecto |

3\) Artículos del grupo (datos básicos)

4\) Patentes: documentado en detalle en [Protección Industrial e Intelectual (Patentes)](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/proteccion-industrial-e-intelectual-patentes.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/proteccion-industrial-e-intelectual-patentes.md")

En el enlace anterior hay una lista exhaustiva de todos los disponibles. Los que creo que proporcionan la información solicitada son:



| GET | /invenciones/{id} |  | Invencion | Devuelve el detalle de la invención solicitada. |
| --- | --- | --- | --- | --- |
| GET | /invenciones/{id}/sectoresaplicacion |  | SectorAplicacion | Listado de sectores de aplicación asociados a la invención. |
|  | | | | |
| GET | /invenciones/{id}/invencion\-inventores |  | Lista\[InvencionInventor] | Listado de inventores de una invención.*Ejemplo*:/invenciones/114/invencion\-inventores |

  


  


 




