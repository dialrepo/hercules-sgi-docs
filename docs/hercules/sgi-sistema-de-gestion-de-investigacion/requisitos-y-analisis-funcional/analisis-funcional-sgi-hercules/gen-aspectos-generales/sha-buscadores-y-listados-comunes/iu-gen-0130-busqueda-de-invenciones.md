# Hércules : IU\-GEN\-0130 \- Búsqueda de invenciones







## Formulario de Búsqueda de invenciones

Pantalla emergente que muestra un formulario que, mediante unos filtros de búsqueda, muestra un listado de las invenciones registradas en el sistema que cumplen las condiciones que se presentan. 

Será el buscador de invenciones común a todo el SGI que utilizarán el resto de módulos de la aplicación.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Número de invención | Numérico entero | Identificador único de invención autogenerado en el SGI al dar de alta la invención y NO modificable que se usará como campo de enlace con los sistemas donde sea necesario tener vinculación con las invenciones. |
| Fecha comunicación(desde \- hasta) | Fecha (Sin hora)Opcional | Fecha de comunicación de la invención.Fecha en la que la comunicación de la invención se recibe por parte de la OTRI a través del documento entregado en la misma. |
| Tipo de protección | SelectorTextoOpcional | Tipo de protección por el que filtrar las invenciones.Se cargará un listado de tipos de protección con los siguientes valores:* + Patente 	+ Modelo de utilidad 	+ Derecho de propiedad individual 	+ Diseño industrial 	+ Marca 	+ Secreto industrial 	+ Software 	+ Know\-how  Si bien este listado será configurable en [IU\-PII\-0050\-Gestión de Tipos de protección](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0040-gestion-de-tipos-de-proteccion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0040-gestion-de-tipos-de-proteccion/index.md"). |
| Título | TextoOpcional | Título de la invención por el que filtrar las invenciones. |
| Listado de resultados (invenciones) \- Al entrar en la pantalla, aparecerá ya el listado de todas las invenciones registradas cargado por defecto, ordenado por número de invención de manera descencente. | | |
| Nº de invención | Numérico entero | Identificador único de invención autogenerado en el SGI al dar de alta la invención y NO modificable que se usará como campo de enlace con los sistemas donde sea necesario tener vinculación con las invenciones. |
| Fecha comunicación | Fecha (Sin hora) | Fecha de comunicación de la invención. |
| Título | Texto | Título de la invención. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica los filtros introducidos sobre la lista de Invenciones mostrando los que cumplen las condiciones. |  |  |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Invenciones. |  |  |
| Seleccionar | Asigna la referencia de la invención a la entidad desde la que se ha solicitado su asignación. |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Cancelar | No se realiza ninguna acción, se cierra el formulario sin devolver ningún dato al formulario de invocación. |  |  |

### Interfaces y casos de uso relacionados





















### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso







