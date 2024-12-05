# Hércules : ETICA. Enlaces de los formularios



Directrices para futuros cambios de páginas referenciadas desde los formularios del módulo de ETICA.

El contenido de los formularios de las memorias se implementa con las tablas del módulo ETI: formulario, apartado y bloque.

* Tabla "formulario:" contiene el listado de formularios (M10\-\>CEI, M20\-\>CEEA, M30\-\> CBE).
* Tabla "bloque": contiene los bloques de cada uno de los formularios. El campo "formulario\_id" es la referencia a la tabla "formulario"
* Tabla "apartado": contiene el listado de preguntas de cada bloque. El  campo "bloque\_id" es la referencia a la tabla "bloque". El campo "esquema" contiene el JSON que se utiliza para pintar el contenido en pantalla. En este JSON la propiedad "Key" es la numeración que os permitiría identificar el apartado, y en la propiedad "template" encontraréis el texto que se muestra por pantalla. Sería cuestión de actualizar este texto cambiando el "href" correspondiente.




