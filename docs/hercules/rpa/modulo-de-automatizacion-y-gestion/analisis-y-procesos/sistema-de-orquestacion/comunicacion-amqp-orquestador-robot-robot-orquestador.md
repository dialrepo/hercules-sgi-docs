# Hércules : Comunicación AMQP (Orquestador\-Robot Robot\-Orquestador)



En las secciones anteriores se ha comentado que la comunicación con los robots será bajo el protocolo AMQP. De esta forma se definen diferentes tipos de mensajes, para que tanto el orquestador como el robot sepan lo que tienen que hacer. Los mensajes serán enviados a las colas que se generan cuando un robot o el orquestador se ejecutan.

A continuación, se muestra una serie de ejemplos de comunicación:

**Inicialización de la conexión**

```
El robot manda a la cola del orquestador el mensaje:

{
 "TYPE_MSG": INIT,
 "DESCRIPTION": "HELLO ORCHESTRATOR",
  "ROBOT" : INFORMACIÓN Y ESTADO
}

El orquestador responde por la cola del robot que ha enviado el mensaje:

{
 "TYPE_MSG": INIT,
 "DESCRIPTION": "HELLO ROBOT"
}
```

**Keep Alive**

```
Con el objetivo de que el orquestador sea consciente de que no se ha perdido la comunicación,

el robot mandará su estado e información cada X tiempo a la cola del orquestador:

{ 
  "TYPE_MSG": KEEP_ALIVE,
  "DESCRIPTION": "KEEP ORCHESTRATOR",
  "ROBOT" : INFORMACIÓN Y ESTADO
}
```

**Solicitud de ejecución**

```
El orquestador mandará a la cola del robot que haya escogido para que trate de ejecutar el proceso X.

{ 
  "TYPE_MSG": REQUEST_EXEC_PROCESS,
  "DESCRIPTION": "REQUEST EXEC PROCESS",
  "PROCESS": "PARAMETROS E INFORMACIÓN DEL PROCESO"
}

El robot responderá indicando al orquestador que lo almacena en su cola de procesos

{ 
  "TYPE_MSG": PENDING_PROCESS,
  "DESCRIPTION": "PENDING", 
  "ROBOT": "INFORMACIÓN Y ESTADO"
}
```

**Ejecución del proceso**

```
Cuando el robot empiece a ejecutar un proceso este se lo indicará al orquestador para que sea consciente de que lo está haciendo.

{
 "TYPE_MSG": EXEC_PROCESS,
 "DESCRIPTION": "EXECUTING PROCESS",
 "ROBOT": "INFORMACIÓN y ESTADO"
}
```

**Envío de Logs**

```
El robot enviará la información de ejecución al orquestador.

{
  "TYPE_MSG": LOG,
  "DESCRIPTION": "LOG",
  "LOG": "INFORMACIÓN GENERADA"
}
```

**Eliminar Proceso**

```
El orquestador enviará al robot correspondiente la petición de eliminar el proceso X que esta pendiente de ejecución en la cola de procesos del robot.

{
  "TYPE_MSG": REMOVE_PROCESS,
  "DESCRIPTION": "REMOVE",
  "SCHEDULE": ID_SCHEDULE
}

El robot responderá con un mensaje al orquestador informandole de su estado.
{
	"TYPE_MSG": UPDATE_INFO, 
	"DESCRIPTION": "UPDATE INFO"
	"ROBOT": "INFORMACIÓN y ESTADO"
}
```




