# Hércules : Extracción de tablas en archivos PDF



El módulo cognitivo poseerá una librería capaz de extraer tablas de archivos PDFs, siendo capaz de detectar cambios de formatos en dicha tabla en los que respecta a la orientación (texto en vertical), es decir, la librería es capaz de extraer cualquier tabla en cualquier orientación, esto incluye detección de cambios de formato en los documentos de concesiones, ya que si las tablas cambiaran de orientación está funcionalidad seguiría detectándolas.

Esta librería servirá de apoyo para la extracción de tablas [Proceso 3 : Automatización de procesos de gestiones documentales parametrizables](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-3-automatizacion-de-procesos-de-gestiones-documentales-parametrizables/index.md"), en la extracción de concesiones, ya que su extracción significará la búsqueda de información y automatización de procesos.  También se apoya en el módulo de [Reconocimiento de caracteres (OCR)](/hercules/rpa/modulo-de-tecnologias-cognitivas/reconocimiento-de-caracteres-ocr.md "/hercules/rpa/modulo-de-tecnologias-cognitivas/reconocimiento-de-caracteres-ocr.md"), para aquellas tablas que se extraigan de imágenes y se necesite reconocer el texto de las celdas.

Para implementar este módulo trabajamos con Camelot (biblioteca de Python software libre GPL V3\). Camelot es capaz de trabajar con tablas rotadas de diferentes formatos y, modificando ciertos parámetros internos de la propia librería es capaz de darnos resultados muy satisfactorios. Para la realización de este componente del módulo de tecnologías cognitivas se ha hecho uso de diferentes parametrizaciones de Camelot para posteriormente aplicando algoritmos propios, obtener la mejor aproximación a la tabla que contiene el documento de entrada. Esta librería tendrá como resultado, si se le pide, la salida de la tabla en formato Excel o CSV. También se ha implementado devolver la tabla resultante como un dataframe de Pandas, de esta forma otros procesos pueden extraer información que sea necesaria para la realización del [Módulo de Automatización y Gestión](/hercules/rpa/modulo-de-automatizacion-y-gestion/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/index.md"). Desde nuestro módulo de extracción de tablas podremos llamar a las funciones de estas librerías añadiendo los parámetros necesarios para que nos devuelva el resultado .

A continuación mostramos un ejemplo de uso de esta funcionalidad de la librería, donde partimos de una tabla que se encuentra en un documento PDF que recoge concesiones de convocatorias.

**Tabla Inicial**

La tabla está rotada inicialmente.

**![](/attachments/598147214/598148332.png)**

**Tabla volteada**

![](/attachments/598147214/598148331.png)

**Dataframe resultante de la tabla** 

**Dataframe Pandas**

```
0                     1           2                       3                                                  4          5                     6     7                   8                   9
0     Nº                   NaN  SUB \nÁREA                     NaN                                                NaN        NaN                   NaN  AÑOS                 NaN                 NaN
1    NaN            REFERENCIA         NaN     ENTIDAD SOLICITANTE                                             CENTRO        NIF  COMUNIDAD \nAUTÓNOMA   NaN  FECHA \nINICIO (*)  Nº CONT. \nPREDOC.
2   1899  PID2019-106380RB-I00         GYA   UNIVERSIDAD DE MURCIA                            FACULTAD DE VETERINARIA  Q3018001B                MURCIA     4          01/06/2020                   1
3   1900  PID2019-106693RB-I00         ALI   UNIVERSIDAD DE MURCIA                            FACULTAD DE VETERINARIA  Q3018001B                MURCIA     3          01/06/2020                   0
4   1901  PID2019-104272RB-C52         ENE   UNIVERSIDAD DE MURCIA  INSTITUTO UNIVERSITARIO DE INVESTIGACIÓN EN \n...  Q3018001B                MURCIA     3          01/06/2020                   1
5   1902  PID2019-105684RB-I00         FYA   UNIVERSIDAD DE MURCIA  INSTITUTO UNIVERSITARIO DE INVESTIGACIÓN EN \n...  Q3018001B                MURCIA     4          01/01/2020                   1
6   1903  PID2019-106080GB-C22         FPN   UNIVERSIDAD DE MURCIA  INSTITUTO UNIVERSITARIO DE INVESTIGACIÓN EN \n...  Q3018001B                MURCIA     3          01/01/2020                   0
7   1904  PID2019-106982RB-I00         FOS  UNIVERSIDAD DE NAVARRA         CENTRO DE INVESTIGACIÓN EN NUTRICIÓN (CIN)  R3168001J               NAVARRA     3          01/06/2020                   1
8   1905  PID2019-104083RB-I00         ICA  UNIVERSIDAD DE NAVARRA           ESCUELA TECNICA SUPERIOR DE ARQUITECTURA  R3168001J               NAVARRA     4          01/06/2020                   0
9   1906  PID2019-109008RB-C21         ICA  UNIVERSIDAD DE NAVARRA           ESCUELA TECNICA SUPERIOR DE ARQUITECTURA  R3168001J               NAVARRA     3          01/06/2020                   0
10  1907  PID2019-104958RB-C44         TCO  UNIVERSIDAD DE NAVARRA  ESCUELA TECNICA SUPERIOR DE ING. INDUSTRIALES....  R3168001J            PAIS VASCO     3          01/06/2020                   0
11  1908  PID2019-105414RA-C32         INF  UNIVERSIDAD DE NAVARRA  ESCUELA TECNICA SUPERIOR DE ING. INDUSTRIALES....  R3168001J            PAIS VASCO     3          01/06/2020                   0
12  1909  PID2019-108378RB-I00         TMA  UNIVERSIDAD DE NAVARRA  ESCUELA TECNICA SUPERIOR DE ING. INDUSTRIALES....  R3168001J            PAIS VASCO     3          01/06/2020                   0
13  1910  PID2019-109984RB-C44         TCO  UNIVERSIDAD DE NAVARRA  ESCUELA TECNICA SUPERIOR DE ING. INDUSTRIALES....  R3168001J            PAIS VASCO     3          01/06/2020                   0
14  1911  PID2019-105227RB-I00         EYF  UNIVERSIDAD DE NAVARRA    FACULTAD DE CIENCIAS ECONOMICAS Y EMPRESARIALES  R3168001J               NAVARRA     3          01/06/2020                   0
15  1912  PID2019-105929GA-I00         LYL  UNIVERSIDAD DE NAVARRA                     FACULTAD DE FILOSOFIA Y LETRAS  R3168001J               NAVARRA     3          01/06/2020                   1
16  1913  PID2019-107601RA-C32         GYA  UNIVERSIDAD DE NAVARRA                               FACULTAD DE MEDICINA  R3168001J               NAVARRA     3          01/06/2020                   1
17  1914  PID2019-103897GB-I00         EYF  UNIVERSIDAD DE NAVARRA  INSTITUTO DE ESTUDIOS SUPERIORES DE LA EMPRESA...  R3168001J              CATALUÑA     3          01/06/2020                   0
18  1915  PID2019-104246GA-I00         EYA  UNIVERSIDAD DE NAVARRA  INSTITUTO DE ESTUDIOS SUPERIORES DE LA EMPRESA...  R3168001J              CATALUÑA     3          01/06/2020                   0
19  1916  PID2019-104375GB-I00         EYF  UNIVERSIDAD DE NAVARRA  INSTITUTO DE ESTUDIOS SUPERIORES DE LA EMPRESA...  R3168001J              CATALUÑA
```

  


Una vez tenemos la tabla como un dataframe, podemos exportarla con ayuda de la librería Pandas y xlsxwriter.

**Tabla resultante en formato Excel, CSV o similares**

**[/attachments/598147214/RESOLUCI%C3%93N%20DE%20CONCESI%C3%93N-PROYECTOS%20UMU.xlsx?version=1&modificationDate=1646135084000&api=v2 "/confluence/download/attachments/598147214/RESOLUCI%C3%93N%20DE%20CONCESI%C3%93N-PROYECTOS%20UMU.xlsx?version=1&modificationDate=1646135084000&api=v2"](/attachments/598147214/RESOLUCI%C3%93N%20DE%20CONCESI%C3%93N-PROYECTOS%20UMU.xlsx?version=1&modificationDate=1646135084000&api=v2 "/confluence/download/attachments/598147214/RESOLUCI%C3%93N%20DE%20CONCESI%C3%93N-PROYECTOS%20UMU.xlsx?version=1&modificationDate=1646135084000&api=v2")**




