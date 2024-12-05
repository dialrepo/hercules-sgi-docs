# Hércules : IU\-PII\-0030\-0020 \- Contratos



## Formulario de listado de contratos asociados a la invención

Pantalla que muestra el formulario con el listado de todos los contratos asociados de la invención a lo largo de su vida.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de contratos |  | Por defecto estará seleccionado el primer contrato de la lista. Al cambiar el contrato seleccionado, se refrescará el listado de sectores licenciados con los del nuevo contrato que se seleccione. |
| Fecha | Fecha (sin hora) | Fecha del contrato. |
| Nombre | Texto | Nombre del contrato. |
| Empresa financiadora | Texto | Empresa o empresas cliente/financiadoras del contrato de explotación de la invención.Si hay más de una empresa, se mostrará un tooltip con el listado completo de empresas financiadoras asociadas al contrato. |
| Inv. responsable | Texto | Investigador responsable del contrato (investigador principal). |
| Listado de sectores licenciados |  | Por defecto estarán cargados los sectores licenciados del primer contrato de la lista de contratos, que por defecto estará seleccionado. Al cambiar el contrato seleccionado en el listado de contratos, se refrescará este listado con los sectores licenciados del nuevo contrato que se seleccione. |
| País | Texto corto | Nombre del país donde se licencia la invención.Se recuperará a partir del identificador del país a través del requisito de integración [REQ\-INT\-0030\-SGO\-0061 \- Consultar país](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0061-consultar-pais.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0061-consultar-pais.md"). |
| Sector | Texto | Nombre del sector para el que se licencia la invención. |
| F. ini. licencia | Fecha (sin hora) | Fecha de inicio de la licencia en el sector y país. |
| F. fin licencia | Fecha (sin hora) | Fecha de fin de la licencia en el sector y país. |
| Exclusividad | Texto corto | Exclusividad de la licencia para el país/sector.Valores posibles: Sí/No |

  


  


  


  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar (sector licenciado) | Abrirá el formulario [IU\-PII\-0031\-002 \- Añadir\-modificar sector licenciado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-002-anadir-modificar-sector-licenciado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-002-anadir-modificar-sector-licenciado.md") que permitirá ver el detalle y/o modificar los datos del sector licenciado asociado a la invención. |  | PII\-INV\-VPII\-INV\-E |
| Eliminar (sector licenciado) | Se eliminará la asociación entre el sector y el contrato asociado a la invención. |  | PII\-INV\-E |
| Añadir sector licenciado | Abrirá el formulario [IU\-PII\-0031\-002 \- Añadir\-modificar sector licenciado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-002-anadir-modificar-sector-licenciado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-002-anadir-modificar-sector-licenciado.md") que permitirá añadir un nuevo sector licenciado asociado a la invención.Se validará que no se repita el sector licenciado, entendiendo que un sector licenciado se repite cuando ya hay otro sector licenciado con el mismo:* País * Sector * Valor de exclusividad |  | PII\-INV\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar invención | Guarda los cambios realizados en la invención.Al guardar la invención, se guardará la información de todos los formularios de la pantalla de modificación de la invención.Si se han modificado otras pestañas de la invención, se han de tener en cuenta a la hora de guardar las restricciones descritas en cada una de ellas. |  | PII\-INV\-E |
| Cancelar | Retorna al listado de Invenciones sin salvar los posibles cambios.Al cancelar la invención, se cancela la información de todo los formularios de la pantalla Invención. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




