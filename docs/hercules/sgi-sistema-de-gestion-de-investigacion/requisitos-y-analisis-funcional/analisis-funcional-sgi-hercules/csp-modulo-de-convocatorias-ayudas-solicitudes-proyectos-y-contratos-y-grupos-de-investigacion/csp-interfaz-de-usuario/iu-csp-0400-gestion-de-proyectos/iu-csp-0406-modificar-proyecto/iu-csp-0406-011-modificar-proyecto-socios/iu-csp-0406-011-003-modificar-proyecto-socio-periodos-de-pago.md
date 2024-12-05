# Hércules : IU\-CSP\-0406\-011\-003 \- Modificar proyecto \- Socio \- Periodos de pago



## Formulario Modificar proyecto \- Socio \- Periodos de pago

Formulario que permitirá indicar en el proyecto los socios que colaborarán en el desarrollo del mismo, indicando los periodos de pago a los que se compromete la Universidad con el socio colaborador. Este apartado de periodos de pago solo estará disponible cuando el coordinador del proyecto es la propia Universidad (coordinador externo \= no) No será obligatorio indicar los periodos previstos de pago para registrar un proyecto. Si se crea un periodo de pago el dato mínimo obligatorio será la fecha prevista de pago y el importe.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de periodos de pago a los que se compromete la Universidad con el socio. Este apartado solo estará disponible cuando en los datos generales del proyecto se hubiera indicado "coordinador externo" \= "no" (campos "coordinador externo" de la tabla "proyecto") | | |
| Nº Periodo | SecuenciaNumérico entero genérico | Número secuencial dentro del proyecto que asignará directamente el sistema en función de la ordenación de la fecha de inicio |
| Fecha prevista de pago | Fecha \+ hora | Fecha prevista de pago al socio colaborador por parte de la Universidad, en formato fecha \+ hora |
| Importe | Económico | Importe a pagar al socio colaborador |
| Fecha de realización del pago | Fecha | Fecha en la que finalmente se ha realizado el pago al socio colaborador |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Listado de periodos de pago a los que se compromete la Universidad con el socio | | | |
| Modificar | Muestra la pantalla de modificación del periodo de pago del socio colaborador seleccionado del listado de periodos de pago del socio colaborador | Se resuelve con la pantalla [IU\-CSP\-0402\-007 \- Añadir\-modificar periodo pago a socio](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-007-anadir-modificar-periodo-pago-a-socio.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-007-anadir-modificar-periodo-pago-a-socio.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el periodo de pago del socio colaborador | Se realizará un borrado físico del registro en la tabla "Periodos pago socio" | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados |  |  |
| Añadir periodo de pago | Muestra la pantalla "Añadir nuevo periodo de pago" | Muestra la pantalla [IU\-CSP\-0402\-007 \- Añadir\-modificar periodo pago a socio](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-007-anadir-modificar-periodo-pago-a-socio.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-007-anadir-modificar-periodo-pago-a-socio.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea el socio colaborador con la información introducida en el formulario.Al guardar un socio colaborador se guardar la información de todos los apartados de definición del socio. |  | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Socios sin salvar los posibles cambios.Al cancelar un socio se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Comunicados

Se enviarán avisos/comunicados relativos a la cercanía de la fecha prevista para el pago al socio, que serán gestionados externamente a esta gestión por parte del módulo de tareas programadas y del de comunicados (o envío de emails).

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Proyectos \- Periodos de pago socios** dentro de [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md").




