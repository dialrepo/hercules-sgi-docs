# Hércules : IU\-CSP\-0580\-009\-002 \- Modificar requerimiento \- Gastos



## Formulario Modificar requerimiento \- Gastos

Formulario de modificación de requerimiento. Apartado Gasto



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Título de la página variable en función del requerimiento. "Datos del requerimiento": nombre del requerimiento.  El nombre del requerimiento se obtendrá del campo "nombre" de la tabla "tipo requerimiento", para el registro referenciado por el campo "tipo requerimiento" de la tabla "requerimiento justificación" (o del valor seleccionado en el desplegable "tipo requerimiento" del formulario, cuando en éste se modifique el valor inicial del registro).El listado de gastos de un requerimiento se almacena en la tabla "gasto requerimiento justificación". El SGI solo almacenará los datos del gasto relativos al requerimiento. El resto de datos del gasto serán recuperados del SGE. Para cada "gasto ref" recuperado de la tabla "gasto requerimiento justificación" se debe invocar al requisito de integración [REQ\-INT\-0010\-SGE\-0166 \- Buscar gastos justificados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0166-buscar-gastos-justificados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0166-buscar-gastos-justificados.md") (pasando como parámetro el "proyecto SGE" desde el que se accede al seguimiento de justificación, todos los "gasto ref " de "gasto requerimiento justificación" para el requerimiento en curso). | | |
| Proyecto SGI: ID interno | Numérico entero | Identificador del proyecto SGI al que está asociado el gasto. Se obtendrá el proyecto SGI al que está asociado el gasto. Para ello se utilizará el campo "identificador de justificación" recuperado de [REQ\-INT\-0010\-SGE\-0166 \- Buscar gastos justificados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0166-buscar-gastos-justificados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0166-buscar-gastos-justificados.md") para el "gasto ref"  a mostrar. Se deberá obtener el proyecto SGI al que pertenece este "identificador de justificación". Para ello se obtendrá, de la tabla "proyecto periodo justificación", el registro para el que el campo "justificación ref" tome el valor del campo "identificador de justificación" del gasto recuperado del servicio de integración. Se mostrará el campo "ID" del proyecto al que pertenezca el registro de  "proyecto periodo justificación". |
| ID Justificación | Texto | Identificador de justificación asociado al gasto.Se mostrará el campo "identificador justificación" recuperado del requisito de integración [REQ\-INT\-0010\-SGE\-0166 \- Buscar gastos justificados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0166-buscar-gastos-justificados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0166-buscar-gastos-justificados.md") |
| Campo X | Tipo de acuerdo al valor recuperado del servicio de integración | Se mostrará una columna por cada uno de los campos devueltos por [REQ\-INT\-0010\-SGE\-0166 \- Buscar gastos justificados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0166-buscar-gastos-justificados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0166-buscar-gastos-justificados.md"), que se habrá invocado con los parámetros indicados arriba, para el "gasto ref" mostrado. |
| Importe cofinanciación | Económico | Importe de cofinanciación del gasto, habrá sido informado en el SGI.Se deberán recuperar todos los registros de la tabla "cofinanciación gasto justificación" asociados al "gasto ref" mostrado, sumando el campo "importe" de cada uno de ellos. |
| Aceptado | Boolean (Valores sí/no) | Tomará valor sí/no, indicando si la justificación del gasto ha sido aceptada en el requerimiento.Se corresponde con el campo "aceptado" de la tabla "gasto requerimiento justificación" de la que se debe obtener el registro correspondiente a partir del requerimiento y gasto en curso (campos "requerimiento justificación" y "gasto ref" respectivamente). |
| Importe aceptado | Económico | Importe del gasto que ha sido aceptado en el requerimiento.Se corresponde con el campo "importe aceptado" de la tabla "gasto requerimiento justificación" de la que se debe obtener el registro correspondiente a partir del requerimiento y gasto en curso (campos "requerimiento justificación" y "gasto ref" respectivamente). |
| Importe rechazado | Económico | Importe del gasto que ha sido rechazado en el requerimiento.Se corresponde con el campo "importe rechazado" de la tabla "gasto requerimiento justificación" de la que se debe obtener el registro correspondiente a partir del requerimiento y gasto en curso (campos "requerimiento justificación" y "gasto ref" respectivamente). |
| Importe alegado | Económico | Importe del gasto que ha sido alegado en la respuesta dada al requerimiento.Se corresponde con el campo "importe alegado" de la tabla "gasto requerimiento justificación" de la que se debe obtener el registro correspondiente a partir del requerimiento y gasto en curso (campos "requerimiento justificación" y "gasto ref" respectivamente). |
| Modificar | Icono de acción | Acción "modificar" |
| Eliminar | Icono de acción | Acción "eliminar" |



| Acciones | Descripción | Enlace CU. | Permiso |
| --- | --- | --- | --- |
| Modificar | Permite ver el detalle del gasto y añadir/modificar los campos propios del SGI | Muestra la pantalla [IU\-CSP\-0580\-009\-009 \- Ver\-Modificar gasto de requerimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-009-ver-modificar-gasto-de-requerimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-009-ver-modificar-gasto-de-requerimiento.md") | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Eliminar | Elimina el gasto del requerimiento | Elimina el registro asociado al "gasto ref" del listado mostrado en la pantalla y de la tabla "gasto requerimiento justificación" si ya estuviera almacenado en la misma | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Añadir gasto | Permite añadir un gasto al requerimiento | Muestra la pantalla [IU\-CSP\-0580\-009\-007 \- Añadir gasto a requerimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-007-anadir-gasto-a-requerimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-007-anadir-gasto-a-requerimiento.md") | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |

  


### Botones generales de la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar requerimiento | Se almacenan los cambio introducidos en cualquiera de las pestañas del requerimiento. | Inserta, modifica o elimina los registros correspondientes sobre la tabla "gasto requerimiento justificación", así como sobre la tabla "cofinanciación gasto justificación" (según la información aportada para cada gasto).Además se almacenará los cambios que correspondan al resto de apartados del requerimiento  (datos generales, respuesta/alegación y documentos), puesto que la acción afecta a todos ellos.Tras realizar la operación de guardado se mantiene al usuario en esta página. | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Cancelar | Se descartan los cambios introducidos en cualquiera de los apartados de esta ventana. | No se realiza ningún cambio sobre ninguna entidad.Se vuelve al listado de requerimientos [IU\-CSP\-0580\-006 \- Listado de requerimientos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-006-listado-de-requerimientos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-006-listado-de-requerimientos.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  
  





