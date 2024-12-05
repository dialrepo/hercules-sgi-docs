# Hércules : IU\-ETI\-0060\-014 Memorias \- Edición evaluaciones



## Formulario de Memorias \- Edición evaluaciones

Pantalla que muestra el resultado de las evaluaciones de una memoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de evaluaciones de la memoria | | |
| Tipo | Texto corto | Tipo de evaluación: Memoria, Retrospectiva, Seguimiento anual o Seguimiento final |
| Nº de versión | Secuencia | Número de versión  de la evaluación. |
| Dictamen | Texto | Dictamen de la evaluación (en caso de que ya se haya evaluado)Sólo se mostrará el dictamen en los siguientes casos:* la evaluación es de revisión mínima  (campo "esRevMinima" es true) * la evaluación no es de revisión mínima (campo "esRevMinima" es true) y el acta asociada a la convocatoria de reunión de la evaluación esta en estado "Finalizada". Si esta "En elaboración" no se muestra el dictamen. |
| Informe de evaluación | Icono de enlace al fichero | Sólo se mostrará el informe en los siguientes casos:* la evaluación es de revisión mínima  (campo "esRevMinima" es true) * la evaluación no es de revisión mínima (campo "esRevMinima" es true) y el acta asociada a la convocatoria de reunión de la evaluación esta en estado "Finalizada". Si esta "En elaboración" no se muestra el dictamen.  Y:Si la evaluación es de tipo Memoria y dictamen es:* Favorable pendiente de revisión mínima * Pendiente de correcciones * No procede evaluar  Si la evaluación es de tipo  Seguimiento anual y dictamen es:* Solicitud de modificaciones  Si la evaluación es de tipo  Seguimiento final y dictamen es:* Solicitud de aclaraciones |
| Informe favorable | Enlace al fichero de informe favorable | Sólo se mostrará el informe en los siguientes casos:* la evaluación es de revisión mínima  (campo "esRevMinima" es true) * la evaluación no es de revisión mínima (campo "esRevMinima" es true) y el acta asociada a la convocatoria de reunión de la evaluación esta en estado "Finalizada". Si esta "En elaboración" no se muestra el dictamen.  Y:Si la evaluación es de tipo Memoria y dictamen es:* Favorable  Si la evaluación es de tipo Retrospectiva y dictamen es:* Favorable |

  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver informe evaluación | Se genera a partir de una plantilla el informe de evaluación (con los datos del proyecto y los comentarios aportados durante la evaluación)[REP\-ETI\- 0040\-Informe evaluación (comentarios)](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0040-informe-evaluacion-comentarios.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0040-informe-evaluacion-comentarios.md") |  | ETI\-MEM\-INV\-ER |
| Ver informe favorable | Se genera a partir de una plantilla el informe de favorable[REP\-ETI\- 0050\-Informe favorable memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0050-informe-favorable-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0050-informe-favorable-memoria.md") si es memoria de tipo nueva[REP\-ETI\- 0120\-Informe favorable tipo ratificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0120-informe-favorable-tipo-ratificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0120-informe-favorable-tipo-ratificacion.md") si es memoria de tipo ratificación[REP\-ETI\- 0130\-Informe favorable tipo modificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0130-informe-favorable-tipo-modificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0130-informe-favorable-tipo-modificacion.md") si es memoria de tipo modificación[REP\-ETI\- 0110\-Informe evaluación restrospectiva](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0110-informe-evaluacion-retrospectiva.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/eti-informes-predifinidos/rep-eti-0110-informe-evaluacion-retrospectiva.md") si es retrospectiva |  | ETI\-MEM\-INV\-ER |

  


### Acciones

#### Por actor

#### Todos los permisos de acceso




