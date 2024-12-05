# Hércules : IU\-ETI\-0060\-003 \- Creación petición de evaluación \- Datos generales



## Formulario de Alta petición de evaluación

Las peticiones de evaluación de ética pueden  provenir de una solicitud de convocatoria del módulo CSP, lo que supondrá que la petición parta de determinados datos ya cumplimentados (que a efectos de IU supone acceder a la modificación de la petición de evaluación) o bien crearse desde cero sin estar asociada a ninguna solicitud del módulo CSP, que es el escenario recogido en este IU.

  


La pantalla de creación de  una nueva petición de evaluación, consta de dos apartados:

* Datos generales
* Equipo investigador

Este IU se corresponde con el apartado de Datos generales

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Título | TextoObligatorio | Título del proyecto |
| Tipo de actividad | SelectorTexto cortoObligatorio | Desplegable con los valores:* Proyecto de investigación * Práctica docente * Investigación titulada |
| Tipo de investigación tutelada | SelectorTexto cortoObligatorio si en el combo de Tipo de actividad se selecciona Investigación titulada | Este campo solamente estará disponible si el tipo de actividad es "investigación tutelada", siendo, en este caso, obligatorio.Desplegable con los valores:* Tesis doctoral * Trabajo Fin de Máster * Trabajo Fin de Grado  El desplegable muestra los valores del enumerado "tipo investigación tutelada".Se corresponde con el campo "tipo investigación tutelada" de la tabla "petición evaluación". |
| Director/a o Tutor/a | ReferenciaTextoObligatorio si en el combo de Tipo de actividad se selecciona Investigación titulada | Este campo solamente estará disponible si el tipo de actividad es "investigación tutelada"", siendo, en este caso, obligatorio.Se utilizará el componente buscador de personasPara introducir el valor se hará uso del buscador común de personas [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"), resuelto por medio del requisito de integración  [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Las condiciones de invocación a este buscador se especifican en la tabla de acciones "Buscar (director/a o tutor/a)".Tras realizar la búsqueda, se mostrará el nombre y apellidos de la persona seleccionada.  El nombre y apellidos a mostrar se obtendrán a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md")La referencia de la persona seleccionada se almacenará en el campo "tutor ref" de la tabla "petición evaluación" |
| ¿Se dispone de financiación para realizar el proyecto? | SelectorTexto cortoObligatorio | Desplegable con los valores:* Sí * No |
| Órgano financiador | Texto cortoObligatorio si "¿Se dispone de financiación para realizar el proyecto?" tiene valor "Sí", en otro caso opcional | Financiación del proyecto. |
| Estado | SelectorTexto cortoObligatorio si "¿Se dispone de financiación para realizar el proyecto?" tiene valor "Sí", en otro caso opcional | Desplegable con los valores:* Solicitado * Concedido * Denegado |
| Importe financiación | DecimalObligatorio si "¿Se dispone de financiación para realizar el proyecto?" tiene valor "Sí", en otro caso opcional | Importe de financiación del proyecto |
| Fecha inicio | FechaObligatorio | Fecha de inicio del proyecto |
| Fecha fin | FechaObligatorio | Fecha fin del proyecto |
| Resumen | Texto largoObligatorio | Resumen del proyecto |
| Valor social | SelectorObligatorio | Valor social del proyecto. Desplegable con los valores:* 1\. Investigación fundamental * 2\. Investigación aplicada a la prevención, diagnóstico o tratamiento de alteraciones o de enfermedades físicas, psíquicas u otras anomalías o de sus efectos en los seres humanos, los animales o las plantas. * 3\. Investigación aplicada a la evaluación, detección, regulación o modificación de las condiciones fisiológicas, psicológicas o sociales en los seres humanos, los animales o las plantas * 4\. Investigación aplicada al desarrollo y la fabricación de aparatos, ayudas técnicas o informáticas, fármacos, alimentos, piensos y otras sustancias o productos, así como la realización de pruebas para comprobar su calidad, eficacia y seguridad * 5\. Investigación aplicada a la protección o mejora de las condiciones sociales, políticas, económicas o ambientales en interés del bienestar y/o la salud de los seres humanos. * 6\. Investigación aplicada al bienestar de los animales y/o a la mejora de las condiciones de producción de los animales y las plantas. * 7\. Investigación dirigida a la protección y conservación de las especies y del medio natural. * 8\. Enseñanza superior o la formación para la adquisición o mejora de las aptitudes profesionales. * 9\. Investigación jurídica o médico\-legal. * 10\. Otra finalidad.  En caso de seleccionar la opción 10 será obligatorio informar del campo "Especificar" |
| Especificar (valor social) | Texto largoObligatorio si en el campo Valor social se selecciona la opción 10 | Otra opción de valor social del proyecto |
| Objetivos científicos | Texto largoObligatorio | Objetivos científicos del proyecto |
| Diseño metodológico | Texto largoObligatorio | Diseño metodológico del proyecto |

  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (director/a o tutor/a) | Muestra la pantalla de búsqueda para seleccionar una persona | Se hará uso del buscador común de personas [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") , resuelto por medio del requisito de integración  [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Se le deberá pasar a este buscador el tipo de colectivo "tutor csp". | No se necesita permiso para mostrar la pantalla de búsqueda de personas |

  


### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la petición de evaluación con la información introducida en el formulario | [CU\-ETI\-0060\-003 \- Alta Petición de evaluación \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-003-alta-peticion-de-evaluacion-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0060-peticiones-de-evaluacion-investigador/cu-eti-0060-003-alta-peticion-de-evaluacion-guardar.md") | ETI\-PEV\-INV\-C |
| Cancelar | Retorna al listado de peticiones de evaluación sin salvar los posibles cambios. |  |  |

  


### Acciones

#### Por actor

#### Todos los permisos de acceso




