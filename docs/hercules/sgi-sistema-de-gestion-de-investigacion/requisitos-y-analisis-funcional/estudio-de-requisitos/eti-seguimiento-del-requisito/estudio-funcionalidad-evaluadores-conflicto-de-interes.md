# Hércules : Estudio Funcionalidad Evaluadores \- Conflicto de interés



## Introducción

Actualmente el módulo de ética permite a los gestores introducir los posibles conflictos de interés de cada evaluador.

Desde la opción de menú "Evaluadores", el gestor selecciona al evaluador en cuestión.

![](/attachments/597852463/597853896.png)

Y desde la pantalla de "Conflicto de interés" puede introducir aquellas personas con las que el evaluador tiene un conflicto de intereses.

![](/attachments/597852463/597853899.png)

Se desea modificar dicha funcionalidad para que no sea la figura del gestor el que realice dicha operación, sino que sean los propios evaluadores los que digan con quien tiene conflictos de intereses a nivel de evaluación.

Para que sea adaptable a cualquier Universidad, se añadirá una variable de configuración a nivel de implantación del SGI para indicar si el conflicto de interés se deja a nivel de gestor (sea el gestor el que añada el conflicto de interés de cada evaluador como esta ahora actualmente en la aplicación) o bien a nivel de evaluador (sean los propios evaluadores los que introduzcan sus conflicto de interés)

## Cambios en pantallas

### Perfil evaluador (gestor, técnico o investigador)

#### Pantalla Informar Conflicto de interés

Añadir la funcionalidad de la pantalla "**Informar Conflicto de interés**"

Sólo se mostrará si la variable de configuración "Conflicto de interés" tiene el valor "Evaluador", es decir, los conflictos de interés van a ser introducidos por el evaluador

Se mostrará  un listado con las memorias en estado "En secretaría", es decir, aquellas memorias que han sido enviadas a secretaría por los investigadores para su evaluación.

En el listado se mostrará la referencia de la memoria, el título del proyecto al que pertenece la memoria y el nombre de las personas del equipo de trabajo asignadas a la memoria, para que el evaluador pueda seleccionar aquellas personas con las que tiene o no conflicto de interés.

![](/attachments/597852463/597854042.png)

Cuando entra la primera vez el evaluador verá que todas las personas están en un estado "Sin responder" (en la columna "Conflicto de interés"), esto quiere decir, que es la primera vez que entra el evaluador en la pantalla y que deberá de marcar aquellas personas con las que tiene conflicto de interés y pulsar el botón "Guardar". Al dar a guardar se actualizarán los conflicto de interés para el evaluador logueado y para cada una de las personas de las memorias, se actualizará el campo "conflicto de interés" del valor "Sin responder" al valor "Sí" o "No" dependiendo de si se ha marcado el chek o no.

Si el evaluador vuelve a entrar en la pantalla (o después de pulsar el botón "Guardar") la visualizará de la siguiente manera:

![](/attachments/597852463/597853914.png)

En este ejemplo, el evaluador ha marcado que tiene un conflicto de interés con "Pedro Álvarez Álvarez" de la memoria M20/2020/100

En el supuesto de que el evaluador ya haya introducido sus conflicto de interés  y un investigador haya enviado posteriormente una nueva memoria a secretaría, si el evaluador vuelve a entrar en la pantalla la visualización de la misma es:

![](/attachments/597852463/597853916.png)

Donde se puede apreciar que el estado de la nueva memoria enviada a secretaría para su evaluación es "Sin responder" (columna "Conflicto de interés") para que el evaluador pueda diferenciar las nuevas memorias disponibles (las que se han enviado nuevas a secretaría desde la última vez que entro el evaluador) de las que ya había consultado e informado sus conflictos.

#### Pantalla Histórico Conflicto de interés

Añadir la funcionalidad de la pantalla "**Histórico Conflicto de interés**"

Sólo se mostrará si la variable de configuración "Conflicto de interés" tiene el valor "Evaluador", es decir, los conflictos de interés van a ser introducidos por el evaluador

Se mostrará  el listado de los conflicto de interés del evaluador logueado para todas las memorias, es decir, se obtienen todos los registros de la tabla "Conflicto de interés" para el evaluador logueado. No se podrá realizar ninguna acción sobre ningún conflicto, es solo informativo, para saber con que personas ha tenido conflictos de interés el evaluador.

![](/attachments/597852463/597853879.png)

#### Evaluaciones

En Evaluaciones mostrar las evaluaciones con las que no tiene un conflicto de interés:

* Si la variable de configuración "Conflicto de interés" tiene el valor "Evaluador" mostrar las memorias en la que expresamente ha dicho que no tiene un conflicto de interés. Se comprobará que exista la memoria en la tabla "Conflicto de interés" para dicho evaluador con el campo "Conflicto de interés" a valor "No" para todos las personas del equipo de trabajo asignadas a la memoria  (si tiene valor "Sí" o "Sin responder" no podrá evaluar la memoria)
* Si la variable de configuración "Conflicto de interés" tiene el valor "Gestor" mostrar las memorias con las que no tiene conflicto de interés el evaluador, es decir, que en la tabla "Conflicto de interés" no exista para el evaluador ninguna persona del equipo de trabajo asignada a la memoria.

#### Seguimientos

En Seguimientos mostrar las evaluaciones con las que no tiene un conflicto de interés:

* Si la variable de configuración "Conflicto de interés" tiene el valor "Evaluador" mostrar las memorias en la que expresamente ha dicho que no tiene un conflicto de interés. Se comprobará que exista la memoria en la tabla "Conflicto de interés" para dicho evaluador con el campo "Conflicto de interés" a valor "No" para todos las personas del equipo de trabajo asignadas a la memoria  (si tiene valor "Sí" o "Sin responder" no podrá evaluar la memoria)
* Si la variable de configuración "Conflicto de interés" tiene el valor "Gestor" mostrar las memorias con las que no tiene conflicto de interés el evaluador, es decir, que en la tabla "Conflicto de interés" no exista para el evaluador ninguna persona del equipo de trabajo asignada a la memoria.

### Específico perfil gestor

#### Reordenar menú

Agrupar bajo una agrupación de menús  llamada "Perfil evaluador" las opciones "Evaluaciones evaluador" y "Seguimiento evaluador" quitándoles la palabra "evaluador" y añadir la nueva funcionalidad de "Conflicto de interés".

Los menús del gestor quedarían de la siguiente manera:

![](/attachments/597852463/597865726.png)![](/attachments/597852463/597865727.png)

Y dentro de "Perfil Evaluador" tendría los submenús:

* Informar Conflicto de interés (nueva funcionalidad). Sólo se mostrará si la variable de configuración "Conflicto de interés" tiene el valor "Evaluador", es decir, los conflictos de interés van a ser introducidos por el evaluador
* Histórico Conflicto de interés (nueva funcionalidad). Sólo se mostrará si la variable de configuración "Conflicto de interés" tiene el valor "Evaluador", es decir, los conflictos de interés van a ser introducidos por el evaluador
* Evaluaciones
* Seguimientos

La opción de menú de "Perfil Evaluador" únicamente se muestra si el gestor es a su vez miembro activo de uno de los comités (fecha actual es mayor de la fecha de alta del evaluador y menor de la fecha de baja del evaluador o no tiene fecha de baja el evaluador).

#### Evaluadores

En la opción de menú "Evaluadores" la pantalla "Conflicto de interés" mostrará:

* Si la variable de configuración "Conflicto de interés" tiene el valor "Gestor" se mostrará el listado de personas con las que tiene conflicto de interés el evaluador con las opciones de eliminar el conflicto o de añadir uno nuevo por el Gestor. La pantalla mostrada será:

![](/attachments/597852463/597853899.png)

* Si la variable de configuración "Conflicto de interés" tiene el valor "Evaluador" se mostrará el listado de conflicto de interés del evaluador, almacenados en la tabla "Conflicto de interés". El gestor no podrá realizar ninguna acción, es solo informativo. La pantalla mostrada será:

![](/attachments/597852463/597853863.png)

#### Convocatoria de reunión

En Convocatorias de reunión al añadir una memoria a la convocatoria  en el listado de Evaluador 1 y  Evaluador 2 únicamente saldrán disponibles los miembros activos del comité que no tengan un conflicto de interés con ningún miembro de la memoria:

* Si la variable de configuración "Conflicto de interés" tiene el valor "Evaluador" se mostrarán los evaluadores de la tabla "Conflicto de interés" que en el campo "Conflicto de interés" tenga el valor "No" para todas las personas del equipo de trabajo asignadas a la memoria que se esta añadiendo a la convocatoria.
* Si la variable de configuración "Conflicto de interés" tiene el valor "Gestor" se mostrarán los evaluadores activos del comité siempre y cuando no exista en la tabla "Conflicto de interés" el evaluador con algún miembro del equipo de trabajo asignado a la memoria.

### Específico Perfil investigador

Al "**Enviar a secretaría**" una memoria en estado "Completada" en el caso  de que la variable de configuración de Conflicto de interés tenga el valor "Evaluador" se deberá de guardar en la tabla "Conflicto de interés" un registro por cada evaluador activo del comité al que pertenece la memoria y por cada persona asignada a la memoria (pantalla asignación de tareas) inicializando el campo "conflicto de interés" al valor "Sin respuesta".

### Comunicados

Si la variable de configuración "Conflicto de interés" tiene el valor "Evaluador" se enviará un comunicado una vez a la semana a cada miembro activo de los comités, con las memorias que han sido enviadas a secretaría esa semana (desde el último envío del comunicado) para informarles de que deben de entrar en la aplicación del SGI para informar de sus conflictos de interés (se buscarían las memorias con el estado actual "En secretaría" cuyo fecha de estado esta en el rango de la fecha actual menos 7 días)

## Cambios en base de datos

Añadir en la tabla "ConflictoInteres" los campos:

* memoria: para almacenar el identificador de la memoria con la que el evaluador tiene el conflicto de interés.
* conflicto interés: un enumerado con tres posibles valores:
	+ Sí
	+ No
	+ Sin responder




