# Hércules : IU\-PII\-0010\-0030\-004 \- Ver detalle\-modificar invención \- Titularidad



## Formulario de listado de titularidades de la invención

Pantalla que muestra el formulario de listado de titularidades y de titulares (entidades) asociados a cada titularidad de la invención.

Se entenderá por período **vigente** a aquel que no tenga una fecha de fin y por período **histórico** al que sí la tenga. En un momento concreto, solo podrá existir un único período vigente.



| *Caso 1: Presentación más común de la pantalla de titularidad**Caso 2: Presentación de la pantalla de titularidad en el caso extremo de eliminación de todas las titularidades* | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| *Listado de períodos de titularidad* |  | Por defecto estará seleccionado el período vigente o el histórico más reciente. Al cambiar el período seleccionado, se refrescará el listado de titulares con los del nuevo período que se seleccione. |
| Fecha inicio | Fecha (sin hora) | Fecha de inicio del período de titularidad. |
| Fecha fin | Fecha (sin hora) | Fecha de fin del período de titularidad. |
| Modificar (titularidad) | Icono de acción | Acción "Modificar" período de titularidad. |
| Eliminar (titularidad) | Icono de acción | Acción "Eliminar" período de titularidad. |
| *Listado de titulares* |  | Por defecto estarán cargados los titulares del período vigente o el histórico más reciente. Al cambiar el período seleccionado en el listado de períodos de titularidad, se refrescará este listado con los titulares del nuevo período que se seleccione. |
| Entidad | Texto | Nombre de la entidad titular.Se obtendrá a partir del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| % Part. | Numérico entero | Porcentaje de participación de la entidad en la titularidad invención. Tendrá un valor entre 1 y 100\. |
| Modificar (titular) | Icono de acción | Acción "Modificar" el titular seleccionado. |
| Eliminar (titular) | Icono de acción | Acción "Eliminar" el titular seleccionado. |
| Informe titularidad | Icono de acción | Acción "Ver/Descargar" el informe de titularidad del titular seleccionado. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar (titularidad) | Muestra la pantalla de modificación de una titularidad [IU\-PII\-0011\-008 \- Modificar período de titularidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-008-modificar-periodo-de-titularidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-008-modificar-periodo-de-titularidad.md").Solo estará disponible para el período vigente. |  | PII\-INV\-E |
| Eliminar (titularidad) | Elimina la titularidad.Al eliminar la titularidad, también se eliminará la asociación entre los titulares y dicha titularidad.Solo estará disponible para el período vigente.Si se diese el caso de eliminar todos los períodos de titularidad, el botón de "Añadir titular" aparecería deshabilitado hasta que se añadiese un período de titularidad al que poder asociar titulares. Este caso extremo se entiende como una excepcionalidad para casos de fallo en la mecanización de los datos del período de titularidad antes de que éste tenga otras entidades relacionadas. |  | PII\-INV\-E |
| Añadir período de titularidad | Muestra la pantalla para añadir una nueva titularidad [IU\-PII\-0011\-007 \- Añadir período de titularidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-007-anadir-periodo-de-titularidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-007-anadir-periodo-de-titularidad.md").Solo estará disponible si no existen cambios previos sin guardar sobre esta pantalla de titularidades. |  | PII\-INV\-E |
| Modificar (titular) | Muestra la pantalla de modificación de un titular [IU\-PII\-0011\-006 \- Añadir\-modificar titular](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-006-anadir-modificar-titular.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-006-anadir-modificar-titular.md"). |  | PII\-INV\-E |
| Eliminar (titular) | Elimina la asociación entre un titular de los asociados a la titularidad seleccionada en el listado de titularidades y dicha titularidad.Solo estará disponible para los titulares de la titularidad vigente. |  | PII\-INV\-E |
| Añadir titular | Muestra la pantalla para añadir un nuevo titular [IU\-PII\-0011\-006 \- Añadir\-modificar titular](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-006-anadir-modificar-titular.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0010-gestion-de-invencion/iu-pii-0011-gestion-de-invencion-popups-auxiliares/iu-pii-0011-006-anadir-modificar-titular.md").Si se diese el caso de eliminar todos los períodos de titularidad, este botón aparecería deshabilitado hasta que se añadiese un período de titularidad al que poder asociar titulares. |  | PII\-INV\-E |
| Informe titularidad | Al pulsar sobre esta acción se podrá descargar el informe de la titularidad [REP\-PII\-0020\- Titularidad de una entidad en una invención](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__REP-PII-0020-+Titularidad+de+una+entidad+en+una+invenci%C3%B3n&linkCreation=true&fromPageId=597852708 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__REP-PII-0020-+Titularidad+de+una+entidad+en+una+invenci%C3%B3n&linkCreation=true&fromPageId=597852708") de la entidad correspondiente. |  | PII\-INV\-VPII\-INV\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Guarda los cambios realizados en la invención.Al guardar la invención, se guardará la información de todos los formularios de la pantalla de modificación de la invención.Si se han modificado otras pestañas de la invención, se han de tener en cuenta a la hora de guardar las restricciones descritas en cada una de ellas además de las específicas de esta pestaña descritas aquí. |  | PII\-INV\-E |
| Cancelar | Retorna al listado de invenciones sin salvar los posibles cambios.Al cancelar la modificación de la invención, se cancela la modificación de información de todo los formularios de la pantalla invención. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




