# Hércules : REQ\-INT\-0010\-SGE\-0071 \- Listar códigos económicos de ingresos







### Definición y objetivos

El SGI requiere disponer del listado de códigos económicos con los que se deberán relacionar cada uno de los conceptos de ingreso de investigación  incluidos en convocatorias y proyectos. Este listado estará centralizado, como norma general, por el sistema de gestión económica correspondiente. El ESB del SGI será el encargado de derivar la invocación de este servicio al sistema correspondiente.

Los códigos económicos, junto con otros códigos adicionales de cada proyecto serán los parámetros a partir de los que se establecerá la comunicación entre SGI y SGE para disponer en el SGI de todos los detalles económicos de los proyectos.

Entre la información que debe ser remitida al SGI está la validez de esos códigos económicos, si en algún momento alguno o todos los códigos económicos dejan de tener validez, el SGI debe disponer de las fechas de vigencia de los mismos, puesto que convocatorias y proyectos dependerán de los mismos para asociar los códigos económico vigentes en cada momento a los conceptos de gasto de la convocatoria. Se presupone pues que los códigos económicos leídos del SGE tendrán unas fechas de vigencia, fecha inicio y fecha fin,  o un indicador de que el código no está activo.







### Descripción integración

Parámetros de entrada: sin parámetros

Parámetros de salida. Se devolverán todos los códigos económicos de ingresos con la siguiente información para cada uno de ellos:

* Referencia
* Código económico (será la cadena numérica o alfanumérica que identifica al tipo de gasto/ingreso en el SGE)
* Fecha de inicio de vigencia
* Fecha fin de vigencia

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la relativa a proyectos del SGE y presupuestos: [SGI \- ESB \- SGE \- Proyecto económico y presupuesto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Listar códigos económicos de ingresos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-basicos/sgi-esb-sge-proyecto-sge-y-presupuesto-listar-codigos-economicos-de-ingresos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-basicos/sgi-esb-sge-proyecto-sge-y-presupuesto-listar-codigos-economicos-de-ingresos.md").







### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









