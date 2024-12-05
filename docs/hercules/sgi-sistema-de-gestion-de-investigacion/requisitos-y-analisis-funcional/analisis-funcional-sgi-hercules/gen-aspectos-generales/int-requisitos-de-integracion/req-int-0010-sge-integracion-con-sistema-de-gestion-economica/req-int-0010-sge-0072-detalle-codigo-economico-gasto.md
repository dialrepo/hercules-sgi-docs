# Hércules : REQ\-INT\-0010\-SGE\-0072 \- Detalle código económico gasto







### Definición y objetivos

Detalle con todos los campos de un código económico de tipo gasto del SGE. Entre la información que debe ser remitida al SGI está la validez de esos códigos económicos, si en algún momento alguno o todos los códigos económicos dejan de tener validez, el SGI debe disponer de las fechas de vigencia de los mismos, puesto que convocatorias y proyectos dependerán de los mismos para asociar los códigos económico vigentes en cada momento a los conceptos de gasto de la convocatoria.

  








### Descripción técnica integración

Parámetros de entrada:

* Identificador del código económico (tipo de gasto del SGE)

Parámetros de salida:

* Identificador del código económico (tipo de gasto del SGE)
* Nombre o descripción del código económico
* Fecha de inicio de la vigencia del código
* Fecha de fin de la vigencia del código

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la relativa a proyectos del SGE y presupuestos: [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md").

El servicio concreto del API que cubre este requisito es: [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Consultar detalle de código económico de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-basicos/sgi-esb-sge-proyecto-sge-y-presupuesto-consultar-detalle-de-codigo-economico-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-basicos/sgi-esb-sge-proyecto-sge-y-presupuesto-consultar-detalle-de-codigo-economico-de-gasto.md").







### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









