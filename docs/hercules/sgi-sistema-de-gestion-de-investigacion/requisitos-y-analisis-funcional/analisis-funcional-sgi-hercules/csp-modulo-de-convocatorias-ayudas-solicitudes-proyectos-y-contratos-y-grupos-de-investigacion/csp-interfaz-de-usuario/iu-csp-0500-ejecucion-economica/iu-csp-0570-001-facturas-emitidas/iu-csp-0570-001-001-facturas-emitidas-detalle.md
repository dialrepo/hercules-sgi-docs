# Hércules : IU\-CSP\-0570\-001\-001 \- Facturas emitidas \- Detalle



## Formulario Facturas emitidas \- Detalle

Formulario que muestra el detalle de una factura emitida. Se obtiene del SGE a través de [REQ\-INT\-0010\-SGE\-0151 \- Detalle factura emitida](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0151-detalle-factura-emitida.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0151-detalle-factura-emitida.md")

El detalle de campos a recoger de cada factura emitida será común a todas ellas y deberá ser configurado en tiempo de implantación, pues esta información debe ser recuperada desde el SGE por medio de los mecanismos de integración disponibles.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Anualidad | Numérico entero genérico | Año de la anualidad |
| Número factura | Texto corto | Número factura emitida en el SGE |
| Campo X | Texto corto | Columnas configuradas en la implantación de acuerdo a lo devuelto por la integración con el sistema de gestión económicoEjemplos de ellas serían:* Fecha emisión * Entidad * Concepto * Importe base * Porcentaje IVA * Importe total * Estado * Fecha cobro * Importe cobrado * Número previsión |
| Listado de documentos devueltos por el sistema de gestión económico | | |
| Nombre | Texto | Nombre del documento |
| Descargar fichero | Icono de "descargar" | Acción de descargar el fichero |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Descargar fichero | Se hace una llamada al SGE para obtener el contenido del fichero (el binario) | Se recupera el contenido del fichero en binario para que el usuario lo pueda abrir o guardar el documento.Se obtiene del SGE a través de [REQ\-INT\-0010\-SGE\-0104 \- Descargar Binario documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0104-descargar-binario-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0104-descargar-binario-documento.md") | CSP\-EJEC\-ECSP\-EJEC\-E\_UOCSP\-EJEC\-VCSP\-EJEC\-V\_UOCSP\-EJEC\-INV\-VR |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  
  
  
  





