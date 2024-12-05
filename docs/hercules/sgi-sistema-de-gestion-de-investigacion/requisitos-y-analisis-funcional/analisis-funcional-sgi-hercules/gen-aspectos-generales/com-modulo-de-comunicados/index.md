# Hércules : COM \- Módulo de Comunicados



### Introducción

El sistema SGI va a disponer de un módulo trasversal a todo el sistema mediante se podrán enviar distintos tipos de comunicados por email.

Los actores que podrán generar comunicados serán los identificados en cada caso como actores de la funcionalidad específica que lo necesita generar o bien el propio sistema SGI.

El envío de comunicados, salvo en el caso de aquellos en los que el usuario decide a demanda, a través de la pantalla correspondiente, activar o desactivar (Hitos, Fases, ...) no se podrá desactivar dentro del SGI, sino que irá preconfigurado en el sistema el catálogo de eventos o acciones y funcionalidades que dispararán el envío de comunicados y no será algo opcional el que se envíen o no. Solo en el caso de que no se logren resolver destinatarios para el envío del comunicado porque no se hayan configurado, se podría asimilar que no se quiere configurar el envío del mismo.

### Modelo de dominio

![](/attachments/597853815/597855887.png)

### Descripción funcional

Dentro del SGI, los comunicados consistirán en cierta información que será enviada a un conjunto de destinatarios con el objeto de notificarles sobre tareas o gestiones concretas a realizar en el SGI y que están pendientes o bien notificarles de eventos que ya han ocurrido o bien avisarles de eventos futuros que ocurrirán, de ahí que opcionalmente también podamos referirnos a ellos indistintamente como **Notificaciones o Avisos**. Los comunicados pueden tener opcionalmente una fecha límite estipulada para su realización, si bien este módulo no es responsable del seguimiento de la realización de la tarea, solo de notificar los comunicados emitidos sobre la misma por la gestión correspondiente. Las recibirán por email todos los destinatarios configurados, salvo que su dirección sea incorrecta, no en formato, sino incorrectamente introducida por el usuario, o que se haya dado de baja, cuestiones ambas que no serán responsabilidad de este módulo comprobar.

Los comunicados tendrán en general la siguiente información:

* **Tipo**: indicará el tipo de comunicado. Tendrá un valor único en el sistema y representativo de la gestión específica que lo genera comunicado. Será un dato interno y no visible para el usuario.
* **Asunto**: título, resumen del comunicado. Para todos los comunicados deberá estar configurado un asunto por defecto, que el usuario después podrá modificar para los casos en los que el comunicado se presente por pantalla (ej. Hitos y Fases en CSP).
* **Fecha envío**: fecha en la que se produce o se debe producir el envío del comunicado.
* **Contenido**: texto explicativo más detallado del comunicado que constituirá el cuerpo del email de aviso. Para todos los comunicados deberá estar configurado un contenido por defecto, que el usuario después podrá modificar para los casos en los que el comunicado se presente por pantalla (ej. Hitos y Fases en CSP).
* **Destinatarios**: lista de destinatarios del comunicado. Para todos los comunicados podrá estar configurada una lista de destinatarios por defecto, que podrá ser distinta por unidad de gestión, que el usuario después podrá modificar para los casos en los que el comunicado se presente por pantalla (ej. Hitos y Fases en CSP).

#### Tipos de comunicados

Existirá dos grandes tipos de comunicados:

* **De envío inmediato**: el comunicado se enviará inmediatamente a continuación de que se produzca el evento que lo genera.
* **De envío programado**: el comunicado se enviará en una fecha y hora concreta programada bien por el usuario (Hitos y Fases en CSP) bien por el propio sistema (Calendario de justificación de un proyecto).

Cada tipo de comunicado, que será identificado de manera única en todo el SGI, tendrá sus propias plantillas de asunto y contenido y su propia lista de destinatarios por defecto, que podrán además ser diferentes por unidad de gestión.

En principio, los comunicados de envío inmediato no dispondrán de interfaz de usuario específica del comunicado, toda su gestión será transparente al usuario final.

En el caso de los envíos programados, dispondrán de interfaz de usuario los avisos de Hitos y Fases del módulo de CSP, siendo este interfaz integrado en las propias pantallas de Hito o Fase según el caso. En estos casos, el usuario podrá modificar los datos del comunicado que se hayan cargado por defecto de plantillas y configuración de destinatarios.

#### Configuración de comunicados

  


  


  


  


#### Destinatarios

Existirán dos grandes tipos de destinatarios:

* **Resueltos en el instante**: se usarán tanto para los comunicados de envío inmediato como para los programados para contemplar aquellas personas que recibirán el email y que son las que en ese instante concreto se hayan definido funcionalmente y/o configurado por defecto para ese comunicado y no cambiarán entre ese momento y el programado para el envío.
* **Resueltos en diferido**: se usarán para los comunicados programados, donde puede haber casos en los que se contempla que ciertos destinatarios definidos funcionalmente puedan variar entre el momento en el que se genera el comunicado y el instante programado para el envío. En estos casos, estos destinatarios se resolverán justo al instante programado para el envío y pueden ser los únicos o añadirse a la lista que estuviese configurada previamente para ese comunicado.

### Modelo lógico

![](/attachments/597853815/597865760.png)




