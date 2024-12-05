# Hércules : REQ\-INT\-0015\-SGEMP\-0033 \- Consultar datos de tipo de empresa







### Definición y objetivos

Obtener los datos de una empresa relacionados con su tipología de empresa (en función de su tamaño por ejemplo) a partir de su identificador de referencia en el SGI. El ESB recibirá del SGI la solicitud de información de tipología de una determinada empresa. El ESB a través de la referencia de la empresa derivará la solicitud al sistema universitario correspondiente.







### Descripción técnica integración

Parámetro de entrada: referencia de empresa (identificador de referencia entre SGI y ESB).

Salida: se devolverá un registro de un tipo de empresa de la empresa con la siguiente información:

* Tipo empresa (PYME, Microempresa, ...). Habría de ser uno de los tipos devueltos a través de la llamada al sistema universitario que corresponda usando el requisito de integración [REQ\-INT\-0015\-SGEMP\-0010 \- Listar tipos de empresa](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ-INT-0015-SGEMP-0010+-+Listar+tipos+de+empresa&linkCreation=true&fromPageId=597853172 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ-INT-0015-SGEMP-0010+-+Listar+tipos+de+empresa&linkCreation=true&fromPageId=597853172").

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Empresas: [SGI \- ESB \- SGEMP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md").







### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









