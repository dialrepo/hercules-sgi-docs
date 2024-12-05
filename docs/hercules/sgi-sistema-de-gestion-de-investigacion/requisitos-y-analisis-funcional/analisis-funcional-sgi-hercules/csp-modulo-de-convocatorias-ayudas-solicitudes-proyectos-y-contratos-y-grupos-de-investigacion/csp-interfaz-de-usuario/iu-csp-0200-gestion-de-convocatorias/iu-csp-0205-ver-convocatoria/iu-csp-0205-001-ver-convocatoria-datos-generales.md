# Hércules : IU\-CSP\-0205\-001 \- Ver convocatoria \- Datos generales



## Formulario Ver convocatoria \- Datos generales

Formulario para ver los Datos generales de una convocatoria.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Estado | Texto corto | Puede mostrar en modo consulta uno de estos valores:* Borrador. Aún no se han completado todos sus campos obligatorios. * Registrada. Cuando la convocatoria figura en estado "registrada" aplicará la visibilidad de las misma por parte de los ACT\- CSP\-001\-Investigador de acuerdo a lo indicado en el apartado "Configuración Solicitudes".  Se muestra en modo consulta. |
| Título | Texto (1000 caracteres) | Título de la convocatoria. Modo consulta. El campo será un alfanumérico de 1000 caracteres.Campo "título" de la tabla "convocatoria".Se muestra en modo consulta. |
| Tipo solicitud SGI | Texto corto | Tipo de solicitud asociado a la convocatoria. Modo consulta.Se corresponde con el campo "formulario solicitud" de la tabla "convocatoria".Se muestra en modo consulta. |
| Unidad de gestión | Texto corto | Se mostrará la unidad u oficina (OTRI, OPE, UGI, etc.) que realiza la gestión de la convocatoria.Se muestra en modo consulta. |
| Modelo de ejecución | Texto corto | Modelo de ejecución al que se ha vinculado la convocatoria. Modo consulta. Puede consultarse [CSP \- Modelo de ejecución](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092")Se muestra en modo consulta. |
| Finalidad | Texto corto | Finalidad que se ha asignado a la convocatoria. Ejemplos de valores: proyectos i\+d, contratación rrhh, servicios técnicos, asesorías, movilidades, constitución grupos, infraestructuras, royalties, etc. Puede consultarse [CSP \- Modelo de ejecución](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092") e [IU\-CSP\-0020 \- Gestión de tipos de finalidad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821827 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87821827")Se muestra en modo consulta. |
| Identificación | Texto corto | Código identificador de la convocatoria. Se muestra en modo consulta.Campo "código" de la tabla convocatoria |
| Entidad gestora | Texto corto | Entidad u organismo que actúa como gestor de la convocatoria, se mostrará su nombre que se obtendrá a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md").Se muestra en modo consulta. |
| Fecha publicación | Fecha | Fecha de publicación.Se muestra en modo consulta.Se corresponde con el campo "fecha publicación" de la tabla "convocatoria". |
| Fecha provisional | Fecha | Fecha de concesión.Se muestra en modo consulta.Se corresponde con el campo "fecha provisional" de la tabla "convocatoria". |
| Fecha concesión | Fecha | Fecha de concesión.Se muestra en modo consulta.Se corresponde con el campo "fecha concesión" de la tabla "convocatoria". |
| Duración de la actividad resultante (meses) | Numérico entero | Valor numérico, expresado en meses, que indicará la duración prevista de la actividad de investigación (proyecto, contrato) resultante de la convocatoria.Se muestra en modo consulta.Se corresponde con el campo "duración" de la tabla "convocatoria". |
| Convocatoria de excelencia | Boolean | Indica si la convocatoria tiene la categoría de convocatoria de excelencia.Se muestra en modo consulta.Se corresponde con el campo "excelencia" de la tabla "convocatoria". |
| Ámbito geográfico | Texto corto | Nombre recuperado de la tabla "Tipo ámbito geográfico" al que se hubiera vinculado la convocatoria.Se muestra en modo consulta. |
| Régimen de concurrencia | Texto corto | Mostrará en modo consulta el nombre del tipo de régimen concurrencia (tabla "tipo régimen concurrencia") al que se hubiera asociado la convocatoria. Al ser un campo opcional, su valor también puede ser vacío.Se muestra en modo consulta. |
| Clasificación producción científica/CVN | Texto corto | Nombre recuperado del enumerado "Apartado CVN" al que se ha vinculado la convocatoria a través del campo "apartado cvn". Modo consultaSe muestra en modo consulta. |
| Objeto o descripción general de la convocatoria | Texto largo | Objetivos de la convocatoria. Se muestra en modo consulta. |
| Observaciones | Texto largo | Observaciones de carácter interno de la convocatoria.Se muestra en modo consulta. |
| Áreas temáticas: Áreas temáticas a las que se limita la convocatoria. Se obtiene de la tabla "convocatoria área temática".  Es opcional, la convocatoria podría no tener establecidas áreas temáticas. Se muestra en modo consulta sin ningún tipo de acción sobre él. | | |
| Listado de áreas | Texto cortoOpcional | Nombre del listado de áreas temáticas. Se corresponde con el campo "nombre" del elemento raíz del árbol (aquel cuyo campo "padre" toma valor "null") de áreas temáticas (tabla "área temática") relacionadas a la convocatoria (tabla "convocatoria área temática"). |
| Áreas temáticas | Texto largoOpcional | Se listan, separados por el carácter coma, todos los elementos que hayan sido seleccionados del árbol de áreas temáticas. Si el texto a componer excede el espacio reservado para el campo se mostrará la cadena "..."  y el valor completo con todos los elementos se mostrará con el componente de tooltip.Se corresponde con "nombre" de la tabla "área temática" para las áreas temáticas de la convocatoria (tabla "convocatoria área temática"). |
| Opción de menú Palabras clave. Se muestra en modo consulta. | | |
| Palabras clave | Opción de menú | Las palabras clave formarán parte del tesauro de palabras claves, gestionadas de forma común en el SGI.La entidad Solicitud dispondrá de una opción de menú "Palabras clave", disponible desde todas las pantallas de creación y modificación de la misma, que permitirá gestionar y asignar/desasignar palabras claves como se define en [GEN \- Palabras Clave \- Interfaz de Usuario](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/index.md") |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Cancelar | Retorna al listado de Convocatorias. |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




