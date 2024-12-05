# Hércules : IU\-PII\-0030\-0040\-001\-001 \- Crear reparto \- Datos generales



## Formulario Crear reparto \- Datos generales

Pantalla que muestra el formulario que permite crear un nuevo reparto de beneficios (ingresos \- gastos) a realizar entre los inventores y/o titulares.  Apartado Datos generales.



| *Reparto con resultado 0**Reparto con resultado Positivo* | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **Listado de gastos a deducir \- Aparecerán aquellos gastos que aún tienen importe pendiente de deducir.**Se obtendrán todos los gastos "deducibles", esto es, los que pueden intervenir en un reparto, a partir del requisito de integración [REQ\-INT\-0013\-SGEPII\-0010 \- Buscar detalle de operaciones \- Gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0010-buscar-detalle-de-operaciones-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0010-buscar-detalle-de-operaciones-gastos.md") y, a partir de ahí, se combinará la información obtenida con la información de gastos deducibles de la que disponga el SGI de repartos anteriores. | | |
| Fecha | Fecha (sin hora) | Fecha del gasto. |
| Referencia | Texto corto | Referencia del gasto. |
| Concepto | Texto | Concepto del gasto. |
| Tipo | Texto | Tipo del gasto. |
| Solicitud | Texto | Solicitud de protección asociada al gasto. |
| Imp. pte. compensar | Numérico decimal | Importe del gasto que está pendiente de ser compensado con ingresos. |
| Imp. a compensar | Numérico decimal | Importe del gasto que va a ser compensado con ingresos en el reparto que se está creando. |
| Total gastos a compensar | Numérico decimal | Suma de la columna de Imp. a compensar que representará el total de gastos que se incluirán en la operación de reparto que se está creando. |
| **Listado de ingresos a repartir \- Aparecerán aquellos ingresos que aún tienen importe pendiente de repartir.**Se obtendrán todos los ingresos asociados a una invención a partir del requisito de integración [REQ\-INT\-0013\-SGEPII\-0020 \- Buscar facturas emitidas \- Ingresos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0020-buscar-facturas-emitidas-ingresos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0020-buscar-facturas-emitidas-ingresos.md") y, a partir de ahí, se combinará la información obtenida con la información de ingresos a repartir de la que disponga el SGI de repartos anteriores. | | |
| Fecha | Fecha (sin hora) | Fecha del ingreso. |
| Referencia | Texto corto | Referencia del ingreso. |
| Nº interno de contrato | Texto corto | Nº interno del contrato asociado al ingreso en el SGI. |
| Entidad pagadora | Texto | Entidad pagadora del ingreso |
| Imp. pte. reparto | Numérico decimal | Importe del ingreso que está pendiente de compensar algún gasto o de ser repartido. |
| Imp. a repart. | Numérico decimal | Importe del ingreso que va a compensar los gastos incluidos en el reparto que se está creando o que se va a repartir (si no hay gastos a compensar o  no se selecciona ninguno). |
| Total ingresos a repartir | Numérico decimal | Suma de la columna de Imp. a repart. que representará el total de ingresos que se incluirán en la operación de reparto que se está creando. |
| Resultado | Numérico decimal | Resultado obtenido del cálculo de la diferencia entre el total de gastos a compensar y el total de ingresos a repartir, que representará el resultado del reparto. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar (gasto a deducir) | Se abrirá una ventana emergente para poder añadir\-modificar el desglose del importe del gasto a deducir [IU\-PII\-0031\-003 \- Añadir\-modificar desglose de gasto a deducir](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-003-anadir-modificar-desglose-de-gasto-a-deducir.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-003-anadir-modificar-desglose-de-gasto-a-deducir.md"). |  | PII\-INV\-E |
| Modificar (ingreso a repartir) | Se abrirá una ventana emergente para poder añadir o modificar el desglose del importe a repartir [IU\-PII\-0031\-004 \- Añadir\-modificar desglose de importe a repartir](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-004-anadir-modificar-desglose-de-importe-a-repartir.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-004-anadir-modificar-desglose-de-importe-a-repartir.md"). |  | PII\-INV\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar reparto | Crea el reparto.Se validará que el resultado del reparto sea \>\=0\.Se creará en el estado "Pendiente de ejecutar". |  | PII\-INV\-E |
| Cancelar | Retorna al listado de repartos de la invención sin salvar los posibles cambios.Al cancelar, se descarta la información modificada o introducida (si estamos dando de alta por primera vez) de todo los formularios de la pantalla de reparto. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




