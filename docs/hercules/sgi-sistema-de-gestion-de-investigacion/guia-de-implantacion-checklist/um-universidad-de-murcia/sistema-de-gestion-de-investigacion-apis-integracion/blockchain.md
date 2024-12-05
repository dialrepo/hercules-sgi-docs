# Hércules : Blockchain



  










## Blockchain

  


Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/dev**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por https según el caso.

HOST \= vwoocidtuj.execute\-api.eu\-west\-1\.amazonaws.com

  


### Servicios



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| POST | /herc\-timestamp\-timestamp | token (con la password)data (hash del documento a enviar) | transaccionId | Servicio que realiza el sello en el blockchain. Se envía por parámetro la contraseña y el hash del documento.Devuelve el id de la transacción |
| GET | /herc\-timestamp\-data | token (con la password)txhash (con el id de la transacción) | data | Servicio que devuelve la cadena que se envío en su momento y que debe de estar en la transacción enviada por parámetro. |




