# Hércules : Estudio Grupos de investigación



Los grupos de investigación que se enviarán al CVN serán todos los grupos creados en el SGI

  


A continuación se muestran todos los datos del CVN y su parseo con los datos del SGI:



    | Campo | Descripción | Código Fecyt | Campo en el SGI | Entidad SGI |
| --- | --- | --- | --- | --- |
| Objeto del grupo | Metas que el grupo de investigación se propone alcanzar. | 050\.010\.000\.010 | \- | \- |
| Nombre del grupo | Nombre del grupo de investigación en caso de que lo posea. | 050\.010\.000\.020 | nombre | Grupo |
| Código normalizado | Código normalizado del grupo de investigación en caso de que lo posea. | 050\.010\.000\.030 | codigo | Grupo |
| País de radicación | País en el que se localiza el grupo de investigación o en el que desarrolla su actividad el investigador responsable. | 050\.010\.000\.040 | \- | \- |
| C. Autón./Reg. de radicación | Comunidad Autónoma /Región en la que se localiza el grupo de investigación o en la que desarrolla su actividad el investigador responsable. | 050\.010\.000\.050 | \- | \- |
| Ciudad de radicación | Ciudad en la que se localiza el grupo de investigación o en la que desarrolla su actividad el investigador responsable | 050\.010\.000\.070 | \- | \- |
| Nombre del investigador/a principal (IP) | Nombre del investigador responsable/principal del grupo de investigación, incluso si coincide con el titular del CV. | 050\.010\.000\.080 | personaRef con un rol que tenga el flag de "principal" a true y el "orden" igual a "PRIMARIO" | GrupoEquipo |
| Entidad de afiliación | Nombre oficial de la universidad, instituto, empresa a la que pertenece el grupo de investigación | 050\.010\.000\.090 | \- | \- |
| Tipo de entidad | Tipo de entidad a la que pertenece el grupo de investigación. | 050\.010\.000\.110 | \- | \- |
| Tipo de entidad, otros | Tipo de entidad a la que pertenece el grupo de investigación. | 050\.010\.000\.120 | \- | \- |
| Nº de componentes grupo | Número total de personas que forman el grupo de investigación. | 050\.010\.000\.130 | número de personas distintas en el grupo. Una persona puede estar en el mismo grupo mas de una vez en rangos distintos de fechas | GrupoEquipo |
| Fecha de inicio | Fecha del comienzo de la participación del titular del CVN en el grupo de investigación. | 050\.010\.000\.140 | fechaInicio | Grupo |
| Duración | Tiempo de la duración del proyecto expresado en años , meses y días | 050\.010\.000\.150 | fechaFin | Grupo |
| Clase de colaboración | Seleccione el tipo de colaboración en el grupo de investigación. | 050\.010\.000\.160 | \- | \- |
| Nº de tesis dirigidas | Número de tesis que han sido dirigidas por el grupo de investigación en el caso de que se conozcan. | 050\.010\.000\.170 | \- | \- |
| Nº de posdoc. dirigidos | Número de postdoc. que han sido dirigidos por el grupo de investigación en el caso de que se conozcan. | 050\.010\.000\.180 | \- | \- |
| Resultados, otros | Otros resultados que se quieran hacer constar obtenidos de la participación en grupos de investigación, desarrollo e innovación. | 050\.010\.000\.190 | \- | \- |
| Resultados relevantes | Describa los resultados más relevantes obtenidos por el grupo de investigación en texto libre con un máximo de 100 palabras. | 050\.010\.000\.200 | \- | \- |
| Palabras clave | Sintetice, mediante el uso de palabras clave, el texto libre anterior. | 050\.010\.000\.210 | palabraClave | GrupoPalabraClave |

### Servicios API a utilizar:

Se tendrán que realizar las siguientes llamadas:

* Consultar el API de **/grupos/modificados\-ids** para recuperar los identificadores de grupos de investigación que han sufrido cambios en los datos generales (tabla Grupo), en el equipo (tabla GrupoEquipo) o en las palabras claves (tabla GrupoPalabraClave)
* Consultar el API de **/grupos/{id}** para recuperar el detalle de los datos generales del grupo
* Consultar el API de **/grupos/{id}/grupoequipos** para recuperar el listado de investigadores del grupo
* Consultar el API de **/grupos/{id}/grupopalabrasclave** para recuperar el listado de palabras clave del grupo

  





