# Hércules : CU\-ETI\-0090\-002 \- Evaluar memoria seguimiento \- Guardar sin comentarios







### Descripción

Se muestra una pantalla con tres pestañas. Una pestaña para almacenar el dictamen de la evaluación, otra para añadir comentarios y otra para ver la documentación adjuntada a la memoria.

Una vez acabada la evaluación (botón Guardar) se guardará el dictamen y los comentarios en caso necesario y dependiendo de si la evaluación es de revisión mínima o no se tendrán dos situaciones

* Si la evaluación no es de revisión mínima  se mantendrá el estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" mientras que el acta asociada a la convocatoria de la reunión siga en estado "Creación". Cuando se cambie el estado del acta a "Finalizada" todas las memorias evaluadas en la reunión de convocatoria  y que no sean de revisión mínima se pasarán al estado correspondiente dependiendo del dictamen.
* Si la evaluación es de revisión mínima en ese momento ya se cambia el estado de la memoria al correspondiente dependiendo del dictamen.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Existan memorias en estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones"

Haber accedido a la opción de  menú Seguimientos y pulsar sobre una de las memorias del listado.

### Garantías de éxito (postcondiciones)

Asignar un dictamen a la memoria y dependiendo del dictamen un informe favorable (dictamen es "Favorable") o un informe evaluación (dictamen "Solicitud de modificaciones" o "Solicitud de aclaraciones").

### Escenario principal (flujo básico) \- Dictamen "Favorable" \- seguimiento no es de revisión mínima

1. Se presenta la pantalla Seguimientos con el listado de todas las memorias en estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" que cumplan con el filtro.
2. El gestor selecciona una memoria.
3. Se presenta la pantalla de Evaluar memoria \- Seguimiento
4. El usuario rellena el dictamen con valor "Favorable"
5. El usuario selecciona la acción Guardar.
6. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
7. El usuario es informado del resultado positivo de la acción.
8. Se presenta el listado de Evaluaciones con dictamen favorable.

### Extensiones (flujos alternativos)  \- Dictamen "Favorable" \- seguimiento es de revisión mínima (viene de una solicitud de aclaraciones)

1. Se presenta la pantalla Seguimientos con el listado de todas las memorias en estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" que cumplan con el filtro.
2. El gestor selecciona una memoria.
3. Se presenta la pantalla de Evaluar memoria \- Seguimiento
4. El usuario rellena el dictamen con valor "Favorable"
5. El usuario selecciona la acción Guardar.
6. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
7. Se cambia el estado a la memoria a "Fin evaluación seguimiento final"
8. Se notifica  al investigador/solicitante de que ya tiene disponible el informe favorable [\_\_NO USAR CU\-COM\-0020 \- Generar comunicado automático \- Original con enlaces de AFs fuera de PMV](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597853348 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597853348")
9. El usuario es informado del resultado positivo de la acción.
10. Se presenta el listado de Seguimientos sin la evaluación que se acaba de Evaluar, porque ya ha cambiado de estado.

### Extensiones (flujos alternativos) \- Dictamen "Solicitud de modificaciones" (en un seguimiento anual) o "Solicitud de aclaraciones" (en un seguimiento final)

1. Se presenta la pantalla Seguimientos con el listado de todas las memorias en estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" que cumplan con el filtro.
2. El gestor selecciona una memoria
3. Se presenta la pantalla de Evaluar memoria \- Seguimiento
4. El usuario rellena el dictamen con valor "Solicitud de modificaciones" (si el seguimiento es anual) o "Solicitud de aclaraciones" (si el seguimiento es final)
5. El usuario selecciona la acción Guardar.
6. Se informa de que es necesario que al menos introduzca un comentario en la pestaña de Comentarios para poder generar el informe de evaluación (con los comentarios) y no se deja Guardar.






### Casos de uso relacionados







### Interfaces relacionados









