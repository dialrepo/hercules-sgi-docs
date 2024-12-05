# Hércules : IU\-CSP\-0050\-004 Añadir tipo de fase al modelo de ejecución



## Formulario Añadir tipo de fase al modelo de ejecución

Formulario para añadir un tipo de fase a un modelo de ejecución. Podrá accederse a este formulario desde la creación o modificación de un modelo de ejecución.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Añadir tipo de fase al modelo de ejecución | | | |
| Tipo de fase | | SelectorTexto cortoObligatorio | El desplegable cargará los tipos de fase que cumplan las siguiente condiciones:* Que figuren en la tabla "TipoFase" con el campo Activo \= true y * Que no figuren en la tabla "ModeloTipoFase" para el modelo en curso o que estando ya en "ModeloTipoFase" tengan el campo "activo" de "modelo tipo fase"a "false" o que estando en la tabla "ModeloTipoFase" tengan el campo "activo" de "modelo tipo fase" a "true" y que solo tengan marcado uno de los flags "Convocatorias" o "Proyectos" a "true" |
| Disponible en | Convocatorias | CheckOpcional | Indica si el tipo de fase estará disponible para las convocatorias que se creen asociadas al modelo. Se corresponde con el campo "Convocatorias" de la relación "ModeloTipoFase". |
| Proyectos | CheckOpcional | Indica si el tipo de fase estará disponible para los proyectos que se creen asociados al modelo. Se corresponde con el campo "Proyectos" de la relación ModeloTipoFase. |

  


  


  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea o modifica un registro sobre la relación "ModeloTipoFase" | Almacena la relación entre el tipo de fase seleccionado y el modelo de ejecución que está siendo creado/modificado en la tabla "Modelo Tipo Fase".El registro se creará con el campo "activo" a "true" con las excepciones que se indican a continuación:* Se podrá marcar uno o los dos checks "Convocatorias" y "Proyectos" tomando, de acuerdo a ello, valor los campos "Convocatorias" y "Proyectos" de la relación "Modelo Tipo Fase". Se comprobará que alguno de los dos check esté marcado. En caso de no estarlo alguno no ser permitirá guardar la relación. * En caso que la relación ya existiese con el campo "activo" \= "false" se volverá a activar, poniendo el campo "activo" a "true", y adecuando los campos "Convocatorias" y "Proyectos" a lo indicado en los checks. * En caso que la relación ya existiese con el campo "activo" a "true" se actualizarán los campos "convocatoria" y "proyecto" de acuerdo al valor que tomen los checks "Convocatorias" y "Proyectos" | CSP\-ME\-ECSP\-ME\-E\_UOCSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | Vuelve a la pestaña de Tipos de fase del modelo de ejecución |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




