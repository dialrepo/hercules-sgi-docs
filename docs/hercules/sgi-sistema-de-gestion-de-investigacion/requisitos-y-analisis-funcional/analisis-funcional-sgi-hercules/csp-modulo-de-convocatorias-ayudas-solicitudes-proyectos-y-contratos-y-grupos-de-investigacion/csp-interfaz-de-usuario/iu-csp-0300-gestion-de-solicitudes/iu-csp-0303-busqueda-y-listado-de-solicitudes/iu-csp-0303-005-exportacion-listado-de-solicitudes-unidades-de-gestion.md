# Hércules : IU\-CSP\-0303\-005 \- Exportación listado de solicitudes \- Unidades de gestión



## Formulario Exportación listado de solicitudes \- Unidades de gestión

Pantalla de configuración de la exportación del listado de solicitudes.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Formulario de parámetros para generación de informe asociado al listado de solicitudes devueltos por el buscador correspondiente. | | | |
| Título del listado | | TextoOpcional | Título  del informe generar.Se mostrará la cadena "Listado de solicitudes" como valor por defecto. |
| Formato de exportación | | SelectorTexto cortoObligatorio | Selector con los valores:* csv * xlsx  Será obligatorio seleccionar un valor. |
| Entidades convocantes | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado. Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Datos proyecto \- Ficha general | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado. Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Datos proyecto \- Áreas conocimiento | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado. Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Datos proyecto \- Clasificaciones | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado.Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Datos proyecto \- Equipo | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado.Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Datos proyecto \- Responsable económico | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado. Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Datos proyecto \- Socios | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado.Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Datos proyecto \- Entidades financiadoras | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado.Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Datos RRHH | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado.Si está marcado, el informe de salida contendrá los campos asociados a este bloque (incluye los datos del solicitante, tutor , requisitos convocatoria y de la memoria) |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Exportar | Genera el informe asociado al listado de acuerdo al formato de exportación seleccionado | Si se selecciona el formato de exportación "csv" se generará el informe [REP\-CSP\-0021 \- Listado general de solicitudes \- Formato csv](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0021-listado-general-de-solicitudes-formato-csv.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0021-listado-general-de-solicitudes-formato-csv.md") pasando como parámetros los bloques de datos seleccionados (aquellos que tengan el check correspondiente marcado).Si se selecciona el formato de exportación "xlsx" se generará el informe [REP\-CSP\-0020 \- Listado general de solicitudes \- Formato xlsx](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0020-listado-general-de-solicitudes-formato-xlsx.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0020-listado-general-de-solicitudes-formato-xlsx.md") pasando como parámetros los bloques de datos seleccionados (aquellos que tengan el check correspondiente marcado). | No se necesita permisos adicionales |
| Cancelar | Retorna a la pantalla de procedencia (búsqueda y listado de proyectos) |  | No se necesita permisos adicionales |




