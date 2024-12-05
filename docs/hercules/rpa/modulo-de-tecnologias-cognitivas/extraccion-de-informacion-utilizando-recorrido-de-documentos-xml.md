# Hércules : Extracción de información utilizando recorrido de documentos XML



El proceso de recorrido de documentos XML nos permite obtener una abstracción de la estructura XML obteniendo solo los nodos necesarios para los procesos RPA.

Un ejemplo de la aplicación que puede tener este módulo es el recorrido del documento XML del BOE, utilizado en [Proceso 3 : Automatización de procesos de gestiones documentales parametrizables](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md") para la obtención de las bases reguladoras de  convocatorias.

El proceso recorrerá la estructura XML, dada una lista de nodos padre y de nodos hijos, en este caso, el nodo padre será el nodo con la etiqueta "item" y los nodos hijos de dicho nodo padre serán los nodos "titulo" y "urlPdf", y creará una lista donde se relaciona cada nodo "item" con sus nodos hijos. Gracias a esto el proceso de extracción de bases reguladoras solo tratará los nodos que necesita y obtendrá la información de ellos.

  


![](/attachments/598147567/598148290.png)

  


A continuación se incluye un ejemplo de estructura ejemplo del documento XML del BOE:

**Ejemplo de entrada: Sumario BOE**

```
<?xml version="1.0" encoding="UTF-8"?>
<sumario xmlns="http://www.boe.es/xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.boe.es/xsd SumarioBOE.xsd ">
   <meta>
      <pub>BOE</pub>
      <fecha>18/10/2014</fecha>
      <fechaAnt>17/10/2014</fechaAnt>
      <fechaSig>20/10/2014</fechaSig>
   </meta>
   <diario nbo="253">
      <sumario_nbo id="BOE-S-2014-253">
         <urlPdf szBytes="312083" szKBytes="305">/boe/dias/2014/10/18/pdfs/BOE-S-2014-253.pdf</urlPdf>
      </sumario_nbo>
      <seccion num="1" nombre="I. Disposiciones generales">
         <departamento nombre="MINISTERIO DE HACIENDA Y ADMINISTRACIONES PÚBLICAS">
            <epigrafe nombre="Tabaco. Precios">
               <item id="BOE-A-2014-10571">
                  <titulo>Resolución de 17 de octubre de 2014, de la Presidencia del Comisionado para el Mercado de Tabacos, por la que se publican los precios de venta al público de determinadas labores de tabaco en Expendedurías de Tabaco y Timbre del Área del Monopolio.</titulo>
                  <urlPdf szBytes="162969" szKBytes="159" numPag="2">/boe/dias/2014/10/18/pdfs/BOE-A-2014-10571.pdf</urlPdf>
                  <urlHtm>/diario_boe/txt.php?id=BOE-A-2014-10571</urlHtm>
                  <urlXml>/diario_boe/xml.php?id=BOE-A-2014-10571</urlXml>
               </item>
            </epigrafe>
         </departamento>
         <departamento nombre="MINISTERIO DE EDUCACIÓN, CULTURA Y DEPORTE">
            <epigrafe nombre="Títulos académicos">
               <item id="BOE-A-2014-10573">
                  <titulo>Resolución de 2 de octubre de 2014, de la Secretaría General de Universidades, por la que se publica el Acuerdo del Consejo de Ministros de 26 de septiembre de 2014, por el que se establece el carácter oficial de determinados títulos de Grado y su inscripción en el Registro de Universidades, Centros y Títulos.</titulo>
                  <urlPdf szBytes="174162" szKBytes="170" numPag="5">/boe/dias/2014/10/18/pdfs/BOE-A-2014-10573.pdf</urlPdf>
                  <urlHtm>/diario_boe/txt.php?id=BOE-A-2014-10573</urlHtm>
                  <urlXml>/diario_boe/xml.php?id=BOE-A-2014-10573</urlXml>
               </item>
               <item id="BOE-A-2014-10574">
                  <titulo>Resolución de 2 de octubre de 2014, de la Secretaría General de Universidades, por la que se publica el Acuerdo del Consejo de Ministros de 26 de septiembre de 2014, por el que se establece el carácter oficial de determinados títulos de Máster y su inscripción en el Registro de Universidades, Centros y Títulos.</titulo>
                  <urlPdf szBytes="236651" szKBytes="231" numPag="12">/boe/dias/2014/10/18/pdfs/BOE-A-2014-10574.pdf</urlPdf>
                  <urlHtm>/diario_boe/txt.php?id=BOE-A-2014-10574</urlHtm>
                  <urlXml>/diario_boe/xml.php?id=BOE-A-2014-10574</urlXml>
               </item>
            </epigrafe>
         </departamento>
      </seccion>
      ...
   </diario>
</sumario>
```

Un ejemplo de salida tras la obtención de los nodos de un documento XML y la validación de los mismos con los criterios especificados en el proceso de extracción de bases reguladoras sería el siguiente:



|  |
| --- |

Además de utilizarse en  [Proceso 3 : Automatización de procesos de gestiones documentales parametrizables](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md") para la obtención de las bases reguladoras de  convocatorias, también se utiliza en [Proceso 1 : Segmentación y generación automática de boletines informativos](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-1-segmentacion-y-generacion-automatica-de-boletines-informativos/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-1-segmentacion-y-generacion-automatica-de-boletines-informativos/index.md") para la obtención de noticias. En este módulo podrá servir de forma general para analizar cualquier fichero XML que se necesite en cualquier subsistema de Hércules.




