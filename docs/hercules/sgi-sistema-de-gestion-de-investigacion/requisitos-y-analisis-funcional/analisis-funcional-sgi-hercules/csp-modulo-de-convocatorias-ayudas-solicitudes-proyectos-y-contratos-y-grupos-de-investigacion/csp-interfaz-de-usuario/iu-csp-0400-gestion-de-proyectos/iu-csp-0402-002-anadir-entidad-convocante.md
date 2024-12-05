# Hércules : IU\-CSP\-0402\-002 \- Añadir entidad convocante



## Formulario Añadir entidad convocante

Formulario para añadir una entidad convocante al proyecto indicando tanto la entidad, como el plan y el programa/subprograma/modalidad.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario añadir entidad convocante y modalidad | | |
| Entidad convocante | TextoObligatorio | Entidad u organismo que convoca la convocatoria. El buscador de empresas será común al SGI, [IU\-GEN\-0100\-0080 \- Búsqueda de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), y se resolverá por medio del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md") |
| Buscar | Icono de acción | Acción "Buscar" |
| Plan | SelectorTextoOpcional | Listado de Planes de investigación (Programas con padre null y activos). |
| Modalidad | Componente gráfico de árbolTexto largoOpcional | Se mostrará el árbol de programas/subprogramas/modalidades/submodalidades asociado al Plan de investigación (el árbol de Programa que "cuelga" del Plan seleccionado en el combo anterior).Solo se permitirá seleccionar un elemento |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Muestra la pantalla de búsqueda para seleccionar la entidad convocante | El buscador de empresas será común al SGI, [IU\-GEN\-0100\-0080 \- Búsqueda de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), y se resolverá por medio del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md") | No se necesita permiso para mostrar la pantalla de búsqueda de empresas |
| Añadir | Se vincula la entidad convocante al proyecto | Crea un registro en la tabla "proyecto entidad convocante". No puede existir dos registros para la misma entidad convocante en el mismo proyecto. Se crea el registro en la tabla "proyecto entidad convocante". No puede existir la misma entidad dos o más veces para el mismo proyecto. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al formulario del proyecto, sin salvar los posibles cambios |  |  |




