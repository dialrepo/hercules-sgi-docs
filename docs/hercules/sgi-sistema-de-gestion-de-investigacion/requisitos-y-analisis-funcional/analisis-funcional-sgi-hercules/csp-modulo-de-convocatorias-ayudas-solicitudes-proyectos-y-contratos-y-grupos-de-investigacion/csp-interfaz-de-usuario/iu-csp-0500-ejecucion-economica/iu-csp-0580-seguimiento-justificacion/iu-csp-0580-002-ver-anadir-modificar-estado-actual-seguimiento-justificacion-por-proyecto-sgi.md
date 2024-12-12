# Hércules : IU\-CSP\-0580\-002 \- Ver\-añadir\-modificar estado actual seguimiento justificación por proyecto SGI



## Formulario Ver\-añadir\-modificar estado actual seguimiento de justificación por proyecto SGI

Formulario que presenta el estado del seguimiento de la justificación para un proyecto SGI concreto.



|  | | |
| --- | --- | --- |
| Los datos de esta pantalla hacen referencia a un  proyecto SGI concreto. Es el proyecto SGI para el que se consulta el  "estado actual seguimiento justificación por proyecto SGI" desde [IU\-CSP\-0580\-001 \- Resumen](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md").Si ya existe un registro en la tabla "proyecto seguimiento justificación" para el "proyecto proyecto SGE" desde el que se accede (proyecto SGE desde el que se ha accedido a ejecución económica y proyecto SGI seleccionado en  "estado actual seguimiento justificación por proyecto SGI"), el formulario se mostrará con los valores recuperados de "proyecto seguimiento justificación", permitiendo su modificación (de acuerdo al os permisos de acceso), en caso contrario los campos correspondientes se mostrarán vacíos y se permitirá que sean introducidos. | | |
| Nombre | Tipo | Características / Notas |
| Proyecto SGI: ID interno | Numérico enteroSolo lectura | Identificador interno del proyecto SGI. Es el proyecto SGI para el que se consulta el  "estado actual seguimiento justificación por proyecto SGI" desde [IU\-CSP\-0580\-001 \- Resumen](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md")Se corresponde con el campo "ID" de la tabla "proyecto" para el proyecto referenciado por el campo "proyecto" de la tabla "proyecto proyecto SGE".Se muestra en modo "solo lectura". |
| Proyecto SGI: Título | Texto Solo lectura | Título del proyecto SGI.Se corresponde con el campo "título" de la tabla "proyecto" para el proyecto referenciado por el campo "proyecto" de la tabla "proyecto proyecto SGE".Se muestra en modo "solo lectura". |
| Fecha última justificación | FechaSolo lectura | Fecha más reciente en la que se ha presentado alguna justificación para el proyecto SGI.Se obtiene la "fecha presentación justificación" más actual de la tabla "proyecto periodo justificación" para el proyecto SGI en curso.Se muestra en modo "solo lectura". |
| Importe concedido: costes directos | EconómicoSolo lectura | Importe concedido, asociado a conceptos de gasto que no representen costes indirectos, indicado en el presupuesto del proyecto (para el proyecto SGI para el que se muestra esta ventana).Si el presupuesto ha sido introducido a través de campos "manuales" tendrán prioridad estos, para ello este valor se obtendrá como sigue:* Si está informado el campo  "importe concedido" de la tabla "proyecto" se mostrará en esta celda este valor. * Si no, se deberá realizar el cálculo como sigue: Suma del campo "importe concedido" de todos los registros de la tabla "anualidad gasto" del proyecto cuyo campo "concepto gasto" figure en la tabla "concepto gasto" con el campo "costes indirectos" a "false" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE).  El valor obtenido coincidirá con el campo "Importe concedido universidad (valor calculado)" de [IU\-CSP\-0406\-025 \- Modificar proyecto \- Configuración económica \- Presupuesto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91001757 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=91001757") |
| Importe concedido: costes indirectos | EconómicoSolo lectura | Importe concedido, asociado a conceptos de gasto que representen costes indirectos, indicado en el presupuesto del proyecto (para el proyecto SGI para el que se muestra esta ventana).Si el presupuesto ha sido introducido a través de campos "manuales" tendrán prioridad estos, para ello este valor se obtendrá como sigue:* Si está informado el campo  "importe concedido costes indirectos" de la tabla "proyecto" se mostrará en esta celda este valor. * Si no, se deberá realizar el cálculo como sigue: Suma del campo "importe concedido" de todos los registros de la tabla "anualidad gasto" del proyecto cuyo campo "concepto gasto" figure en la tabla "concepto gasto" con el campo "costes indirectos" a "true" (sin distinguir ni por concepto de gasto, ni por anualidad ni por proyecto SGE).  El valor obtenido coincidirá con el campo "Importe concedido universidad costes indirectos (valor calculado)" de [IU\-CSP\-0406\-025 \- Modificar proyecto \- Configuración económica \- Presupuesto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91001757 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=91001757") |
| Importe justificado | EconómicoOpcional | Importe justificado que acumula el proyecto SGI en el momento actual.Se corresponde con el campo "importe justificado" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe justificado: costes directos | EconómicoOpcional | Importe justificado que acumula el proyecto SGI en el momento actual, correspondiente a costes directos.Se corresponde con el campo "importe justificado CD" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe justificado: costes indirectos | EconómicoOpcional | Importe justificado que acumula el proyecto SGI en el momento actual, correspondiente a costes indirectos.Se corresponde con el campo "importe justificado CI" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe aceptado | EconómicoOpcional | Importe incluido en las justificaciones que ha sido aceptado hasta el momento actual, en el cómputo total del proyecto.Se corresponde con el campo "importe aceptado" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe aceptado: costes directos | EconómicoOpcional | Importe incluido en las justificaciones, correspondiente a costes directos, que ha sido aceptado, hasta el momento actual, en el cómputo total del proyecto SGI.Se corresponde con el campo "importe aceptado CD" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe aceptado: costes indirectos | EconómicoOpcional | Importe incluido en las justificaciones, correspondiente a costes indirectos, que ha sido aceptado, hasta el momento actual, en el cómputo total del proyecto SGI.Se corresponde con el campo "importe aceptado CI" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe rechazado | EconómicoOpcional | Importe incluido en las justificaciones que ha sido rechazado, hasta el momento actual, en el cómputo total del proyecto.Se corresponde con el campo "importe rechazado" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe rechazado  \- costes directos | EconómicoOpcional | Importe incluido en las justificaciones, correspondiente a costes directos, que ha sido rechazado, hasta el momento actual, en el cómputo total del proyecto.Se corresponde con el campo "importe rechazado CD" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe rechazado \- costes indirectos | EconómicoOpcional | Importe incluido en las justificaciones, correspondiente a costes indirectos, que ha sido rechazado, hasta el momento actual, en el cómputo total del proyecto.Se corresponde con el campo "importe rechazado CI" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe alegado | EconómicoOpcional | Importe justificado que ha sido alegado, hasta el momento actual, en el cómputo total del proyecto.Se corresponde con el campo "importe alegado" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe alegado: coste directos | EconómicoOpcional | Importe, correspondiente a costes directos, que ha sido alegado, hasta el momento actual, en el cómputo total del proyecto.Se corresponde con el campo "importe alegado CD" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe alegado: coste indirectos | EconómicoOpcional | Importe, correspondiente a costes indirectos, que ha sido alegado, hasta el momento actual, en el cómputo total del proyecto.Se corresponde con el campo "importe alegado CI" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe no ejecutado | EconómicoOpcional | Importe no ejecutado, respecto al concedido, en el cómputo total del proyecto.Se corresponde con el campo "importe no ejecutado" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe no ejecutado: costes directos | EconómicoOpcional | Importe no ejecutado, respecto al concedido, en el cómputo total del proyecto, correspondiente a costes directos.Se corresponde con el campo "importe no ejecutado CD" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe no ejecutado: costes indirectos | EconómicoOpcional | Importe no ejecutado, respecto al concedido, en el cómputo total del proyecto, correspondiente a costes indirectos.Se corresponde con el campo "importe no ejecutado CI" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe a reintegrar | EconómicoOpcional | Importe que se debe reintegrar en el momento actual.Se corresponde con el campo "importe reintegrar" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe a reintegrar: costes directos | EconómicoOpcional | Importe que se debe reintegrar en el momento actual, correspondiente a costes directos.Se corresponde con el campo "importe reintegrar CD" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Importe a reintegrar: costes indirectos | EconómicoOpcional | Importe que se debe reintegrar en el momento actual, correspondiente a costes indirectos.Se corresponde con el campo "importe reintegrar CI" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Reintegro realizado | EconómicoOpcional | Importe concedido que ha sido reintegrado hasta el momento actual.Se corresponde con el campo "importe reintegrado" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Reintegro realizado: costes directos | EconómicoOpcional | Importe concedido que ha sido reintegrado hasta el momento actual, correspondiente a costes directos.Se corresponde con el campo "importe reintegrado CD" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Reintegro realizado: costes indirectos | EconómicoOpcional | Importe concedido que ha sido reintegrado hasta el momento actual, correspondiente a costes indirectos.Se corresponde con el campo "importe reintegrado CI" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Intereses a reintegrar | EconómicoOpcional | Importe asociado a los intereses generados por el importe concedido que debe ser reintegrado.Se corresponde con el campo "intereses reintegrar" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Intereses reintegrados | EconómicoOpcional | Importe reintegrado, hasta el momento actual, correspondiente a los intereses generados por el importe concedido que debe ser reintegrado.Se corresponde con el campo "intereses reintegrados" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Fecha último reintegro | FechaOpcional | Fecha del último reintegro realizado.Se corresponde con el campo "fecha reintegro" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Núm. justificante último reintegro | TextoOpcional | Número de justificación del último reintegro realizado.Se corresponde con el campo "justificante reintegro" de la tabla "proyecto seguimiento justificación". Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Reintegro pendiente | EconómicoSolo lectura | Campo calculado. Diferencia entre los valores de los campos "importe a reintegrar" y "reintegro realizado".Se muestra en modo solo lectura.Se obtiene restando el valor del campo "importe reintegrado" al valor del campo "importe reintegrar" de la tabla "proyecto seguimiento justificación".  Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |
| Intereses pendientes de reintegrar | EconómicoSolo lectura | Campo calculado. Diferencia entre los valores de los campos "intereses a reintegrar" e "intereses reintegrados".Se muestra en modo solo lectura.Se obtiene restando el valor del campo "intereses reintegrados" al valor del campo "intereses reintegrar" de la tabla "proyecto seguimiento justificación".  Si el registro aún no existe en la tabla "proyecto seguimiento justificación" este campo se mostrará vacío. |



| Acciones | Descripción | Enlace CU. | Permiso |
| --- | --- | --- | --- |
| Aceptar | Almacena los cambios realizados. | Se inserta o actualiza el registro correspondiente en la tabla "proyecto seguimiento justificación".Tras realizar la operación se retorna a [IU\-CSP\-0580\-001 \- Resumen](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md") | CSP\-SJUS\-E CSP\-SJUS\-E\_UO |
| Cancelar | Cancela cualquier cambio realizado | Cierra la ventana sin realizar ninguna operación y retorna a [IU\-CSP\-0580\-001 \- Resumen](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  
  




