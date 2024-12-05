# Hércules : REQ\-INT\-0060\-EDMA\-CVN\-0005 \- Detalle Proyecto







### Definición y objetivos

El SGI deberá disponer de una función o varias que permita al módulo de CVN (parte del sistema EDMA) consultar el detalle de un proyecto.

### Descripción integración

Parámetros de entrada:

* Identificador del proyecto. Identificador interno del proyecto.

Parámetros de salida:

* Identificador del proyecto. Identificador interno del proyecto. (Se obtiene de la entidad Proyecto)
* Nombre del proyecto (Se obtiene de la entidad Proyecto)
* Fecha de inicio (Se obtiene de la entidad Proyecto)
* Fecha de finalización (Se obtiene de la entidad Proyecto)
* Ámbito geográfico  (Se obtiene de la entidad Proyecto)
* Cod. según financiadora (Se obtiene de la entidad Proyecto)
* Tipo de proyecto (Se obtiene de la entidad Proyecto)
* Resultados relevantes (Se obtiene de la entidad ContextoProyecto)
* Listado de miembros del equipo (Se obtiene de la entidad ProyectoEquipo)
* Entidad gestora (Se obtiene de la entidad ProyectoEntidadGestora)
* Listado de entidades convocantes  (Se obtiene de la entidad ProyectoEntidadConvocante)
* Listado de entidades financiadoras (Se obtiene de la entidad ProyectoEntidadFinanciadora)
* Listado de clasificaciones (Se obtiene de la entidad ProyectoClasificacion)
* Listado de anualidades (Se obtiene de la entidad ProyectoAnualidadResumen)
* Listado de notificaciones de proyectos externos del CVN asociados al proyecto (Se obtiene de la entidad NotificacionProyectoExternoCVN)

  


### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño del API  [ESB \- SGI \- Proyectos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-proyectos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-proyectos.md")  


La forma de recuperar el detalle de un proyecto al ser una entidad compleja es a partir de varios servicios:

* GET /proyectos/{id}
* GET /proyectos/{id}/contexto
* GET /proyectos/{id}/equipos
* GET /proyectos/{id}/entidadgestoras
* GET /proyectos/{id}/entidadconvocantes
* GET /proyectos/{id}/entidadfinanciadoras
* GET /proyectos/{id}/proyectoclasificaciones
* GET /proyectos/{id}/anualidades
* GET /proyectos/{id}/notificacionesproyectos

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









  








