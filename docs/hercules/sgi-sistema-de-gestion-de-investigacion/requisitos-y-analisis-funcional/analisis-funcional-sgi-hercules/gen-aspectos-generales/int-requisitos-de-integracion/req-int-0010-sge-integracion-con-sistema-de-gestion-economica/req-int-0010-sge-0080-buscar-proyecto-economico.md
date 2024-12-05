# Hércules : REQ\-INT\-0010\-SGE\-0080 \- Buscar proyecto económico







### Definición y objetivos

Realizar la búsqueda, a partir de unos filtros, de un proyecto sobre el conjunto de proyectos económicos registrados en el SGE.







### Descripción integración

Parámetros de entrada:

* Cadena de texto que podrá contener indistintamente:
	+ Identificador SGE
	+ Título del proyecto
* Fecha inicio desde
* Fecha inicio hasta
* Fecha fin desde
* Fecha fin hasta

El SGI proveerá el interface gráfico para recoger los parámetros de búsqueda [IU\-GEN\-0090 \- Búsqueda de proyectos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md").

Salida: el resultado serán todos los proyectos que cumplan con los criterios establecidos. La información a devolver para cada proyecto es:

* Identificador SGE
* Título del proyecto
* Fecha inicio
* Fecha fin
* Sector Iva

El SGI mostrará los resultados devueltos en un listado sobre el que se podrá seleccionar el registro concreto que vaya a ser utilizado en el caso de uso que invoca al buscador.  Ver [IU\-CSP\-0406\-019\-001 \- Búsqueda de proyectos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-021-modificar-proyecto-configuracion-economica-identificacion/iu-csp-0406-021-001-busqueda-de-proyectos-economicos.md"). El SGI facilitará el interface para recoger la solicitud de alta de un proyecto en el sistema externo, a través de [IU\-CSP\-0406\-019\-002\- Solicitar alta de proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-002-solicitar-alta-de-proyecto-economico-desde-proyecto-sgi.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/um-formularios-especificos/um-formularios-de-gestion-economica-sge/iu-csp-0406-021-002-solicitar-alta-de-proyecto-economico-desde-proyecto-sgi.md") que hará uso del servicio de integración [REQ\-INT\-0010\-SGE\-0081 \- Solicitar alta proyecto económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0081-solicitar-alta-proyecto-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0081-solicitar-alta-proyecto-economico.md")

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la relativa a proyectos del SGE y presupuestos: [SGI \- ESB \- SGE \- Proyecto económico y presupuesto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Buscar proyectos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-basicos/sgi-esb-sge-proyecto-sge-y-presupuesto-buscar-proyectos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-proyecto-sge-y-presupuesto/sgi-esb-sge-proyecto-sge-y-presupuesto-servicios-basicos/sgi-esb-sge-proyecto-sge-y-presupuesto-buscar-proyectos.md").

### Interfaces de usuario o casos de uso relacionados





















