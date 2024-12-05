# Hércules : Extracción de convocatorias



![](/attachments/598147410/598147828.jpg)

#### Descripción general del subproceso

Este subproceso se planifica automáticamente para hacer la extracción de convocatorias con el objetivo de incorporarlas al SGI. 

En primer lugar, se hará una extracción en crudo de las convocatorias disponibles en las fuentes facilitadas.

Si la extracción ha sido satisfactoria, se continuará con el tratamiento de los datos obtenidos. Seguidamente, se introducirán las convocatorias procesadas en una base de datos interna para su almacenamiento. Este aspecto tendrá especial relevancia a la hora de recuperar convocatorias anteriores que no se hayan incluido en el SGI debido a alguna situación de error. 

Respecto al tratamiento de las convocatorias hay que diferenciar que hay dos casos:

1. Convocatorias obtenidas de BDNS: estas convocatorias se insertarán en el SGI después de su tratamiento, en base al título,  se insertarán con la unidad de gestión "UGI" aquellas que contengan la palabra "investigación o I\+D" y "OTRI" aquellas que contengan "transferencia". Al finalizar el tratamiento de las convocatorias, se comprobará si en la anterior invocación del subproceso se inyectaron satisfactoriamente los resultados en el SGI. Este control de errores en la inclusión de información se deriva de la dependencia con la API facilitada por el SGI, ya que podrá darse el caso de que no se encuentre disponible, en un momento dado, para llevar a cabo la inyección de datos. En caso de que no se hayan incluido se recuperarán, junto a la colección actualmente procesada, las convocatorias anteriores. Lo que resultará en una colección de convocatorias preparadas para su inyección.  Una vez procesada toda la información y comprobadas las convocatorias anteriores, se comprobará si se ha obtenido un resultado satisfactorio en el proceso de inyección al SGI. En caso negativo, se marcará esa colección de convocatorias en la base de datos del proceso a fin de poder introducir, en ejecuciones posteriores, la información y se generará un informe de estado finalizando así este proceso. En el caso de que se haya inyectado adecuadamente la información, se notificará a los interesados del resultado.
2. Convocatorias obtenidas de la Comisión Europea (Funding \& tenders): estas convocatorias no se insertarán en el SGI, se enviará un correo electrónico con el título de la convocatoria y el enlace a ésta. El formato del correo electrónico será el siguiente:
	1. Identificador de la convocatoria: se pondrá el identificador único de la convocatoria como nombre de la misma.
	2. URL de la convocatoria: URL a la página europea donde se puede encontrar toda la información de la convocatoria.
	3. Fecha de publicación: fecha de publicación de la convocatoria en la página.
	4. Fecha de Fin: fecha deadline que la página de convocatorias muestra para la convocatoria.


```
        Ejemplo:  
         Convocatoria con nombre: AMIF-2022-AG-CALL-THB
	     URL: [https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-details/amif-2022-ag-call-thb](https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-details/amif-2022-ag-call-thb "https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/opportunities/topic-details/amif-2022-ag-call-thb"). 
	     Fecha de publicación: 10/02/2022. 
	     Fecha Fin: 19/05/2022
```
  





