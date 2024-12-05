# Hércules : CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo



### Descripción

  


  


### Actores

#### Actor principal

ACT\-CSP\-003\-Gestor de las unidades de gestión UGI, OTRI u OPE.

ACP\-CSP\-004\-Administrador de las unidades de gestión UGI, OTRI u OPE.

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que requiere que sus proyectos estén creados para su correcto seguimiento.

### Precondiciones

ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador crean un proyecto vinculado a una convocatoria y/o una solicitud que tengan cumplimentado alguno de los siguientes apartados:

* elegibilidad (convocatoria)
* periodos de seguimiento científico (convocatoria)
* periodos de justificación económica (convocatoria)
* equipo (solicitud)
* responsable económico (solicitud)
* socios (solicitud)
* periodos de justificación de los socios (solicitud)
* periodos de pago a los socios (solicitud)
* equipo de los socios (solicitud)

  


### Garantías de éxito (postcondiciones)

Se crea el proyecto con los apartados 

* elegibilidad
* seguimiento científico
* calendario de justificación
* equipo
* responsable económico
* socios
* periodos de justificación de los socios
* periodos de pago a los socios
* equipo de los socios

cumplimentados según estén o no informados en la convocatoria y disponiendo de los campos fecha de inicio y fecha de fin de los correspondientes apartados informados de manera automática a partir de la definición recogida en meses en la convocatoria.

### Escenario principal (flujo básico)

ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador seleccionan una convocatoria en el campo "convocatoria" del apartado datos generales del proyecto.

El sistema calcula los campos fecha de inicio y fecha de fin de los apartados del proyecto, de acuerdo a la información aportada en los respectivos apartados de la convocatoria y/o solicitud:

* **Elegibilidad de conceptos de gasto** (a partir de los datos de una **convocatoria**)
* **Periodos de seguimiento científico** (a partir de los datos de una **convocatoria**)
* **Periodos de justificación** (a partir de los datos de una **convocatoria**)
* **Equipo** (a partir de los datos de una **solicitud**)
* **Responsable económico** (a partir de los datos de una **solicitud**)
* **Socios** (a partir de los datos de una **solicitud**)
* **Periodos de justificación de socios** (a partir de los datos de una **solicitud**)
* **Periodos de pago de socios** (a partir de los datos de una **solicitud**)
* **Equipo de socios** (a partir de los datos de una **solicitud**)

Todas las fechas se calculan a partir de la **fecha de inicio del proyecto** estando esta, por lo general, establecida a las **00:00:00** del día correspondiente en la Zona Horaria configurada en la aplicación (por defecto **España**).

El cálculo que se realiza en todos los casos es el siguiente:

* **Fecha Inicio**:   
Para el cálculo se tiene en cuenta la **fecha de inicio del proyecto** y el **número de mes** del cuál se quiere calcular la fecha de inicio.  
A la **fecha de inicio del proyecto** se le **suma** el **número de meses** correspondiente **menos uno**, ya que, por ejemplo, el primer mes se correspondería precisamente con la fecha de inicio del proyecto.
* **Fecha Fin**:  
Para el cálculo se tiene en cuenta la **fecha de inicio del proyecto**, la **fecha final del proyecto** y el **número de mes** del cuál se quiere calcular la fecha de fin.  
A la **fecha de inicio del proyecto** se le **suma** el **número de mes** correspondiente (de modo que estaríamos calculando el momento temporal en el que empezaría el mes siguiente) y se le **resta** **un segundo**, de modo que, partiendo de la premisa inicial de que la **fecha de inicio** estaría establecida en un día concreto a las **00:00:00**, se devolvería el **día anterior** a las **23:59:59**.  
Si esta **fecha teórica de fin** resulta que es **superior** a la **fecha final del proyecto**, entonces se devuelve directamente la **fecha final del proyecto**.

  


Ejemplos



| Fecha Inicio Proyecto | Fecha Fin Proyecto | Mes inicio | Mes fin | Fecha Inicio | Fecha Fin |
| --- | --- | --- | --- | --- | --- |
| **08/01/2021** 00:00:00 | **31/12/2021** 23:59:59 | **1** | **1** | **08/01/2021** 00:00:00 | **07/02/2021** 23:59:59 |
| **08/01/2021** 00:00:00 | **31/12/2021** 23:59:59 | **1** | **2** | **08/01/2021** 00:00:00 | **07/03/2021** 23:59:59 |
| **08/01/2021** 00:00:00 | **31/12/2021** 23:59:59 | **1** | **3** | **08/01/2021** 00:00:00 | **07/04/2021** 23:59:59 |
| **08/01/2021** 00:00:00 | **31/12/2021** 23:59:59 | **4** | **5** | **08/04/2021** 00:00:00 | **07/06/2021** 23:59:59 |
| **31/01/2021** 00:00:00 | **31/12/2021** 23:59:59 | **2** | **2** | **28/02/2021** 00:00:00 | **30/03/2021** 23:59:59 |
| **31/01/2021** 00:00:00 | **31/12/2021** 23:59:59 | **3** | **3** | **31/03/2021** 00:00:00 | **29/04/2021** 23:59:59 |
| **28/02/2021** 00:00:00 | **31/12/2021** 23:59:59 | **1** | **3** | **28/02/2021** 00:00:00 | **27/05/2021** 23:59:59 |
| **01/10/2020** 00:00:00 | **31/12/2024** 23:59:59 | **1** | **18** | **01/10/2020** 00:00:00 | **31/03/2022** 23:59:59 |
| **01/10/2020** 00:00:00 | **31/12/2024** 23:59:59 | **19** | **36** | **01/04/2022** 00:00:00 | **30/09/2023** 23:59:59 |

  
  
  





