# Hércules : Piloto Murcia: Información general de la actualización de información



Este espacio contiene información de 3 proyectos Hércules: SGI, ED y MA, de los que se puede encontrar mas información en la página web del proyecto hercules.um.es.

Existe una combinación de páginas que son públicas y otras que son privadas dentro de cada proyecto. 

## **PROYECTO SGI**

La UTE adjudicataria de este contrato liderada por Treelogic, tiene un espacio propio en su confluence del proyecto al que el personal UMU tiene. acceso. Se realizan descargas periódicas de información que se importan en este espacio. 

En concreto, se debe importar dentro de la secciones de:

* Requisitos y análisis funcional
* Desarrollo

Cuando se quiere realizar una importación de datos, se traslada el contenido completo de este repositorio a un repositorio llamado "Hercules Temporal". Se realiza la importación completa y posteriormente se copia la información del temporal a este repositorio.

### Consideraciones para la implantación:

### Modelos de ejecución:

Los modelos de ejecución son una clasificación de convocatorias/proyectos/contratos y no debería ser algo que se cree nuevo de forma diaria. En el caso de Murcia, cuando se crea un modelo de ejecución nuevo hay que informar a los responsables correspondientes (funcionales y técnicos) de JUSTO para que ellos configuren unos parámetros. Creemos que es una tabla o un fichero de configuración donde se informa del código del modelo de ejecución SGI y una serie de campos económicos adicionales que JUSTO requiere para la creación de un nuevo proyecto. Seguramente Ginés sepa de que va el tema. [Ginés Martínez Hernández](https://confluence.um.es/confluence/display/~gines.martinez@ticarum.es "https://confluence.um.es/confluence/display/~gines.martinez@ticarum.es")   ¿puedes completar esta información, por favor?

Durante la implantación se ha decidido la creación de 6 modelos de ejecución (actualmente están en test y desarrollo) que son necesarios para gestionar convocatorias/proyectos/contratos de los tipos que existian en GINVES. 

En producción habrá que realizar una configuración similar. [Ginés Martínez Hernández](https://confluence.um.es/confluence/display/~gines.martinez@ticarum.es "https://confluence.um.es/confluence/display/~gines.martinez@ticarum.es")  a documentar lo que considere necesario. 

Los modelos "1 \- Subvención", "2\-Facturación" y "3\-Recursos propios", proceden del mapeo realizado en su día de los datos de Ginves. Los modelos 4 y 5 fueron identificados con posterioridad por la responsable funcional, probablemente en previsión de nuevas casuísticas que iban a darse. 



           | MODEJE |  | DESCRI |  | TIPFIN |  | DESCRI\_1 |  | TIPMODA |  | TIPPROYINVES |  | LLEVA\_SECTIVA |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 |  | SUBVENCION |  | 1 |  | AYUDAS PARA ACCIONES ESPECIALES / COMPLEMENTARIAS |  | 0010 |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 2 |  | AYUDAS EN GENERAL (OTROS TIPOS) |  | 0023 |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 4 |  | AYUDAS PARA ACCIONES INTEGRADAS |  | 0016 |  | SOLIBECAS |  | N |
| 1 |  | SUBVENCION |  | 5 |  | AYUDAS PARA ESTANCIAS DE EXTRANJEROS EN ESPAÑA |  | 0013 |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 6 |  | AYUDAS PARA ESTANCIAS EN CENTROS NACIONALES O EXTRANJEROS |  | 0014 |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 7 |  | AYUDAS PARA INFRAESTRUCTURA |  | 0011 |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 8 |  | AYUDAS PARA ORGANIZACION DE CONGRESOS |  | 0015 |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 10 |  | BECAS POSTDOCTORALES NORMALES |  | 0006 |  | SOLIBECAS |  | N |
| 1 |  | SUBVENCION |  | 11 |  | BECAS PREDOCTORALES NORMALES |  | 0001 |  | SOLIBECAS |  | N |
| 1 |  | SUBVENCION |  | 12 |  | BECAS UNION EUROPEA |  | 0003 |  | BECASUE |  | S |
| 1 |  | SUBVENCION |  | 18 |  | JUAN DE LA CIERVA |  | 0008 |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 19 |  | OTRAS AYUDAS INTERNACIONALES |  | 0210 |  | PROYECTOSUE |  | S |
| 1 |  | SUBVENCION |  | 20 |  | PROYECTOS (AYUDAS A LA INVESTIGACION) |  | 0020 |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 21 |  | PROYECTOS CONSOLIDER |  | 0026 |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 22 |  | PROYECTOS DE LA UNION EUROPEA |  | 0040 |  | PROYECTOSUE |  | S |
| 1 |  | SUBVENCION |  | 23 |  | PROYECTOS P4 |  | 0070 |  | PROYECTOSP4 |  | S |
| 1 |  | SUBVENCION |  | 24 |  | PROYECTOS PETRI |  | 0030 |  | PETRIS |  | S |
| 1 |  | SUBVENCION |  | 25 |  | PROYECTOS/AYUDAS DE TRANSFERENCIA |  | 00TR |  | SOLAYUDAS |  | S |
| 1 |  | SUBVENCION |  | 26 |  | RRHH INVESTIGADORES(AYUDA DIRECTA PARA UN INVESTIGADOR) |  | 0200 |  | SOLIBECAS |  | N |
| 1 |  | SUBVENCION |  | 27 |  | RRHH MOVILIDAD |  | 0201 |  | SOLIBECAS |  | N |
| 1 |  | SUBVENCION |  | 28 |  | TECNICOS DE APOYO A GRUPOS DE INVESTIGACIÓN |  | 0130 |  | RRHH |  | S |
| 2 |  | FACTURACION |  | 13 |  | CONTRATOS ART. 83 |  | 0120 |  | CONTRATOS |  | C |
| 2 |  | FACTURACION |  | 14 |  | CONTRATOS DE LICENCIA DE EXPLOTACIÓN DE PATENTES |  | 0121 |  | CONTPATENTES |  | C |
| 2 |  | FACTURACION |  | 15 |  | CONVENIOS |  | 0110 |  | CONVENIOS |  | C |
| 3 |  | RECURSOS PROPIOS |  | 2 |  | AYUDAS EN GENERAL (OTROS TIPOS) |  | 0023 |  | SOLAYUDAS |  | S |
| 3 |  | RECURSOS PROPIOS |  | 3 |  | AYUDAS PARA ACCIONES ESPECIALES DE INVESTIGACIÓN PREFERENTE |  | 0033 |  | ACCIONES |  | S |
| 3 |  | RECURSOS PROPIOS |  | 5 |  | AYUDAS PARA ESTANCIAS DE EXTRANJEROS EN ESPAÑA |  | 0013 |  | SOLAYUDAS |  | S |
| 3 |  | RECURSOS PROPIOS |  | 6 |  | AYUDAS PARA ESTANCIAS EN CENTROS NACIONALES O EXTRANJEROS |  | 0014 |  | SOLAYUDAS |  | S |
| 3 |  | RECURSOS PROPIOS |  | 7 |  | AYUDAS PARA INFRAESTRUCTURA |  | 0011 |  | SOLAYUDAS |  | S |
| 3 |  | RECURSOS PROPIOS |  | 8 |  | AYUDAS PARA ORGANIZACION DE CONGRESOS |  | 0015 |  | SOLAYUDAS |  | S |
| 3 |  | RECURSOS PROPIOS |  | 9 |  | BECAS INCORPORACIÓN A LA INVESTIGACIÓN |  | 0007 |  | BI\_SOLICITUDES |  | N |
| 3 |  | RECURSOS PROPIOS |  | 10 |  | BECAS POSTDOCTORALES NORMALES |  | 0006 |  | SOLIBECAS |  | N |
| 3 |  | RECURSOS PROPIOS |  | 11 |  | BECAS PREDOCTORALES NORMALES |  | 0001 |  | SOLIBECAS |  | N |
| 3 |  | RECURSOS PROPIOS |  | 16 |  | FINANCIACIONES DE LA OTRI |  | 0024 |  | FINANCIAOTRI |  | S |
| 3 |  | RECURSOS PROPIOS |  | 17 |  | GRUPO DE INVESTIGACIÓN O PROYECTO DE FONDOS PROPIOS |  | 0170 |  | GRINVEST |  | S |
| 3 |  | RECURSOS PROPIOS |  | 19 |  | OTRAS AYUDAS INTERNACIONALES |  | 0210 |  | SOLAYUDAS |  | S |
| 3 |  | RECURSOS PROPIOS |  | 20 |  | PROYECTOS (AYUDAS A LA INVESTIGACION) |  | 0020 |  | SOLAYUDAS |  | S |
| 3 |  | RECURSOS PROPIOS |  | 25 |  | PROYECTOS/AYUDAS DE TRANSFERENCIA |  | 00TR |  | SOLAYUDAS |  | S |
| 3 |  | RECURSOS PROPIOS |  | 26 |  | RRHH INVESTIGADORES(AYUDA DIRECTA PARA UN INVESTIGADOR) |  | 0200 |  | SOLIBECAS |  | N |
| 3 |  | RECURSOS PROPIOS |  | 27 |  | RRHH MOVILIDAD |  | 0201 |  | SOLIBECAS |  | N |
| 3 |  | RECURSOS PROPIOS |  | 28 |  | TECNICOS DE APOYO A GRUPOS DE INVESTIGACIÓN |  | 0130 |  | RRHH |  | S |
|  |  |  |  |  |  |  |  |  |  |  |  |  |

  


![](/attachments/598147225/598148696.png)

El modelo de ejecución 6 \- Proyectos externos, fue creado tras incorporar la funcionalidad de Proyectos externos en el SGI. Es necesario para poder discriminar este tipo particular de proyectos que proceden en primera instancia de la creación de los mismos en CVN y/o de una solicitud de autorización de participación previa. Debe de existir este modelo de ejecución en el SGI. Con mucha probabilidad (pero esto es una decisión de las responsables funcionales correspondientes) estos proyectos no generarán un proyecto JUSTO (pues al ser proyectos externos no van a ser gestionados por UMU y no generarán actividad económica). Pero el SGI no lo limita, es decir, el SGI da la posibilidad de que la persona usuaria pueda vincular este proyecto sGI a un proyecto Justo. Se parte de la base, porque así fueron las directrices establecidas en su día, que las responsables funcionales que gestionan los datos en el SGI sabrán que no se debe crear un proyecto Justo para los proyectos asociados a este modelo de ejecución, y es preferible esto a limitar acciones.

No obstante, como decíamos previamente, cualquier modelo de ejecución que se cree en el SGI y que suponga que los proyectos que de él deriven vayan a tener un proyecto Justo asociado, deben de ser trasladados previamente a esa tabla de configuración requerida en Justo en términos de NUMERO de proyecto \+ TABLA \+ TIPO.

[Jorge Carrillo Lova](https://confluence.um.es/confluence/display/~jorgecl@um.es "https://confluence.um.es/confluence/display/~jorgecl@um.es"), por favor, revisa esta documentación y mejora lo que necesites.

  


Servicios implementados:

AREAS TEMÁTICAS

La decisión tomada en cuanto a la equivalencia de las áreas temáticas con las que se clasifican las convocatorias y la clasificación de la taxonomía Hércules, para poder utilizar la misma en la recomendación de convocatorias de RPA, vamos a hacer una equivalente a mano, que se mecanizará en ED y que se quedará fija (o lo que es igual, con mantenimiento manual). 

LA documentación para hacer la equivalencia de forma manual se encuentra en: Esteban a proporcionar

En el futuro se tendrá que habilitar un mecanismo para que eso se actualice de forma automática.

## **Proyectos ED y MA**

La empresa adjudicataria (Gnoss) se hace cargo de la actualización de la información del espacio.

Se han creado usuarios específicos con capacidades de edición que se han compartido con las empresas responsables del mantenimiento de los proyectos ED y MA que son:

* Usuario genérico para Hércules
* Usuario genérico para Hércules (GNOOS)
* Usuario genérico para Hércules (DEUSTO)
* Usuario genérico para Hércules (LAHUYAR)

  





