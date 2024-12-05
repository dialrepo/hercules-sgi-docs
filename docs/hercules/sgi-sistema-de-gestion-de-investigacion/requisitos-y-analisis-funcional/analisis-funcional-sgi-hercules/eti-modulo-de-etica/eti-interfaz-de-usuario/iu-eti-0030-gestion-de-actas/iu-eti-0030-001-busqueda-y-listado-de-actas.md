# Hércules : IU\-ETI\-0030\-001 Búsqueda y listado de actas



## Formulario de Búsqueda y listado de actas

Pantalla que muestra un formulario, que permite aplicar filtros sobre el listado de las actas de las reuniones de evaluación.

Podrán acceder al listado de actas:

* los gestores (a todas)
* los investigadores/técnicos que sean evaluadores activos en el comité del acta (la fecha de baja es null o la fecha de baja es mayor a la fecha actual). Sólo se les mostrarán las actas que pertenezcan al comité del cual es miembro activo.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Comité | Desplegableabreviatura | Listado con los tres comités: CEISH, CEEA y CEIAB |
| Fecha evaluación(desde \- hasta) | fechaOpcional | Rango de fechas por las que se busca la fecha de evaluación.Fecha evaluación mayor o igual a fecha desdeFecha evaluación menor o igual a fecha hasta |
| Número de acta | Numérico decimal genéricoOpcional | Número de acta |
| Estado | DesplegableTexto corto | Listado con dos valores: En elaboración y Finalizada |
| Listado de resultados | | |
| Comité | abreviatura | Comité de la convocatoria. |
| Fecha evaluación | fecha | Día de la reunión de evaluación. |
| Número de acta | Numérico decimal genérico | Número de acta |
| Convocatoria | Texto corto | Indica si es ordinaria, extraordinaria o de seguimiento |
| Nº iniciales | Numérico decimal genérico | Número de memorias iniciales (nuevas) que se van a revisar o se han revisado en la reunión de evaluación asociada a la acta.Se obtiene sumando el número de evaluaciones asociadas a la convocatoria del acta que tengan en el campo versión el valor 1 (es la primera evaluación) |
| Nº revisiones | Numérico decimal genérico | Número de memorias reevaluadas que se van a revisar o se han revisado en la reunión de evaluación asociada a la acta.Se obtiene sumando el número de evaluaciones asociadas a la convocatoria del acta que  tengan en el campo versión un valor mayor de 1 (son reevaluaciones) y no sean de revisión mínima |
| Nº total | Numérico decimal genérico | Número total, es decir, iniciales  mas las reevaluadas. |
| Estado | Texto corto | Estado del acta |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica los filtros introducidos sobre la lista de actas mostrando las que cumplen las condiciones.Los investigadores/técnicos sólo se les mostrarán las actas en las que son evaluadores activos del comité (fecha de baja es null o fecha de baja es mayor a la actual) | [CU\-ETI\-0030\-001 \- Buscar Actas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-001-buscar-actas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0030-gestion-de-actas/cu-eti-0030-001-buscar-actas.md") | ETI\-ACT\-VETI\-ACT\-EETI\-ACT\-DESETI\-ACT\-FINETI\-ACT\-INV\-ERETI\-ACT\-ER |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Actas |  |  |
| Nueva | Se muestra el formulario de alta de un acta |  | ETI\-ACT\-C |
| Editar | Sólo se muestra si el acta esta en estado "En elaboración". Se muestra el formulario de modificación de un acta.Para que a un evaluador (investigador/técnico) le salga la opción de Editar tiene que ser evaluador activo del comité (fecha de baja es null o fecha de baja es mayor a la actual) ademas de que el estado sea "En elaboración". |  | ETI\-ACT\-EETI\-ACT\-INV\-ERETI\-ACT\-ER |
| Ver | Si el estado del acta es "Finalizada" se muestra en modo consulta.Para que a un evaluador (investigador/técnico) le salga la opción de Ver tiene que ser evaluador activo del comité (fecha de baja es null o fecha de baja es mayor a la actual) ademas de que el estado sea "Finalizada" |  | ETI\-ACT\-VETI\-ACT\-EETI\-ACT\-DESETI\-ACT\-FINETI\-ACT\-INV\-ERETI\-ACT\-ER |
| Ver informe acta | Si el estado del acta es "En elaboración"* Se genera de forma automática a partir de una plantilla el informe de acta a partir de los datos almacenados del acta. [REP\-ETI\- 0070\-Informe acta](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0070-informe-acta.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0070-informe-acta.md")  Si el estado del acta es "Finalizada"* Se descarga el documento almacenado en el SGGOC cuyo identificador esta almacenado en el campo "documentoRef" de la tabla "Acta"  Para que a un evaluador (investigador/técnico) le salga la opción de Ver el informe del acta tiene que ser evaluador activo del comité (fecha de baja es null o fecha de baja es mayor a la actual) |  | ETI\-ACT\-DESETI\-ACT\-INV\-DESRETI\-ACT\-DESR |
| Finalizar | Sólo se muestra si el acta esta en estado "En elaboración".Para poder finalizar una acta deben de estar evaluadas todas sus evaluaciones de memorias que no son de revisión mínima, es decir, que todas tengan un dictamen.Acciones a realizar:* Se pasa a estado "Finalizada" el acta, por lo que ya no se podrá modificar los datos del acta ni realizar ningún cambio en ninguna de las evaluaciones de memorias asociadas a la convocatoria (las que no son de revisión mínima). * El finalizar el acta implica cambiar el estado según el dictamen de la evaluación a todas las memorias implicadas (aquellas que no son de revisión mínima). * Si es una evaluación de retrospectiva se pasará el campo estadoRetrospectiva a "Fin evaluación". * Cuando un acta se pasa a finalizada se tiene que notificar a los investigadores de que ya tienen disponible el informe favorable o de evaluación, por lo que al realizar esta acción, habrá que tener en cuenta los comunicados que se deben generar según se describe en el apartado [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md"). (Se notificarán solamente las evaluaciones que no son de revisión mínima). * Generar el documento del acta llamando al servicio de reporting. * Guardar el documento generado en el SGDOC. * Llamar al servicio **POST /documentos** con el documento del acta generado. Devuelve el identificador del documento. * Guardar en la tabla "Acta" el identificador del documento devuelto por el SGDOC (en el campo "documentoRef") * En el caso que la variable de CNF "blockchain\_enable" este a true: 	+ Se llamará al servicio para sellar el  documento en blockchain pasando como parámetro el hash del documento. [REQ\-INT\-0160\-BK\-0002 \- Crear transacción](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0160-blockchain/req-int-0160-bk-0002-crear-transaccion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0160-blockchain/req-int-0160-bk-0002-crear-transaccion.md") 	+ Guardar el id de la transacción devuelta en la tabla "Acta" (en el campo "transaccionRef").  Solo el rol ACT\-ETI\-001\-Gestor puede Finalizar un acta. |  | ETI\-ACT\-FIN |
| Confirmar registro blockchain | Sólo se mostrará esta acción si:* es un  ACT\-ETI\-001\-Gestor * la variable de configuración  CNF "blockchain\_enable" este a true * si el acta esta en estado "Finalizada"  Esta acción consistirá en:* Obtener  los metadatos almacenado en el SGDOC del acta. (llamar al servicio GET /documentos) * Llamar al servicio del blockchain que devuelve la cadena (el hash) que enviamos en su momento pasando como parámetro el id de la transacción almacenada en nuestra tabla acta (campo "transaccionRef"). [REQ\-INT\-0160\-BK\-0001 \- Consultar transacción](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0160-blockchain/req-int-0160-bk-0001-consultar-transaccion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0160-blockchain/req-int-0160-bk-0001-consultar-transaccion.md") * Comprobar que el hash del documento es igual a la cadena devuelta por el servicio. * En caso afirmativo mostrar el mensaje "El acta no se ha alterado, es un documento correcto" , en otro caso mostrar el mensaje "El acta se ha alterado, no es documento correcto."  Ponerle el icono llamado `fact_check o``verified (uno que no se este usando actualmente en el SGI)` |  | ETI\-ACT\-FIN |
| Exportar | Genera el informe asociado al listado de actas. | Muestra la pantalla [IU\-ETI\-0030\-006 \- Exportación listado de actas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-006-exportacion-listado-de-actas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-006-exportacion-listado-de-actas.md") | ETI\-ACT\-VETI\-ACT\-EETI\-ACT\-INV\-ERETI\-ACT\-ER |

### Comunicados

Al realizar la acción de "Finalizar" un acta, y solo para las evaluaciones que NO son de revisión mínima, se creará la entrada correspondiente en el módulo de comunicados para avisar a los investigadores de que ya tienen disponible el informe favorable o de evaluación.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Acta de evaluación finalizada (evaluaciones que no son de revisión mínima)**dentro de [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




