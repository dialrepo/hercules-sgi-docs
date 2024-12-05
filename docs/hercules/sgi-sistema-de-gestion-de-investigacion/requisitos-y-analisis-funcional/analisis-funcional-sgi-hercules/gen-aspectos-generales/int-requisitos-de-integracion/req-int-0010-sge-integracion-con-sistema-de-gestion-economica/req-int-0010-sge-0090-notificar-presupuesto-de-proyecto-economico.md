# Hércules : REQ\-INT\-0010\-SGE\-0090 \- Notificar presupuesto de proyecto económico







### Definición y objetivos

En la configuración económica de los proyectos del SGI se debe de recoger el listado de aplicaciones presupuestarias (partidas presupuestarias y códigos económicos de gastos/ingresos) a partir de los que, posteriormente, se consultarán al SGE las operaciones económicas registradas. Esta información deberá ser recogida manualmente en el SGI. El SGI remitirá al ESB esta información para que pueda ser publicada y remitida al sistema de gestión económica correspondiente. Según la política de cada Universidad se hará uso de esta información para crear/actualizar directamente el proyecto en el SGE o simplemente para publicar la información a través de cualquier mecanismo propio de la Universidad.







### Descripción técnica integración

Parámetros de entrada:  Listado de presupuesto por anualidad de uno o varios proyectos. El presupuesto anualidad contiene:

* Identificador del proyecto SGE. Se corresponde con el identificador que el SGI tiene almacenado para realizar la correspondencia entre proyecto SGI y proyecto SGE.
* Anualidad: expresada en formato YYYY.  En los casos de que el desglose del presupuesto en el SGI no se haga por anualidades, se enviará la anualidad del año de inicio del proyecto.
* Código de partida presupuestaria
* Importe concedido
* Tipo: Ingreso o Gasto

Parámetros de salida: sin parámetros de salida.

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la relativa a proyectos del SGE y presupuestos: [SGI \- ESB \- SGE \- Proyecto económico y presupuesto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md").

El servicio concreto del API que cubre este requisito es: [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Enviar partidas presupuestarias](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-notificacion-sge/sgi-esb-sge-proyecto-sge-y-presupuesto-enviar-partidas-presupuestarias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-notificacion-sge/sgi-esb-sge-proyecto-sge-y-presupuesto-enviar-partidas-presupuestarias.md").







### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









