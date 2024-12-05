# Hércules : IU\-CSP\-0540\-002\-001 \- Facturas y justificantes \- Viajes y dietas \- Detalle



## Formulario Ejecución económica \- Facturas y justificantes \- Viajes y dietas \- Detalle

Formulario que muestra el detalle de un gasto asociado a un viaje o dieta. 



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Datos SGE (datos recuperados de la integración con el sistema de gestión económica) [REQ\-INT\-0010\-SGE\-0141 \- Detalle viaje\-dieta](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0141-detalle-viaje-dieta.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0141-detalle-viaje-dieta.md") | | |
| Anualidad | Numérico entero genéricoModo consulta | Año de la anualidad |
| Clasificación SGE | Texto cortoModo consulta | Campo clasificación SGE. |
| Aplicación presupuestaria | Texto cortoModo consulta | Aplicación presupuestaria asociado al gasto |
| Código económico | Texto cortoModo consulta | Código económico asociado al gasto |
| Fecha devengo | FechaModo consulta | Fecha de devengo del gasto |
| Campo X | Texto cortoModo consulta | Columnas configuradas en la implantación de acuerdo a lo devuelto por la integración con el sistema de gestión económicoEjemplos de ellas serían:* Número de factura * Número de comisión de servicio * Perceptor/Proveedor (nombre y apellidos) * Identificador Perceptor/Proveedor * Concepto/ Motivo del viaje * Fecha contabilización * Fecha de pago * Itinerario viaje * Destino * Fecha salida \- Fecha vuelta * Medio de locomoción * Importe locomoción * Importe alojamiento * Importe dietas * Otros gastos * Importe total (base imponible) * Observaciones locomoción * Observaciones alojamiento * Observaciones dietas |
| Listado de documentos devueltos por el sistema de gestión económico | | |
| Nombre | Texto | Nombre del documento |
| Descargar fichero | Icono de "descargar" | Acción de descargar el fichero |
| Datos SGI. Datos recuperados del SGI, tabla "gasto proyecto". | | |
| Proyecto SGI | SelectorTextoOpcional | Proyecto SGI al que se vincula el viaje/congreso.Si está activada la validación de gastos (el campo "validación gastos" de la tabla "configuración" toma valor "true"), este campo se mostrará en modo consulta. El valor a mostrar se recuperará a partir del campo "proyecto id" de la tabla "gasto proyecto". Se mostrará la concatenación de los campos "título", "fecha inicio" y "fecha fin" (si "fecha fin definitiva" está informada, se mostrará este valor en lugar de "fecha fin") de la tabla "proyecto" para el "proyecto id" de la tabla "gasto proyecto".Si no está activada la validación de gastos (campo "validación gastos" de la tabla "configuración" toma valor "false") este campo se mostrará en modo edición, cargando en el desplegable el listado de proyectos SGI vinculados al identificador del proyecto SGE (en caso de que hubiese más de uno): tabla "proyecto proyecto SGE" para el "proyecto SGE ref" en curso. Si solo existiese un proyecto SGI vinculado al identificador SGE, el desplegable tomará este valor por defecto. En cualquier caso, la información a mostrar en el desplegable será una cadena con la concatenación de los campos "título", "fecha inicio" y "fecha fin" (o "fecha fin definitiva" en caso de estar informada) de la tabla "proyecto". El valor seleccionado en el desplegable se almacenará sobre el campo "proyecto id" de la tabla "gasto proyecto". |
| Fecha congreso | FechaOpcional | Fecha del congreso.Se corresponde con el campo "fecha congreso" de la tabla "gasto proyecto". |
| Inscripción | Numérico decimal genéricoOpcional | Importe de la inscripción.Se corresponde con el campo "importe inscripción" de la tabla "gasto proyecto". |
| Observaciones | TextoOpcional | ObservacionesSe corresponde con el campo "observaciones" de la tabla "gasto proyecto". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Descargar fichero | Se hace una llamada al SGE para obtener el contenido del fichero (el binario). | Se recupera el contenido del fichero en binario para que el usuario lo pueda abrir o guardar el documento.Se obtiene del SGE a través de [REQ\-INT\-0010\-SGE\-0104 \- Descargar Binario documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0104-descargar-binario-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0104-descargar-binario-documento.md") | CSP\-EJEC\-ECSP\-EJEC\-E\_UOCSP\-EJEC\-VCSP\-EJEC\-V\_UOCSP\-EJEC\-INV\-VR |
| Aceptar | Se almacenan los cambios introducidos. | Se guardan los datos en la tabla del SGI "Gasto proyecto" (en memoria, y al dar a Guardar Ejecución económica se consolidarán):* Si el gasto no existe en la tabla de "Gasto proyecto"   el campo "estado" de la tabla "Gasto proyecto" se dejará a null. * Si el gasto ya existe en la tabla "Gasto proyecto" se le dejará el estado que tiene. | CSP\-EJEC\-ECSP\-EJEC\-E\_UO |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  
  
  


  
  
  
  
  
  





