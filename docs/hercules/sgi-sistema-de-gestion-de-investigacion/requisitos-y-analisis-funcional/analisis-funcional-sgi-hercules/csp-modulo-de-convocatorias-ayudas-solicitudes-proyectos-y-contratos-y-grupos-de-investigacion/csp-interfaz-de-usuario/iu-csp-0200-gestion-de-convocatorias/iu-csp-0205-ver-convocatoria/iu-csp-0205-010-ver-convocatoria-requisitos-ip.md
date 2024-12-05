# Hércules : IU\-CSP\-0205\-010 \- Ver convocatoria \- Requisitos IP



## Formulario Ver convocatoria \- Requisitos IP

Formulario para ver los requisitos IP de una convocatoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Número máximo IPs | Numérico entero genérico | Valor límite del número de IPs. Modo consulta.Se corresponde con el campo "num. máximo IP" de la tabla "requisito IP". |
| Edad máxima | Numérico entero genérico | Edad máxima que pudiera requerir la convocatoria. Modo consulta.Se corresponde con el campo "edad máxima" de la tabla "requisito IP". |
| Sexo | Texto corto | Recogerá las limitaciones que, en términos de sexo de la persona que ejerza como IP,  pudiera requerir la convocatoria. Se mostrará el valor asociado al campo "sexo ref" de la tabla "requisito IP" recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0014 \- Listar sexos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md") |
| Restricciones sobre nivel académico: listado recuperado de la tabla "requisito IP nivel académico". Podrá estar vacío | | |
| Nivel académico | Texto | Nombre del nivel académico. El valor a mostrar se obtendrá a través del requisito de integración [REQ\-INT\-0020\-SGP\-0019 \- Consultar detalle de nivel académico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md") a partir de la referencia almacenada en el campo "nivel académico ref." de la tabla "requisitoIP nivel académico" |
| Limitaciones sobre la fecha de obtención del nivel académico | | |
| Posterior a | Fecha | Fecha mínima de obtención del nivel académico que exige la convocatoria.Se corresponde con el campo "fecha mínima nivel académico" de la tabla "requisito IP". |
| Anterior a | Fecha | Fecha tope de obtención del nivel académico que exige la convocatoria.Se corresponde con el campo "fecha máxima nivel académico" de la tabla "requisito IP". |
|  | | |
| Vinculación universidad | Boolean | Indica si la convocatoria exige que se disponga o no de una vinculación con la universidad.Se corresponde con el campo "vinculación universidad" de la tabla "requisito IP". |
| Restricciones sobre categoría profesional: listado recuperado de la tabla "requisitoIP categoría". No se mostrará cuando el campo "vinculación universidad" tome valor "no". | | |
| Categoría profesional | Texto | Nombre de la categoría profesional. El valor a mostrar se obtendrá a través del requisito de integración [REQ\-INT\-0020\-SGP\-0017 \- Consultar detalle de categoría profesional](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md") a partir de la referencia almacenada en el campo "categoría profesional ref." de la tabla "requisitoIP categoría" |
| Limitaciones sobre la fecha de obtención de la categoría profesional | | |
| Posterior a | Fecha | Fecha más antigua en la que puede haber sido obtenida la categoría para poder optar a la convocatoriaSe corresponde con el campo "fecha mínima categoría profesional" de la tabla "requisito IP". |
| Anterior a | Fecha | Fecha tope en la que puede haber sido obtenida la categoría para poder optar a la convocatoriaSe corresponde con el campo "fecha máxima categoría profesional" de la tabla "requisito IP". |
|  | | |
| Número mínimo proyectos competitivos | Numérico entero genérico | Se corresponde con el campo "num. mínimo competitivos" de la tabla "requisito IP". Se muestra en modo consulta. |
| Número mínimo proyectos no competitivos | Numérico entero genérico | Se corresponde con el campo "num. mínimo no competitivos" de la tabla "requisito IP". Se muestra en modo consulta. |
| Número máximo proyectos competitivos en curso | Numérico entero genérico | Se corresponde con el campo "num. máximo competitivos activos" de la tabla "requisito IP". Se muestra en modo consulta. |
| Número máximo proyectos no competitivos en curso | Numérico entero genérico | Se corresponde con el campo "num. máximo no competitivos activos" de la tabla "requisito IP". Se muestra en modo consulta. |
| Campo libre para indicar los requisitos a cumplir | Texto largo | Se corresponde con el campo "otros requisitos" de la tabla "requisitos IP". Se muestra en modo consulta. |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Cancelar | Retorna al listado de Convocatorias. |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




