# Hércules : SGI.



## [Proceso 1 : Segmentación y generación automática de boletines informativos](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-1-segmentacion-y-generacion-automatica-de-boletines-informativos/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-1-segmentacion-y-generacion-automatica-de-boletines-informativos/index.md")

### [Convocatorias](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/convocatorias.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/convocatorias.md")



| GET | /sgicsp/convocatorias |
| --- | --- |
| GET | /sgicsp/convocatoriaentidadconvocantes |

### [Gestión proyectos](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/gestion-proyectos.md")

Para la obtención de proyectos y contratos, se utiliza el siguiente método:



| GET | /sgicsp/proyectos |
| --- | --- |
| GET | /sgicsp/proyectos/{id}/presupuestos\-totales |
| GET | /sgicsp/proyectos/{id}/equipos |
| GET | /sgicsp/proyectos/{id}/entidadconvocantes |
| GET | /sgicsp/convocatorias/{id} |

### Tesis

Para la obtención de las tesis doctorales se utiliza el módulo SGP del SGI, en este servicio SGI realiza la función de proxy.



| GET | /sgp/direccion\-tesis |
| --- | --- |

### [Sistema de gestión económica de protección industrial e intelectual](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual.md")

Para la obtención de las invenciones, definidas en SGI como protección industrial e intelectual, se utiliza el módulo SGIPII.



| GET | /sgipii/invenciones |
| --- | --- |
| GET | /sgipii/invenciones/{id}/invencion\-inventores |
| GET | /sgipii/periodostitularidad/{id}/titulares |
| GET | /sgipii/invenciones/{id}/solicitudesproteccion |

  


Además, también se utilizan los siguientes sistemas:

* [Sistema de gestión de personas](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-personas.md")
* [Sistema de gestión de empresas](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-empresas.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-expone/sistema-de-gestion-de-empresas.md")

Para obtener la información relacionada con personas y empresas.

## [Proceso 3 : Automatización de procesos de gestiones documentales parametrizables](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md")

### [Convocatorias](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/convocatorias.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/convocatorias.md")

Para la inyección de convocatorias en el SGI utilizamos los siguientes módulos SGICSP y SGIEMP:



| POST | /sgicsp/convocatorias |
| --- | --- |
| GET | /sgemp/empresas |
| POST | /sgicsp/convocatoriaentidadconvocantes |
| POST | /sgicsp/convocatoriaentidadfinanciadoras |

### [Solicitudes](https://confluence.um.es/confluence/display/HERCULES/Solicitudes "https://confluence.um.es/confluence/display/HERCULES/Solicitudes")

Para la consulta y el filtrado de solicitudes utilizamos los siguientes módulos SGICSP y SGP:



| GET | /sgicsp/solicitudes |
| --- | --- |
| GET | /sgp/personas/ |

## [Proceso 4 : Sistemas Inteligentes de encaje entre convocatorias e investigadores](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-4-sistemas-inteligentes-de-encaje-entre-convocatorias-e-investigadores/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-4-sistemas-inteligentes-de-encaje-entre-convocatorias-e-investigadores/index.md")

### [Convocatorias](/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/convocatorias.md "/hercules/apis-de-integracion/sgi-servicios-propios-que-expone/convocatorias.md")



| GET | /sgicsp/convocatorias |
| --- | --- |
| GET | /sgicsp/convocatorias/{id}/convocatoriaentidadconvocantes |
| GET | /sgicsp/convocatorias/{id}/convocatoriaentidadfinanciadoras |
| GET | /sgicsp/convocatorias/{id}/convocatoriaareastematicas |

### [Solicitudes](https://confluence.um.es/confluence/display/HERCULES/Solicitudes "https://confluence.um.es/confluence/display/HERCULES/Solicitudes")



| GET | /sgicsp/solicitudes |
| --- | --- |
| GET | /sgp/personas/ |

  


  





