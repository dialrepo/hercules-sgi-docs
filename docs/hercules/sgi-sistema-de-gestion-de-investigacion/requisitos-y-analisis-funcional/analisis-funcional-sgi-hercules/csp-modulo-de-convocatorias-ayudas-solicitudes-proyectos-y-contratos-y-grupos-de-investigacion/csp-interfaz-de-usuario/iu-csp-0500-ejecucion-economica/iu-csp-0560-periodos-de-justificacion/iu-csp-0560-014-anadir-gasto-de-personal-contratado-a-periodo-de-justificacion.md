# Hércules : IU\-CSP\-0560\-014 \- Añadir gasto de personal contratado a periodo de justificación



## Formulario Añadir gasto de personal contratado a periodo de justificación

Formulario que permite añadir uno o varios gastos de personal a la justificación de un periodo.

Los gastos de personal disponibles para ser incluidos en la justificación serán los que figuren en el apartado  "Facturas y justificantes" \- "Personal contratado" de la sección "Ejecución económica" del proyecto que, a su vez, habrán sido recuperados del SGE por medio de los servicios de integración correspondientes.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Añadir gasto a la justificación del periodo | | | |
| Anualidad | | SelectorNumérico entero genéricoOpcional | Listado de todas anualidades del/de los proyecto/s que tengan vinculado el identificador del SGE para el que se está viendo la ejecución económica |
| Persona | | ReferenciaTextoOpcional | Persona contratada titular de la nómina.Pendiente de profundización de análisis. Este buscador podría pasar a ser un combo con el listado de personas que figuren como contratados con cargo al proyecto ya que son las únicas cuya nómina se podría adjuntar a la justificación.La búsqueda se realizará a través del formulario [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") donde será resuelta a través de los mecanismos de integración proporcionados por el SGI hacia el sistema de gestión de personas corporativo [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")[.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") |
| Buscar | | Icono de acción | Acción "Buscar" |
| Fecha pago nómina | | FechaOpcional | Fecha de pago de la nómina |
| Filtrar | | Icono de acción | Acción "Filtrar" |
| Listado de facturas y justificantes | | | |
|  | | CheckBooleano | Permite seleccionar los gastos a incluir en el periodo de justificación de forma individual, marcando el check de la columna, o seleccionar todos los gastos, marcando el check de la cabecera de la tabla. |
| Anualidad | | Numérico entero genérico | Año de la anualidad |
| Agrupación gasto | | Texto corto | Agrupación de gasto asociada a la anualidad |
| Concepto de gasto | | Texto corto | Concepto de gasto asociado a la agrupación de gasto |
| Aplicación presupuestaria (inc. código económico) | | Texto corto | Aplicación presupuestaria asociada al concepto de gasto |
| Persona | | Texto | Nombre y apellidos de la persona titular de la nómina |
| NIF | | Texto corto | NIF de la persona titular de la nómina |
| Fecha pago | | Fecha | Fecha de pago de la nómina |
| Importe | | Económico | Importe de la nómina |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar persona | Muestra la pantalla de búsqueda para seleccionar una persona. | Pendiente de profundización de análisis. Este buscador podría pasar a ser un combo con el listado de personas que figuren como contratados con cargo al proyecto ya que son las únicas cuya nómina se podría adjuntar a la justificación.En caso que se implemente con buscador de personas el colectivo serían todos los asociados  a un rol de proyecto de tipo "equipo investigación" o bien a un tipo de colectivo general que se cree tal como "personal investigación" o "personal investigación contratado"La búsqueda se realizará a través del formulario [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") donde será resuelta a través de los mecanismos de integración proporcionados por el SGI hacia el sistema de gestión de personas corporativo [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")[.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")El buscador deberá ser invocando pasando como parámetro el colectivo: pendiente de lo especificado en párrafo anterior. |  |
| Filtrar | Aplica los filtros introducidos sobre la lista de gastos de personal mostrando las que cumplen las condiciones |  |  |
| Guardar | Añade el/los gasto/s seleccionados a la justificación del periodo |  |  |
| Cancelar | Retorna al formulario de justificación sin salvar los posibles cambios |  |  |

### Acciones

  
  
  
  
  
  





