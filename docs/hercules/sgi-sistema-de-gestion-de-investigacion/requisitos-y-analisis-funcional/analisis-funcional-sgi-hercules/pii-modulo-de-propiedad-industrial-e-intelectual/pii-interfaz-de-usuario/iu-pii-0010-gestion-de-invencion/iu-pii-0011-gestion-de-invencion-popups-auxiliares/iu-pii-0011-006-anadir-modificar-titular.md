# Hércules : IU\-PII\-0011\-006 \- Añadir\-modificar titular



## Formulario Añadir\-modificar titular

Pantalla que muestra el formulario para añadir o modificar un titular de la invención.



| *Caso 1: formulario en modo "Añadir"**Caso 2: formulario en modo "Modificar"* | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Entidad | TextoObligatorioSolo consulta | Entidad a añadir al listado de entidades.Campo de búsqueda de empresas en los sistemas de la Universidad. |
| Participación | Porcentaje (Decimal con 2 decimales)ObligatorioModificable | Porcentaje de participación en la titularidad de la invención. Podrá tener un valor mayor o igual que 0 (indicando así que una entidad deja de ser titular por ejemplo) y menor o igual que 100\. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Buscar (entidad) | A través del botón Buscar se dará acceso al buscador de empresas/entidades común a todo el SGI [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"). El listado de entidades disponibles se obtendrá del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md"), que realizará la búsqueda de entidades en los sistemas de la universidad. |  |
| Añadir | Añade el titular al período de titularidad.Se comprobará que la participación esté entre 0 y 100, puesto que se contempla el caso de que una entidad se quede con un 0% de participación y así se quiera reflejar. |  |
| Aceptar | Vuelve a la pantalla de titularidad modificando los datos del titular.Se comprobará que la participación esté entre 0 y 100, puesto que se contempla el caso de que una entidad se quede con un 0% de participación y así se quiera reflejar. |  |
| Cancelar | Vuelve a la pantalla de titularidad sin añadir el titular al período de titularidad. |  |




