# Hércules : CSP\-EJEC\- Servicios API





| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /facturas\-previstas | q\+s (query \+ sort)La query estará formada por:* proyectoIdSGI * numeroPrevision  proyectoIdSGI: identificador del proyecto en el SGI | Lista\[FacturaPrevista] | Listado de todas las facturas previstas, registradas en el SGI validadas por el IP y con fecha de conformidad (tanto si ya tienen la factura emitida creada en el SGE como sino). Es decir, registros de la tabla "ProyectoFacturacion" del proyecto SGI indicado por parámetro que estén en el estado "Validada" y  con el campo "fechaConformidad" distinto a null.La relación entre el calendario de facturación del SGI y facturas emitidas se establecerá en el SGE.Este servicio será el utilizado en el SGE en la pantalla de creación de factura emitida para mostrar el listado de items del calendario de facturación creados en el SGI (tendrán que eliminar aquellos items del calendario del SGI que ya tienen factura emitida relacionada o creada). La relación factura emitida (SGE) \- número previsión (SGI) se almacenará en el SGE.Por cada factura prevista se devolverán los siguientes campos:* Número previsión (campo "numeroPrevision" de la tabla "ProyectoFacturacion") * Identificador del proyecto en el SGI (campo "id" de la tabla "Proyecto") * Fecha de emisión (campo "fechaEmision" de la tabla "ProyectoFacturacion") * Importe base (campo "importeBase" de la tabla "ProyectoFacturacion") * Comentario (campo "comentario" de la tabla "ProyectoFacturacion") |




