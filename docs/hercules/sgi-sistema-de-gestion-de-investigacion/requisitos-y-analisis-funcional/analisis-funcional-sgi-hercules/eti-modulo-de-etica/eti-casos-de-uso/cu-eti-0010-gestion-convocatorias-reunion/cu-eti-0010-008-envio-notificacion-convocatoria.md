# Hércules : CU\-ETI\-0010\-008 \- Envío notificación convocatoria







### Descripción

Desde el listado de convocatorias si se elige la convocatoria pinchando el botón Envío, se envía la convocatoria de la reunión a todos los miembros integrantes del comité y a los gestores del módulo de ética y se guardará la fecha de envío. Se eliminará dicha opción de la convocatoria, para que no se pueda volver a enviar. [IU\-ETI\-0010\-001 Búsqueda y listado de convocatorias reunión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0010-gestion-de-convocatorias-reunion/iu-eti-0010-001-busqueda-y-listado-de-convocatorias-reunion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0010-gestion-de-convocatorias-reunion/iu-eti-0010-001-busqueda-y-listado-de-convocatorias-reunion.md")

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Convocatorias reunión y seleccionado una convocatoria del listado para su envío.

La opción de Envío solo estará disponible si no tiene fecha de envío la convocatoria, es decir, no se ha enviado. Una vez enviada no se podrá volver a enviar.

### Garantías de éxito (postcondiciones)

Se envía la notificación a los miembros integrantes del comité y a los gestores del módulo de ética.

Se guarda la fecha de envío en la convocatoria.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Convocatorias reunión con el listado de todas las Convocatorias de reunión dadas de alta en el sistema.
2. Se selecciona Envío sobre una de las convocatorias.
3. Se envía la notificación a los miembros integrantes del comité asociado a la convocatoria y a los gestores del módulo de ética [\_\_NO USAR CU\-COM\-0020 \- Generar comunicado automático \- Original con enlaces de AFs fuera de PMV](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597852491 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597852491").
4. Se presenta la misma pantalla pero sin la acción de Envío sobre la convocatoria que se ha enviado.

### Extensiones (flujos alternativos) \- Error al enviar la notificación

1. En caso de que se produzca un error en el módulo de notificación se mostrará un mensaje al usuario
2. La convocatoria seguirá con la acción Envío disponible






### Casos de uso relacionados







### Interfaces relacionados









