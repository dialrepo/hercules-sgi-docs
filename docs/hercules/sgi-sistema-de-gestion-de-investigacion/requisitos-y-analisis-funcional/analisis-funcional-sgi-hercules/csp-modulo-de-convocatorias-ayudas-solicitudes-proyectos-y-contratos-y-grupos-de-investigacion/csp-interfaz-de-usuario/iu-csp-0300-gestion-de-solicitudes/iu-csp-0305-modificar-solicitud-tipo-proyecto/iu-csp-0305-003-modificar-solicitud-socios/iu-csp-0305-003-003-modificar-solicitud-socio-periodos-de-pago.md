# Hércules : IU\-CSP\-0305\-003\-003 \- Modificar solicitud \- Socio \- Periodos de pago



## Formulario Modificar solicitud \- Socio \- Periodos de pago

Formulario que permitirá indicar en la solicitud de proyecto los periodos de pago a los socios. Este apartado solo estará disponible cuando el coordinador del proyecto sea la Universidad (coordinador externo \= no).



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de periodos de pago a los que se compromete la Universidad con el socio. Este apartado solo estará disponible cuando el coordinador del proyecto es la Universidad, es decir, cuando se haya marcado en el apartado de Datos generales del proyecto el campo "coordinador externo" con el valor "no" (campo "coordinador externo" de la tabla "Solicitud proyecto") | | |
| Nº Periodo | SecuenciaNumérico entero genérico | Número secuencial dentro de la solicitud que asignará directamente el sistema en función de la ordenación del mes |
| Mes | Numérico entero genérico | Mes previsto de pago al socio por parte de la Universidad. Será relativo a la duración de los proyectos que deriven de la solicitud |
| Importe | Económico | Importe previsto de pago |
| Modificar | Icono de acción | Acción "Modificar (Periodos de pago)" |
| Eliminar | Icono de acción | Acción "Eliminar (Periodos de pago)" |
| Añadir periodo de pago | Icono de acción | Acción "Añadir periodo de pago" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Modificar (Periodos de pago) | Muestra la pantalla de modificación del periodo de pago del socio colaborador seleccionado del listado de periodos de pago del socio | Se resuelve con la pantalla [IU\-CSP\-0302\-007 \- Añadir\-modificar periodo pago a socio](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-007-anadir-modificar-periodo-pago-a-socio.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-007-anadir-modificar-periodo-pago-a-socio.md") |
| Eliminar (Periodos de pago) | Elimina el periodo de pago del socio | Se elimina del listado |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados |  |
| Añadir periodo de pago | Muestra la pantalla "Añadir nuevo periodo de pago" | Muestra la pantalla [IU\-CSP\-0302\-007 \- Añadir\-modificar periodo pago a socio](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-007-anadir-modificar-periodo-pago-a-socio.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0302-007-anadir-modificar-periodo-pago-a-socio.md") |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Crea el socio colaborador con la información introducida en el formulario.Al guardar un socio colaborador se guardar la información de todos los apartados de definición del socio. | En caso de eliminación de un pago se realizará un borrado físico del registro en la tabla "SolicitudProyectoPeriodoPago" |
| Cancelar | Retorna al listado de Socios sin salvar los posibles cambios.Al cancelar un socio se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

  
  
  
  
  
  





