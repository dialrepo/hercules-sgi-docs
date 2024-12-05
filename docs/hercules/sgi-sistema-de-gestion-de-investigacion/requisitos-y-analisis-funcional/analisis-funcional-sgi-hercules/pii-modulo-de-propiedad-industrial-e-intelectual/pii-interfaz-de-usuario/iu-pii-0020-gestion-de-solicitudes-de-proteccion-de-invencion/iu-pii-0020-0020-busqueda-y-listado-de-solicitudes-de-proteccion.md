# Hércules : IU\-PII\-0020\-0020 \- Búsqueda y listado de solicitudes de protección



## Formulario de búsqueda y listado de solicitudes de protección de una invención

Pantalla que muestra un formulario que permite aplicar filtros sobre el listado de solicitudes de protección de una invención.

Dependiendo de si la invención tiene un tipo de protección de "Propiedad industrial" o de "Propiedad intelectual" las columnas a mostrar en el resultado de la búsqueda serán diferentes, puesto que las solicitudes de protección de invenciones sujetas a un tipo de protección de "Propiedad intelectual" tienen menos campos, algunos son comunes con los de las invenciones de "Propiedad industrial", pero otros son distintos.



| ***Caso 1: aún no se ha creado ninguna solicitud******Caso 2: ya se ha creado alguna solicitud*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Número de solicitud | Numérico entero | Número de solicitud de cualquiera de las solicitudes de protección asociadas a una invención. |
| --- | --- | --- |
| Fecha solicitud / prioridad(desde \- hasta) | Fecha (Sin hora)Opcional | Fecha de solicitud de cualquiera de las solicitudes de protección asociadas a una invención, incluida la primera solicitud, en la que, para las vías que aplique, este campo se denomina "Fecha prioridad" a nivel de interfaz. |
| Título | TextoOpcional | Título de la solicitud de invención por el que filtrar las solicitudes de invención. |
| Vía de protección | SelectorTexto cortoOpcional | Listado de vías de protección de cualquiera de las solicitudes de protección asociadas a una invención. Tendrá los siguientes valores:Protección industrial:* España * PCT * Europea * País específico  Protección intelectual:* Registro autonómico * Acta notarial * Registro interno  Listado configurable en [IU\-PII\-0060 \- Gestión de Vías de protección](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/index.md").Si se selecciona una vía de protección con el indicador de desplegable de países asociados \= "Sí" (País específico p.ej.), se mostrará además un selector de países de los que escoger opcionalmente uno por el que filtrar. |
| País | SelectorTexto cortoOpcional | Listado de países asociados a las vías de protección por país específico.Si se selecciona una vía de protección con el indicador de desplegable de países asociados \= "Sí" (País específico p.ej.), se mostrará este selector de países de los que escoger opcionalmente uno por el que filtrar.Esta lista de países será recuperada a través del requisito de integración [REQ\-INT\-0030\-SGO\-0060 \- Listar países](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0060-listar-paises.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0030-sgo-integracion-con-sistema-de-gestion-de-la-estructura-organica/req-int-0030-sgo-0060-listar-paises.md"). |
| Fecha fin de prioridad / present. fases nac./reg.(desde \- hasta) | Fecha (Sin hora)Opcional | Fecha de fin de prioridad de la solicitud de invención para solicitudes con vía de protección que no son del tipo extensión internacional (p.ej. PCT), o del plazo de presentación a las fases nacionales/regionales para aquellas solicitudes con vía de protección del tipo extensión internacional (p.ej. PCT). El campo por el que filtrar será el mismo dato de fecha internamente. |
| Estado | SelectorTexto cortoOpcional | Listado de estados de la solicitud de protección de cualquiera de las solicitudes de protección asociadas a una invención. Tendrá los siguientes valores a elegir uno por el que filtrar:* Solicitada * Publicada * Concedida * Caducada |
| Listado de solicitudes de protección | | |
| *Campos comunes* | | |
| Vía de protección | Texto corto | Vía de protección de la solicitud. |
| Fecha solicitud | Fecha (sin hora) | Fecha en la que se presenta la solicitud de protección. |
| Nº de solicitud | Texto corto | Número de la solicitud de protección que es comunicada por el organismo donde se solicita. |
| *Campos específicos del tipo de propiedad "Propiedad industrial"* | | |
| F. f. prior. / p.f. n./r. | Fecha (sin hora) | Fecha de finalización de la prioridad de la solicitud (primera solicitud para vías que no son de tipo extensión internacional, p.ej. PCT) o del plazo para la presentación de solicitudes a las fases nacionales/regionales (vías de tipo extensión internacional, p.ej. PCT). |
| Nº de publicación | Texto corto | Número de la publicación que es comunicada por el organismo donde se publica. |
| Nº de concesión | Texto corto | Número de la concesión que es comunicada por el organismo que concede la protección. |
| Estado | Texto corto | Estado de la solicitud de protección.Tendrá uno de los valores de este listado:* Solicitada * Publicada * Concedida * Caducada |
| *Campos específicos del tipo de propiedad "Propiedad intelectual"* | | |
| Nº de registro | Texto corto | Número del registro que es comunicado por el organismo que concede la protección. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir solicitud de protección | Muestra la pantalla de nueva solicitud de protección [IU\-PII\-0020\-0010\-001 Crear solicitud de protección \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0010-crear-solicitud-de-proteccion/iu-pii-0020-0010-001-crear-solicitud-de-proteccion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0010-crear-solicitud-de-proteccion/iu-pii-0020-0010-001-crear-solicitud-de-proteccion-datos-generales.md").Para mostrar esta pantalla se llevará a cabo un cambio de contexto. |  | PII\-INV\-E |
| Ver/Editar | Muestra la pantalla de detalle/modificación de la solicitud seleccionada del listado [IU\-PII\-0020\-0030\-001 Ver detalle\-modificar solicitud de protección \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0030-ver-detalle-modificar-solicitud-de-proteccion/iu-pii-0020-0030-001-ver-detalle-modificar-solicitud-de-proteccion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0030-ver-detalle-modificar-solicitud-de-proteccion/iu-pii-0020-0030-001-ver-detalle-modificar-solicitud-de-proteccion-datos-generales.md").Para mostrar esta pantalla se llevará a cabo un cambio de contexto. |  | PII\-INV\-VPII\-INV\-E |
| Exportar | Genera el informe asociado al listado de invenciones.Mostrará la pantalla [IU\-PII\-0020\-0040 \- Exportación listado de solicitudes de protección](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-PII-0020-0040+-+Exportaci%C3%B3n+listado+de+solicitudes+de+protecci%C3%B3n&linkCreation=true&fromPageId=597852755 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-PII-0020-0040+-+Exportaci%C3%B3n+listado+de+solicitudes+de+protecci%C3%B3n&linkCreation=true&fromPageId=597852755"). |  | PII\-INV\-V PII\-INV\-E |

### Permisos de acceso a la pantalla

#### Por actor



| ACT\-PII\-001\-Gestor | PII\-INV\-E |
| --- | --- |

#### Todos los permisos de acceso



| Permisos | PII\-INV\-V, PII\-INV\-E |
| --- | --- |




