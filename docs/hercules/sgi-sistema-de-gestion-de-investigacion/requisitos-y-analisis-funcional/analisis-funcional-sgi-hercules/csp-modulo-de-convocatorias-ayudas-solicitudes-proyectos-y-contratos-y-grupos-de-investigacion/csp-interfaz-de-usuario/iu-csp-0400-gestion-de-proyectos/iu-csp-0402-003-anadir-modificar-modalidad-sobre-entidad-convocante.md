# Hércules : IU\-CSP\-0402\-003 \- Añadir\-modificar modalidad sobre entidad convocante



## Formulario Añadir/modificar modalidad sobre entidad convocante

Formulario para indicar el subprograma/modalidad/submodalidad de una entidad convocante del proyecto, tanto si la entidad convocante ha sido "heredada" desde los datos de la convocatoria como si ha sido añadida directamente desde el propio proyecto. 



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario añadir programa/subprograma/modalidad/submodalidad | | |
| Entidad convocante | Texto | Nombre de la entidad convocante, recuperado por medio de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md").Modo consulta. |
| Plan de investigación | Texto | Nombre del plan de investigación obtenido automáticamente. Se obtiene a partir del campo "programa convocatoria" de la tabla "proyecto entidad convocante" en caso de existir , y en caso de no existir, del campo "modalidad", es el nodo raíz de dichos programas. En caso de que ninguno de los dos campos exista estará vacío.Será editable si el plan viene determinado por el propio proyecto, es decir, no heredado por la convocatoria (programa convocatoria es null). |
| Modalidad | Componente gráfico de árbolTexto largoOpcional | Se mostrará el árbol de programas/subprogramas/modalidades/submodalidades.Si el campo "programa" de la tabla "proyecto entidad convocante" está informado se mostrará el árbol a partir del nodo marcado por este campo.Si el campo "programa" de la tabla "proyecto entidad convocante" no está informado:* Si el campo "programa convocatoria" de la tabla "proyecto entidad convocante" está informado, se mostrará el árbol a partir del nodo indicado por el campo "programa convocatoria" de la tabla "proyecto entidad convocante" (pudiendo ser el árbol completo, en caso que "programa convocatoria" incluya el árbol completo, es decir, que referencie al nodo raíz (plan de investigación). se podrá seleccionar cualquier nodo excepto el raíz). * Si el campo "programa convocatoria" de la tabla "proyecto entidad convocante" está vacío, no se mostrará ningún árbol. Este caso se daría cuando la entidad convocante hubiera sido añadida sin especificar ningún plan de investigación (con esta operativa no se da pie a que se pueda seleccionar un plan desde este formulario, debiendo eliminar la entidad y volver a añadirla en caso de querer limitar el plan para la entidad).  En cualquiera de los casos sólo se permitirá seleccionar un elemento. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aceptar |  | Se modificará el campo "modalidad" en el registro correspondiente de la tabla "Proyecto Entidad Convocante", referenciando al identificador de la tabla "programa" de acuerdo al ítem del árbol del Plan de investigación seleccionado | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al formulario del proyecto sin salvar los posibles cambios. |  |  |




