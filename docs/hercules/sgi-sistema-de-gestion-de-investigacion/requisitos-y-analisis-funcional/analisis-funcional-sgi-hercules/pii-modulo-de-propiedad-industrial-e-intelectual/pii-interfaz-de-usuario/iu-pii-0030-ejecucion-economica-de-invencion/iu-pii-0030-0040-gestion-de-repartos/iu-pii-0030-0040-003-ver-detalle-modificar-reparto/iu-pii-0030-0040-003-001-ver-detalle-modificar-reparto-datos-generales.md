# Hércules : IU\-PII\-0030\-0040\-003\-001 \- Ver detalle\-modificar reparto \- Datos generales



## Formulario Ver detalle\-modificar reparto \- Datos generales

Pantalla que muestra el formulario que permite ver el detalle o modificar un reparto de beneficios/resultados (ingresos \- gastos) a realizar entre los miembros del equipo inventor a los que la Universidad tiene obligación de repartir y la Universidad. Apartado Datos generales.



| *Reparto con resultado 0* \- *Solo es visible la pestaña Datos generales, no hay opción de repartir el resultado.**Reparto con resultado Positivo* \- *Aparecerá el área de "Reparto de resultado", ya que hay opción de repartir el resultado.**Reparto en estado "Ejecutado" \- Aparecerá toda la pantalla en modo "solo consulta"* | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Estado | SelectorTexto cortoObligatorio | Estado del reparto.Tendrá uno de los valores de este listado:* Pendiente de ejecutar * Ejecutado  Se podrá cambiar el estado de Pendiente de ejecutar a Ejecutado, pero no a la inversa. |
| **Listado de gastos a deducir \- Solo consulta**Se obtendrán todos los gastos "deducibles", esto es, los que pueden intervenir en un reparto, a partir del requisito de integración [REQ\-INT\-0013\-SGEPII\-0010 \- Buscar detalle de operaciones \- Gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0010-buscar-detalle-de-operaciones-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0010-buscar-detalle-de-operaciones-gastos.md") y, a partir de ahí, se combinará la información obtenida con la información de gastos deducibles de la que disponga el SGI de repartos anteriores. | | |
| Fecha | Fecha | Fecha del gasto |
| Referencia | Referencia | Referencia del gasto |
| Concepto | Texto | Concepto del gasto |
| Tipo | Texto | Tipo del gasto |
| Solicitud | Texto | Solicitud del gasto |
| Importe | Económica | Importe del gasto |
| **Listado de ingresos a repartir \- Solo consulta**Se obtendrán todos los ingresos asociados a una invención a partir del requisito de integración [REQ\-INT\-0013\-SGEPII\-0020 \- Buscar facturas emitidas \- Ingresos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0020-buscar-facturas-emitidas-ingresos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0013-sgepii-integracion-con-sistema-de-gestion-economica-de-proteccion-industrial-e-intelectual/req-int-0013-sgepii-0020-buscar-facturas-emitidas-ingresos.md") y, a partir de ahí, se combinará la información obtenida con la información de ingresos a repartir de la que disponga el SGI de repartos anteriores. | | |
| Fecha | Fecha | Fecha del ingreso |
| Referencia | Referencia | Referencia del ingreso |
| Referencia de contrato | Referencia | Referencia de contrato del ingreso |
| Entidad pagadora | Texto | Entidad pagadora del ingreso |
| Importe | Económica | Importe del ingreso |
| Resultado | Económica | Resultado obtenido del cálculo de pago entre los gastos y los ingresos |
| ***Reparto de resultado*** | | |
| Resultado a repartir | Numérico decimalSolo consulta | Resultado a repartir obtenido del cálculo de ingresos y gastos y sus desgloses que ya han sido informados en el alta del reparto en la pestaña de Datos generales. |
| Reparto de ingresos según tramo | Texto (3 elementos)Solo consulta | Campo compuesto por tres elementos:1. Información sobre el tramo en el que encaja el resultado 2. % de reparto correspondiente a la Universidad según el tramo 3. % de reparto correspondiente a los miembros del equipo inventor de la invención que la Universidad tiene obligación de pagar según el tramo  Si no hubiese un tramo configurado para el valor del resultado a repartir, se mostraría un mensaje en lugar de los tres elementos indicando al usuario algo similar a "No se ha configurado un tramo de reparto donde encaje el resultado obtenido, debe indicar manualmente el reparto Universidad\-Equipo inventor". |
| Importe del reparto a la Universidad | Numérico decimalModificable | Parte del reparto que corresponde a la Universidad.Si hay un tramo de reparto configurado para el resultado a repartir, aparecerá calculado por defecto en función del tramo que aplique al resultado, pero el usuario podrá modificarla. En otro caso, el usuario tendrá que introducirlo manualmente. Habrá que seguir siempre teniendo en cuenta que la suma de este importe y el Importe del reparto a los inventores siempre ha de ser el total de Resultado a repartir.Al modificar este campo, automáticamente se modificará el Importe del reparto a equipo inventor para que ambos sigan sumando 100\. Esto a su vez desencadenará el recálculo a sus valores por defecto de importes totales a repartir entre los miembros del equipo inventor y a que sea necesario ajustar de nuevo los desgloses. |
| Importe del reparto a equipo inventor | Numérico decimalModificable | Parte del reparto que corresponde pagar a la Universidad al equipo inventor y que se ha de desglosar entre sus miembros en base a su % de participación en la autoría.Si hay un tramo de reparto configurado para el resultado a repartir, aparecerá calculado por defecto en función del tramo que aplique al resultado, pero el usuario podrá modificarla. En otro caso, el usuario tendrá que introducirlo manualmente. Habrá que seguir siempre teniendo en cuenta que la suma de este importe y el Importe del reparto a la Universidad siempre ha de ser el total de Resultado a repartir.Al modificar este campo, automáticamente se modificará el Importe del reparto a la Universidad para que ambos sigan sumando 100\. Esto a su vez desencadenará el recálculo a sus valores por defecto de importes totales a repartir entre los miembros del equipo inventor y a que sea necesario ajustar de nuevo los desgloses. |
| Desglose de reparto a equipo inventor |  | Solo se podrán repartir los resultados entre los miembros del equipo inventor para los que se ha marcado que la universidad hace repartos, estén vinculados a la misma o no, por lo que en esta lista sólo aparecerán dichos miembros. |
| Nombre | Texto corto | Nombre del miembro del equipo inventor. |
| Apellidos | Texto corto | Apellidos del miembro del equipo inventor. |
| Nº de documento | Texto corto | Nº de documento de identificación del miembro del equipo inventor. |
| Entidad | Texto | Nombre de la entidad a la que está vinculada el miembro del equipo inventor. |
| % Part. | Porcentaje (Decimal con 2 decimales) | Porcentaje de participación en la autoría del miembro del equipo inventor. |
| % Rep. | Porcentaje (Decimal con 2 decimales) | Porcentaje de reparto real que le corresponde al miembro del equipo inventor del total del Importe del reparto a equipo inventor.El % de reparto por miembro de equipo inventor se calcula como una regla de 3 en base a su % de participación respecto al del total de los miembros que participan en el reparto. |
| Imp. a Nómina | Numérico decimal | Importe correspondiente al reparto para el miembro del equipo inventor que se va a realizar al miembro del equipo inventor en nómina. |
| Imp. a Proyecto | Numérico decimal | Importe correspondiente al reparto para el miembro del equipo inventor que se va a repercutir hacia un proyecto. |
| Imp. a Otros | Numérico decimal | Importe correspondiente al reparto para el miembro del equipo inventor que se va a retribuir en cualquier otra forma que no sea en nómina o a un proyecto.Contempla por ejemplo el caso de los repartos de regalías a miembros del equipo inventor que ya no tienen vinculación con la Universidad pero ésta sí sigue teniendo obligación de realizarles estos pagos de repartos. |
| Imp. total | Numérico decimal | Importe total de reparto que le corresponde al miembro del equipo inventor.Aparecerá calculado por defecto en función del Importe del reparto a equipo inventor y del porcentaje de reparto real que le corresponda de dicho importe y no se podrá modificar directamente, sino a través del ajuste del resto de importes.Ha de ser igual a la suma de los importes Imp. a Nómina \+ Imp. a Proyecto \+ Imp. a Otros. |
| Total importe desglose reparto a equipo inventor | Numérico decimal | Suma de los Importes totales del desglose de reparto al equipo inventor.Aparecerá calculado en función del Importe del reparto a cada miembro del equipo inventor que se haya indicado.Ha de ser igual al Importe del reparto a equipo inventor. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver/Modificar | Accede a la pantalla [IU\-PII\-0031\-005 \- Añadir\-modificar desglose de reparto a equipo inventor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-005-anadir-modificar-desglose-de-reparto-a-equipo-inventor.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0030-ejecucion-economica-de-invencion/iu-pii-0031-ejecucion-economica-de-invencion-popups-auxiliares/iu-pii-0031-005-anadir-modificar-desglose-de-reparto-a-equipo-inventor.md") para ver el detalle y/o modificar el desglose de reparto a un miembro del equipo inventor. |  | PII\-INV\-VPII\-INV\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar reparto | Guarda el reparto de resultados.Las validaciones que se aplicarán serán las siguientes:* Para cada miembro del equipo inventor, la suma de los importes Imp. a Nómina \+ Imp. a Proyecto \+ Imp. a Otros ha de ser igual al Imp. total a repartir al mismo. * Para el reparto general: 	+ El Importe total del desglose de reparto a equipo inventor ha de ser igual al Importe del reparto a equipo inventor. 	+ El Importe a pagar Universidad \+ Importe a pagar a los Inventores ha de ser igual al Resultado a repartir.  Si se produce un cambio de estado, el único posible, que es de "Pendiente de ejecutar" a "Ejecutado", una vez guardados los cambios, la entidad reparto pasará a ser únicamente de "solo consulta". |  | PII\-INV\-E |
| Cancelar | Retorna al listado de repartos de la invención sin salvar los posibles cambios.Al cancelar, se descarta la información modificada o introducida (si estamos dando de alta por primera vez) de todo los formularios de la pantalla de reparto. |  |  |
| Imprimir a PDF | Genera documento de resultados en PDF [REP\-PII\-0040\- Balances y pagos de regalías a la Universidad y los inventores](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__REP-PII-0040-+Balances+y+pagos+de+regal%C3%ADas+a+la+Universidad+y+los+inventores&linkCreation=true&fromPageId=597852473 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__REP-PII-0040-+Balances+y+pagos+de+regal%C3%ADas+a+la+Universidad+y+los+inventores&linkCreation=true&fromPageId=597852473") |  | PII\-INV\-E |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




