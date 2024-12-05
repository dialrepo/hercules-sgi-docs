# Hércules : REP\-CSP\-0031 \- Listado general de convocatorias \- Formato csv







### Diseño Informe

Se debe de generar un informe en formato csv que reciba como parámetro de entrada la lista de bloques de datos a incluir. A continuación se indica el mapeo de los nombres de columnas del fichero csv de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna. Las columnas que disponen de un bloque de datos se mostrarán en el informe solo si el bloque de datos está incluido en la lista recibida como parámetro de entrada. Las columnas que no disponen de un bloque de datos se incluirán siempre en el informe.

Los nombres de las columnas en el fichero csv que formen parte de un bloque que se repita, deberán llevar en su nombre un número cardinal representativo del número de repetición, de forma que se permita la distinción del título de la columna. En la siguiente tabla se identifican también los bloques de datos susceptibles de repetirse. El fichero resultante contendrá las columnas necesarias, sobre cada bloque de repetición, de acuerdo a la convocatoria que más elementos contenga para ese bloque. Para las convocatorias que no contengan tantos elementos sobre cada bloque como marque el máximo, se mostrarán las columnas sin contenido.

Ejemplo: [proyectos\_with\_columns\_repeated.csv](/attachments/597852254/597865704.csv "attachments/597852254/597865704.csv")

  




| Bloque de datos | Columna informe | Campo SGI | Repetición |
| --- | --- | --- | --- |
|  | Título | Campo "título" de la tabla "convocatoria" |  |
|  | Estado | Valor del enumerado "tipo estado convocatoria" referenciado desde el campo "estado" de la tabla "convocatoria" |  |
|  | Tipo solicitud SGI | Valor del enumerado "tipo formulario solicitud" especificado por el campo "tipo formulario solicitud" de la tabla "convocatoria" |  |
|  | Unidad de gestión | Campo "nombre" de la tabla "unidad gestión" referenciado desde el campo "unidad gestión" de la tabla "convocatoria" |  |
|  | Modelo de ejecución | Campo "nombre" de la tabla "modelo ejecución" referenciado desde el campo "modelo ejecución" de la tabla "convocatoria" |  |
|  | Finalidad | Campo "nombre" de la tabla "finalidad" referenciado desde el campo "finalidad" de la tabla "convocatoria" |  |
|  | Identificación | Campo "código" de la tabla "convocatoria" |  |
|  | Fecha publicación | Campo "fecha publicación" de la tabla "convocatoria" |  |
|  | Fecha provisional | Campo "fecha provisional" de la tabla "convocatoria" |  |
|  | Fecha concesión | Campo "fecha concesión" de la tabla "convocatoria" |  |
|  | Duración actividad (meses) | Campo "duración" de la tabla "convocatoria" |  |
|  | Ámbito geográfico | Campo "nombre" de la tabla "tipo ámbito geográfico" referenciado desde el campo "ámbito geográfico" de la tabla "convocatoria" |  |
|  | Régimen concurrencia | Campo "nombre" de la tabla "tipo régimen concurrencia" referenciado desde el campo "régimen concurrencia" de la tabla "convocatoria" |  |
|  | Entidad gestora: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad gestora" |  |
|  | Entidad gestora: Número identificación | Campo "número de identificación fiscal" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad gestora" |  |
| Áreas temáticas | Listado áreas temáticas | Se mostrará en esta columna el nombre del listado de áreas con el que está relacionado la convocatoria y a continuación en columnas independientes las áreas temáticas. Todas las áreas temáticas con las que está relacionada la convocatoria serán del mismo listado de áreas temáticas, por tanto, para mostrar el nombre del listado se recuperará el nodo raíz (a obtener de la tabla "área temática") de cualquier elemento de la relación "convocatoria área temática" para la convocatoria en curso. El nombre del listado de áreas será el campo "nombre" del elemento raíz (aquel cuyo campo "padre" tome valor "null") obtenido de la tabla "área temática" ascendiendo a través del campo "padre" y partiendo de cualquier "área temática" de la relación "convocatoria área temática". |  |
|  | Área temática X | Se mostrarán tantas columnas como áreas temáticas  tenga la convocatoria. En cada columna se mostrará el campo "nombre" recuperado de la tabla "área temática" para la referencia establecida por el campo "área temática" de la tabla "convocatoria área temática" | Sí |
| Entidades convocantes |  | Se mostrarán todas las entidades convocantes relacionadas con la convocatoria. | Sí |
|  | Entidad convocante X: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad convocante". |  |
|  | Entidad convocante X: Número  identificación | Campo "número de identificación fiscal" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad convocante". |  |
|  | Entidad convocante X: Plan | Se mostrará el nombre del plan correspondiente al programa con el que se relaciona la entidad convocante. El nombre del plan es el nodo raíz al que pertenece el programa asociado a la entidad convocante. Se mostrará el campo "nombre" de la tabla "programa" del nodo raíz para el elemento indicado por el campo "programa" de la tabla "convocatoria entidad convocante". Para alcanzar el nodo raíz se "ascenderá" en la tabla "programa" desde el elemento de partida (campo "programa" de "convocatoria entidad convocante"), a través del campo "padre" hasta alcanzar el elemento cuyo campo "padre" tome valor "null". Éste será el nombre del plan a mostrar en esta columna. |  |
|  | Plan entidad convocante X: Modalidad | Se mostrará el valor del campo "nombre" de la tabla "programa" para el elemento referenciado desde el campo "programa" de la tabla "convocatoria entidad convocante". |  |
| Entidades financiadoras |  |  | Sí |
|  | Entidad financiadora X: Nombre | Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad financiadora". |  |
|  | Entidad financiadora X: Número identificación | Campo "número de identificación fiscal" recuperado a través [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad financiadora". |  |
|  | Entidad financiadora X: Fuente financiación | Campo "nombre" de la tabla "fuente financiación" para el elemento referenciado por el campo "fuente financiación" de la tabla "convocatoria entidad financiadora". |  |
|  | Fuente financiación X: Ámbito geográfico | Campo "nombre" de la tabla "tipo ámbito geográfico" para la fuente de financiación (tabla "fuente financiación") "referenciada por el campo fuente financiación" de la tabla "convocatoria entidad financiadora". |  |
|  | Entidad financiadora X: Tipo financiación | Campo "nombre" de la tabla "tipo financiación" para el elemento referenciado por el campo "tipo financiación" de la tabla "convocatoria entidad financiadora". |  |
|  | Entidad financiadora X: Importe financiación | Campo "importe financiación" de la tabla "convocatoria entidad financiadora". |  |
|  | Entidad financiadora X: Porcentaje financiación | Campo "porcentaje financiación" de la tabla "convocatoria entidad financiadora". |  |
| Enlaces |  | Se mostrarán todos los enlaces de la convocatoria, recuperados de la tabla "convocatoria enlace". Para cada enlace se mostrará su nombre y su tipo | Sí |
|  | URL X | Campo "url" de la tabla "convocatoria enlace". |  |
|  | Tipo enlace X | Campo "nombre" recuperado de la tabla "tipo enlace" para la referencia establecida por el campo "tipo enlace" de la tabla "convocatoria enlace". |  |
| Fases |  | Se mostrarán todas las fase de la convocatoria, recuperados de la tabla "convocatoria fase". Para cada fase se mostrarán sus fechas y su tipo. | Sí |
|  | Fase X: Fecha inicio | Campo "fecha inicio" de la tabla "convocatoria fase". |  |
|  | Fase X: Fecha fin | Campo "fecha fin" de la tabla "convocatoria fase". |  |
|  | Fase X: Tipo fase | Campo "nombre" recuperado de la tabla "tipo fase" para la referencia establecida por el campo "tipo fase" de la tabla "convocatoria fase". |  |
| Calendario justificación |  | Se recuperarán todos los elementos de la tabla "convocatoria periodo justificación", ordenados por número de periodo. | Sí |
|  | Periodo justificación X | Campo "número periodo" de la tabla "convocatoria periodo justificación". |  |
|  | Periodo justificación X. Tipo | Valor recuperado del enumerado "tipo justificación" para el campo "tipo justificación" de la tabla "convocatoria periodo justificación". |  |
|  | Periodo justificación X. Mes inicial | Campo "mes inicial" de la tabla "convocatoria periodo justificación". |  |
|  | Periodo justificación X. Mes final | Campo "mes final" de la tabla "convocatoria periodo justificación". |  |
|  | Periodo justificación X. Fecha inicio presentación | Campo "fecha inicio presentación" de la tabla "convocatoria periodo justificación". |  |
|  | Periodo justificación X. Fecha fin presentación | Campo "fecha fin presentación" de la tabla "convocatoria periodo justificación". |  |
| Seguimiento científico |  | Se recuperarán todos los elementos de la tabla "convocatoria periodo seguimiento científico", ordenados por número de periodo. | Sí |
|  | Seg. científico \- periodo X: Número | Campo "número periodo" de la tabla "convocatoria periodo seguimiento científico". |  |
|  | Seg. científico \- periodo X: Tipo | Valor correspondiente dentro del enumerado "Tipo seguimiento"  al campo "tipo seguimiento" de la tabla "convocatoria periodo seguimiento científico". |  |
|  | Seg. científico \- periodo X: Mes inicial | Campo "mes inicial" de la tabla "convocatoria periodo seguimiento científico". |  |
|  | Seg. científico \- periodo X: Mes final | Campo "mes final" de la tabla "convocatoria periodo seguimiento científico". |  |
|  | Seg. científico \- periodo X: Fecha inicio presentación | Campo "fecha inicio presentación" de la tabla "convocatoria periodo seguimiento científico". |  |
|  | Seg. científico \- periodo X: Fecha fin presentación | Campo "fecha fin presentación" de la tabla "convocatoria periodo seguimiento científico". |  |
| Hitos |  | Se recuperarán todos los hitos de la convocatoria, tabla "convocatoria hito". | Sí |
|  | Tipo hito X | Campo "nombre" de la tabla "tipo hito" para la referencia establecida por el campo "tipo hito" de la tabla "convocatoria hito". |  |
|  | Fecha tipo hito X | Campo "fecha" de la tabla "convocatoria hito". |  |
| Requisitos IP |  |  |  |
|  | Req. IP \- Número máximo IPs | Campo "número máximo IP" de la tabla "requisito IP" |  |
|  | Req. IP \- Edad máxima | Campo "edad máxima" de la tabla "requisito IP" |  |
|  | Req. IP \- Sexo | Se mostrará el nombre del sexo recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0014 \- Listar sexos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md") para la referencia establecida por el campo "sexo ref" de la tabla "requisito IP". |  |
|  | Req. IP \- Nivel académico X | Se mostrará una columna para cada nivel académico asociado a las restricciones IP de la convocatoria, tabla "requisito IP nivel académico".Se mostrará el nombre del nivel académico recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0019 \- Consultar detalle de nivel académico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md") para la referencia establecida por el campo "nivel académico ref" de la tabla "requisito IP nivel académico". | Sí |
|  | Req. IP \- Nivel académico posterior a | Se mostrará el campo "fecha mínima nivel académico" de la tabla "requisito IP". |  |
|  | Req. IP \- Nivel académico anterior a | Se mostrará el campo "fecha máxima nivel académico" de la tabla "requisito IP". |  |
|  | Req. IP \- Vinculación universidad | Se mostrará el campo "vinculación universidad" de la tabla "requisito IP". |  |
|  | Req. IP \- Categoría profesional X | Se mostrará una columna para cada categoría profesional asociada a las restricciones IP de la convocatoria, tabla "requisito IP categoría".Se mostrará el nombre de la categoría profesional recuperado a través del requisito de  integración [REQ\-INT\-0020\-SGP\-0017 \- Consultar detalle de categoría profesional](https://confluence.um.es/confluence/pages/viewpage.action?pageId=108608461 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=108608461") para la referencia establecida por el campo "categoría profesional ref." de la tabla "requisito IP categoría" | Sí |
|  | Req. IP \- Categoría profesional posterior a | Se mostrará el campo "fecha mínima categoría profesional" de la tabla "requisito IP". |  |
|  | Req. IP \- Categoría profesional anterior a | Se mostrará el campo "fecha máxima categoría profesional" de la tabla "requisito IP". |  |
|  | Núm. mínimo competitivos | Se mostrará el campo "núm. mínimo competitivos" de la tabla "requisito IP". |  |
|  | Núm. mínimo no competitivos | Se mostrará el campo "núm. mínimo no competitivos" de la tabla "requisito IP". |  |
|  | Núm. máximo competitivos | Se mostrará el campo "núm. máximo competitivos" de la tabla "requisito IP". |  |
|  | Núm. máximo no competitivos | Se mostrará el campo "núm. máximo no competitivos" de la tabla "requisito IP". |  |
| Requisitos Equipo |  |  |  |
|  | Req. equipo \- Edad máxima | Campo "edad máxima" de la tabla "requisito equipo" |  |
|  | Req. equipo \- Sexo | Se mostrará el nombre del sexo recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0014 \- Listar sexos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md") para la referencia establecida por el campo "sexo ref" de la tabla "requisito equipo". |  |
|  | Req. equipo \- Ratio mínimo sexo | Campo "ratio sexo" de la tabla "requisito equipo" |  |
|  | Req. equipo \- Nivel académico X | Se mostrará una columna para cada nivel académico asociado a las restricciones aplicadas sobre el  equipo por la convocatoria, tabla "requisito equipo nivel académico".Se mostrará el nombre del nivel académico recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0019 \- Consultar detalle de nivel académico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md") para la referencia establecida por el campo "nivel académico ref" de la tabla "requisito equipo nivel académico". | Sí |
|  | Req. equipo \- Nivel académico posterior a | Se mostrará el campo "fecha mínima nivel académico" de la tabla "requisito equipo". |  |
|  | Req. equipo \- Nivel académico anterior a | Se mostrará el campo "fecha máxima nivel académico" de la tabla "requisito equipo". |  |
|  | Req. equipo \- Vinculación universidad | Se mostrará el campo "vinculación universidad" de la tabla "requisito equipo". |  |
|  | Req. equipo \- Categoría profesional X | Se mostrará una columna para cada categoría profesional asociada a las restricciones IP de la convocatoria, tabla "requisito equipo categoría".Se mostrará el nombre de la categoría profesional recuperado a través del requisito de integración  [REQ\-INT\-0020\-SGP\-0017 \- Consultar detalle de categoría profesional](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md") para la referencia establecida por el campo "categoría profesional ref." de la tabla "requisito equipo categoría" | Sí |
|  | Req. equipo \- Categoría profesional posterior a | Se mostrará el campo "fecha mínima categoría profesional" de la tabla "requisito equipo". |  |
|  | Req. equipo \- Categoría profesional anterior a | Se mostrará el campo "fecha máxima categoría profesional" de la tabla "requisito equipo". |  |
|  | Núm. mínimo competitivos | Se mostrará el campo "núm. mínimo competitivos" de la tabla "requisito equipo". |  |
|  | Núm. mínimo no competitivos | Se mostrará el campo "núm. mínimo no competitivos" de la tabla "requisito equipo". |  |
|  | Núm. máximo competitivos | Se mostrará el campo "núm. máximo competitivos" de la tabla "requisito equipo". |  |
|  | Núm. máximo no competitivos | Se mostrará el campo "núm. máximo no competitivos" de la tabla "requisito equipo". |  |
| Elegibilidad |  | Se recuperarán en primer lugar los conceptos de gasto permitidos de la tabla "convocatoria concepto gasto", que serán aquellos que estén marcados con el campo "permitido" a "true". Para cada concepto de gasto se deberán recuperar los códigos económicos relacionados, obtenidos de la tabla "convocatoria concepto gasto código económico". Tras listar todos los conceptos de gasto permitidos, se recuperarán los conceptos de gasto no permitidos (campo "permitido" a "false"). | Sí |
|  | Concepto gasto permitido X: Nombre | Campo "nombre" de la tabla "concepto gasto" correspondiente al campo "concepto gasto" de la tabla "convocatoria concepto gasto", debiendo ser un concepto marcado con el campo "permitido" a "true". |  |
|  | Concepto gasto permitido X: Importe máximo | Campo "importe máximo" de la tabla "convocatoria concepto gasto". |  |
|  | Concepto gasto permitido X:  Mes inicial | Campo "mes inicial" de la tabla "convocatoria concepto gasto". |  |
|  | Concepto gasto permitido X: Mes final | Campo "mes final" de la tabla "convocatoria concepto gasto". |  |
|  | Concepto gasto permitido X: Código económico Y | Se mostrará el identificador concatenado con el nombre del código económico recuperados a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para el "código económico ref" de la tabla "convocatoria concepto gasto código económico". | Sí. Repetición dentro de concepto de gasto permitido |
|  | Concepto gasto no permitido X: Nombre | Campo "nombre" de la tabla "concepto gasto" correspondiente al campo "concepto gasto" de la tabla "convocatoria concepto gasto", debiendo ser un concepto marcado con el campo "permitido" a "false". | Sí |
|  | Concepto gasto no permitido X: Importe máximo | Campo "importe máximo" de la tabla "convocatoria concepto gasto". |  |
|  | Concepto gasto no permitido X: mes inicial | Campo "mes inicial" de la tabla "proyecto concepto gasto". |  |
|  | Concepto gasto no permitido X: mes final | Campo "mes final" de la tabla "proyecto concepto gasto". |  |
|  | Concepto gasto no permitido X: Código económico Y | Se mostrará el identificador concatenado con el nombre del código económico recuperados a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para el "código económico ref" de la tabla "convocatoria concepto gasto código económico". | Sí. Repetición dentro de concepto de gasto no permitido |
| Partidas presupuestarias |  | Se recuperarán todos los registros de la tabla "convocatoria partida" para el proyecto listado. | Sí |
|  | Partida X | Se mostrará el campo "código" de la tabla "convocatoria partida". |  |
|  | Tipo partida X | Se mostrará el valor correspondiente sobre el enumerado "tipo partida" del campo "tipo partida" de la tabla "convocatoria partida". |  |
| Configuración solicitudes |  |  |  |
|  | Presentación solicitudes SGI | Campo "tramitación SGI" de la tabla  "configuración solicitud". | No |
|  | Inicio presentación solicitudes | Campo "fecha inicio" de la tabla "convocatoria fase" para la fase referenciada por el campo "fase presentación solicitudes" de la tabla "configuración solicitud". | No |
|  | Fin presentación solicitudes | Campo "fecha fin" de la tabla "convocatoria fase" para la fase referenciada por el campo "fase presentación solicitudes" de la tabla "configuración solicitud". | No |
|  | Importe máximo solicitudes | Campo "importe máximo" de la tabla "configuración solicitud". | No |
|  | Documentos requerido X | Se mostrarán todos los documentos asociados a la convocatoria en la tabla "documento requerido solicitud". Se mostrará el tipo de documento.Se mostrará el campo "nombre" de la tabla "tipo documento" para la referencia establecida por el campo "tipo documento" de la tabla ""documento requerido solicitud". | Sí |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














