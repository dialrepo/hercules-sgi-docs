# Hércules : IU\-CSP\-0305\-003 \- Modificar solicitud \- Socios



## Formulario Modificar solicitud \- Socios

Formulario que permitirá indicar en la solicitud de proyecto los socios que colaborarán en el desarrollo del mismo

Si en la pantalla de "Datos proyecto" en el campo "Proyecto colaborativo" tiene el valor "No" no se podrán añadir socios. Se mostrará un mensaje que indique "Ha seleccionado en los Datos del proyecto que es un proyecto no colaborativo por lo que no existirán socios"



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Este apartado "Socios" y, en general, todo del bloque "Datos proyecto" solamente estará visible si el campo "formulario solicitud" de la tabla "solicitud" toma valor "proyecto". | | |
| Listado de socios. Registros de la tabla "solicitud proyecto socio". Si el campo "coordinador externo" de la tabla "solicitud proyecto" toma valor "true" se realizará  la comprobación verificando que se haya indicado el socio coordinador. Para ello deberá cumplirse que uno de los socios tenga un rol (campo "rol socio") que esté configurado con la característica de coordinador (campo "coordinador" de la tabla "rol socio" a true"). En caso contrario se mostrará un mensaje informativo en la cabecera de esta página "No se ha indicado el socio que actuará como coordinador del proyecto.Verifique el rol de cada socio.". | | |
| Nombre | Texto | Nombre  del socio. Un socio será una empresa/entidad, por lo que su nombre será recuperado a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") a partir del campo "empresa ref." de la tabla "solicitud proyecto socio" |
| Rol | Texto corto | Rol con el que participará el socio colaborador.Se mostrará el campo "nombre" de la tabla "rol socio" recuperado a partir  del campo "rol socio" de la tabla "solicitud proyecto socio" |
| Núm. investigadores | Numérico entero genérico | Número de investigadores que forman parte del equipo del socioCampo "num. investigadores" de la tabla "solicitud proyecto socio" |
| Mes inicio colaboración | Numérico entero genérico | Mes de inicio de la colaboración del socio en el proyectoCampo "mes inicio" de la tabla "solicitud proyecto socio" |
| Mes fin colaboración | Numérico entero genérico | Mes de fin de la colaboración del socio en el proyectoCampo "mes fin" de la tabla "solicitud proyecto socio" |
| Importe presupuestado | Económico | Importe presupuestado por el socio para el desarrollo de su parte del proyectoCampo "importe presupuestado" de la tabla "solicitud proyecto socio" |
| Importe solicitado | Económico | Importe solicitado por el socio dentro de los términos de la convocatoriaCampo "importe solicitado" de la tabla "solicitud proyecto socio" |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir socio | Icono de acción | Acción "Añadir socio" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Listado de socios: Listado de socios colaboradores | | | |
| Modificar | Produce un cambio de contexto al socio colaborador seleccionado del listado de socios colaboradores | Muestra la pantalla [IU\-CSP\-0305\-003\-001 \- Modificar solicitud \- Añadir\-modificar socio \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0305-003-modificar-solicitud-socios/iu-csp-0305-003-001-modificar-solicitud-anadir-modificar-socio-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0305-003-modificar-solicitud-socios/iu-csp-0305-003-001-modificar-solicitud-anadir-modificar-socio-datos-generales.md").Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UO |
| Eliminar | Elimina el socio colaborador del proyecto | Se elimina el socio del listado de socios. Antes de eliminar sacar pantalla de confirmación de la eliminación.Si hay registros en las tablas "solicitud proyecto equipo socio", "solicitud proyecto periodo pago" y/o "solicitud proyecto periodo justificación"  vinculados con el socio que se desea eliminar, se mostrará en el propio mensaje de confirmación de la acción de eliminar el siguiente texto: "Existe información de detalle vinculada a este socio, ¿desea continuar?"Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados |  |  |
| Añadir socio | Muestra la pantalla "Añadir socio" | Muestra la pantalla [IU\-CSP\-0305\-003\-001 \- Modificar solicitud \- Añadir\-modificar socio \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0305-003-modificar-solicitud-socios/iu-csp-0305-003-001-modificar-solicitud-anadir-modificar-socio-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0305-modificar-solicitud-tipo-proyecto/iu-csp-0305-003-modificar-solicitud-socios/iu-csp-0305-003-001-modificar-solicitud-anadir-modificar-socio-datos-generales.md").Si el campo "coordinador externo" de la tabla "solicitud" toma valor "true":* Se comprobará  que uno de los socios tenga un rol (campo "rol socio") que esté configurado con la característica de coordinador (campo "coordinador" de la tabla "rol socio" a true"). En caso contrario se mostrará un mensaje informativo en la cabecera de esta página "No se ha indicado el socio que actuará como coordinador del proyecto.Verifique el rol de cada socio.". | CSP\-SOL\-ECSP\-SOL\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todos los apartados de definición de la solicitud. | En el caso de que se elimine un socio del listado, se realizará un borrado físico del registro en la tabla "solicitud proyecto socio". Se eliminarán en cascada los miembros del equipo, los periodos de pago y los periodos de justificación de las tablas "solicitud proyecto equipo socio", "solicitud proyecto periodo pago" y "solicitud proyecto periodo justificación" respectivamente, vinculados al socio colaborador.Ver precondiciones en  [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UO |
| Cancelar | Retorna al listado de Solicitud sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




