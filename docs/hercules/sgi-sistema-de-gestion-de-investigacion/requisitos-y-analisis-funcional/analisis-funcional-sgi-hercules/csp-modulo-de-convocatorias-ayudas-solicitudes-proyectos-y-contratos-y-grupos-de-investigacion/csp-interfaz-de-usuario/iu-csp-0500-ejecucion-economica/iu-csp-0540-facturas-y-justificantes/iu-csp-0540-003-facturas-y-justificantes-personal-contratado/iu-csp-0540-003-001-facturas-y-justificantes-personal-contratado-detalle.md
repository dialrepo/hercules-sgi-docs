# Hércules : IU\-CSP\-0540\-003\-001 \- Facturas y justificantes \- Personal contratado \- Detalle



## Formulario Ejecución económica \- Personal contratado \- Facturas y gastos \- Detalle

Formulario que muestra el detalle de un justificantes de gasto asociado a una nómina. Se obtiene del SGE a través de [REQ\-INT\-0010\-SGE\-0142 \- Detalle personal contratado](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0010-SGE-0142+-+Detalle+personal+contratado "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0010-SGE-0142+-+Detalle+personal+contratado")

El detalle de campos a recoger de cada justificante/factura será común a todos ellos y deberá ser configurado en tiempo de implantación, pues esta información debe ser recuperada desde el SGE por medio de los mecanismos de integración disponibles.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Anualidad | Numérico entero genérico | Año de la anualidad. Recuperado a través de  [REQ\-INT\-0010\-SGE\-0142 \- Detalle personal contratado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md") |
| Clasificación SGE | Texto corto | Clasificación del gasto según SGE. Recuperado a través de [REQ\-INT\-0010\-SGE\-0142 \- Detalle personal contratado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md") |
| Aplicación presupuestaria | Texto corto | Aplicación presupuestaria asociado al gasto, recuperada a través de [REQ\-INT\-0010\-SGE\-0142 \- Detalle personal contratado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md") |
| Código económico | Texto corto | Código económico asociado al gasto, recuperado a través de [REQ\-INT\-0010\-SGE\-0142 \- Detalle personal contratado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md") |
| Fecha devengo | Fecha | Fecha de devengo del gasto, recuperado a través de [REQ\-INT\-0010\-SGE\-0142 \- Detalle personal contratado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md") |
| Campo X | Texto corto | Columnas configuradas en la implantación de acuerdo a lo devuelto por la integración con el sistema de gestión económico, [REQ\-INT\-0010\-SGE\-0142 \- Detalle personal contratado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0142-detalle-personal-contratado.md")Ejemplos de ellas serían:* Nº documento identificación (del contratado) * Nombre y apellidos (del contratado) * Concepto (seguridad social o retribuciones) * Fecha contabilización * Fecha pago * Importe * Fecha inicio del contrato * Fecha fin del contrato * Categoría laboral * Jornada semanal o diaria |
| Listado de documentos devueltos por el sistema de gestión económico | | |
| Nombre | Texto | Nombre del documento |
| Descargar fichero | Icono de "descargar" | Acción de descargar el fichero |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Descargar fichero | Se hace una llamada al SGE para obtener el contenido del fichero (el binario) | Se recupera el contenido del fichero en binario para que el usuario lo pueda abrir o guardar el documento.Se obtiene del SGE a través de [REQ\-INT\-0010\-SGE\-0104 \- Descargar Binario documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0104-descargar-binario-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0104-descargar-binario-documento.md") | CSP\-EJEC\-ECSP\-EJEC\-E\_UOCSP\-EJEC\-VCSP\-EJEC\-V\_UOCSP\-EJEC\-INV\-VR |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  
  
  


  
  
  
  
  
  





