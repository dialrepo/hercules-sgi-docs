# Hércules : REP\-CSP\-0032 \- Listado general de convocatorias \- Formato rtf







### Diseño Informe

Se debe de generar un informe en formato RTF compatible con DOCX que reciba como parámetros de entrada el título del informe y la lista de bloques de datos a incluir. El informe contendrá la información detallada de proyectos. Se listarán todas las convocatorias recuperadas con su detalle.  Se incluirá el parámetro de entrada "título" como título del informe.

El listado se mostrará agrupado por convocatoria. Cada vez que se cambie de convocatoria se resaltará la línea de texto en el informe y a continuación comenzará a listarse su detalle.

El detalle se visualizará en función del bloque de datos:

* A dos columnas. Siendo la primera columna la etiqueta de la misma y la segunda columna el contenido recuperado con los datos de la convocatoria.
* En varias filas, pero también a dos columnas, de forma que varias filas compartan una misma columna de título. La primera columna será el título y en la segunda columna, saltando de fila, se mostrará el contenido.  ejemplo ![](/attachments/597852256/597865719.png)

Habrá bloques de datos que se repitan, en este caso la etiqueta será representativa del bloque de datos, e incluirá entre paréntesis el nombre de las columnas que se mostrarán para cada elemento. Cada elemento repetido se mostrará de alguna de las formas indicadas previamente (dependiendo de cada bloque de datos).

A continuación se indica el mapeo de los nombres de columnas del fichero de salida con la tabla y campo del SGI desde el que deben ser recuperadas. Se indica también el bloque de datos al que pertenece cada columna, así como el modo en el que se visualizará (a dos columnas o repeticiones de filas).

  


Ejemplo de formato de datos:  [proyectos\_with\_list.rtf](/attachments/597852256/597865714.rtf "attachments/597852256/597865714.rtf") al que se de debe de incorporar la visualización en varias filas, de manera semejante a la imagen mostrada previamente.

  


  




| Bloque de datos | Columna informe | Formato | Campo SGI | Repetición |
| --- | --- | --- | --- | --- |
|  | Título | Dos columnas | Campo "título" de la tabla "convocatoria". | No |
|  | Estado | Dos columnas | Valor del enumerado "tipo estado convocatoria" referenciado desde el campo "estado" de la tabla "convocatoria". | No |
|  | Tipo solicitud SGI | Dos columnas | Valor del enumerado "tipo formulario solicitud" especificado por el campo "tipo formulario solicitud" de la tabla "convocatoria". | No |
|  | Unidad de gestión | Dos columnas | Campo "nombre" de la tabla "unidad gestión" referenciado desde el campo "unidad gestión" de la tabla "convocatoria". | No |
|  | Modelo de ejecución | Dos columnas | Campo "nombre" de la tabla "modelo ejecución" referenciado desde el campo "modelo ejecución" de la tabla "convocatoria". | No |
|  | Finalidad | Dos columnas | Campo "nombre" de la tabla "finalidad" referenciado desde el campo "finalidad" de la tabla "convocatoria". | No |
|  | Identificación | Dos columnas | Campo "código" de la tabla "convocatoria". | No |
|  | Fecha publicación | Dos columnas | Campo "fecha publicación" de la tabla "convocatoria". | No |
|  | Fecha provisional | Dos columnas | Campo "fecha provisional" de la tabla "convocatoria". | No |
|  | Fecha concesión | Dos columnas | Campo "fecha concesión" de la tabla "convocatoria". | No |
|  | Duración actividad (meses) | Dos columnas | Campo "duración" de la tabla "convocatoria". | No |
|  | Ámbito geográfico | Dos columnas | Campo "nombre" de la tabla "tipo ámbito geográfico" referenciado desde el campo "ámbito geográfico" de la tabla "convocatoria". | No |
|  | Régimen concurrencia | Dos columnas | Campo "nombre" de la tabla "tipo régimen concurrencia" referenciado desde el campo "régimen concurrencia" de la tabla "convocatoria". | No |
|  | Entidad gestora (nombre \- número identificación) | Dos columnas | Se mostrarán el nombre y el número de identificación, separados por el carácter "\-".Nombre: Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad gestora".Número de identificación: Campo "número de identificación fiscal" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad gestora" | No |
| Áreas temáticas | Áreas temáticas | Varias filas | Cada área temática vinculada a la convocatoria se mostrará en una fila. En cada fila se mostrará el nombre del listado de áreas temáticas concatenado (carácter ':') con el área temática.Se recuperarán las áreas temáticas de la convocatoria de la tabla "convocatoria área temática". Para cada área se mostrará su nombre (campo "nombre" de la tabla "área temática"), precedido del nombre del listado y concatenado éste con carácter ":". El nombre del listado de áreas será el campo "nombre" del elemento raíz (aquel cuyo campo "padre" tome valor "null") obtenido de la tabla "área temática", para recuperarlo se "ascenderá" través del campo "padre" a partir del  "área temática" especificada en la relación "convocatoria área temática". | Sí |
| Entidades convocantes | Entidades convocantes  (nombre \- número identificación \- plan \- modalidad) | Varias filas | Se recuperarán todas las entidades convocantes de la tabla "convocatoria entidad convocante" | Sí |
|  | Entidad convocante X |  | Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad convocante". |  |
|  |  |  | Campo "número de identificación fiscal" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad convocante". |  |
|  |  |  | Plan: Se mostrará el nombre del plan correspondiente al programa con el que se relaciona la entidad convocante. El nombre del plan es el nodo raíz al que pertenece el programa asociado a la entidad convocante. Se mostrará el campo "nombre" de la tabla "programa" correspondiente al nodo raíz del elemento indicado por el campo "programa" de la tabla "convocatoria entidad convocante". Para alcanzar el nodo raíz se "ascenderá" en la tabla "programa" desde el elemento de partida (campo "programa" de "convocatoria entidad convocante"), a través del campo "padre" hasta alcanzar el elemento cuyo campo "padre" tome valor "null". Éste será el nombre del plan a mostrar en esta columna. |  |
|  |  |  | Modalidad: Se mostrará el valor del campo "nombre" de la tabla "programa" para el elemento referenciado desde el campo "programa" de la tabla "convocatoria entidad convocante". |  |
| Entidades financiadoras | Entidades financiadora (nombre \- número identificación \- fuente financiación \- ámbito fuente financiación \- tipo financiación \- importe financiación \- porcentaje financiación) | Varias filas | Se recuperarán todas las entidades financiadoras de la tabla "convocatoria entidad financiadora" | Sí |
|  | Entidad financiadora X |  | Nombre: Campo "nombre" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad financiadora". |  |
|  |  |  | Número identificación: Campo "número de identificación fiscal" recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") para la entidad indicada por el campo "entidad ref" de la tabla "convocatoria entidad financiadora". |  |
|  |  |  | Fuente financiación: Campo "nombre" de la tabla "fuente financiación" para el elemento referenciado por el campo "fuente financiación" de la tabla "convocatoria entidad financiadora". |  |
|  |  |  | Tipo financiación: Campo "nombre" de la tabla "tipo financiación" para el elemento referenciado por el campo "tipo financiación" de la tabla "convocatoria entidad financiadora". |  |
|  |  |  | Importe financiación: Campo "importe financiación" de la tabla "convocatoria entidad financiadora". |  |
|  |  |  | Porcentaje financiación: Campo "porcentaje financiación" de la tabla "convocatoria entidad financiadora". |  |
| Enlaces | Enlaces (URL\-tipo enlace) | Varias filas | Se recuperarán todos los enlaces de la convocatoria de la tabla "convocatoria enlace".  Para cada enlace se mostrará su url y su tipo. | Sí |
|  | Enlace X |  | Campo "url" de la tabla "convocatoria enlace". |  |
|  |  |  | Campo "nombre" recuperado de la tabla "tipo enlace" para la referencia establecida por el campo "tipo enlace" de la tabla "convocatoria enlace". |  |
| Fases | Fases (fecha inicio \- fecha fin \- tipo fase) | Varias filas | Se recuperarán todas las fases de la convocatoria, tabla "convocatoria fase", se mostrarán el tipo de fase,  la fecha de inicio, la fecha de fin. | Sí |
|  | Fase X |  | Campo "nombre" recuperado de la tabla "tipo fase" para la referencia establecida por el campo "tipo fase" de la tabla "convocatoria fase". |  |
|  |  |  | Campo "fecha inicio" de la tabla "convocatoria fase". |  |
|  |  |  | Campo "fecha fin" de la tabla "convocatoria fase". |  |
| Calendario justificación | Calendario justificación (número periodo \- tipo \- mes inicial \- mes final \- fecha inicio presentación \- fecha fin presentación) | Varias filas | Se recuperarán todos los periodos de justificación asociados a la convocatoria recuperados de la tabla "convocatoria periodo justificación" ordenados por número periodo. Para cada periodo se mostrarán los campos número de periodo, tipo periodo, mes inicial, mes final, fecha inicio presentación, fecha fin presentación. | Sí |
|  | Periodo justificación X |  | Número periodo: Campo "número periodo" de la tabla "convocatoria periodo justificación". |  |
|  |  |  | Tipo periodo: Valor recuperado del enumerado "tipo justificación" para el campo "tipo justificación" de la tabla "convocatoria periodo justificación". |  |
|  |  |  | Mes inicial: Campo "mes inicial" de la tabla "convocatoria periodo justificación". |  |
|  |  |  | Mes final: Campo "mes final" de la tabla "convocatoria periodo justificación". |  |
|  |  |  | Fecha inicio presentación: Campo "fecha inicio presentación" de la tabla "convocatoria periodo justificación". |  |
|  |  |  | Fecha fin presentación: Campo "fecha fin presentación" de la tabla "convocatoria periodo justificación". |  |
| Seguimiento científico | Seguimiento científico (número periodo\- tipo \- mes inicial \- mes final \- fecha inicio presentación \- fecha fin presentación) | Varias filas | Se recuperarán todos los periodos de seguimiento científico asociados a la convocatoria recuperados de la tabla "convocatoria periodo seguimiento científico" ordenados por número periodo. Para cada periodo se mostrarán los campos número de periodo, tipo periodo, mes inicial, mes final, fecha inicio presentación, fecha fin presentación. | Sí |
|  | Periodo seguimiento X |  | Número periodo: Campo "número periodo" de la tabla "convocatoria periodo seguimiento científico". |  |
|  |  |  | Tipo periodo: Valor correspondiente dentro del enumerado "Tipo seguimiento"  al campo "tipo seguimiento" de la tabla "convocatoria periodo seguimiento científico". |  |
|  |  |  | Mes inicial: Campo "mes inicial" de la tabla "convocatoria periodo seguimiento científico". |  |
|  |  |  | Mes final: Campo "mes final" de la tabla "convocatoria periodo seguimiento científico". |  |
|  |  |  | Fecha inicio presentación: Campo "fecha inicio presentación" de la tabla "convocatoria periodo seguimiento científico". |  |
|  |  |  | Fecha fin presentación: Campo "fecha fin presentación" de la tabla "convocatoria periodo seguimiento científico". |  |
| Hitos | Hitos (tipo hito \- fecha) | Varias filas | Se recuperarán todos los hitos de la convocatoria, tabla "convocatoria hito".  Para cada hito se mostrará su tipo y su fecha. | Sí |
|  | Hito X |  | Tipo hito: Campo "nombre" de la tabla "tipo hito" para la referencia establecida por el campo "tipo hito" de la tabla "convocatoria hito". |  |
|  |  |  | Fecha: Campo "fecha" de la tabla "convocatoria hito". |  |
| Requisitos IP |  |  |  | No |
|  | Req. IP \- Número máximo IPs | Dos columnas | Campo "número máximo IP" de la tabla "requisito IP" | No |
|  | Req. IP \- Edad máxima | Dos columnas | Campo "edad máxima" de la tabla "requisito IP" | No |
|  | Req. IP \- Sexo | Dos columnas | Se mostrará el nombre del sexo recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0014 \- Listar sexos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md") para la referencia establecida por el campo "sexo ref" de la tabla "requisito IP". | No |
|  | Req. IP \- Nivel académico X | Varias filas | Se mostrará una fila para cada nivel académico asociado a las restricciones IP de la convocatoria, tabla "requisito IP nivel académico".Se mostrará el nombre del nivel académico recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0019 \- Consultar detalle de nivel académico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md") para la referencia establecida por el campo "nivel académico ref" de la tabla "requisito IP nivel académico". | Sí |
|  | Req. IP \- Nivel académico posterior a | Dos columnas | Se mostrará el campo "fecha mínima nivel académico" de la tabla "requisito IP". | No |
|  | Req. IP \- Nivel académico anterior a | Dos columnas | Se mostrará el campo "fecha máxima nivel académico" de la tabla "requisito IP". | No |
|  | Req. IP \- Vinculación universidad | Dos columnas | Se mostrará el campo "vinculación universidad" de la tabla "requisito IP". | No |
|  | Req. IP \- Categoría profesional X | Varias filas | Se mostrará una fila para cada categoría profesional asociada a las restricciones IP de la convocatoria, tabla "requisito IP categoría".Se mostrará el nombre de la categoría profesional recuperado a través del requisito de  integración [REQ\-INT\-0020\-SGP\-0017 \- Consultar detalle de categoría profesional](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md") para la referencia establecida por el campo "categoría profesional ref." de la tabla "requisito IP categoría" | Sí |
|  | Req. IP \- Categoría profesional posterior a | Dos columnas | Se mostrará el campo "fecha mínima categoría profesional" de la tabla "requisito IP". | No |
|  | Req. IP \- Categoría profesional anterior a | Dos columnas | Se mostrará el campo "fecha máxima categoría profesional" de la tabla "requisito IP". | No |
|  | Núm. mínimo competitivos | Dos columnas | Se mostrará el campo "núm. mínimo competitivos" de la tabla "requisito IP". | No |
|  | Núm. mínimo no competitivos | Dos columnas | Se mostrará el campo "núm. mínimo no competitivos" de la tabla "requisito IP". | No |
|  | Núm. máximo competitivos | Dos columnas | Se mostrará el campo "núm.  máximo competitivos" de la tabla "requisito IP". | No |
|  | Núm. máximo no competitivos | Dos columnas | Se mostrará el campo "núm.  máximo no competitivos" de la tabla "requisito IP". | No |
| Requisitos equipo |  |  |  | No |
|  | Req. equipo \- Edad máxima | Dos columnas | Campo "edad máxima" de la tabla "requisito equipo" | No |
|  | Req. equipo \- Sexo | Dos columnas | Se mostrará el nombre del sexo recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0014 \- Listar sexos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md") para la referencia establecida por el campo "sexo ref" de la tabla "requisito equipo". | No |
|  | Req. equipo \- Ratio mínimo sexo | Dos columnas | Campo "ratio sexo" de la tabla "requisito equipo" | No |
|  | Req. equipo \- Nivel académico X | Varias filas | Se mostrará una fila para cada nivel académico asociado a las restricciones aplicadas por la convocatoria sobre el equipo, tabla "requisito equipo nivel académico".Se mostrará el nombre del nivel académico recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0019 \- Consultar detalle de nivel académico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md") para la referencia establecida por el campo "nivel académico ref" de la tabla "requisito equipo nivel académico". | Sí |
|  | Req. equipo \- Nivel académico posterior a | Dos columnas | Se mostrará el campo "fecha mínima nivel académico" de la tabla "requisito equipo". | No |
|  | Req. equipo \- Nivel académico anterior a | Dos columnas | Se mostrará el campo "fecha máxima nivel académico" de la tabla "requisito equipo". | No |
|  | Req. equipo \- Vinculación universidad | Dos columnas | Se mostrará el campo "vinculación universidad" de la tabla "requisito equipo". | No |
|  | Req. equipo \- Categoría profesional X | Varias filas | Se mostrará una fila para cada categoría profesional asociada a las restricciones aplicadas por la convocatoria sobre el equipo, tabla "requisito equipo categoría".Se mostrará el nombre de la categoría profesional recuperado a través del requisito de integración [REQ\-INT\-0020\-SGP\-0017 \- Consultar detalle de categoría profesional](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md") para la referencia establecida por el campo "categoría profesional ref." de la tabla "requisito equipo categoría". | Sí |
|  | Req. equipo \- Categoría profesional posterior a | Dos columnas | Se mostrará el campo "fecha mínima categoría profesional" de la tabla "requisito equipo". | No |
|  | Req. equipo \- Categoría profesional anterior a | Dos columnas | Se mostrará el campo "fecha máxima categoría profesional" de la tabla "requisito equipo". | No |
|  | Núm. mínimo competitivos | Dos columnas | Se mostrará el campo "núm. mínimo competitivos" de la tabla "requisito equipo". | No |
|  | Núm. mínimo no competitivos | Dos columnas | Se mostrará el campo "núm. mínimo no competitivos" de la tabla "requisito equipo". | No |
|  | Núm. máximo competitivos | Dos columnas | Se mostrará el campo "núm. máximo competitivos" de la tabla "requisito equipo". | No |
|  | Núm. máximo no competitivos | Dos columnas | Se mostrará el campo "núm. máximo no competitivos" de la tabla "requisito equipo". | No |
| Elegibilidad | Conceptos gasto (nombre \- importe máximo \- mes inicial \- mes final \- códigos económicos \- permitido) | Varias filas | Se recuperarán  los conceptos de gasto de la tabla "convocatoria concepto gasto". se recuperarán en orden, primero los permitidos (campo "permitido" valor "true") y después los no permitidos (campo "permitido" valor "false"). Para cada concepto de gasto se deberán recuperar los códigos económicos relacionados, obtenidos de la tabla "convocatoria concepto gasto código económico". | Sí |
|  | Concepto gasto X |  | Nombre: Campo "nombre" de la tabla "concepto gasto" correspondiente al campo "concepto gasto" de la tabla "convocatoria concepto gasto". |  |
|  |  |  | Importe máximo: Campo "importe máximo" de la tabla "convocatoria concepto gasto". |  |
|  |  |  | Mes inicial: Campo "mes inicial" de la tabla "convocatoria concepto gasto". |  |
|  |  |  | Mes final: Campo "mes final" de la tabla "convocatoria concepto gasto". |  |
|  |  |  | Códigos económicos: Los códigos económicos serán una repetición pero se mostrarán en la misma línea, separados por el carácter ",". Se mostrará el identificador concatenado con el nombre del código económico recuperados a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para el "código económico ref" de la tabla "convocatoria concepto gasto código económico". |  |
|  |  |  | Permitido: Según el valor del campo "permitido" de la tabla "convocatoria concepto gasto":* Si toma valor "true" se mostrará el texto "permitido" * Si toma valor "false" se mostrará el texto "no permitido" |  |
| Partidas presupuestarias | Partidas presupuestarias (partida \- tipo) | Varias filas | Se recuperarán todos los registros de la tabla "convocatoria partida" para la convocatoria listada.  Se mostrarán la partida y su tipo. | Sí |
|  | Partida X |  | Campo "código" de la tabla "convocatoria partida". |  |
|  |  |  | Valor correspondiente sobre el enumerado "tipo partida" del campo "tipo partida" de la tabla "convocatoria partida". |  |
| Configuración solicitudes |  |  |  |  |
|  | Presentación solicitudes SGI | Dos columnas | Campo "tramitación SGI" de la tabla  "configuración solicitud". | No |
|  | Inicio presentación solicitudes | Dos columnas | Campo "fecha inicio" de la tabla "convocatoria fase" para la fase referenciada por el campo "fase presentación solicitudes" de la tabla "configuración solicitud". | No |
|  | Fin presentación solicitudes | Dos columnas | Campo "fecha fin" de la tabla "convocatoria fase" para la fase referenciada por el campo "fase presentación solicitudes" de la tabla "configuración solicitud". | No |
|  | Importe máximo solicitudes | Dos columnas | Campo "importe máximo" de la tabla "configuración solicitud". | No |
|  | Documentos requeridos | Varias filas | Se mostrará una fila para cada documento requerido. En cada fila se mostrará el tipo de documento. Se mostrará el campo "nombre" de la tabla "tipo documento" para la referencia establecida por el campo "tipo documento" de la tabla ""documento requerido solicitud". | Sí |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














