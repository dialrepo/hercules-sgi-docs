# Hércules : IU\-CSP\-0206\-009 \- Ver concepto de gasto permitido



## Formulario  Ver concepto de gasto permitido

Formulario para ver el detalle de un concepto de gasto permitidos de una convocatoria.

Se divide en dos pantallas:

* Datos del propio concepto de gasto
* Códigos económicos: listado con los códigos económicos correspondientes al concepto de gasto



| **Concepto de gasto****Códigos económicos** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Datos del concepto de gasto | | |
| Concepto de gasto | Texto corto | Nombre del concepto de gasto (campo "nombre" de la tabla "concepto gasto") recuperado a partir del identificador del concepto de gasto permitido de la convocatoria (tabla "convocatoria concepto gasto"). Modo consulta. |
| Costes indirectos | Boolean | Indica si el concepto de gasto es utilizado para la gestión de costes indirectos. Se mostrará valor "sí" o "no", en función del campo "costes indirectos" de la tabla "concepto gasto", para el registro recuperado a partir del identificador del concepto de gasto permitido de la convocatoria (tabla "convocatoria concepto gasto").Modo consulta. |
| Importe máximo | DecimalImporte | Campo "importe máximo" de la tabla "convocatoria concepto gasto". Modo consulta. |
| Mes inicial | Entero | Campo "mes inicial" de la tabla "convocatoria concepto gasto". Modo consulta. |
| Mes final | Entero | Campo "mes final" de la tabla "convocatoria concepto gasto". Modo consulta. |
| Observaciones del concepto de gasto en la convocatoria | Texto largo | Campo "observaciones" de la tabla "convocatoria concepto gasto". Modo consulta. |
| Listado de correspondencia con los códigos económicos del SGE, recuperados de la tabla "convocatoria concepto gasto código económicos" | | |
| Código económico | Texto | Código económico del SGE con el que se asocia el concepto de gasto.Se mostrará la concatenación del identificador y el nombre del código económico, recuperados del requisito de integración [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") |
| Fecha inicio | Fecha | Fecha de inicio de la tabla "convocatoria concepto gasto código económico" |
| Fecha fin | Fecha | Fecha de fin de la tabla "convocatoria concepto gasto código económico" |
| Observaciones | Texto largo | Observaciones de la tabla "convocatoria concepto gasto código económico" |
| Ver | Icono de acción | Acción ver |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Ver | Se abre la pantalla del código económico del SGE asociado al concepto de gasto. Modo consulta. | Muestra la pantalla [IU\-CSP\-0206\-011 \- Ver código económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0206-011-ver-codigo-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0206-011-ver-codigo-economico.md") |

  
  
  
  
  
  





