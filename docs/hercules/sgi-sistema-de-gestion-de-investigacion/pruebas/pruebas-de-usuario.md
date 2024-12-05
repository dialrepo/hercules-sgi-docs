# Hércules : Pruebas de usuario



### Entornos de pruebas



| Entorno | URL | Datos de acceso |
| --- | --- | --- |
| Entorno Test UM | [https://salastest.um.es/](https://salastest.um.es/ "https://salastest.um.es/") | [CSP \- Usuarios entornos de despliegue](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/csp-usuarios-entornos-de-despliegue.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/csp-usuarios-entornos-de-despliegue.md") [ETI \- Usuarios entornos de despliegue](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/eti-usuarios-entornos-de-despliegue.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/eti-usuarios-entornos-de-despliegue.md")[PII \- Usuarios entornos de despliegue](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/pii-usuarios-entornos-de-despliegue.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/pii-usuarios-entornos-de-despliegue.md")[PRC \- Usuarios entornos de despliegue](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/prc-usuarios-entornos-de-despliegue.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/prc-usuarios-entornos-de-despliegue.md") |
| Entorno Desa UM | [http://salasdesa.um.es/](http://salasdesa.um.es/ "http://salasdesa.um.es/") | [CSP \- Usuarios entornos de despliegue](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/csp-usuarios-entornos-de-despliegue.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/csp-usuarios-entornos-de-despliegue.md") [ETI \- Usuarios entornos de despliegue](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/eti-usuarios-entornos-de-despliegue.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/eti-usuarios-entornos-de-despliegue.md")[PII \- Usuarios entornos de despliegue](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/pii-usuarios-entornos-de-despliegue.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/pii-usuarios-entornos-de-despliegue.md")[PRC \- Usuarios entornos de despliegue](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/prc-usuarios-entornos-de-despliegue.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/usuarios-entornos-de-despliegue/prc-usuarios-entornos-de-despliegue.md") |

### Reporte de incidencias

Las incidencias **se crearán en el Jira de Treelogic desde la Universidad por parte de los usuarios habilitados**, independientemente de quién sea la persona que haya detectado el caso.

URL: [https://jira.treelogic.com/secure/RapidBoard.jspa?rapidView\=435\&view\=planning\&issueLimit\=100](https://jira.treelogic.com/secure/RapidBoard.jspa?rapidView=435&view=planning&issueLimit=100 "https://jira.treelogic.com/secure/RapidBoard.jspa?rapidView=435&view=planning&issueLimit=100")

Usuarios habilitados:

* **Gestión de proyecto**:
	+ hercules.reyes.hernandez
* **Ática**:
	+ hercules.jorge.carrillo
* **Ética**:
	+ hercules.um.lucia.periago
	+ hercules.um.jose.palma

Para una correcta gestión de los casos, **solo deberán crearse nuevas incidencias bajo las siguientes premisas**:

1. Se tiene completamente claro que se trata de un error de la aplicación y **no de una nueva funcionalidad o de una mejora que no responde a un error**.
2. No se trata de un caso ya identificado previamente en otra incidencia.
3. Se dispone de toda la información requerida para dar de alta la incidencia, esto es:
	1. Entorno donde se realizó la prueba
	2. Módulo afectado
	3. Usuario con el que se realizó la prueba
	4. Pasos para reproducir exactamente el fallo por parte del propio usuario o de cualquier otra persona (esto acotaría que el fallo fuese puntual o irreproducible). Sería recomendable repetir la misma prueba por parte del usuario antes de dar la incidencia de alta para confirmar los pasos exactos seguidos.
	5. Resultado que el usuario espera obtener
	6. Resultado obtenido
	7. Opcionalmente, captura o capturas de pantalla donde se vea el fallo reportado. Si son varias, nombrarlas de un modo significativo de qué representa cada una.

El **resumen** de la incidencia ha de ser lo suficientemente ilustrativo del caso, evitando cosas como "Error general", "Fallo en proyectos", "Falla el botón añadir" o similares y usando en su lugar la filosofía del ejemplo a continuación.

![](/attachments/597853086/597858193.png)

En el proceso de gestión de las incidencias tenemos los siguientes estados:

* **Abierta**: estado por defecto cuando **UM** crea la incidencia. **Se trabajará a través de comentarios y menciones a usuarios** pero sin cambiar nunca este estado hasta que la incidencia se dé por Resuelta, con uno de los valores posibles de resolución (descritos más adelante), o bien se confirme como incidencia y se acuerde planificar en un sprint su corrección.
* **En progreso**: estado que indica que se ha confirmado que la incidencia es efectivamente un defecto y que se está trabajando actualmente en su resolución por parte de Treelogic. A este estado únicamente pasará la incidencia **Treelogic**.
* **Resuelta**: estado al que se pasará una incidencia cuando se haya determinado qué solución aplicar. A este estado, según el caso, podrá pasar la incidencia tanto **Treelogic** como **UM**.
* **Cerrada**: estado al que se pasará una incidencia cuando ya se encuentra totalmente resuelta. En el caso de incidencias que sean defectos confirmados, únicamente pasará a este estado Treelogic. En cualquier otro caso, será la UM quien debe validar la resolución y pasar la incidencia a cerrada o bien reabrirla porque se quiera incidir aún en algún aspecto de la misma.

Los posibles valores de resolución a manejar son los siguientes:

Nota

Se contemplan aquí únicamente aquellos valores de Resolución que afectan a la gestión compartida de incidencias con UM, no a todos los casos posibles que se pueden usar internamente en Treelogic en la gestión de las tareas en sus sprints de desarrollo.

* **Solucionada:** no hay más trabajo que hacer respecto a esta incidencia por parte de Treelogic. O bien no hay nada pendiente o bien se ha escalado a otro responsable fuera de Treelogic.
* **No reproducible:** con los datos proporcionados no es posible reproducir la incidencia.
* **Duplicado:** la incidencia ya se había reportado anteriormente. Se relacionará dicha incidencia con esta antes de resolverla.
* **Rechazado:**  se ha dado de alta un error que no es tal y por tanto, se "Rechaza" como error. Puede ocurrir que la solicitud de desarrollarlo sea un nuevo requisito funcional o una mejora, en estos casos, en lugar de resolver la incidencia, se cambiará su tipología a "Nueva función" o "Mejora" respectivamente y se dejará abierta.
* **No se hará:** se trata efectivamente de un fallo pero se acuerda no abordarlo por la razón que sea (impacto muy leve para el usuario, complejidad, otras prioridades y se ve mejor dejarlo para fases posteriores, ...).

  





