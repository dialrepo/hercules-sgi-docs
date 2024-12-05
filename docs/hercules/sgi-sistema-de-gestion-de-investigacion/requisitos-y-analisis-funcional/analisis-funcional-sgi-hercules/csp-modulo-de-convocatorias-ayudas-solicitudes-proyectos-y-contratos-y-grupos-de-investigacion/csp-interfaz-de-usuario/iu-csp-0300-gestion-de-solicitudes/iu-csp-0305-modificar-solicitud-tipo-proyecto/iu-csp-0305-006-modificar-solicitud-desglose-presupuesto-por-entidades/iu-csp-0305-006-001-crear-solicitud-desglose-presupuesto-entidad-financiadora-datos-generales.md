# Hércules : IU\-CSP\-0305\-006\-001 \- Crear solicitud \- Desglose presupuesto \- Entidad financiadora \- Datos generales



## Formulario Crear solicitud \- Desglose presupuesto \- Entidad financiadora \- Datos generales

Formulario que permitirá mostrar los datos generales de la entidad financiadora de la convocatoria.

  




| Si es una entidad financiadora de la convocatoria o es ajena a la convocatoria (campo  "convocatoriaEntidadFinanciadora" o "solicitudProyectoEntidadFinanciadoraAjena" informados de la tabla "SolicitudProyectoEntidad")Si es la entidad gestora (campo  "convocatoriaEntidadGestora"  informado de la tabla "SolicitudProyectoEntidad"): | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Nombre | TextoModo consulta | Nombre de la entidad financiadora, empresa u organismo que financia la convocatoria. El dato será recuperado a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| Nº identificación | Texto cortoModo consulta | Número de identificación fiscal de la entidad financiadora, empresa u organismo que financia la convocatoria.  El dato será recuperado a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| Fuente financiación | Texto cortoModo consulta | Fuente de la financiación de la entidad financiadora de la convocatoriaSe mostrará en los siguientes casos:* El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Por entidad" y se corresponda con el de una entidad financiadora de la convocatoria  (campo  "convocatoriaEntidadFinacidora"  informado de la tabla "SolicitudProyectoEntidad") o ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad") * El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con una entidad ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad")  No se mostrará cuando el campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con el de la entidad gestora de la convocatoria (campo  "convocatoriaEntidadGestora"  informado de la tabla "SolicitudProyectoEntidad") |
| Ámbito | Texto cortoModo consulta | Ámbito geográfico de la entidad financiadora de la convocatoriaSe mostrará en los siguientes casos:* El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Por entidad" y se corresponda con el de una entidad financiadora de la convocatoria  (campo  "convocatoriaEntidadFinacidora"  informado de la tabla "SolicitudProyectoEntidad") o ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad") * El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con una entidad ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad")  No se mostrará cuando el campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con el de la entidad gestora de la convocatoria (campo  "convocatoriaEntidadGestora"  informado de la tabla "SolicitudProyectoEntidad") |
| Tipo financiación | Texto cortoModo consulta | Tipo de financiación de la entidad financiadora de la convocatoriaSe mostrará en los siguientes casos:* El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Por entidad" y se corresponda con el de una entidad financiadora de la convocatoria  (campo  "convocatoriaEntidadFinacidora"  informado de la tabla "SolicitudProyectoEntidad") o ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad") * El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con una entidad ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad")  No se mostrará cuando el campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con el de la entidad gestora de la convocatoria (campo  "convocatoriaEntidadGestora"  informado de la tabla "SolicitudProyectoEntidad") |
| Porcentaje financiación | Numérico PorcentajeModo consulta | Porcentaje de financiación de la entidad financiadora de la convocatoriaSe mostrará en los siguientes casos:* El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Por entidad" y se corresponda con el de una entidad financiadora de la convocatoria  (campo  "convocatoriaEntidadFinacidora"  informado de la tabla "SolicitudProyectoEntidad") o ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad") * El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con una entidad ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad")  No se mostrará cuando el campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con el de la entidad gestora de la convocatoria (campo  "convocatoriaEntidadGestora"  informado de la tabla "SolicitudProyectoEntidad") |
| Importe financiación | EconómicoModo consulta | Importe de financiación de la entidad financiadora de la convocatoriaSe mostrará en los siguientes casos:* El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Por entidad" y se corresponda con el de una entidad financiadora de la convocatoria  (campo  "convocatoriaEntidadFinacidora"  informado de la tabla "SolicitudProyectoEntidad") o ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad") * El campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con una entidad ajena (campo  "SolicitudProyectoEntidadFinanciadoraAjena"  informado de la tabla "SolicitudProyectoEntidad")  No se mostrará cuando el campo "Tipo de desglose de presupuesto" de la pestaña de "Datos generales" tiene el valor "Mixto" y se corresponda con el de la entidad gestora de la convocatoria (campo  "convocatoriaEntidadGestora"  informado de la tabla "SolicitudProyectoEntidad") |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
|  |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Al guardar una entidad financiadora se guardar la información de todos los apartados de definición de la entidad. |  |
| Cancelar | Retorna al listado de Entidades financiadoras sin salvar los posibles cambios.Al cancelar una entidad se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

  
  
  
  
  
  





