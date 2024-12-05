# Hércules : IU\-CSP\-0406\-015 \- Modificar proyecto \- Prórrogas



## Formulario Modificar proyecto \- Prórrogas

Formulario que permite recoger las prórrogas o ampliaciones del proyecto/contrato, para cada una se podrán incluir documentos asociados.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de prórrogas de un proyecto (tabla "proyecto prórroga") | | |
| Número prórroga | SecuenciaNumérico entero genérico | Número secuencial dentro del proyecto que asignará directamente el sistema en función de la ordenación de la fecha de concesión.Se corresponde con el campo "num. prórroga" de la tabla "proyecto prórroga". |
| Fecha concesión | Fecha | Fecha en la que se concede la prórroga, bien por la entidad convocante/financiadora bien de manera interna.Se corresponde con el campo "fecha concesión" de la tabla "proyecto prórroga". |
| Tipo | SelectorTexto corto | Indica el tipo de prórroga de proyecto que puede ser solo ampliación temporal (Tiempo), solo ampliación económica (Importe) o ampliación temporal y económica (Tiempo e importe).Se mostrará el nombre del enumerado "Tipo prórroga" referenciado por el campo  "tipo prórroga" de la tabla "proyecto prórroga". |
| Nueva fecha fin de proyecto | Fecha | Nueva fecha de fin que ha sido concedida.Se corresponde con el campo "fecha fin" de la tabla "proyecto prórroga". |
| Importe prórroga | Económico | Valor del importe concedido en la prórroga.Se corresponde con el campo "importe" de la tabla "proyecto prórroga". |
| Observaciones | Texto largo | Observaciones sobre la prórroga.Se corresponde con el campo "observaciones" de la tabla "proyecto prórroga". |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir prórroga | Icono de acción | Acción "Añadir prórroga" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Produce un cambio de contexto a la prórroga seleccionada del listado de prórrogas | Se resuelve con la pantalla [IU\-CSP\-0406\-015\-001 \- Modificar proyecto \- Prórroga \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-015-modificar-proyecto-prorrogas/iu-csp-0406-015-001-modificar-proyecto-prorroga-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-015-modificar-proyecto-prorrogas/iu-csp-0406-015-001-modificar-proyecto-prorroga-datos-generales.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-INV\-VRCSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina la prórroga del proyecto | Únicamente se podrá eliminar la última prórroga (será aquella que tenga el campo "num. prórroga" mayor).En el caso de eliminar una prórroga de tipo "Importe" se muestra un mensaje de advertencia con el siguiente texto "Recuerde que debe revisar el presupuesto del proyecto en caso de que se vea afectado por la eliminación de esta prórroga".En el caso de eliminar una prórroga de tipo "Tiempo"  se muestra un mensaje de advertencia con el siguiente texto "Recuerde que debe revisar la fecha de fin del proyecto en caso de que se vea afectada por la eliminación de esta prórroga".En el caso de eliminar una prórroga de tipo "Tiempo e importe"  se muestra un mensaje de advertencia con el siguiente texto "Recuerde que debe revisar la fecha de fin definitiva del proyecto así como el presupuesto en caso de que se vean afectados por la eliminación de esta prórroga".Si hay registros en la tabla  "prórroga documento"  de la prórroga que se desea eliminar, mostrar en el propio mensaje de confirmación de la acción de eliminar el siguiente texto: "Existen documentos asociados a esta prórroga que también serán eliminados, ¿desea continuar?"Se elimina el registro del listado.Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir prórroga | Produce un cambio de contexto y muestra la pantalla "Añadir prórroga" | Muestra la pantalla [IU\-CSP\-0406\-015\-001 \- Modificar proyecto \- Prórroga \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-015-modificar-proyecto-prorrogas/iu-csp-0406-015-001-modificar-proyecto-prorroga-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-015-modificar-proyecto-prorrogas/iu-csp-0406-015-001-modificar-proyecto-prorroga-datos-generales.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| **Acciones** | **Descripción** | **Enlace CU.** | **Permisos** |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | En caso de eliminación de una prórroga,  se realizará un borrado físico del registro en la tabla "proyecto prórroga". Se eliminarán en cascada los documentos, vinculados a la prórroga (tabla "prórroga documento"). Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




