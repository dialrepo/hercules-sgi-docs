# Hércules : REQ\-INT\-0010\-SGE\-0081 \- Solicitar alta proyecto económico







### Definición y objetivos

Para cada proyecto del SGI se debe de recoger el o los códigos de correspondencia con proyectos en el SGE. Esta información deberá ser recogida manualmente en el SGI. El SGI remitirá al ESB esta información para que pueda ser publicada y remitida al sistema de gestión económica correspondiente. Según la política de cada Universidad se hará uso de esta información para crear directamente el proyecto en el SGE o simplemente para publicar la información a través de cualquier mecanismo propio de la Universidad.

Dependiendo de la Universidad los datos necesarios para dar de alta un nuevo proyecto en el SGE podrán ser unos datos u otros.







### Descripción técnica integración

Parámetros de entrada: Formulario formly con los datos que necesite cada universidad para para de alta un proyecto económico

Para el standalone del SGI únicamente se necesita:

* Identificador proyecto SGI
* Título de proyecto
* Fecha de inicio
* Fecha de fin

Para la universidad de Murcia se necesita:

* Identificador proyecto SGI
* Título de proyecto
* Fecha de inicio
* Fecha de fin
* Identificador número de documento del responsable
* Modelo de ejecución
* Tipo de finalidad
* Importe total previsto de gastos
* Importe total previsto de ingresos
* % IVA
* Causa exención

Parámetros de salida:

* Mensaje con el resultado de la operación. En caso de que se haya podido crear el proyecto, se mostrará un mensaje de "Proyecto creado correctamente"

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la relativa a proyectos del SGE y presupuestos: [SGI \- ESB \- SGE \- Proyecto económico y presupuesto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md").

Los servicios concretos del API que cubren este requisito son:

* [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Obtener campos dar de alta proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-formly/sgi-esb-sge-proyecto-sge-y-presupuesto-obtener-campos-dar-de-alta-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-formly/sgi-esb-sge-proyecto-sge-y-presupuesto-obtener-campos-dar-de-alta-proyecto.md")
	+ Se ha de llamar en primer lugar para poder pintar por pantalla el formulario de introducción de datos de alta.
* [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Dar de alta proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-formly/sgi-esb-sge-proyecto-sge-y-presupuesto-dar-de-alta-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-formly/sgi-esb-sge-proyecto-sge-y-presupuesto-dar-de-alta-proyecto.md")
	+ Se llamará una vez el usuario completa los datos del formulario de alta.






### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









