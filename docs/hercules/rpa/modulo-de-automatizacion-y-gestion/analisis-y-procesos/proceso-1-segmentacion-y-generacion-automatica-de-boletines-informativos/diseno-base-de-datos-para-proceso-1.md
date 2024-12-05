# Hércules : Diseño base de datos para proceso 1



Este proceso una vez genera el resumen del boletín y lo envía por correo electrónico persiste en base de datos el estado de finalización del proceso. Es decir, si algo falló, se almacenará en una base de datos interna la fecha de ejecución, junto con el rango de fechas de búsqueda y el estado de finalización. Esto permite a la automatización Hércules\-RPA comprobar cada vez que se ejecuta un proceso si la ejecución anterior falló, si es así se ajustará el rango de fechas de búsqueda para que se envíe también la información que no pudo ser enviada en la ejecución anterior. En la siguiente imagen, se puede observar la definición preliminar del esquema Entidad\-Relación o ER de la base de datos.

![](/attachments/598147404/598148139.png)




