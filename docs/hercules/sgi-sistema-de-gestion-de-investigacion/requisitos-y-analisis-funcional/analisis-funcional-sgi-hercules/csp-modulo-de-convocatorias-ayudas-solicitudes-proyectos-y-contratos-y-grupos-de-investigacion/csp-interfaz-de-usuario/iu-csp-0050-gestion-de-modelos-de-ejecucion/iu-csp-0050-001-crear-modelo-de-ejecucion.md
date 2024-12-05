# Hércules : IU\-CSP\-0050\-001 Crear modelo de ejecución



## Formulario Crear modelo de ejecución

Formulario de creación de un modelo de ejecución. Pestaña "Datos generales"



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Pestaña Datos generales | | |
| Nombre | Texto cortoObligatorio | No podrán existir dos modelos de ejecución con el mismo nombre en estado activo (campo "activo" a "true").Se corresponde con el campo "nombre"  de la tabla "modelo ejecución". |
| Descripción | TextoOpcional | Descripción ampliada del modelo de ejecución, de libre introducción por parte del usuario.Se corresponde con el campo "descripción"  de la tabla "modelo ejecución" |
| Externo | CheckOpcional | Permite indicar si el modelo de ejecución será utilizado para representar proyectos/contratos en los que el personal investigador participa bajo la gestión de una entidad externa.Se corresponde con el campo "externo"  de la tabla "modelo ejecución". |
| Contrato/convenio | CheckOpcional | Permite indicar si el modelo de ejecución será utilizado para representar cualquier variedad de contrato o convenio.Se corresponde con el campo "contrato"  de la tabla "modelo ejecución". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Botón común a la página, que creará el nuevo modelo de ejecución de acuerdo a la información recogida en todas las pestañas. | La condición mínima para la creación del nuevo modelo de ejecución es la introducción obligatoria del campo Nombre sin que tenga un valor ya existente entre los registros activos de la tabla "modelo ejecución".El modelo de ejecución se creará con el campo "activo" \= "true"[CU\-CSP\-0020\-002 \- Crear modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/index.md") | CSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de listado |  |

  


Formulario de creación de un modelo de ejecución. Pestaña "Tipos de fase".

![](/attachments/597852575/597873872.png)

  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir tipo de fase al modelo |  | No es obligatorio que el modelo disponga de ningún tipo de fase asociado.Se creará un registro en la relación "modelo tipo fase"Se mostrará el formulario para añadir un tipo de fase al modelo de ejecución [IU\-CSP\-0050\-004 \- Añadir tipo de fase al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-004-anadir-tipo-de-fase-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-004-anadir-tipo-de-fase-al-modelo-de-ejecucion.md") | CSP\-ME\-CCSP\-ME\-C\_UO |
| Guardar | Botón común a la página, que creará el nuevo modelo de ejecución de acuerdo a la información recogida en todas las pestañas. | La condición mínima para la creación del nuevo modelo de ejecución es la introducción obligatoria del campo Nombre sin que tenga un valor ya existente entre los registros activos de la tabla "modelo ejecución".El modelo de ejecución se creará con el campo "activo" \= "true" | CSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de listado |  |

  


  


Formulario de creación de un modelo de ejecución. Pestaña "Tipos de documentos".

![](/attachments/597852575/597873876.png)



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir tipo de documento al modelo |  | No es obligatorio que el modelo disponga de ningún tipo de documento asociado.Se creará un registro en la relación "modelo tipo documento"Se mostrará el formulario para añadir un tipo de documento al modelo de ejecución.[IU\-CSP\-0050\-005 Añadir tipo de documento al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-005-anadir-tipo-de-documento-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-005-anadir-tipo-de-documento-al-modelo-de-ejecucion.md") | CSP\-ME\-CCSP\-ME\-C\_UO |
| Guardar | Botón común a la página. Se creará el nuevo modelo de ejecución de acuerdo a la información recogida en todas las pestañas. | La condición mínima para la creación del nuevo modelo de ejecución es la introducción obligatoria del campo Nombre sin que tenga un valor ya existente entre los registros activos de la tabla "modelo ejecución".El modelo de ejecución se creará con el campo "activo" \= "true" | CSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de listado |  |

  


  


Formulario de creación de un modelo de ejecución. Pestaña "Tipos de enlace".

![](/attachments/597852575/597873875.png)



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir tipo de enlace al modelo |  | Se creará un registro en la relación "modelo tipo enlace"No es obligatorio que el modelo disponga de ningún tipo de enlace asociado.Se mostrará el formulario para añadir un tipo de enlace al modelo de ejecución.[IU\-CSP\-0050\-006 Añadir tipo de enlace al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-006-anadir-tipo-de-enlace-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-006-anadir-tipo-de-enlace-al-modelo-de-ejecucion.md") | CSP\-ME\-CCSP\-ME\-C\_UO |
| Guardar | Botón común a la página. Se creará el nuevo modelo de ejecución de acuerdo a la información recogida en todas las pestañas | La condición mínima para la creación del nuevo modelo de ejecución es la introducción obligatoria del campo Nombre sin que tenga un valor ya existente entre los registros activos de la tabla "modelo ejecución".El modelo de ejecución se creará con el campo "activo" \= "true" | CSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de listado |  |

  


Formulario de creación de un modelo de ejecución. Pestaña "Tipos de finalidad".

![](/attachments/597852575/597873874.png)



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir tipo de finalidad al modelo |  | No es obligatorio que el modelo disponga de ningún tipo de finalidad asociado.Se creará un registro en la relación "modelo tipo finalidad"Se mostrará el formulario para añadir un tipo de finalidad al modelo de ejecución [IU\-CSP\-0050\-007 Añadir tipo de finalidad al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-007-anadir-tipo-de-finalidad-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-007-anadir-tipo-de-finalidad-al-modelo-de-ejecucion.md") | CSP\-ME\-CCSP\-ME\-C\_UO |
| Guardar | Botón común a la página. Se creará el nuevo modelo de ejecución de acuerdo a la información recogida en todas las pestañas | La condición mínima para la creación del nuevo modelo de ejecución es la introducción obligatoria del campo Nombre sin que tenga un valor ya existente entre los registros activos de la tabla "modelo ejecución".El modelo de ejecución se creará con el campo "activo" \= "true" |  |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de listado |  |

  


Formulario de creación de un modelo de ejecución. Pestaña "Tipos de hito".

![](/attachments/597852575/597873873.png)



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir tipo de hito al modelo |  | No es obligatorio que el modelo disponga de ningún tipo de hito asociado.Se creará un registro en la relación "modelo tipo hito".Se mostrará el formulario para añadir un tipo de hito al modelo de ejecución [IU\-CSP\-0050\-008 Añadir tipo de hito al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-008-anadir-tipo-de-hito-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-008-anadir-tipo-de-hito-al-modelo-de-ejecucion.md") | CSP\-ME\-CCSP\-ME\-C\_UO |
| Guardar | Botón común a la página. Se creará el nuevo modelo de ejecución de acuerdo a la información recogida en todas las pestañas | La condición mínima para la creación del nuevo modelo de ejecución es la introducción obligatoria del campo Nombre sin que tenga un valor ya existente entre los registros activos de la tabla "modelo ejecución".El modelo de ejecución se creará con el campo "activo" \= "true" | CSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de listado |  |

  


Formulario de creación de un modelo de ejecución. Pestaña "Unidades de gestión".

![](/attachments/597852575/597873879.png)



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir unidad de gestión al modelo |  | No es obligatorio que el modelo disponga de ninguna unidad de gestión asociada.Se creará un registro en la relación "modelo unidad"Se mostrará el formulario para añadir una unidad de gestión al modelo de ejecución.[IU\-CSP\-0050\-011 Añadir unidad de gestión al modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-011-anadir-unidad-de-gestion-al-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-011-anadir-unidad-de-gestion-al-modelo-de-ejecucion.md") | CSP\-ME\-CCSP\-ME\-C\_UO |
| Guardar | Botón común a la página. Se creará el nuevo modelo de ejecución de acuerdo a la información recogida en todas las pestañas | La condición mínima para la creación del nuevo modelo de ejecución es la introducción obligatoria del campo Nombre sin que tenga un valor ya existente entre los registros activos de la tabla "modelo ejecución".El modelo de ejecución se creará con el campo "activo" \= "true" | CSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de listado |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  


  
  





