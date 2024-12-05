# Hércules : IU\-ETI\-0010\-001 Búsqueda y listado de convocatorias reunión



## Formulario de Búsqueda y listado de convocatorias reunión

Pantalla que muestra un formulario, que permite aplicar filtros sobre el listado de todas las de convocatorias de reunión.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Comité | DesplegableTexto cortoOpcional | Listado con los tres comités: CEISH, CEEA y CEIAB. |
| Fecha evaluación(desde \- hasta) | fechaOpcional | Rango de fechas por las que se busca la fecha de evaluación.Fecha evaluación mayor o igual a fecha desde.Fecha evaluación menor o igual a fecha hasta. |
| Convocatoria | DesplegableTexto cortoOpcional | Listado con los valores: Ordinaria, Extraordinaria y Seguimiento. |
| Listado de resultados | | |
| Comité | Texto corto | Comité de la convocatoria. |
| Fecha evaluación | fecha | Día de la reunión de evaluación. |
| Código | Texto corto | Código de la convocatoria, tienen el siguiente formato ACTAsecuencial/YYYY/COMITE , donde COMITE es el comité elegido, YYYY es el año de la fecha de evaluación y secuencial es el número del acta que corresponde a la convocatoria, es un secuencial por comité. Hay tres secuenciales uno por cada comité (no es por año). |
| Hora 1ª | Hora | Hora y minutos de inicio de la reunión en Primera convocatoria. |
| Hora 2ª | Hora | Hora y minutos de inicio de la reunión en Segunda convocatoria. |
| Lugar | Texto corto | Lugar donde se celebra la reunión. |
| Convocatoria | Texto corto | El tipo de convocatoria. |
| Fecha envío | fecha | Fecha en la que se envió la notificación a los miembros del comité de que había una nueva convocatoria programada. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica los filtros introducidos sobre la lista de Convocatorias reunión mostrando las que cumplen las condiciones | [CU\-ETI\-0010\-001 \- Buscar Convocatorias reunión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-001-buscar-convocatorias-reunion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-001-buscar-convocatorias-reunion.md") | ETI\-CNV\-VETI\-CNV\-EETI\-CNV\-BETI\-CNV\-ENV |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Convocatorias reunión |  |  |
| Editar | Muestra la pantalla de modificación convocatoria | [IU\-ETI\-0010\-003 Modificar convocatoria reunión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0010-gestion-de-convocatorias-reunion/iu-eti-0010-003-modificar-convocatoria-reunion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0010-gestion-de-convocatorias-reunion/iu-eti-0010-003-modificar-convocatoria-reunion.md") | ETI\-CNV\-E |
| Ver | Muestra la pantalla de consulta convocatoria | Cuando la convocatoria de reunión tiene asociada un acta en estado "Finalizada" | ETI\-CNV\-EETI\-CNV\-V |
| Eliminar | Se desactivará la convocatoria de reunión. Funcionalidad transversal a toda la aplicación del SGI.No saldrá dicha convocatoria en las búsquedas ni será accesible por el gestor, a no ser que un administrador vuelva a activar dicha convocatoria.El botón de borrado solo aparecerá si la convocatoria no tiene memorias asignadas y no tiene el acta asignada. |  | ETI\-CNV\-B |
| Enviar | Se envía la convocatoria de la reunión a todos los miembros integrantes del comité, incluida la secretaria técnica (administrador) y se guardará la fecha de envío. Se eliminará dicha opción de la convocatoria, para que no se pueda volver a enviar.Dicha opción únicamente se muestra si no existe fecha de envío.Al realizar esta acción habrá que tener en cuenta que se generará un comunicado según se describe en el apartado [Comunicados](#IUETI0010001Búsquedaylistadodeconvocatoriasreunión-comunicados "#IUETI0010001Búsquedaylistadodeconvocatoriasreunión-comunicados"). | [CU\-ETI\-0010\-008 \- Envío notificación convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-008-envio-notificacion-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-008-envio-notificacion-convocatoria.md") | ETI\-CNV\-ENV |
| Añadir | Muestra la pantalla de nueva convocatoria | [CU\-ETI\-0010\-002 \- Alta Convocatoria reunión \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-002-alta-convocatoria-reunion-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-casos-de-uso/cu-eti-0010-gestion-convocatorias-reunion/cu-eti-0010-002-alta-convocatoria-reunion-guardar.md") | ETI\-CNV\-C |
| Exportar | Genera el informe asociado al listado de convocatorias de reunión. | Muestra la pantalla [IU\-ETI\-0010\-007 \- Exportación listado de convocatorias de reunión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0010-gestion-de-convocatorias-reunion/iu-eti-0010-007-exportacion-listado-de-convocatorias-de-reunion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0010-gestion-de-convocatorias-reunion/iu-eti-0010-007-exportacion-listado-de-convocatorias-de-reunion.md") | ETI\-CNV\-VETI\-CNV\-E |

### Comunicados

Al enviar una convocatoria de reunión será necesario avisar a los integrantes del comité correspondiente mediante un comunicado. La descripción detallada para la generación de este tipo de comunicados se encuentra en el apartado **Convocatoria de reunión comité**dentro de [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0010-generar-comunicado-de-envio-inmediato.md").

### Acciones

#### Por actor

#### Todos los permisos de acceso




