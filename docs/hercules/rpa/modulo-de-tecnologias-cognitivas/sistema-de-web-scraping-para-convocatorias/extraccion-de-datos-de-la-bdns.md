# Hércules : Extracción de datos de la BDNS



La Base de Datos Nacional de Subvenciones (BDNS) se nutre de la propia base de datos de subvenciones que está disponible a través del enlace: [https://www.pap.hacienda.gob.es/bdnstrans/ge/es/convocatorias](https://www.pap.hacienda.gob.es/bdnstrans/ge/es/convocatorias "https://www.pap.hacienda.gob.es/bdnstrans/ge/es/convocatorias") .

Con esta librería conseguimos sacar un listado de todas las convocatorias en las que se incluya palabras clave, en el caso del  [Proceso 3 : Automatización de procesos de gestiones documentales parametrizables](https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534812 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534812"), se utiliza la palabra clave "investigación". A continuación, se recogerá ese listado y por cada convocatoria, identificada por su id, se obtendrá toda la información relativa a esa convocatoria.

También cabe la posibilidad de filtrar por rango de fechas. El proceso es similar al explicado con anterioridad con la nueva premisa de las fechas. Seguidamente se saca el listado y por su id se puede obtener toda la información de esa convocatoria. Esta funcionalidad podrá ser usada por cualquier universidad que implemente este servicio para recopilar convocatorias de la BDNS, que es la mayor base de datos de convocatorias en España.

Para la implementación de esta funcionalidad se utilizará Beautiful Soup 4 (de software libre), que es una potente librería de web\-scraping que se parametrizará para que ajustarse a los parámetros que el usuario dará como entrada.




