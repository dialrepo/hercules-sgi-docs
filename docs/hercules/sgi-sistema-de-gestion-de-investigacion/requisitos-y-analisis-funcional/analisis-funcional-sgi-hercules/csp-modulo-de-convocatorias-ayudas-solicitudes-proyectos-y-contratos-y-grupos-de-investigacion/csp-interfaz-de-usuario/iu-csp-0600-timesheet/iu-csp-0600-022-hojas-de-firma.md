# Hércules : IU\-CSP\-0600\-022 \- Hojas de firma



## Formulario Timesheet \- Hojas de firma

Formulario que permite la generación de las hojas de firma de timesheet que podrá ser realizada por cada miembro del equipo a través de su acceso al SGI. Un timesheet podrá derivar en la generación de varias hojas de firma, una por cada uno de los proyectos que estén incluidos en el timesheet. Las hojas de firma solamente podrán ser generadas si el timesheet se encuentra en estado "Validado unidad" o "Cerrado".



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Periodo | | Texto corto | Mes y año del periodo de registro de horas de dedicación |
| Estado | | Texto corto | Estado actual del timesheet |
| Hojas de firma del timesheet | | | |
| Titulo proyecto | | Texto corto | Título del proyecto vinculado al timesheet |
| Estado | | Texto corto | Estado de la hoja de firma vinculada al proyecto perteneciente al timesheet.Las hojas de firma tendrán definido el siguiente ciclo de estados:* Sin generar * Generada * En firma * Firmada |
| Estado firma | | Texto corto | Estado de la firma. Si el estado de la hoja de firma es "En firma" el estado de firma indica quién ha firmado la hoja:* Firma IM * Firma IP |
| Descargar | | Icono de acción | Acción "Descargar" |
| Ver | | Icono de acción | Acción "Ver" |
| Iniciar firma | | Icono de acción | Acción "Iniciar firma" |
| Generar | | Icono de acción | Acción "Generar" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Descargar | Descarga el fichero seleccionado del listado de hojas de firma, generado con anterioridad | Solo está disponible si la hoja de firma ha pasado por todo el proceso de firma, es decir, ha sido firmada por el investigador miembro y por el IP. |
| Ver | Permite visualizar la hoja en proceso de firma |  |
| Iniciar firma | Una vez que la hoja ha sido generada:* El investigador propietario de la hoja inicia la firma invocando al sistema de firma digital, común a todo el SGI  Una vez que la hoja ha sido firmada por el investigador miembro:* El  IP  invoca al sistema de firma digital, común a todo el SGI | La hoja de firma debe ser firmada en primera instancia por el investigador miembro y posteriormente debe ser firmada por el IP. La firma se debe de resolver a través [REQ \- NF \- INT \- 0110 \- SFIDI \- 001 \- Hojas de firma de timesheet](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0110+-+SFIDI+-+001+-+Hojas+de+firma+de+timesheet&linkCreation=true&fromPageId=597852402 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=REQ+-+NF+-+INT+-+0110+-+SFIDI+-+001+-+Hojas+de+firma+de+timesheet&linkCreation=true&fromPageId=597852402") |
| Generar | Invoca la generación de la hoja de firma | Informe correspondiente a la hoja de firma es generado por el módulo de BI [wip\_REP\-CSP\-003\-Informe de hoja de firma](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=wip_REP-CSP-003-Informe+de+hoja+de+firma&linkCreation=true&fromPageId=597852402 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=wip_REP-CSP-003-Informe+de+hoja+de+firma&linkCreation=true&fromPageId=597852402") |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Guarda el timesheet con la información introducida en el formulario.Al guardar un timesheet se guarda la información de todos los apartados de definición del timesheet. |  |
| Cancelar | Retorna al listado de timesheet sin salvar los posibles cambios.Al cancelar un timesheet se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones

  
  
  
  
  
  





