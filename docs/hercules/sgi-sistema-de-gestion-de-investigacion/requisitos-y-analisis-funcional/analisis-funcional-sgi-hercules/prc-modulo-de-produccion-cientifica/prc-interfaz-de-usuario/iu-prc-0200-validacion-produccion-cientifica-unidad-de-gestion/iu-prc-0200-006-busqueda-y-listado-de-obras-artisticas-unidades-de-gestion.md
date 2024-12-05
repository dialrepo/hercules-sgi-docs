# Hércules : IU\-PRC\-0200\-006 Búsqueda y listado de obras artísticas \- Unidades de gestión



## Formulario de Búsqueda y listado de obras artísticas

Pantalla que muestra un formulario, que permite aplicar filtros sobre el listado de todas las obras artísticas de los investigadores creadas en el módulo de CVN y enviadas al módulo de PRC.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda de obras artísticas.Los items de obras artísticas serán los registros de la tabla "ProduccionCientifica" cuyo campo "epigrafeCVN" tenga el  valor "050\.020\.030\.000" y el campo "convocatoriaBaremacionId" sea null. Aquellos registros cuyo campo "convocatoriaBaremacionId" tienen un valor, son datos históricos (datos del item en esa convocatoria).Por defecto el listado se mostrará ordenado por fecha de inicio de más a menos reciente y por estado. Para obtener la fecha de inicio, se tendrá que buscar de todos los campos relacionados con el item de producción científica (tabla "CampoProduccionCientifica") aquel cuyo campo "codigoCVN" tenga el valor "050\.020\.030\.120". Al entrar se hará el filtro por estado que sea "Pendiente" y "Validado parcialmente" | | |
| Autor/a | BuscadorOpcional | A través del botón Buscar se dará acceso al buscador de personas común al SGI, [IU\-GEN\-0100\-0060 \- Búsqueda de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=95489453"). Las condiciones de invocación a este buscador se recogen en  la tabla de acciones.La persona seleccionada se utilizará para aplicar como filtro de búsqueda sobre el campo "personaRef" de la tabla "Autor". |
| Grupo de investigación | BuscadorOpcional | A través del botón Buscar se dará acceso al buscador de grupos de investigación común al SGI, [IU\-GEN\-0140 \- Búsqueda de grupos de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0140-busqueda-de-grupos-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0140-busqueda-de-grupos-de-investigacion.md")El grupo de investigación que se devolverá desde el buscador será la que se utilizará para aplicar como filtro sobre el campo "grupoRef" de la tabla "AutorGrupo". |
| Nombre de la exposición | Texto largoOpcional | Nombre de la exposición.Filtro a aplicar sobre el valor del campo de producción científica que corresponde al código CVN "050\.020\.030\.020" (campo "valor" de la tabla "ValorCampo" con "campoProduccionCientifica" con "codigoCVN" igual a "050\.020\.030\.020". |
| Descripción | Texto largoOpcional | Descripción de la exposición.Filtro a aplicar sobre el valor del campo de producción científica que corresponde al código CVN "050\.020\.030\.010" (campo "valor" de la tabla "ValorCampo" con "campoProduccionCientifica" con "codigoCVN" igual a "050\.020\.030\.010". |
| Fecha de inicio(desde \- hasta) | FechaOpcional | Rango de fechas por las que se busca la fecha de inicio.Fecha inicio mayor o igual a fecha desde.Fecha inicio menor o igual a fecha hasta.Filtro a aplicar sobre el valor del campo de producción científica que corresponde al código CVN "050\.020\.030\.120" (campo "valor" de la tabla "ValorCampo" con "campoProduccionCientifica" con "codigoCVN" igual a "050\.020\.030\.120". |
| --- | --- | --- |
| Estado | Combo multiselecciónTexto cortoOpcional | Estado actual del item de producción científica.Listado con los siguientes valores:* Pendiente * Validado * Validado parcialmente * Rechazado  Por defecto tendrá marcados los estados "Pendiente" y "Validado parcialmente". Los estados seleccionados se ven separados por coma.Se aplicará sobre el estado actual de la obra artística. El estado actual de la obra artística está referenciado sobre la tabla "EstadoProduccionCientifica a través del campo "estado" de la tabla "ProduccionCientifica" |
| Listado de resultados: registros de la tabla "ProduccionCientifica" cuyo campo "epigrafeCVN" tenga el  valor "050\.020\.030\.000" y el campo "convocatoriaBaremacionId" sea null.Por defecto el listado se mostrará ordenado por fecha de inicio de más a menos reciente y por estado. Para obtener la fecha de inicio, se tendrá que buscar de todos los campos relacionados con el item de producción científica (tabla "CampoProduccionCientifica") aquel cuyo campo "codigoCVN" tenga el valor "050\.020\.030\.120". Al entrar se hará el filtro por estado que sea "Pendiente" y "Validado parcialmente" | | |
| Fecha inicio | Fecha | Es el valor del campo que corresponde con la "Fecha de inicio" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "050\.020\.030\.120", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo".En caso de existir mas de un valor para el mismo código CVN ("050\.020\.030\.120") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| Descripción | Texto largo | Es el valor del campo que corresponde con la  "Descripción de la obra artística" del item de producción científica.Para ello de todos los campos de producción científica (tabla "CampoProduccionCientifica) se cogerá el que tiene en el "codigoCVN" el valor "050\.020\.030\.010", y para ese campo se obtiene su valor (campo "valor" de la tabla "ValorCampo".En caso de existir mas de un valor para el mismo código CVN ("050\.020\.030\.010") se muestran todos los valores separados por coma según el orden indicado en el campo "orden". |
| Estado | Texto corto | Estado actual de la obra artística, extraído del enumerado "TipoEstadoProduccion" de la tabla "EstadoProduccionCientifica", a partir del campo "estado" de la tabla "ProduccionCientifica" |
| Ver | Icono de acción | Acción "Ver" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (autor/a) | Botón de búsqueda del filtro autor de la obra artística | Mostrará el buscador de investigadores. Este buscador se resolverá por medio del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0020+-+Buscar+persona+en+un+listado+de+colectivos"). Se le deberá pasar a este buscador el tipo de colectivo "Autor PRC" | No se necesita permiso para buscar investigador. |
| Buscar (grupo  investigación) | Búsqueda de grupo de investigación registrada en el SGI | La búsqueda se realizará a través del buscador de grupos de investigación [IU\-GEN\-0140 \- Búsqueda de grupos de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0140-busqueda-de-grupos-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0140-busqueda-de-grupos-de-investigacion.md"), común a todo el SGI. Esta búsqueda llevará implícito el filtro por los permisos  (PRC\-VAL\-V, PRC\-VAL\-E) | No se necesita permiso para buscar grupo de investigación. |
| Buscar | Aplica los filtros introducidos sobre la lista de obras artísticas mostrando las que cumplen las condiciones |  | PRC\-VAL\-VPRC\-VAL\-E |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda |  |  |
| Ver | Muestra la pantalla de validación de la obra artística | Da acceso al detalle del item:[IU\-PRC\-0200\-007 \- Ver obra artística \- Unidad de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0200-validacion-produccion-cientifica-unidad-de-gestion/iu-prc-0200-007-ver-obra-artistica-unidad-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/prc-modulo-de-produccion-cientifica/prc-interfaz-de-usuario/iu-prc-0200-validacion-produccion-cientifica-unidad-de-gestion/iu-prc-0200-007-ver-obra-artistica-unidad-de-gestion.md") | PRC\-VAL\-EPRC\-VAL\-V |

### Acciones

#### Por actor

#### Todos los permisos de acceso




