# Hércules : IU\-CSP\-0951\-004 \- Exportación listado de grupos \- Unidades de gestión



## Formulario Exportación listado de grupos \- Unidades de gestión

Pantalla de configuración de la exportación del listado detallado de grupos de investigación.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Formulario de parámetros para generación de informe asociado al listado de grupos de investigación devueltos por el buscador correspondiente. | | | |
| Título del listado | | TextoOpcional | Título  del informe generar.Se mostrará la cadena "Listado de grupos de investigación" como valor por defecto.El nombre especificado se mostrará como título en el informe resultante. No aplica para los tipos de listados CSV y XLSX. |
| Formato de exportación | | SelectorTexto cortoObligatorio | Selector con los valores:* csv * xlsx  Será obligatorio seleccionar un valor. |
| Equipo investigación | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado. Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Responsable económico | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado.Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Líneas de investigación | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado. Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Equipos instrumentales | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado.Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Enlaces | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado.Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |
| Persona autorizada | | Check | Por defecto estará seleccionado. Podrá dejarse desmarcado.Si está marcado, el informe de salida contendrá los campos asociados a este bloque. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Exportar | Genera el informe asociado al listado de acuerdo al formato de exportación seleccionado | Si se selecciona el formato de exportación "csv" se generará el informe [REP\-CSP\-0035 \- Listado general de grupos de investigación \- Formato csv](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0035-listado-general-de-grupos-de-investigacion-formato-csv.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0035-listado-general-de-grupos-de-investigacion-formato-csv.md") pasando como parámetros los bloques de datos seleccionados (aquellos que tengan el check correspondiente marcado).Si se selecciona el formato de exportación "xlsx" se generará el informe [REP\-CSP\-0034 \- Listado general de grupos de investigación \- Formato xlsx](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0034-listado-general-de-grupos-de-investigacion-formato-xlsx.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0150-sgrep-integracion-con-sistema-de-generacion-de-reportes/csp-informes-predefinidos/rep-csp-0034-listado-general-de-grupos-de-investigacion-formato-xlsx.md") pasando como parámetros los bloques de datos seleccionados (aquellos que tengan el check correspondiente marcado). | No se necesita permisos adicionales |
| Cancelar | Retorna a la pantalla de procedencia (búsqueda y listado de grupos de investigación) |  | No se necesita permisos adicionales |




