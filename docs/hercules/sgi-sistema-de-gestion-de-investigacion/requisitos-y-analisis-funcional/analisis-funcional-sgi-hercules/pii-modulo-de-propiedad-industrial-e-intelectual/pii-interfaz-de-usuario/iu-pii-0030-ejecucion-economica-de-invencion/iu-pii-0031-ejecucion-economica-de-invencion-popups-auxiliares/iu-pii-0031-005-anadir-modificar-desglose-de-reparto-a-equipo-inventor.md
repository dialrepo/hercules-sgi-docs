# Hércules : IU\-PII\-0031\-005 \- Añadir\-modificar desglose de reparto a equipo inventor



## Formulario Añadir\-modificar desglose de reparto a inventor

Pantalla que muestra el formulario para añadir un nuevo desglose de un importe a repartir o modificar los datos de uno ya informado para un ingreso en un reparto en una ventana emergente.



| | *Formulario en "modo añadir"* | *Formulario en "modo modificar"* | | --- | --- | | | |
| --- | --- | --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Importe total | Numérico decimalObligatorioModificable | Importe total a desglosar entre nómina, proyecto y otros. |
| Importe a nómina | Numérico decimalObligatorioModificable | Importe correspondiente al reparto para el miembro del equipo inventor que se va a realizar al miembro del equipo inventor en nómina.Debe ser mayor o igual que 0 y menor o igual que el importe total. |
| Importe a proyecto | Numérico decimalObligatorioModificable | Importe correspondiente al reparto para el miembro del equipo inventor que se va a repercutir hacia un proyecto.Debe ser mayor o igual que 0 y menor o igual que el importe total. |
| Proyecto | TextoOpcionalModificable | Proyecto al que destinar la parte del reparto indicado en el campo Importe a proyecto.Este campo solo será visible si se indica un valor \> 0 en el campo Importe a proyecto y, en otro caso, no aparecerá en pantalla.El listado de proyectos disponibles de los que seleccionar uno a asociar al desglose del reparto al miembro del equipo invnetor se obtendrá a través del buscador de Proyectos [IU\-GEN\-0030 \- Búsqueda de Proyectos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91009069 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=91009069"), común a todo el SGI. |
| Importe a otros | Numérico decimalObligatorioModificable | Importe correspondiente al reparto para el miembro del equipo inventor que se va a retribuir en cualquier otra forma que no sea en nómina o a un proyecto.Contempla por ejemplo el caso de los repartos de regalías a miembros del equipo inventor que ya no tienen vinculación con la Universidad pero ésta sí sigue teniendo obligación de realizarles estos pagos de repartos. |



| Acciones | Descripción | Enlace CU. |  |
| --- | --- | --- | --- |
| Buscar (proyecto) | A través del botón Buscar se dará acceso al buscador común a todo el SGI [IU\-GEN\-0030 \- Búsqueda de Proyectos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91009069 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=91009069") para seleccionar un proyecto a asociar al desglose del reparto al miembro del equipo inventor que se está tratando. |  | CSP\-PRO\-MOD\-V |
| Añadir | Añade el desglose del reparto al miembro del equipo inventor que se está tratando y retorna a la pantalla de alta\-modificación del reparto.Se validará que Importe total \= Importe a nómina \+ Importe a proyecto \+ Importe a otros. |  |  |
| Aceptar | Modifica el desglose del reparto del miembro del equipo inventor que se está tratando y retorna a la pantalla de alta\-modificación del reparto.Se validará que Importe total \= Importe a nómina \+ Importe a proyecto \+ Importe a otros. |  |  |
| Cancelar | Vuelve a la pantalla de alta\-modificación del reparto sin aplicar ningún cambio. |  |  |

  


  





