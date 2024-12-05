# Hércules : IU\-ETI\-0060\-010 Memorias \- Edición formulario



## Formulario de Memorias \- Edición formulario

Solo se puede modificar el formulario si el estado de la memoria es "En elaboración" o  "Completada" o "Favorable Pendiente de Modificaciones Mínimas" o "Pendiente de correcciones"   


Se mostrará el formulario dependiendo del tipo de comité y tipo de memoria que se haya elegido en la creación de la memoria y en el proyecto:

* Los campos de una memoria de tipo "Nueva" y "Modificación" para el CEISH  se explican en el siguiente enlace [Formulario M10](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/formulario-m10.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/formulario-m10.md")
* Los campos de una memoria de tipo "Nueva" y "Modificación" para el CEEA  se explican en el siguiente enlace [Formulario M20](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/formulario-m20.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/formulario-m20.md")
* Los campos de una memoria de tipo "Nueva" y "Modificación"  para el CEIAB  se explican en el siguiente enlace [Formulario M30](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/formulario-m30.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/formulario-m30.md")
* Las memoria de tipo "Ratificación" para el CEISH únicamente se rellena datos generales, equipo investigador y del formulario únicamente del bloque V si necesita a portar documentación adicional y las aclaraciones al comité (el resto del formulario estará en modo consulta)

Cuando el formulario esté completo, se ha llegado al bloque V, se cambia el estado de la memoria a "Completada".

Todos los campos activos del formulario son obligatorios.

Cuando el  estado de la memoria es "Favorable Pendiente de Modificaciones Mínimas" o "Pendiente de correcciones"  se deben de mostrar los comentarios asociados a los apartados correspondientes y únicamente dejar modificar dichos apartados. Los comentarios serán los creados en la evaluación última de la memoria de tipo GESTOR.

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Guardará los cambios realizados en el formulario.Al realizar esta acción de "Guardar" puede ser necesario programar una tarea en el modulo de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") para el envío de un comunicado desde el de comunicados [SGI \- COM](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-com/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-com/index.md") según se describe en el apartado [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md"). |  | ETI\-*MEM\-INV*\-ER |

### Comunicados

Al realizar la acción de "Guardar" este formulario, si se ha marcado "Sí" a la cuestión de si el proyecto requiere evaluación retrospectiva, se utilizará la Fecha de la evaluación retrospectiva para crear la entrada correspondiente en el módulo de tareas programadas y de comunicados para avisar a los investigadores cuando se acerque dicha fecha y no hayan presentado aún el informe de retrospectiva.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Informe de retrospectiva de memoria tipo CEEA pendiente**dentro de [ETI \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/ETI+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/ETI+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




