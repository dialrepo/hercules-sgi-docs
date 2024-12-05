# Hércules : ETICA. Desactivación formularios M20 y M30



Para desactivar estos formularios se tiene que lanzar la siguiente sentencia:

INSERT INTO ETI\_SGI.FORMULARIO(id, nombre, descripcion) VALUES (1003, 'M30 desactivado', 'M30 desactivado');

UPDATE bloque SET FORMULARIO\_ID \= 10003 WHERE FORMULARIO\_ID \=3;

  


y eliminar (si se puede porque no hay registros) los valores de la tabla   
"comit" que correspondan a los formularios que se quieren eliminra.

  


Lo que viene con el despliegue origina es:  
   (ID, CREATED\_BY, CREATION\_DATE, LAST\_MODIFIED\_BY, LAST\_MODIFIED\_DATE,   
    ACTIVO, COMITE, FORMULARIO\_ID, NOMBRE\_INVESTIGACION, GENERO)  
 Values  
   (1, NULL, NULL, NULL, NULL,   
    1, 'CEI', 1, 'Comisión de Ética de Investigación', 'F');  
Insert into ETI\_SGI.COMITE  
   (ID, CREATED\_BY, CREATION\_DATE, LAST\_MODIFIED\_BY, LAST\_MODIFIED\_DATE,   
    ACTIVO, COMITE, FORMULARIO\_ID, NOMBRE\_INVESTIGACION, GENERO)  
 Values  
   (2, NULL, NULL, NULL, NULL,   
    1, 'CEEA', 2, 'Comité de Ética de Experimentación Animal', 'M');  
Insert into ETI\_SGI.COMITE  
   (ID, CREATED\_BY, CREATION\_DATE, LAST\_MODIFIED\_BY, LAST\_MODIFIED\_DATE,   
    ACTIVO, COMITE, FORMULARIO\_ID, NOMBRE\_INVESTIGACION, GENERO)  
 Values  
   (3, NULL, NULL, NULL, NULL,   
    1, 'CBE', 3, 'Comité de Ética de Bioseguridad en Experimentación', 'M');  
COMMIT;

  





