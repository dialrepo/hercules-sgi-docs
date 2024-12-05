# Hércules : IU\-CSP\-0205\-011 \- Ver convocatoria \- Requisitos Equipo



## Formulario Ver convocatoria \- Requisitos Equipo

Formulario para ver los requisitos del equipo de una convocatoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Edad máxima | Numérico entero genérico | Edad máxima que pudiera requerir la convocatoria.Se corresponde con el campo "edad máxima" de la tabla "requisito equipo".Se muestra en modo consulta. |
| Limitaciones en términos de igualdad de sexo | | |
| Sexo | Texto corto | Junto con el campo "ratio mínimo exigido" permitirá recoger las limitaciones que establezca la convocatoria respecto a la composición, en términos de igualdad, del equipo.El valor mostrado será el nombre asociado al campo "sexo ref" de la tabla "requisito equipo". El nombre se obtendrá a partir de [REQ\-INT\-0020\-SGP\-0014 \- Listar sexos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md").El campo se muestra en modo consulta. |
| Ratio mínimo exigido | Numérico entero genérico | Este campo recogerá el ratio exigido por la convocatoria, expresado tomando como referencia el sexo seleccionado en el campo "sexo" anterior.Se corresponde con el campo "ratio sexo" de la tabla "requisito equipo".Se muestra en modo consulta. |
| Restricciones sobre nivel académico: listado recuperado de la tabla "requisito equipo nivel académico". Podrá estar vacío. | | |
| Nivel de académico | Texto | Nombre del nivel académico. El valor a mostrar se obtendrá a través del requisito de integración [REQ\-INT\-0020\-SGP\-0019 \- Consultar detalle de nivel académico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md") a partir de la referencia almacenada en el campo "nivel académico ref." de la tabla "requisito equipo nivel académico". |
| Limitaciones sobre la fecha de obtención del nivel académico | | |
| Posterior a | Fecha | Fecha mínima de obtención del nivel académico que exige la convocatoria.Se corresponde con el campo "fecha mínima nivel académico" de la tabla "requisito equipo".Se muestra en modo consulta. |
| Anterior a | Fecha | Fecha máxima de obtención del nivel académico que exige la convocatoria.Se corresponde con el campo "fecha máxima nivel académico" de la tabla "requisito equipo".Se muestra en modo consulta. |
|  | | |
| Vinculación universidad | Boolean | Indica si la convocatoria exige que se disponga o no de una vinculación con la universidad.Se corresponde con el campo "vinculación universidad" de la tabla "requisito equipo". |
| Restricciones sobre categoría profesional: listado recuperado de la tabla "requisito equipo categoría". No existirá cuando el campo "vinculación universidad" tome valor "no". | | |
| Categoría profesional permitida | Texto | Nombre de la categoría profesional. El valor a mostrar se obtendrá a través del requisito de integración [REQ\-INT\-0020\-SGP\-0017 \- Consultar detalle de categoría profesional](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md") a partir de la referencia almacenada en el campo "categoría profesional ref." de la tabla "requisito equipo categoría". |
| Limitaciones sobre la fecha de obtención de la categoría profesional | | |
| Posterior a | Fecha | Fecha mínima de obtención de la categoría profesional que exige la convocatoria.Se corresponde con el campo "fecha mínima categoría profesional" de la tabla "requisito equipo".Se muestra en modo consulta. |
| Anterior a | Fecha | Fecha máxima de obtención de la categoría profesional que exige la convocatoria.Se corresponde con el campo "fecha máxima categoría profesional" de la tabla "requisito equipo".Se muestra en modo consulta. |
|  | | |
| Número mínimo proyectos competitivos | Numérico entero genérico | Se corresponde con el campo "num. mínimo competitivos" de la tabla "requisito equipo". Se muestra en modo consulta. |
| Número mínimo proyectos no competitivos | Numérico entero genérico | Se corresponde con el campo "num. mínimo no competitivos" de la tabla "requisito equipo". Se muestra en modo consulta. |
| Número máximo proyectos competitivos en curso | Numérico entero genérico | Se corresponde con el campo "num. máximo competitivos activos" de la tabla "requisito equipo". Se muestra en modo consulta. |
| Número máximo proyectos no competitivos en curso | Numérico entero genérico | Se corresponde con el campo "num. máximo no competitivos activos" de la tabla "requisito equipo". Se muestra en modo consulta. |
| Observaciones sobre los requisitos a cumplir | Texto largo | Se corresponde con el campo "otros requisitos" de la tabla "requisitos equipo". Se muestra en modo consulta. |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Cancelar | Retorna al listado de Convocatorias. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




