# Hércules : IU\-CSP\-0302\-012 \- Añadir\-modificar partida de gasto a entidad financiadora ajena a la convocatoria



## Formulario Añadir/modificar partida de gasto a entidad financiadora ajena a la convocatoria

Formulario que permite añadir o modificar una partida de gasto dentro del presupuesto asociado a una entidad financiadora ajena a la convocatoria durante el proceso de creación o modificación de una solicitud de proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Concepto de gasto | SelectorTexto cortoObligatorio | Listado de conceptos de gasto activos definidos a nivel global en el SGI  en [IU\-CSP\-0090 \- Gestión de conceptos de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/index.md") |
| Anualidad | Numérico decimal genéricoOpcional | Anualidad a la que pertenece el concepto de gasto |
| Importe presupuestado | EconómicoObligatorio | Importe presupuestado para el concepto de gasto por la entidad |
| Importe solicitado | EconómicoObligatorio | Importe solicitado para el concepto de gasto por la entidad |
| Observaciones | Texto largoOpcional | Campo abierto que permite introducir cualquier observación consideración del concepto de gasto en el presupuesto asociada a la solicitud |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir/Aceptar | El botón se mostrará como:* Añadir, cuando se accede al formulario para añadir un nueva partida de gasto al presupuesto de una entidad ajena a la convocatoria * Aceptar, cuando se accede al formulario para modificar una partid de gasto ya creada en el presupuesto de una entidad ajena a la convocatoria | Se añade o modifica el registro sobre la tabla "Solicitud Proyecto Presupuesto".Se deberá dar valor al campo* "solicitudProyectoEntidad" con el identificador del registro que corresponde a la entidad |
| Cancelar | Retorna al formulario de solicitud, sin salvar los posibles cambios |  |

  
  
  
  
  
  





