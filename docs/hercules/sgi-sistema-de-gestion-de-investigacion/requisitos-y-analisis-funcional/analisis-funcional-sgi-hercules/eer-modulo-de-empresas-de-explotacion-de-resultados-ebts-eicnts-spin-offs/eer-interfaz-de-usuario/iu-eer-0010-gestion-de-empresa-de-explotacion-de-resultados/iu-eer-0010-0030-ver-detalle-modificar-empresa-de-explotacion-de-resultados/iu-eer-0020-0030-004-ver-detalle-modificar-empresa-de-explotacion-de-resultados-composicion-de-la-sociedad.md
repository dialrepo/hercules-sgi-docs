# Hércules : IU\-EER\-0020\-0030\-004 \- Ver detalle\-modificar empresa de explotación de resultados \- Composición de la sociedad



## Listado de miembros de composición de la sociedad

Pantalla que muestra un formulario con el listado de socios, entidades o personas que componen la sociedad de una empresa de explotación de resultados.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de miembros de la sociedad | | |
| Miembro sociedad | Texto | Si el miembro de la sociedad es una entidad, se mostrará en este campo el nombre de la entidad. Será recuperado de los sistemas de la Universidad a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md").Si el miembro de la sociedad es una persona, se mostrarán en este campo el nombre y los apellidos de la persona. Serán recuperados de los sistemas de la Universidad a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Fecha inicio | Fecha (Sin hora) | Fecha desde que es socio la entidad/persona. |
| Fecha fin | Fecha (Sin hora) | Fecha hasta la que es socio la entidad/persona. |
| Participación | Numérico decimal | Porcentaje de participación en la sociedad de la entidad/persona. |
| Capital social | Numérico entero | Importe del capital social aportado por el socio. |
| Tipo aportación | Texto corto | Tipo de la aportación por parte el socio a la sociedad. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver detalle/Modificar | Muestra la pantalla de detalle/modificación de los datos del miembro de la sociedad  [IU\-EER\-0011\-0010 \- Añadir\-modificar miembro de composición de la sociedad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eer-modulo-de-empresas-de-explotacion-de-resultados-ebts-eicnts-spin-offs/eer-interfaz-de-usuario/iu-eer-0010-gestion-de-empresa-de-explotacion-de-resultados/iu-eer-0011-gestion-de-empresa-de-explotacion-de-resultados-popups-auxiliares/iu-eer-0011-0010-anadir-modificar-miembro-de-composicion-de-la-sociedad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eer-modulo-de-empresas-de-explotacion-de-resultados-ebts-eicnts-spin-offs/eer-interfaz-de-usuario/iu-eer-0010-gestion-de-empresa-de-explotacion-de-resultados/iu-eer-0011-gestion-de-empresa-de-explotacion-de-resultados-popups-auxiliares/iu-eer-0011-0010-anadir-modificar-miembro-de-composicion-de-la-sociedad.md"). |  | EER\-EER\-E |
| Eliminar | Da de baja el socio como miembro de la sociedad. |  | EER\-EER\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir miembro sociedad | Muestra la pantalla para dar de alta un nuevo miembro de la sociedad [IU\-EER\-0011\-0010 \- Añadir\-modificar miembro de composición de la sociedad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eer-modulo-de-empresas-de-explotacion-de-resultados-ebts-eicnts-spin-offs/eer-interfaz-de-usuario/iu-eer-0010-gestion-de-empresa-de-explotacion-de-resultados/iu-eer-0011-gestion-de-empresa-de-explotacion-de-resultados-popups-auxiliares/iu-eer-0011-0010-anadir-modificar-miembro-de-composicion-de-la-sociedad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eer-modulo-de-empresas-de-explotacion-de-resultados-ebts-eicnts-spin-offs/eer-interfaz-de-usuario/iu-eer-0010-gestion-de-empresa-de-explotacion-de-resultados/iu-eer-0011-gestion-de-empresa-de-explotacion-de-resultados-popups-auxiliares/iu-eer-0011-0010-anadir-modificar-miembro-de-composicion-de-la-sociedad.md"). |  | EER\-EER\-E |
| Guardar empresa de explotación de resultados | Modifica los datos de la empresa de explotación de resultados.Al guardar la empresa, se guardará la información de todos los formularios de la pantalla de modificación de empresa de explotación de resultados.Se validará que la suma del % de participación en la entidad de todos los miembros sea \> 0 y \<\=100\. |  | EER\-EER\-E |
| Cancelar | Retorna al listado de empresas de explotación de resultados sin salvar los posibles cambios.Al cancelar la modificación de la empresa de explotación de resultados, se cancela el guardado de la información de todo los formularios de la pantalla. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




