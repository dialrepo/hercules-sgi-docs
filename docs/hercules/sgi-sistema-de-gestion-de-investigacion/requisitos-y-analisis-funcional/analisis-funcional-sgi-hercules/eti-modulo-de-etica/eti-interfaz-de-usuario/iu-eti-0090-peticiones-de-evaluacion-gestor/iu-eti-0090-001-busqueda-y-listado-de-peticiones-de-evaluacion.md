# Hércules : IU\-ETI\-0090\-001 Búsqueda y listado de peticiones de evaluación



## Formulario de Búsqueda y listado de peticiones de evaluación

Pantalla que muestra un formulario, que permite aplicar filtros sobre el listado de peticiones de evaluación dadas de alta en el sistema



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Código | Texto cortoOpcional | Es un código generado automáticamente al crear una nueva petición. Tiene el formato YYYY/secuencia , donde YYYY es el año y secuencia en un código secuencial desde 000 hasta 999 del año. |
| Título proyecto | TextoOpcional | Es el título del proyecto |
| Comité | SelectorTexto cortoOpcional | Listado con los tres comités: CEISH, CEEA y CEIAB |
| Solicitante | Botón buscarTexto cortoOpcional | Se tendrá que hacer una búsqueda entre las personas solicitantes de peticiones de evaluación. Se muestra la pantalla de búsqueda de personas común al SGI [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") |
| Estado memoria | SelectorTexto cortoOpcional | Desplegable con los distintos estados de una memoria. Se buscará aquella petición que tenga una memoria en dicho estado. |
| Listado de resultados | | |
| Solicitante | Texto | Nombre y apellidos de la persona solicitante de la petición de evaluación, recuperados por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Código | Texto corto | Código de la petición de evaluación de proyecto. |
| Título proyecto | Texto | Es el título del proyecto |
| Fuente de financiación | Texto corto | Fuente de financiación que va a tener el proyecto. |
| Fecha de inicio | Fecha | Fecha de inicio del proyecto. |
| Fecha de fin | Fecha | Fecha fin del proyecto. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar solicitante | Se muestra la pantalla de búsqueda de personas de donde seleccionar el solicitante.A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md").  El listado de solicitantes disponible se obtendrá del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos").Se le deberá pasar a este buscador el tipo de colectivo que haya sido identificado en periodo de implantación como personal de investigación que crea las solicitudes de evaluación de ética ("Solicitante ética"). |  | No se necesita permiso para abrir la pantalla de búsqueda de personas |
| Buscar | Aplica los filtros introducidos sobre la lista de Peticiones de evaluación mostrando las que cumplen las condiciones | [CU\-ETI\-0080\-001 \- Buscar Peticiones de evaluación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0080-peticiones-de-evaluacion-gestor/cu-eti-0080-001-buscar-peticiones-de-evaluacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0080-peticiones-de-evaluacion-gestor/cu-eti-0080-001-buscar-peticiones-de-evaluacion.md") | ETI\-PEV\-V |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Peticiones de evaluación. |  |  |
| Consultar | Puede ir al detalle de la petición de evaluación pero en modo consulta, salvo la acción de cambiar estado en la pestaña de Memorias. |  | ETI\-PEV\-V |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Exportar | Genera el informe asociado al listado de solicitudes de evaluación. | Muestra la pantalla [IU\-ETI\-0090\-005 \- Exportación listado de solicitudes de evaluación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0090-peticiones-de-evaluacion-gestor/iu-eti-0090-005-exportacion-listado-de-solicitudes-de-evaluacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0090-peticiones-de-evaluacion-gestor/iu-eti-0090-005-exportacion-listado-de-solicitudes-de-evaluacion.md") | ETI\-PEV\-V |

  


### Acciones

#### Por actor

#### Todos los permisos de acceso




