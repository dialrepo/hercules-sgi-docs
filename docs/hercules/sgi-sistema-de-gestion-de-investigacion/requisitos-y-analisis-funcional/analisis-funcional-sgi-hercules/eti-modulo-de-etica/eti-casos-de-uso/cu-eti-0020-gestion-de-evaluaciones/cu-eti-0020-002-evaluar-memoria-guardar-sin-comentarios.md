# Hércules : CU\-ETI\-0020\-002 \- Evaluar memoria \- Guardar sin comentarios







### Descripción

Se muestra una pantalla con tres pestañas. Una pestaña para almacenar el dictamen de la evaluación, otra para añadir comentarios y otra para ver la documentación adjuntada a la memoria.

Una vez acabada la evaluación (botón Guardar) se guardará el dictamen y los comentarios en caso necesario y dependiendo de si la evaluación es de revisión mínima o no se tendrán tres situaciones

* Si la evaluación es de tipo memoria y no es de revisión mínima  se mantendrá el estado "En evaluación" mientras que el acta asociada a la convocatoria de la reunión siga en estado "Creación".
* Si la evaluación es de tipo memoria y de revisión mínima en ese momento ya se cambia el estado de la memoria al correspondiente dependiendo del dictamen.
* Si la evaluación es de tipo retrospectiva se mantendrá el estado de la retrospectiva "En evaluación" mientras que el acta asociada a la convocatoria de la reunión siga en estado "Creación". Cuando se cambie el estado del acta a "Finalizada" se cambiará el estado de la retrospectiva  a "Fin evaluación".

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Existan memorias en estado "En evaluación" .

Haber accedido a la opción de  menú Evaluaciones y pulsar sobre una de las memorias del listado.

### Garantías de éxito (postcondiciones)

Asignar un dictamen a la memoria y dependiendo del dictamen un informe favorable (dictamen es "Favorable") o un informe evaluación (dictamen "Favorable pendiente de revisión mínima" o "Pendiente de correcciones").

### Escenario principal (flujo básico) \- Dictamen "Favorable" \- evaluación no es de revisión mínima

1. Se presenta la pantalla Evaluaciones con el listado de todas las memorias en estado "En evaluación" o "En secretaria revisión mínima" que cumplan con el filtro.
2. El gestor selecciona una memoria.
3. Se presenta la pantalla de Evaluar memoria \- Evaluación
4. El usuario rellena el dictamen con valor "Favorable"
5. El usuario podrá acceder al informe favorable (generado automáticamente a partir de una plantilla).
6. El usuario selecciona la acción Guardar.
7. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
8. El usuario es informado del resultado positivo de la acción.
9. Se presenta el listado de Evaluaciones con dictamen favorable y accesible el  informe favorable.

### Extensiones (flujos alternativos)  \- Dictamen "Favorable" \- evaluación es de revisión mínima

1. Se presenta la pantalla Evaluaciones con el listado de todas las memorias en estado "En evaluación" o "En secretaria revisión mínima" que cumplan con el filtro.
2. El gestor selecciona una memoria.
3. Se presenta la pantalla de Evaluar memoria \- Evaluación
4. El usuario rellena el dictamen con valor "Favorable"
5. El usuario podrá acceder al informe favorable (generado automáticamente a partir de una plantilla).
6. El usuario selecciona la acción Guardar.
7. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
8. Se cambia el estado a la memoria.
9. Se notifica  al investigador/solicitante de que ya tiene disponible el informe favorable [\_\_NO USAR CU\-COM\-0020 \- Generar comunicado automático \- Original con enlaces de AFs fuera de PMV](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597853588 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=__NO+USAR+CU-COM-0020+-+Generar+comunicado+autom%C3%A1tico+-+Original+con+enlaces+de+AFs+fuera+de+PMV&linkCreation=true&fromPageId=597853588").
10. El usuario es informado del resultado positivo de la acción.
11. Se presenta el listado de Evaluaciones sin la evaluación que se acaba de Evaluar, porque ya ha cambiado de estado.

### Extensiones (flujos alternativos) \- Dictamen "Favorable pendiente de revisión mínima" o "Pendiente de correcciones"

1. Se presenta la pantalla Evaluaciones con el listado de todas las memorias en estado "En evaluación" o "En secretaria revisión mínima" que cumplan con el filtro.
2. El gestor selecciona una memoria.
3. Se presenta la pantalla de Evaluar memoria \- Evaluación
4. El usuario rellena el dictamen con valor "Favorable pendiente de revisión mínima" o "Pendiente de correcciones"
5. El usuario selecciona la acción Guardar.
6. Se informa de que es necesario que al menos introduzca un comentario en la pestaña de Comentarios para poder generar el informe de evaluación (con los comentarios) y no se deja Guardar.

### Extensiones (flujos alternativos) \- Dictamen "No procede evaluar"

1. Se presenta la pantalla Evaluaciones con el listado de todas las memorias en estado "En evaluación" o "En secretaria revisión mínima" que cumplan con el filtro.
2. El gestor selecciona una memoria.
3. Se presenta la pantalla de Evaluar memoria \- Evaluación
4. El usuario rellena el dictamen con valor "No procede evaluar"
5. El usuario no podrá acceder al informe favorable o de evaluación porque no existe dicho informe.
6. El usuario selecciona la acción Guardar.
7. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
8. El usuario es informado del resultado positivo de la acción.
9. Se presenta el listado de Evaluaciones con dictamen no procede evaluar y sin ningún informe asociado.

  








### Casos de uso relacionados







### Interfaces relacionados









