# Hércules : IU\-CSP\-0406\-025\-001 \- Modificar proyecto \- Configuración económica \- Presupuesto \- Anualidad \- Datos generales



## Formulario Modificar proyecto \- Configuración económica \- Presupuesto \- Anualidad \- Datos generales

Formulario que permite añadir/modificar una anualidad durante el proceso de creación o modificación de un proyecto.



| **Si el campo "Desglose anualidades" tiene valor "Sí" (hay anualidades)****Si el campo "Desglose anualidades" tiene valor "No" (sólo existe la anualidad genérica****)** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario para añadir anualidad del proyecto. Se mostrará en modo lectura cuando la anualidad se ha enviado al SGE (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad"). | | |
| Anualidad | Numérico entero genéricoObligatorio (si el dato se muestra en la pantalla, es decir, para cuando hay anualidades) | Año natural con el que se da nombre a la anualidad y que será utilizado para solicitar al SGE el detalle de las operaciones y documentos contables. Año en formato YYYY.No se pueden repetir anualidades dentro de un mismo proyecto.No se muestra para la anualidad genérica.Se mostrará en modo lectura cuando la anualidad se ha enviado al SGE (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad"). |
| Fecha de inicio | Fecha | Fecha de inicio de la anualidad, puesto que no tiene por qué coincidir con el año natural.Para la anualidad genérica se muestra en modo consulta la fecha de inicio del proyecto (no se guarda en la tabla "proyecto anualidad"  siempre se obtiene de la pantalla de "Ficha general" del proyecto \- tabla "proyecto")Para el resto de anualidades se mostrará en modo lectura cuando la anualidad se ha enviado al SGE (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad"). |
| Fecha de fin | Fecha | Fecha de fin de la anualidad, puesto que no tiene por qué coincidir con el año naturalPara la anualidad genérica se muestra en modo consulta la fecha de fin del proyecto(no se guarda en la tabla "proyecto anualidad"  siempre se obtiene de la pantalla de "Ficha general" del proyecto \- tabla "proyecto").Para el resto de anualidades se mostrará en modo lectura cuando la anualidad se ha enviado al SGE (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad"). |
| Presupuestar | SelectorObligatorio | Indica si se quiere enviar o notificar al sistema de gestión económica. Si el valor es "Sí" se podrá notificar el presupuesto de la anualidad desde la pantalla principal del presupuesto [IU\-CSP\-0406\-025 \- Modificar proyecto \- Configuración económica \- Presupuesto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-025-modificar-proyecto-configuracion-economica-presupuesto/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-025-modificar-proyecto-configuracion-economica-presupuesto/index.md"). Si el valor en "No" no se dará la opción de enviar el presupuesto al sistema de gestión económica.Se mostrará en modo lectura cuando la anualidad se ha enviado al SGE (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad"). |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
|  |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Añade/modifica la anualidad del proyecto con la información introducida en el formulario.Al guardar una anualidad se guarda la información de todos los apartados de definición de la anualidad. | Para la anualidad genérica se creará un registro en la tabla "proyecto anualidad" con los siguientes campos:* proyecto * anio \= null * fechaInicio \= null * fechaFin \= null * presupuestar \= valor seleccionado en el combo * enviadoSGE \= false  Para el resto de  anualidades (que no son la genérica) se creará un registro en la tabla "proyecto anualidad" con los valores del formulario, hay que comprobar que el año de la anualidad no se repita dentro del mismo proyecto. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyecto sin salvar los posibles cambios.Al cancelar una anualidad se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |




