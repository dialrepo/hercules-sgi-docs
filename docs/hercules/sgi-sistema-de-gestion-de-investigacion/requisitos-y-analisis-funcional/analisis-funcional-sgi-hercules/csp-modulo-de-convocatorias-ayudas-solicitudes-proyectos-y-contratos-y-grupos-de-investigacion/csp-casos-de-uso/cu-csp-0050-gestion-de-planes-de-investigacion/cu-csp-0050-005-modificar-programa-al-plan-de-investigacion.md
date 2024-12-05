# Hércules : CU\-CSP\-0050\-005 \- Modificar programa al plan de investigación



### Descripción

Se modifican los datos de  un programa, subprograma, modalidad o submodalidad al plan de investigación. El plan de investigación tendrá una estructura jerárquica de árbol. Los nodos de primer nivel (bajo un elemento raíz, plan) serán los programas. Las ramas del árbol (programas) podrán tener diferentes profundidades. No existirá límite de anidamiento. No se distinguirá el nombre en función del nivel, por lo que genéricamente lo que hará este caso de uso será Añadir un ítem al árbol del plan de investigación.

### Actores

#### Actor principal

ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor

#### Personal involucrado e intereses

ACT\- CSP\-001\-Investigador que requiere que las convocatorias y proyectos estén categorizados de acuerdo a los programas bajo los que se enmarcan.

### Precondiciones

El usuario ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor se autentica a través del usuario de dominio corporativo.

A través del servicio de integración con el directorio activo y de la información del usuario almacenada en el propio SGI, se obtiene su rol y las unidades de gestión sobre las que tiene disponible el rol. El usuario está autorizado sobre la funcionalidades asociadas a esta gestión.

### Garantías de éxito (postcondiciones)

El programa, subprograma, modalidad, submodalid, etc., en líneas generales, el ítem del árbol del plan de investigación, ha sido modificado de acuerdo a los datos introducidos.

### Escenario principal (flujo básico)

1. El usuario accede al apartado de Programas de un Plan
2. El usuario selecciona un ítem (de cualquiera de los niveles del árbol: programa, subprograma, modalidad, submodalidad, etc)
3. El usuario modifica el Nombre del ítem indicando un valor que aún no estuviera presente en ninguno de los ítems activos del árbol del plan (independientemente de su nivel ). El árbol del plan serán todos aquellos elementos que compartan nodo raíz (elemento del árbol con padre\=null)
4. El usuario introduce o modifica la Descripción del programa
5. El usuario pulsa Guardar
6. Se muestra un mensaje de acción positiva
7. Se  permanece en la pantalla de Programas del Plan de investigación para que el usuario pueda seguir gestionando elementos al árbol

### Extensiones (flujo alternativo) \- Modificación de ítem \- Error de unicidad

1. El usuario ha introducido un nombre que ya existían entre los ítems activos del árbol del Plan (independientemente de su nivel). El árbol del plan serán todos aquellos elementos que compartan nodo raíz (elemento del árbol con padre\=null)
2. El usuario introduce o modifica la descripción del programa
3. El usuario pulsa Guardar
4. Se muestra un error al usuario
5. El usuario introduce un nuevo nombre para el ítem
6. El usuario pulsa Guardar
7. El usuario es informado del resultado positivo de la acción.
8. Se permanece en el apartado de Programas del Plan de investigación para que el usuario pueda seguir gestionando elementos al árbol

### Requisitos especiales

N/A

### Lista de tecnología y variaciones de datos

N/A

  
  
  





