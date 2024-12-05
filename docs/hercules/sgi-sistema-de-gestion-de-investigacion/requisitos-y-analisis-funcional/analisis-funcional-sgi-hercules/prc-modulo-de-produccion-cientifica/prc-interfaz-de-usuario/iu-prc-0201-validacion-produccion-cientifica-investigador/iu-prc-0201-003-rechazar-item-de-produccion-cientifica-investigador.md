# Hércules : IU\-PRC\-0201\-003 \- Rechazar item de producción científica \- Investigador



## Formulario Rechazar item de producción científica \- Investigador

Formulario que se muestra al dar al botón de "Rechazar".

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Introduce el motivo del rechazo | Texto largoObligatorio | Motivo del rechazo |

  


### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aceptar | Se rechaza el item y se vuelve a la pantalla del consulta del item con el item en estado Rechazado e  informando de que el item se ha cambiado de estado correctamente | Se comprobará que el usuario logueado es el "Investigador principal" o la "Persona autorizada" de uno de los Grupos de investigación referenciados en la tabla "AutorGrupo" del item, es decir, es uno de los IP (o persona autorizada por este) del grupo de investigación que tiene que validar o rechazar el item. En caso contrario no tendrá acceso a  la consulta del item.Si se pulsa el botón de "Aceptar" se hará un cambio de estado tanto a nivel de la tabla "ProduccionCientifica" como a nivel de la tabla "AutorGrupo".Se irá a la tabla "AutorGrupo" y para aquellos autores que corresponden al grupo del cual la persona logueada es el "Investigador Principal" (tiene un rol con el flag "principal" a true) o la "Persona autorizada" (mirar campo "grupoRef") se les cambiará el estado a "Rechazado".Se creará un nuevo registro de la tabla "EstadoProduccionCientifica" con el estado a "Rechazado", con una fecha igual a la actual y con motivo el introducido en el formulario, y se actualizará el campo "estado" del item en la tabla "ProduccionCientifica" con el nuevo estado creado. | PRC\-VAL\-INV\-ER |
| Cancelar | Retorna a la pantalla del consulta del item sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




