# Hércules : IU\-CSP\-0406\-027 \- Modificar proyecto \- Configuración económica \- Consulta presupuesto



## Formulario Modificar proyecto \- Configuración económica \- Consulta presupuesto

Formulario de consulta y visualización del presupuesto, desde el que se podrá obtener el detalle completo del presupuesto para todas las anualidades o realizando un filtrado por anualidad, aplicaciones presupuestarias y conceptos de gasto, agrupando por:

* Anualidad
* Concepto de gasto



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de presupuesto del proyecto | | |
| Listado anualidades | Selector | Listado de anualidades del proyecto, obtenidas de la tabla "proyecto anualidad" (campo "año"). |
| Listado aplicaciones presupuestarias | Selector | Listado de partidas/aplicaciones presupuestarias del proyecto (obtenidas de la tabla "proyecto partida", campo "codigo") |
| Listado conceptos de gasto | Selector | Listado de conceptos de gasto del proyecto (obtenidos de la tabla "anualidad gasto", campo "concepto gasto", sin mostrar conceptos repetidos) |
| Buscar | Icono de acción | Acción "Buscar" |
| Presupuesto del proyecto (la información se obtiene de las tablas "anualidad gasto" y las agrupaciones de "proyecto agrupación gasto" y "agrupación gasto concepto").La tabla se mostrará ordenada de la siguiente forma:* Orden 1: anualidad (de más a menos reciente). * Orden 2: concepto de gasto (orden alfabético) * Orden 3: aplicación presupuestaria (orden alfabético) * Orden 4: código económico (orden alfabético) | | |
| Anualidad | Numérico decimal genérico | Año de la anualidadSe corresponde con el campo "anualidad" de la tabla "anualidad gasto". |
| Concepto de gasto | Texto corto | Concepto de gasto asociado a la agrupación de gasto.Se muestra el campo "nombre" de la tabla "concepto gasto" correspondiente  al campo "concepto gasto" de la tabla "anualidad gasto". |
| Aplicación presupuestaria | Texto corto | Aplicación presupuestaria asociado al concepto de gastoSe muestra el campo "código" de la tabla "proyecto partida" correspondiente  al campo "proyecto partida" de la tabla "anualidad gasto". |
| Código económico | Texto corto | Código económico asociado al concepto de gasto.Se muestra la concatenación de los campos identificador (referencia) y nombre del código económico obtenidos a través de [REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0072-detalle-codigo-economico-gasto.md") para el campo "código económico ref" de la tabla "anualidad gasto". |
| Importe presupuesto | Económico | Importe total del presupuesto (suma del campo "importe presupuesto" de la tabla "anualidad gasto") que en función de la fila será el importe total de la anualidad, de la agrupación de gasto, del concepto de gasto o de aplicación presupuestaria |
| Importe concedido | Económico | Importe total del presupuesto concedido (suma del campo "importe concedido" de la tabla "anualidad gasto") que en función de la fila será el importe total de la anualidad, de la agrupación de gasto, del concepto de gasto o de aplicación presupuestaria |
| Exportar | Icono de acción | Acción "Exportar" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Se va a buscar el presupuesto del proyecto filtrando por los campos indicados | Se buscarán las partidas/aplicaciones presupuestarias de los gastos en las tablas "proyecto anualidad" y  "proyecto concepto gasto" y se mostrarán permitiendo agrupaciones por las columnas anualidad y concepto de gasto | CSP\-PRO\-INV\-VRCSP\-PRO\-VCSP\-PRO\-V\_UOCSP\-PRO\-ECSP\-PRO\-E\_UO |
| Exportar | Opciones de exportación | Muestra la pantalla [IU\-CSP\-0406\-032 \- Exportación consulta presupuesto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-032-exportacion-consulta-presupuesto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-032-exportacion-consulta-presupuesto.md") | CSP\-PRO\-INV\-VRCSP\-PRO\-VCSP\-PRO\-V\_UOCSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




