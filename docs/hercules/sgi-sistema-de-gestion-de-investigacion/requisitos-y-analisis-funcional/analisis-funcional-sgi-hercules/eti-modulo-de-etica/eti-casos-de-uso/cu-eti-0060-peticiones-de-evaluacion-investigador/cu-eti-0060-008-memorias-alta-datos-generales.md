# Hércules : CU\-ETI\-0060\-008 \- Memorias \- Alta datos generales



### Descripción

Formulario para añadir memorias a la petición de evaluación a evaluar por la comisión de ética.

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Mis peticiones de evaluación y seleccionado una petición del listado para su edición.

Sólo se muestran las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema.

La petición de evaluación no tiene memorias creadas.

### Garantías de éxito (postcondiciones)

La memoria es dada de alta en el sistema en estado "En elaboración".

Una vez que se da al botón Guardar, se crea la memoria en estado  "En elaboración"  en el sistema. Se genera la referencia de la memoria de forma automática con el siguiente formato: Mxx/YYYY/secuencia, donde xx sera 10, 20 o 30, YYYY será el año, secuencia será un código secuencial que empieza en 000 cada año y comité y va hasta 999 si es de tipo "Nueva", si es de tipo "Ratificación" lleva una R al final (Mxx/YYYY/secuenciaR), y si es de tipo "Modificación" se copia la referencia de la memoria original y se pone al final MRX donde X es un secuencial de las modificaciones que haya tenido la memoria.

Si se crea una memoria de tipo Modificación se hace una copia de la memoria (de nueva) tanto del formulario como de los documentos subidos de tipo memoria. Se debe de mostrar un desplegable con las memorias de ese comité.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema .
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Memorias.
5. El usuario selecciona Añadir nueva memoria.
6. El usuario en la pantalla de Nueva memoria en Datos generales introduce el comité, el tipo y el título.
7. El usuario selecciona la acción Guardar.
8. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
9. El usuario es informado del resultado positivo de la acción.
10. Se presenta la edición de la memoria.

### Extensiones (flujos alternativos) \- Ir al formulario sin guardar los datos generales de la memoria

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema .
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Memorias.
5. El usuario selecciona Añadir nueva memoria.
6. El usuario en la pantalla de Nueva memoria en Datos generales introduce el comité, el tipo y el título.
7. El usuario va a la opción del menú Formulario
8. Se informa al usuario que no puede ir a dicha funcionalidad sin guardar antes la entidad principal.
9. El usuario va a la opción del menú de Datos generales
10. El usuario selecciona la acción Guardar.
11. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
12. Se crea la memoria en estado "En elaboración"
13. El usuario es informado del resultado positivo de la acción.
14. Se presenta la edición de la memoria.
15. El usuario puede ir a la opción del menú Formulario.




