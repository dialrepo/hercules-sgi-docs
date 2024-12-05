# Hércules : CU\-ETI\-0060\-014 \- Memorias \- Edición formulario seguimiento final



### Descripción

Formulario para rellenar el formulario de seguimiento final

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

ACT\-ETI\-006\-Responsable memoria

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de menú Mis peticiones de evaluación y seleccionado una petición del listado para su edición.

Sólo se muestran las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de la memoria de la petición de evaluación.

Únicamente se mostrará el formulario de Seguimiento final en modo edición si la memoria esta en estado "Fin evaluación seguimiento anual" o "Completada seguimiento final" o "En aclaración seguimiento final"y ha pasado 1 año desde la fecha de fin del proyecto. En otro caso se mostrará en modo consulta

  


### Garantías de éxito (postcondiciones)

Se guardan las respuestas del formulario y se cambia el estado de la memoria a "Completada seguimiento final"

  


### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de la memoria de la petición de evaluación.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Memorias.
5. El usuario selecciona del listado una memoria en estado "Fin evaluación seguimiento anual"
6. Ha pasado mas de un año desde la fecha de fin del proyecto.
7. Al usuario se le presenta la pantalla de Datos generales de la memoria.
8. El usuario selecciona la opción de menú Seguimiento final.
9. El usuario rellena el formulario.
10. El usuario selecciona la acción Guardar Memoria.
11. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
12. El usuario es informado del resultado positivo de la acción.
13. Se mantienen en misma pantalla de edición.
14. Se cambia el estado de la memoria a "Completada seguimiento final".




