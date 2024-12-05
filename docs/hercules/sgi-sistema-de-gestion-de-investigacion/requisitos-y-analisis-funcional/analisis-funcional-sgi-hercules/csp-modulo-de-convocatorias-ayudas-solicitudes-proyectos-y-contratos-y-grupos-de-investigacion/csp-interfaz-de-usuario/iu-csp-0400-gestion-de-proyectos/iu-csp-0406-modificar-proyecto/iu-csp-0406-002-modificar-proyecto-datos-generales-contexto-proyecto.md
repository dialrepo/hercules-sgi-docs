# Hércules : IU\-CSP\-0406\-002 \- Modificar proyecto \- Datos generales \- Contexto proyecto



## Formulario Modificar proyecto \- Datos generales \- Contexto proyecto

Formulario de modificación de un proyecto, apartado de Contexto de proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de datos generales. Contexto proyecto | | |
| Objetivos del proyecto | Texto largoOpcional | Campo abierto que permite introducir los objetivos fijados en la actividad de investigación. |
| Justificación e interés | Texto largoOpcional | Campo abierto que permite introducir información referente a la justificación y datos de interés de la actividad de investigación. |
| Resultados esperados | Texto largoOpcional | Campo abierto que permite introducir los resultados esperados de la actividad de investigación. |
| Propiedad de los resultados | SelectorTexto corto | Listado con los siguientes valores:* Sin resultados * Universidad * Entidad financiadora * Compartida |
| Área temática:  La tabla solo se mostrará si el proyecto ya tiene un área temática seleccionada (está informado el  campo "área temática"  de la tabla "contexto proyecto"), o si, no teniendo aún área temática el proyecto, existen restricciones de áreas temáticas marcadas por la convocatoria a la que esté asociado el proyecto (existen elementos en la tabla "convocatoria área temática" para la convocatoria referenciada por el campo "convocatoria" de la tabla "proyecto"). Si no se da ninguno de los dos casos anteriores la tabla no se mostrará, mostrándose en su lugar el botón "Añadir área temática". | | |
| Listado áreas | Texto corto | Nombre del listado de áreas temáticas. En caso de que el proyecto ya esté asociado a un área temática (está informado el  campo "área temática"  de la tabla "contexto proyecto"): se debe recuperar el elemento raíz del área temática indicada por el campo "área temática"  de la tabla "contexto proyecto". Este elemento raíz se recuperará de la tabla "área temática", partiendo del elemento referenciado en la tabla "contexto proyecto" y llegando a través del campo "padre", hasta  el nodo raíz, que será el elemento para el que este campo "padre" tome el valor "null". Se mostrará el campo "nombre" de este nodo raíz.En caso de que el proyecto no esté asociado a un área temática (el campo "área temática" de la tabla "contexto proyecto" toma valor "null"): se debe recuperar el elemento raíz del árbol de áreas temáticas empleado en la convocatoria. Para ello, se tomará cualquier elemento de la tabla "convocatoria área temática" (para la convocatoria a la que está vinculada el proyecto) y se recuperará de la tabla "área temática" el campo "nombre"  del nodo raíz (aquel para el que el campo "padre" tome valor "null"). |
| Áreas temáticas convocatoria | Texto | Se listan, separados por el carácter coma, todas las áreas temáticas seleccionadas en la convocatoria. Si el texto a componer excede el espacio reservado para el campo se mostrará la cadena "..."  y el valor completo con todos los elementos se mostrará con el componente de tooltip.Se corresponde con "nombre" de la tabla "área temática" para todas las áreas temáticas recogidas en la convocatoria (tabla "convocatoria área temática").En caso que la convocatoria no disponga de áreas temáticas (la tabla "convocatoria área temática" para la convocatoria del proyecto estará vacía) esta columna se mostrará vacía. |
| Área temática proyecto | Texto | Área temática seleccionada en el proyecto. Se corresponde con el campo "área temática" de la tabla "contexto proyecto".En caso que no se haya especificado ningún área temática para el proyecto  (el campo "área temática" de la tabla "contexto proyecto" no estará informado) la columna se mostrará vacía. |
| Seleccionar área | Icono de acción | Acción "Seleccionar área" |
| Modificar área | Icono de acción | Acción "Modificar área" |
| Eliminar área | Icono de acción | Acción "Eliminar área" |
| Añadir área temática | Icono de acción | Acción "Añadir área temática" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Seleccionar área | Permite seleccionar un área temática de las restringidas por la convocatoria | Esta acción solo se mostrará cuando el proyecto esté vinculado a una convocatoria y ésta tenga restricciones sobre áreas temáticas: existen elementos en la tabla "convocatoria área temática" para la convocatoria referenciada por el campo "convocatoria" de la tabla "proyecto".Muestra la pantalla [IU\-CSP\-0402\-027 \- Seleccionar área temática](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-027-seleccionar-area-tematica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-027-seleccionar-area-tematica.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Modificar área | Modificar el área temática asociada al proyecto | Esta acción solo se mostrará cuando se den las dos condiciones siguientes:* El proyecto ya tiene asociada un área temática (campo "área temática" de la tabla "contexto proyecto" está informado). * El proyecto no está vinculado a una convocatoria (campo "convocatoria" de la tabla "proyecto" no está informado)  o está asociado a una convocatoria que no tiene restricciones sobre áreas temáticas: no existen elementos en la tabla "convocatoria área temática" para la convocatoria referenciada por el campo "convocatoria" de la tabla "proyecto".  Muestra la pantalla [IU\-CSP\-0402\-028 \- Añadir\-modificar área temática](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-028-anadir-modificar-area-tematica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-028-anadir-modificar-area-tematica.md")Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar área | Elimina el área temática seleccionada para el proyecto | Se elimina el área temática seleccionada para el proyecto. Se actualiza el registro asociado al proyecto en la tabla "contexto proyecto", poniendo el campo "área temática" a valor "null". | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir área temática | Añade un área temática  al proyecto | Esta acción solo se mostrará cuando se den las dos condiciones siguientes:* El proyecto no tiene asociada un área temática (campo "área temática" de la tabla "contexto proyecto" no está informado). * El proyecto no está vinculado a una convocatoria (campo "convocatoria" de la tabla "proyecto" no está informado) o está vinculado a una convocatoria  que no tenga restricciones sobre áreas temáticas: no existen elementos en la tabla "convocatoria área temática" para la convocatoria referenciada por el campo "convocatoria" de la tabla "proyecto".  Muestra la pantalla [IU\-CSP\-0402\-028 \- Añadir\-modificar área temática](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-028-anadir-modificar-area-tematica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-028-anadir-modificar-area-tematica.md")Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578") | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




