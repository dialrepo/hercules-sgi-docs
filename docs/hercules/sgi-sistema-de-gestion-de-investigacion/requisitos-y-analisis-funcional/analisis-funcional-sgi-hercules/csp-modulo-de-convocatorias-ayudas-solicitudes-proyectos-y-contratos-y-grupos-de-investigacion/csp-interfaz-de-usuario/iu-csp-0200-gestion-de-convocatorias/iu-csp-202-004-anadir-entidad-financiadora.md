# Hércules : IU\-CSP\-202\-004 \- Añadir entidad financiadora



## Formulario Añadir entidad financiadora

Pantalla que muestra un formulario, que permite añadir una entidad financiadora a la convocatoria.

 Las entidades financiadoras se añaden desde la pestaña de "Entidades financiadoras" de la convocatoria [IU\-CSP\-0201\-003 \- Crear convocatoria \- Entidades financiadoras](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-003-crear-convocatoria-entidades-financiadoras.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-003-crear-convocatoria-entidades-financiadoras.md").



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Entidad financiadora | TextoObligatorio | Empresa u organismo que financia la convocatoria. Cuando la convocatoria ya tuviese una entidad financiadora asociada, los datos de la misma se obtendrán a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). El buscador de empresas será el común al SGI, [IU\-GEN\-0100\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), siendo resuelto por medio del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md") |
| Fuente de financiación | SelectorTexto cortoOpcional | Listado de fuentes de financiación activasSe listarán los valores (campo "nombre" ) de la tabla "fuente financiación" que tengan el campo "activo" a "true" |
| Tipo financiación | SelectorTexto cortoOpcional | Listado de Tipos de financiación activosSe listarán los valores (campo "nombre" ) de la tabla "tipo financiación" que tengan el campo "activo" a "true" |
| Porcentaje de financiación | Numérico Porcentaje Opcional | Porcentaje de financiaciónSe corresponde con el campo "porcentaje financiación" de la tabla "convocatoria entidad financiadora".Validar que el valor esté comprendido entre 0 y 100\. |
| Importe de financiación | EconómicoOpcional | Importe de financiaciónSe corresponde con el campo "importe financiación" de la tabla "convocatoria entidad financiadora" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Buscar | Muestra la pantalla de búsqueda para seleccionar la entidad financiadora | El listado de entidades disponible se obtendrá a través del buscador de Empresas común a todo el SGI, [IU\-GEN\-0100\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md") y que deberá hacer uso del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md") |
| Guardar | Añade la entidad financiadora a la convocatoria | Se almacena el registro correspondiente en la tabla "convocatoria entidad financiadora" |
| Cancelar | Retorna al formulario de la convocatoria, sin salvar los posibles cambios |  |




