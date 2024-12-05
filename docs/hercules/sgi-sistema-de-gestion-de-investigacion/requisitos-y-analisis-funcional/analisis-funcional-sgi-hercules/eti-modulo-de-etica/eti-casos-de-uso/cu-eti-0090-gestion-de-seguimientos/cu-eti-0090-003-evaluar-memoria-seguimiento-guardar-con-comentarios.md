# Hércules : CU\-ETI\-0090\-003 \- Evaluar memoria seguimiento \- Guardar con comentarios







### Descripción

Se muestra una pantalla son tres pestañas. Una pestaña para almacenar el dictamen de la evaluación, otra para añadir comentarios y otra para ver la documentación adjuntada a la memoria.

Una vez acabada la evaluación (botón Guardar) se guardará el dictamen y los comentarios en caso necesario y dependiendo de si la evaluación es de revisión mínima o no se tendrán dos situaciones

* Si la evaluación no es de revisión mínima  se mantendrá el estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" mientras que el acta asociada a la convocatoria de la reunión siga en estado "Creación". Cuando se cambie el estado del acta a "Finalizada" todas las memorias evaluadas en la reunión de convocatoria  y que no sean de revisión mínima se pasarán al estado correspondiente dependiendo del dictamen.
* Si la evaluación es de revisión mínima en ese momento ya se cambia el estado de la memoria al correspondiente dependiendo del dictamen.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Existan memorias en estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones"

Haber accedido a la opción de  menú Seguimientos y pulsar sobre una de las memorias del listado.

### Garantías de éxito (postcondiciones)

Asignar un dictamen "Solicitud de modificaciones" o "Solicitud de aclaraciones"

Crear comentarios.

### Escenario principal (flujo básico) \- Dictamen "Solicitud de modificaciones" o "Solicitud de aclaraciones" \- evaluación no es de revisión mínima

1. Se presenta la pantalla Seguimientos con el listado de todas las memorias en estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" que cumplan con el filtro.
2. El gestor selecciona una memoria.
3. Se presenta la pantalla de Evaluar memoria \- Seguimiento
4. El usuario rellena el dictamen con valor "Solicitud de modificaciones" o "Solicitud de aclaraciones"
5. El usuario va a la pestaña de Comentarios
6. El usuario selecciona Nuevo comentario
7. El usuario en la pantalla de Nuevo comentario selecciona un bloque, apartado, subapartado y escribe un comentario al respecto.
8. El usuario selecciona la acción Añadir.
9. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
10. El comentario es añadido a la lista de comentarios.
11. El usuario repiten los pasos 6 , 7  y 8 tantas veces como comentarios quiera añadir al informe de evaluación.
12. El usuario selecciona la acción Guardar.
13. El usuario es informado del resultado positivo de la acción.
14. Se presenta el listado de Seguimientos con dictamen informado y con informe de evaluación.

### Extensiones (flujos alternativos)  \- Dictamen "Solicitud de aclaraciones"  \- evaluación es de revisión mínima (viene de una solicitud de aclaraciones)

1. Se presenta la pantalla Seguimientos con el listado de todas las memorias en estado  "En evaluación seguimiento anual" o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" que cumplan con el filtro.
2. El gestor selecciona una memoria.
3. Se presenta la pantalla de Evaluar memoria \- Seguimiento
4. El usuario rellena el dictamen con valor "Solicitud de aclaraciones"
5. El usuario va a la pestaña de Comentarios
6. El usuario selecciona Nuevo comentario
7. El usuario en la pantalla de Nuevo comentario selecciona un bloque, apartado, subapartado y escribe un comentario al respecto.
8. El usuario selecciona la acción Añadir.
9. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
10. El comentario es añadido a la lista de comentarios.
11. El usuario repiten los pasos 6 , 7  y 8 tantas veces como comentarios quiera añadir al informe de evaluación.
12. El usuario selecciona la acción Guardar.
13. Se cambia el estado a la memoria a "En aclaración seguimiento final"
14. Se notifica  al investigador/solicitante de que ya tiene disponible el informe de evaluación [\_\_NO USAR CU\-COM\-0020 \- Generar comunicado automático \- Original con enlaces de AFs fuera de PMV](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597853351 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597853351")
15. El usuario es informado del resultado positivo de la acción.
16. Se presenta el listado de Seguimientos sin la evaluación que se acaba de Evaluar, porque ya ha cambiado de estado.






### Casos de uso relacionados







### Interfaces relacionados









