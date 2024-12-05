# Hércules : REP\-CSP\-0017 \- Exportación presupuesto de proyecto \- Formato pdf







### Diseño Informe

Se debe de generar un informe en formato PDF que reciba como parámetro de entrada el título del informa. A continuación se indica el mapeo de los nombres de columnas del fichero de salida con la tabla y campo del SGI desde el que deben ser recuperadas. 

Se incluirá el parámetro de entrada "título" como título del informe.

El formato del informe será en líneas de dos columnas, donde la primera columna será una etiqueta y la segunda el valor recuperado del SGI. A continuación se indica el mapeo de los nombres de columnas del fichero de salida con la tabla y campo del SGI desde el que deben ser recuperadas. 

  




| Columna informe | Campo SGI |
| --- | --- |
| Anualidad | Se corresponde con el campo "anualidad" de la tabla "anualidad gasto". |
| Concepto de gasto | Campo "nombre" de la tabla "concepto gasto" correspondiente  al campo "concepto gasto" de la tabla "anualidad gasto". |
| Aplicación presupuestaria | Campo "código" de la tabla "proyecto partida" correspondiente  al campo "proyecto partida" de la tabla "anualidad gasto". |
| Código económico | Identificador del código económico obtenido a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para el campo "código económico ref" de la tabla "anualidad gasto". |
| Descripción código económico | Nombre del código económico obtenido a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para el campo "código económico ref" de la tabla "anualidad gasto". |
| Importe presupuesto | Campo "importe presupuesto" de la tabla "anualidad gasto". |
| Importe concedido | Campo "importe concedido" de la tabla "anualidad gasto". |

  
  


  








### Interfaces de usuario relacionados







### Casos de uso relacionados



  














