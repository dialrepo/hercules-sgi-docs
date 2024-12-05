# Hércules : Adaptaciones integración



## Transformaciones de objetos

### Método POST /producciones\-cientificas

#### Objeto ProduccionCientifica  EDMA → Objeto ProduccionCientifica SGI



| ProduccionCientifica EDMA | ProduccionCientifica SGI | Ejemplo |
| --- | --- | --- |
| idRef | Concatenar al campo idRef la cadena "CVN\_". | idRef EDMA \= "12345"idRef SGI \= "CVN\_12345" |

#### Objeto ProduccionCientifica  SGI → Objeto ProduccionCientifica EDMA



| ProduccionCientifica SGI | ProduccionCientifica EDMA | Ejemplo |
| --- | --- | --- |
| idRef | Quitarle la cadena "CVN\_"al idRef | idRef SGI \= "CVN\_12345"idRef EDMA \= "12345" |

### Método PUT /producciones\-cientificas{idRef}

Misma traducción que en el servicio POST tanto en la entrada como en la salida

### Método DELETE /producciones\-cientificas{idRef}

Misma traducción que en el servicio POST para la entrada. No tiene salida

### Método GET /producciones\-cientificas/estado

Misma traducción que en el servicio POST para la salida.




