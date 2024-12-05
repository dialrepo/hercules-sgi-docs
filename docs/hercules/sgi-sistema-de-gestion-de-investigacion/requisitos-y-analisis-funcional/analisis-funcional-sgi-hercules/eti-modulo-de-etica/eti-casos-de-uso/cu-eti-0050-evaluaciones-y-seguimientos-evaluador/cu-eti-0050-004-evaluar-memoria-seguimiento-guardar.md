# Hércules : CU\-ETI\-0050\-004 \- Evaluar memoria seguimiento \- Guardar



### Descripción

Se muestra una pantalla son tres pestañas. Una pestaña para añadir comentarios  y así construir la ficha del evaluador,  otra para ver los datos asociada a la memoria y otra con la documentación adjunta a la memoria.

### Actores

#### Actor principal

ACT\-ETI\-004\-Evaluador

ACT\-ETI\-005\-Técnico

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Existan memorias en estado "En evaluación seguimiento anual" o  "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones"  y tienen como evaluador al usuario logado.

Haber accedido a la opción de  menú Seguimientos y pulsar sobre una de las memorias del listado.

Tienen que existir al menos 3 días entre la fecha actual y la fecha de evaluación para las memorias en estado "En evaluación seguimiento anual" o  "En evaluación seguimiento final".

### Garantías de éxito (postcondiciones)

Crear comentarios para generar la ficha del evaluador.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Seguimientos con el listado de todas las evaluaciones de  memorias en estado "En evaluación seguimiento anual" o  "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" que cumplan con el filtro y asignada al evaluador logado en la aplicación.
2. El usuario selecciona una memoria.
3. Se presenta la pantalla de Evaluar memoria \- Comentarios
4. El usuario selecciona Nuevo comentario
5. El usuario en la pantalla de Nuevo comentario selecciona un bloque, apartado, subapartado y escribe un comentario al respecto.
6. El usuario selecciona la acción Añadir.
7. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
8. El comentario es añadido a la lista de comentarios.
9. El usuario repiten los pasos 4,5 y 6 tantas veces como comentarios quiera añadir a la ficha del evaluador.
10. El usuario selecciona la acción Guardar.
11. El usuario es informado del resultado positivo de la acción.
12. Se presenta el listado de Seguimientos.




