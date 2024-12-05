# Hércules : IU\-CSP\-0070\-001 \- Crear fuente de financiación



## Formulario Crear fuente de financiación

Formulario de creación de una fuente de financiación



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Creación de fuente de financiación | | |
| Nombre | Texto cortoObligatorio | Nombre identificativo de la fuente de financiación. Debe comprobarse la unicidad por el campo "nombre" entre los elementos activos (campo "activo"\= true) |
| Descripción | TextoOpcional | Descripción de la fuente de financiación. De introducción libre y no obligatoria. |
| Ámbito geográfico | SelectorObligatorio | Los valores listados serán los incluidos en la tabla "Tipo ámbito geográfico" que tengan el campo "activo \= true". Esta tabla no dispone de configuración habilitada en el SGI. Es una tabla precargada en periodo de implantación que inicialmente tomará los valores* Propio * Local * Autonómico * Nacional * Europeo * Internacional |
| Origen | SelectorObligatorio | Los valores listados serán los incluidos en la tabla "Tipo origen fuente financiación" que tengan el campo "activo \= true". Esta tabla no dispone de configuración habilitada en el SGI. Es una tabla precargada en periodo de implantación que inicialmente tomará los valores:* Público * Privado |
| Fondo estructural | SelectorBooleanoValores: sí, noObligatorio | Tomará valor true o false, en función del check o selector con el que se muestre en pantalla el dato booleano (sí/no). |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Inserta un nuevo registro con los datos recogidos en el formulario | Se debe de comprobar que se haya indicado un valor para:* Nombre * Ámbito geográfico * Origen * Fondo estructural  Se debe de verificar la unicidad del campo Nombre entre los registros con campo "activo" a true.Se creará el nuevo registro en la tabla "Fuente financiación" con el campo "activo\=true".[CU\-CSP\-0070\-002 \- Crear fuente de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-002-crear-fuente-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-002-crear-fuente-de-financiacion.md") | CSP\-FNT\-C |
| Cancelar | No se realiza ninguna operación | Se retorna al formulario de listado de fuentes de financiación [IU\-CSP\-0070\-002 \- Buscar y listar fuentes de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0070-gestion-de-fuentes-de-financiacion/iu-csp-0070-002-buscar-y-listar-fuentes-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0070-gestion-de-fuentes-de-financiacion/iu-csp-0070-002-buscar-y-listar-fuentes-de-financiacion.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  


  
  
  





