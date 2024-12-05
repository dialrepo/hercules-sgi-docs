# Hércules : PRC \- Comunicados



### Cuestiones generales

La descripción general de la operativa de Comunicados del SGI se incluye aquí: [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md").

En este apartado se describen los comunicados específicos generadas por el módulo de Ética.

Los elementos del Asunto y Contenido email escritos en negrita y con sintaxis "especial" (p.ej. **NOMBRE\_EPIGRAFE**) se corresponden con parámetros o valores variables dentro de dichos textos.

En la siguiente página del diseño se define a qué campos de BBDD o valores corresponde cada una de las variables [COM \- Variables en textos y traducciones al modelo físico](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-com/com-variables-en-textos-y-traducciones-al-modelo-fisico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-com/com-variables-en-textos-y-traducciones-al-modelo-fisico.md") así como el cómo se comprueban a más a bajo nivel algunas de las condiciones de generación de los mismos (qué campos concretos comprobar) o cómo se puede hacer la resolución de destinatarios (IPs, responsables económicos, ...).

### Comunicados no personalizables por el usuario (automáticos)

#### **Validar item nuevo/modificado**



| Destinatarios | Generado por | Fecha de envío | Pantalla que lo origina | **Asunto email** | **Contenido email** |
| --- | --- | --- | --- | --- | --- |
| Los investigadores principales y las personas autorizadas de los grupos de investigación encargados de validar/rechazar el item. | El SGI de manera automática al recibir a través del API el alta o la modificación de un item de producción científica. | Momento en que se recibe la notificación del alta.Momento en que se recibe la notificación de la modificación. | No dispone de IU que lo origine, sino que se generará al recibirse el alta/modificación de items a través del API:[PRC \- Servicios API\#Creaci%C3%B3ndeitemdeProducci%C3%B3ncient%C3%ADfica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-prc/prc-servicios-api.md#PRCServiciosAPI-Creaci%C3%B3ndeitemdeProducci%C3%B3ncient%C3%ADfica "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-prc/prc-servicios-api.md#PRCServiciosAPI-Creaci%C3%B3ndeitemdeProducci%C3%B3ncient%C3%ADfica") | Nuevo item de tipo "**NOMBRE\_EPIGRAFE**" disponible para su validación. | Estimado/a investigador/a,le informamos que dispone de un nuevo item de tipo "**NOMBRE\_EPIGRAFE**" con título/nombre **TITULO\_ITEM** y **FECHA\_ITEM**  que precisa de su validación para poder realizar la baremación sobre él. |

#### **Finalizado proceso de baremación**



| Destinatarios | Generado por | Fecha de envío | Pantalla que lo origina | **Asunto email** | **Contenido email** |
| --- | --- | --- | --- | --- | --- |
| Destinatarios preconfigurados. | El gestor lanzará el proceso de baremación de una convocatoria y el proceso en sí generará el comunicado cuando termine de ejecutarse. | Cuando finalice el proceso de baremación. | [IU\-PRC\-0202\-001 Búsqueda y listado de convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0202-convocatorias/iu-prc-0202-001-busqueda-y-listado-de-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0202-convocatorias/iu-prc-0202-001-busqueda-y-listado-de-convocatorias.md") | Finalizado proceso de baremación del año **ANIO** | El proceso de baremación del **ANIO** ha finalizado con éxito. Puede ir a la opción de menú "Informes" para ver su resultado. |

#### **Error en proceso de baremación**



| Destinatarios | Generado por | Fecha de envío | Pantalla que lo origina | **Asunto email** | **Contenido email** |
| --- | --- | --- | --- | --- | --- |
| Destinatarios preconfigurados. | El gestor lanzará el proceso de baremación de una convocatoria y el proceso en sí generará el comunicado cuando se produzca un error. | Cuando se error el proceso de baremación. | [IU\-PRC\-0202\-001 Búsqueda y listado de convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0202-convocatorias/iu-prc-0202-001-busqueda-y-listado-de-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0202-convocatorias/iu-prc-0202-001-busqueda-y-listado-de-convocatorias.md") | Error en el proceso de baremación del año **ANIO** | Se ha producido un error en el proceso de baremación del **ANIO**. El error producido es **TEXTO\_ERROR** |




