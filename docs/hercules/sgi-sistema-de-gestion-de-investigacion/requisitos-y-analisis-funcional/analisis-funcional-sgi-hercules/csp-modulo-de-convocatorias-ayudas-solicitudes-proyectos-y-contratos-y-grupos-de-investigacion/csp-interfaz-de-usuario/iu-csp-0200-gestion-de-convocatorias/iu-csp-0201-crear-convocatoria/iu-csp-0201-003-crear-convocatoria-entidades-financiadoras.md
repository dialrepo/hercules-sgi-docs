# Hércules : IU\-CSP\-0201\-003 \- Crear convocatoria \- Entidades financiadoras



## Formulario Crear convocatoria \- Entidades financiadoras

La información de una convocatoria estará distribuida en los siguientes apartados:

* Datos generales
* Entidades convocantes
* **Entidades financiadoras**
* Enlaces
* Fases
* Periodos justificación
* Seguimiento científico
* Hitos
* Documentos
* Requisitos IP
* Requisitos Equipo
* Elegibilidad
* Configuración de solicitudes.

### Entidades financiadoras

Para crear una convocatoria será obligatorio que se indique al menos una entidad financiadora.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de entidades financiadoras (registros de la tabla "convocatoria entidad financiadora") | | |
| Nombre | Texto | Nombre de la entidad convocante, recuperado de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Número de identificación fiscal | Texto corto | Número de identificación de la entidad convocante. Obtener campo Número de identificador fiscal de la empresa económica, a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Fuente financiación | Texto corto | Fuente de la financiación de la convocatoriaSe corresponde con el campo "nombre" de la tabla "fuente financiación" recuperado a través del campo "fuente financiación" de la tabla "convocatoria entidad financiadora" |
| Ámbito | Texto corto | Ámbito geográfico de la convocatoriaSe corresponde con el campo "nombre" de la tabla "tipo ámbito geográfico" recuperado a través de campo "tipo ámbito geográfico" de la tabla "fuente financiación" para la fuente financiación de la convocatoria (campo "fuente financiación" de la tabla "convocatoria entidad financiadora") |
| Tipo financiación | Texto corto | Tipo de financiación de la convocatoriaSe corresponde con el campo "nombre" de la tabla "tipo financiación" recuperado a través del campo "tipo financiación" de la tabla "convocatoria entidad financiadora" |
| % financiación | Numérico Porcentaje | Porcentaje de financiación de la convocatoriaSe corresponde con el campo "porcentaje financiación" de la tabla "convocatoria entidad financiadora" |
| Importe financiación | Numérico Económico | Importe de financiación de la convocatoria. Se corresponde con el campo "importe financiación" de la tabla "convocatoria entidad financiadora" |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la entidad seleccionada del listado de entidades financiadora | Muestra la pantalla [IU\-CSP\-0204\-003 \- Modificar convocatoria \- Entidades Financiadoras](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-003-modificar-convocatoria-entidades-financiadoras.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-003-modificar-convocatoria-entidades-financiadoras.md") | CSP\-CON\-CCSP\-CON\-C\_UO |
| Eliminar | Elimina la entidad financiadora | Elimina el registro de la tabla de Entidades financiadoras de la convocatoria | CSP\-CON\-CCSP\-CON\-C\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir entidad financiadora | Muestra la pantalla de Nueva entidad financiadora | Muestra la pantalla [IU\-CSP\-202\-004 \- Añadir entidad financiadora](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-004-anadir-entidad-financiadora.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-004-anadir-entidad-financiadora.md") | CSP\-CON\-CCSP\-CON\-C\_UO |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




