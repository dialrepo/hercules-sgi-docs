# Hércules : PRC \- Baremación \- Diseño algoritmo



  


## Diseño algoritmo por cada ítem baremable y cálculo puntuación de cada investigador

  




```
Calcular años a beremar: anio inicio , anio fin

CopiarDatosProyecto (anio inicio , anio fin) 
CopiarDatosInvenciones (anio inicio , anio fin)
ObtenerCopiarSexenios (anio inicio , anio fin) //integración UNIVERSIDAD
ObtenerCopiarTesis (anio inicio , anio fin) //integración UNIVERSIDAD


para cada año baremable hacer
    EvaluarSexenios (anio) 
    EvaluarCostesIndirectos (anio)
	EvaluarPublicaciones (anio)
	EvaluarCongresos (anio)
	EvaluarObrasArtisticas (anio)
	EvaluarDireccionTesis (anio)
	EvaluarComitesEditoriales (anio)
	EvaluarOrganizacionActividades (anio)
	EvaluarProyectos (anio) //ojo los proyectos pueden tener una puntuación en cada año, se tendrán que ir sumando para el item la de los años distintos
	EvaluarContratos (anio) //ojo los proyectos pueden tener una puntuación en cada año, se tendrán que ir sumando para el item la de los años distintos
    EvaluarInvenciones (anio)
fin para  



```

**CopiarDatosProyectos**

```
Buscar los proyectos del SGI que cumplan las siguientes condiciones:
- activo
- estado Concedido
- que no sea externo (el modelo de ejecución al que pertenece tiene el flag externo a false)
- fechas de inicio y fin del proyecto contenga los años que se estan baremando
- es contrato o proyecto (es contrato si modelo de ejecución tiene el flag contrato = true y si lo tiene a false es un proyecto)   

Se borran todos los proyectos con convocatoriaBaremacionId = null  

Estos proyectos se crearán:

Se busca si ya existe un registro en la tabla ProduccionCientifica con el identificador de la tabla Proyecto de CSP (idRef), epigrafeCVN= "050.020.010.000"(si no es contrato) o epigrafeCVN= "050.020.020.000"(si es contrato ) y con "convocatoriaBaremacionId" = null.

Si no existe se crean registros en las siguientes tablas y con los siguientes campos:

Tabla ProduccionCientifica y EstadoProduccionCientifica
    - idRef: identificador interno de la tabla Proyecto de CSP
    - epigrafeCVN: se introducirá el valor "050.020.010.000" si no es un contrato o "050.020.020.000" si es un contrato
    - estado: se creará un registro en la tabla "EstadoProduccionCientifica" con el campo "estado" igual al valor del enumerado TipoEstadoProduccion.VALIDADO y con fecha, la fecha actual. 
    - convocatoriaBaremacionId: valor null.

Tabla CampoProduccionCientifica y ValorCampo
Se crearán los siguientes registros en la tabla "CampoProduccionCientifica"
 1) - codigoCVN: con valor "050.020.010.010"  si no es un contrato o "050.020.020.010" si es un contrato
    - se crea un registro en la tabla "ValorCampo" con el valor del campo "titulo" del Proyecto y el orden 1

 2) - codigoCVN:  con valor "050.020.010.270"  si no es un contrato o "050.020.020.180" si es un contrato
     - se crea un registro en la tabla "ValorCampo" con el valor del campo "fechaInicio" del Proyecto y el orden 1

 3) - codigoCVN: con valor "050.020.010.410"  si no es un contrato o "FECHA_FIN_CONTRATO" si es un contrato
     - se crea un registro en la tabla "ValorCampo" con el valor del campo "fechaFinDefinitiva" del Proyecto si esta informada y sino el campo "fechaFin" del Proyecto y el orden 1 

 4) - codigoCVN: con valor "050.020.010.040"  si no es un contrato
      - se crea un registro en la tabla "ValorCampo" con el valor indicado en el campo "valor" de la tabla "MapeoTipos". Se irá a buscar el identificador del ámbito geográfico del proyecto a dicha tabla (idTipoRef), con el campoCVN ="050.020.010.040"  y se guardará el dato almacenado en la columna valor. Y el orden 1. (El valor será 000, 010, 020, 030 o OTHERS)

 5) - codigoCVN: con valor "050.020.010.290"  si no es un contrato o "050.020.020.200" si es un contrato
     - se crea un registro en la tabla "ValorCampo" con el valor del campo "totalImporteConcedido" si viene informado en la entidad Proyecto y sino será la suma del campo "totalGastosConcedido" de todos los registros de la entidad ProyectoAnanualidad del Proyecto. Y orden 1.

 6) - codigoCVN: con valor "CONVOCATORIA_EXCELENCIA"  si no es un contrato.
    - se crea un registro en la tabla "ValorCampo" con el valor del campo "convocatoriaExcelencia" del Proyecto y el orden 1

 7) - codigoCVN: con valor "CUANTIA_COSTES_INDIRECTOS_PROYECTO"  si no es un contrato o "CUANTIA_COSTES_INDIRECTOS_CONTRATO" si es contrato
    - se crea un registro en la tabla "ValorCampo" con el valor del campo "importeConcedidoCostesIndirectos" si viene informado en la entidad Proyecto y sino será la suma del campo "importeConcedido" de todos los registros de la entidad AnualidadGasto que tenga un "conceptoGasto" con el flag de "costesIndirectos" a "true" del Proyecto. Y orden 1.


Tabla Autor

Se crearán tantos registros en la tabla "Autor" como investigadores tenga la tabla "ProyectoEquipo" del Proyecto con los siguientes campos:

    - firma: se pondrá a null
    - personaRef: campo "personaRef" de la tabla "ProyectoEquipo"
    - nombre: se pondrá a null     
    - apellidos: se pondrá a null
    - orden: se pondrá a null
    - orcidId: se pondrá a null
    - fechaInicio: campo "fechaInicio" de la tabla "ProyectoEquipo"
     - fechaFin: campo "fechaFin" de la tabla "ProyectoEquipo"
    - ip: se pondrá a "true" si el campo "rolProyecto" es un rol que tenga marcado el flag de "principal", sino se pondrá el valor "false"

Si existe el registro, las tablas ProduccionCientifica y EstadoProduccionCientifica no se modifican y las tablas CampoProduccionCientifica,  ValorCampo y Autor se eliminan sus registros y se vuelven a crear con lo mencionado en la parte de cuando no existe el registro.


```

**CopiarDatosInvenciones**

```
Buscar las invenciones del SGI que cumplan las siguientes condiciones:
- invencióna activa
- titular Universidad entre las fechas de los años que se estan baremando. Para ello mirar la tabla PeriodoTitularidadTitular donde titularRef sea el identificador de la Universidad (mirar variable del módulo de Configuración) , participacion > 0 y las fechas comprendan los años que se están baremando. 
- tenga vías de solicitud con fecha de concesión entre el rango de años que se están baremando.

Se borran todas las invenciones con convocatoriaBaremacionId = null 

Estas invenciones se crearán.

  Se busca si ya existe un registro en la tabla ProduccionCientifica con el identificador de la tabla Invencion de PII (idRef),  epigrafeCVN=050.030.010.000  y con "convocatoriaBaremacionId" = null.

Si no existe se crean registros en las siguientes tablas y con los siguientes campos:

Tabla ProduccionCientifica y EstadoProduccionCientifica
    - idRef: identificador interno de la tabla Invencion de PII
    - epigrafeCVN: se introducirá el valor "050.030.010.000"
    - estado: se creará un registro en la tabla "EstadoProduccionCientifica" con el campo "estado" igual al valor del enumerado TipoEstadoProduccion.VALIDADO y con fecha, la fecha actual. 
    - convocatoriaBaremacionId: valor null.

Tabla CampoProduccionCientifica y ValorCampo
Se crearán los siguientes registros en la tabla "CampoProduccionCientifica"
 1) - codigoCVN: con valor "050.030.010.020"      
    - se crea un registro en la tabla "ValorCampo" con el valor del campo "titulo" de la Invención y el orden 1

 2) - codigoCVN:  con valor "PORCENTAJE_TITULARIDAD"  
    - se crean tantos registros en la tabla "ValorCampo" con el valor del campo "participacion" de la Invención (tabla PeriodoTitularidadTitular, si son 3 años los que se esta baremando, se pondrán 3 valores a 31 de diciembre de cada año, si uno de los años no hay titularidad, se pondrá el valor 0 en el porcentaje.

 3) - codigoCVN: con valor "050.030.010.030"  
    - se crea un registro en la tabla "ValorCampo" con el valor indicado en el campo "valor" de la tabla "MapeoTipos". Se irá a buscar el identificador del Tipo de protección de la Invención a dicha tabla (idTipoRef), con el campoCVN ="050.030.010.030"  y se guardará el dato almacenado en la columna valor. Y el orden 1. (El valor será 109, 122, 126, 141, 177 o OTHERS)

 4) - codigoCVN: con valor "050.030.010.320" 
    - se crean tantos registros en la tabla "ValorCampo" como solicitudes de protección con fechaConcesión se encuentre en el rango de años de baremación. En el campo "valor" se pondrá el valor del campo "fechaConcesion" de la tabla "SolicitudProteccion" y en el orden se irá poniendo 1, 2, 3, etc, por orden ascendente de la fecha de concesión.

 5) - codigoCVN: con valor "050.030.010.160" 
    - se crean tantos registros en la tabla "ValorCampo" como solicitudes de protección con fechaConcesión se encuentre en el rango de años de baremación. En el campo "valor" se pondrá "true" o "false" dependiendo de si el campo "ViaProteccion" asociado a la solicitud  es "España" o no y en el orden se irá poniendo 1, 2, 3, etc, por orden ascendente de la fecha de concesión. Para saber si la vía de protección es "España" se irá a buscar en la tabla "MapeoTipos" el campoCVN "050.030.010.160" y en el  "idTipoRef" el identificador de la vía de protección. (El valor será true o false) 

 6) - codigoCVN: con valor "050.030.010.170" 
    - se crean tantos registros en la tabla "ValorCampo" como solicitudes de protección con fechaConcesión se encuentre en el rango de años de baremación. En el campo "valor" se pondrá "true" o "false" dependiendo de si el campo "ViaProteccion" asociado a la solicitud  es "Europea" o no y en el orden se irá poniendo 1, 2, 3, etc, por orden ascendente de la fecha de concesión. Para saber si la vía de protección es "Europea" se irá a buscar en la tabla "MapeoTipos" el campoCVN "050.030.010.170" y en el  "idTipoRef" el identificador de la vía de protección. (El valor será true o false) 

 7) - codigoCVN: con valor "CUANTIA_LICENCIAS"
    - se crea un registro en la tabla "ValorCampo" con el valor calculado de "Sumar todos los ingresos de los proyectos relacionados con la invención". Para obtener los ingresos de cada proyecto relacionado a una invención se tendrá que llamar a la API de ESB de PII a los servicios /ingresos-invencion/columnas (para obtener el campo que es el importe, el que tiene el valor "importeReparto" a true) y /ingresos-invencion?q=proyectoId=="XXXXX" , de todos los ingresos se suman el campo indicado como que es el "importeReparto". Esto se hace para todos los contratos relacionados con la invención.

Tabla Autor
Se crearán tantos registros en la tabla "Autor" como investigadores tenga la tabla "InvencionInventor" de la Invención con los siguientes campos:

    - firma: se pondrá a null
    - personaRef: campo "personaRef" de la tabla "InvencionInventor"
    - nombre: se pondrá a null     
    - apellidos: se pondrá a null
    - orden: se pondrá a null
    - orcidId: se pondrá a null
    - ip: se pondrá a null

Si existe el registro, las tablas ProduccionCientifica y EstadoProduccionCientifica no se modifican y las tablas CampoProduccionCientifica,  ValorCampo y Autor se eliminan sus registros y se vuelven a crear con lo mencionado en la parte de cuando no existe el registro.



```

  


  


**ObtenerCopiarSexenios**

```
 Se borran todas los sexenios con convocatoriaBaremacionId = null  

Para cada año que se barema
    lista_investigadores: Obtener los investigadores (personaRef) que a 31 de diciembre del año que se esta baremando pertenecen a un grupo de   investigación con un rol con el flag de baremable a true.La lista no tendrá personas repetidas, se guardará la personaRef de cada investigador. Si ya esta en la lista no se añade, sino esta en la lista se añade.
Fin para

Se llamará al servicio de SGP GET /sexenios (https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0062+-+Consultar+sexenios) para cada año de baremación que devuelve una lista de la entidad Sexenio con la personaRef y número de sexenios de esta persona y país
Por cada investigador de los de la lista sacada antes se creará su sexenio en el módulo de PRC


Se crean registros en las siguientes tablas y con los siguientes campos:

Tabla ProduccionCientifica y EstadoProduccionCientifica
    - idRef: "SEX_" + personaRef + anioBaremacion
    - epigrafeCVN: se introducirá el valor "060.030.070.000"
    - estado: se creará un registro en la tabla "EstadoProduccionCientifica" con el campo "estado" igual al valor del enumerado TipoEstadoProduccion.VALIDADO y con fecha, la fecha actual. 
    - convocatoriaBaremacionId: valor null.


 Tabla CampoProduccionCientifica y ValorCampo
Se crearán los siguientes registros en la tabla "CampoProduccionCientifica"
 1) - codigoCVN: con valor "060.030.070.010"      
    - se crea un registro en la tabla "ValorCampo" con el valor del campo "numero" del Sexenio (o suma del campo "numero" de los Sexenios) y el orden 1

 2)  - codigoCVN: con valor "ANIO_SEXENIOS"      
    - se crea un registro en la tabla "ValorCampo" con el valor del campo año de baremación  y el orden 1
 

Tabla Autor
Se crearán un registro en la tabla "Autor" con el dato del investigador (personaRef)

    - firma: se pondrá a null
    - personaRef: campo "personaRef"
    - nombre: se pondrá a null     
    - apellidos: se pondrá a null
    - orden: se pondrá a null
    - orcidId: se pondrá a null
    - ip: se pondrá a null  




```

**ObtenerCopiarDireccionTesis**

```
 Se borran todas las direcciones de tesis con convocatoriaBaremacionId = null  y que en idRef empiece por "TES_" (para no borrar las que vienen del CVN).

Para cada año que se barema
    lista_investigadores: Obtener los investigadores (personaRef) que a 31 de diciembre del año que se esta baremando pertenecen a un grupo de   investigación con un rol con el flag de baremable a true.La lista no tendrá personas repetidas, se guardará la personaRef de cada investigador. Si ya esta en la lista no se añade, sino esta en la lista se añade.
Fin para

Se llamará al servicio de SGP GET /direcciones-tesis  para cada año de baremación que devuelve una lista de la entidad DireccionTesis

Por cada dirección de tesis que en personaRef o coDirectorRef tenga a uno de la lista de los investigadores (lista_investigadores)  se creará su DireccionTesis en el módulo de PRC


```

**EvaluarPublicaciones**

```
 Para cada item de la tabla ProduccionCientifica con epigrafeCVN = "060.010.010.000" y con CampoProduccionCientifica que tiene en ConfiguracionCampo el campo fechaReferenciaIni = true esta en el año que se esta baremando y estado "Validado" o "Validado Parcialmente"
 
        puntos = EvaluarItemPublicacion(elemento,anio)
        
        Si puntos >  0 entonces
              autores_UMU =  los que existen en la tabla Autor con personaRef informado y que pertenecen a un grupo con un rol con el flag de baremable a true a fecha 31 de diciembre del año que se esta baremando y con el campo "especial investigación" a valor "No" a fecha 31 de diciembre del año que se esta baremando                
              
              n_autores = Contar(autores_UMU)

              puntos_investigador = puntos/n_autores
 
              para cada autor en autores_UMU y en estado "Validado" (si el item tiene estado actual "Validado" o el item esta en estado "Validado parcialemnte" en la taba "ProduccionCientifica" y esta en la tabla AutorGrupo con un estado "Validado") hacer

                    Aplicar los baremos de (Regional/Autonómico - IP,Nacional - IP, Nacional - IP y Europeo/Internacional - IP y Resto - IP) para Proyectos y de ( Editor) para Comites
 
                    puntos_elto_investigador = puntos_investigador * índice_experimentalidad
 
                    Almacenar el registro en la tabla PuntuacionItemInvestigador (id_investigador,id_elemento,puntos_elto_investigador,anio) (el id_elemento es el id del item de produccion cientifica asignado a la convocatoria)
 
             fin para
 fin para
 
```

NOTA:

Los puntos de cada investigador se deben de multiplicar por un el índice de experimentalidad en todos los items excepto en "Contratos", "Costes indirectos" y "Sexenios". El índice de experimentalidad se define por departamento. El departamento elegido será el departamento de adscripción del investigador.

  


**EvaluarItemPublicacion**

```
Para cada baremo de la tabla Baremo con el campo seleccionado = true, que sea un nodo hijo y con ConfiguracionBaremo con epigrafeCVN = "060.010.010.000" , con activo = "true" y sean baremos de la ConvocatoriaBaremacion que se esta ejecutando

    puntos = 0   
    Para cada baremo con tipoPuntos = PRINCIPAL y ordenados por prioridad (de forma ascendente el campo prioridad)
         puntosBaremoPrincipal = CalcularBaremoPublicacion (baremo, anio)
         Si puntosBaremoPrincipal > 0
              puntos = puntos + puntosBaremoPrincipal
              Hacer copia del registro asignándole la convocatoria (rellenando el campo convocatoriaBaremacionId) (Se copian las tablas ProduccionCientifica, CampoProduccionCientifica, ValorCampo, Autor, AutorGrupo, Proyecto, Acreditacion e IndiceImpacto)
              Almacenar el registro en la tabla PuntuacionBaremoItem (id_elemento,id_baremo, puntosBaremoPrincipal) (id_elemento es el id del nuevo registro creado)
              Salir del bucle (ya no se siguen mirando los baremos siguientes)
    fin para

    Si puntos > 0
       Por cada baremo con tipoPuntos = MODULADOR 
         puntosBaremoModulador = CalcularBaremoPublicacion (baremo, anio)
         puntos = puntos * puntosBaremoModulador          
         Almacenar el registro en la tabla PuntuacionBaremoItem (id_elemento,id_baremo, puntosBaremoModulador)
       fin para
     
    Si puntos > 0             
       Para cada baremo con tipoPuntos = EXTRA 
         puntosBaremoExtra = CalcularBaremoPublicacion (baremo, anio)
         puntos = puntos + puntosBaremoExtra
         Almacenar el registro en la tabla PuntuacionBaremoItem (id_elemento,id_baremo, puntosBaremoExtra)
       fin para


fin para
```

**CalcularBaremoPublicacion**

```
PuntosBaremo = 0
Si baremo - ConfiguracionBaremo es de tipoBaremo = AUTORIA_BCI_EDITORIAL_EXTRANJERA o CAP_LIBRO_BCI_EDITORIAL_EXTRANJERA o EDICION_BCI_EDITORIAL_EXTRANJERA o  COMENTARIO_BCI_EDITORIAL_EXTRANJERA comprobar que se cumple:
    - El valor del campo "060.010.010.160" del item, comprobar si es un formato ISBN de 10 o de 13 digitos (para ello quitar los guiones y contar los digitos). Si es de 10 digitos obtener el primer bloque de números separados por guion y comprobar que es distinto al número 84. Y si es de 13 digitos obtener el segundo bloque de número separados por guión y comprobar que es distinto al número 84
    - Que exista en el listado de IndiceImpacto del item el campo fuenteImpacto = BCI
    - Si tipoBaremo = AUTORIA_BCI_EDITORIAL_EXTRANJERA
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.032"
    - Si tipoBaremo = CAP_LIBRO_BCI_EDITORIAL_EXTRANJERA
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.004"
    - Si tipoBaremo = EDICION_BCI_EDITORIAL_EXTRANJERA
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.208"
    - Si tipoBaremo = COMENTARIO_BCI_EDITORIAL_EXTRANJERA
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.COMENTARIO_SISTEMATICO_NORMAS"

   Si se cumplen condiciones PuntosBaremo =  campo "puntos" de la tabla Baremo 

Si baremo - ConfiguracionBaremo es de tipoBaremo = AUTORIA_BCI_EDITORIAL_NACIONAL o CAP_LIBRO_BCI_EDITORIAL_NACIONAL o EDICION_BCI_EDITORIAL_NACIONAL o  COMENTARIO_BCI_EDITORIAL_NACIONAL comprobar que se cumple:
    - El valor del campo "060.010.010.160" del item, , comprobar si es un formato ISBN de 10 o de 13 digitos (para ello quitar los guiones y contar los digitos). Si es de 10 digitos obtener el primer bloque de números separados por guion y comprobar que es igual al número 84. Y si es de 13 digitos obtener el segundo bloque de número separados por guión y comprobar que es igual al número 84    
   - Que exista en el listado de IndiceImpacto del item el campo fuenteImpacto = BCI
    - Si tipoBaremo = AUTORIA_BCI_EDITORIAL_NACIONAL
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.032"
    - Si tipoBaremo = CAP_LIBRO_BCI_EDITORIAL_NACIONAL
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.004"
    - Si tipoBaremo = EDICION_BCI_EDITORIAL_NACIONAL
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.208"
    - Si tipoBaremo = COMENTARIO_BCI_EDITORIAL_NACIONAL
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.COMENTARIO_SISTEMATICO_NORMAS"

   Si se cumplen condiciones PuntosBaremo =  campo "puntos" de la tabla Baremo 

Si baremo - ConfiguracionBaremo es de tipoBaremo = AUTORIA_ICEE_Q1 o CAP_LIBRO_ICEE_Q1 o EDICION_ICEE_Q1 o COMENTARIO_ICEE_Q1 comprobar que se cumple:
    - Que exista en el listado de IndiceImpacto del item el campo fuenteImpacto = ICEE y que tenga a true el campo revista25 (campo "060.010.010.330" del item) o bien ((posicionPublicacion * 100)/numeroRevistas) <=25 donde posicionPublicacion es el campo "060.010.010.250" del item y numeroRevistas es el campo "060.010.010.250" del item
    - Si tipoBaremo = AUTORIA_ICEE_Q1
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.032"
    - Si tipoBaremo = CAP_LIBRO_ICEE_Q1
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.004"
    - Si tipoBaremo = EDICION_ICEE_Q1
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.208"
    - Si tipoBaremo = COMENTARIO_ICEE_Q1
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.COMENTARIO_SISTEMATICO_NORMAS"
      
   Si se cumplen condiciones PuntosBaremo =  campo "puntos" de la tabla Baremo   

Si baremo - ConfiguracionBaremo es de tipoBaremo = AUTORIA_ICEE_RESTO_CUARTILES o CAP_LIBRO_ICEE_RESTO_CUARTILES o EDICION_ICEE_RESTO_CUARTILES o COMENTARIO_ICEE_RESTO_CUARTILES comprobar que se cumple:
    - Que exista en el listado de IndiceImpacto del item el campo fuenteImpacto = ICEE y que tenga ((posicionPublicacion * 100)/numeroRevistas) >25 donde posicionPublicacion es el campo "060.010.010.250" del item y numeroRevistas es el campo "060.010.010.250" del item
    - Si tipoBaremo = AUTORIA_ICEE_RESTO_CUARTILES
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.032"
    - Si tipoBaremo = CAP_LIBRO_ICEE_RESTO_CUARTILES
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.004"
    - Si tipoBaremo = EDICION_ICEE_RESTO_CUARTILES
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.208"
    - Si tipoBaremo = COMENTARIO_ICEE_RESTO_CUARTILES
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.COMENTARIO_SISTEMATICO_NORMAS"  

     Si se cumplen condiciones PuntosBaremo =  campo "puntos" de la tabla Baremo    

Si baremo - ConfiguracionBaremo es de tipoBaremo = AUTORIA_DIALNET o CAP_LIBRO_DIALNET o EDICION_DIALNET o  COMENTARIO_DIALNET comprobar que se cumple:
    - Que exista en el listado de IndiceImpacto del item el campo fuenteImpacto = DIALNET
    - Si tipoBaremo = AUTORIA_DIALNET
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.032"
    - Si tipoBaremo = CAP_LIBRO_DIALNET
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.004"
    - Si tipoBaremo = EDICION_DIALNET
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.208"
    - Si tipoBaremo = COMENTARIO_DIALNET
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.COMENTARIO_SISTEMATICO_NORMAS"

   Si se cumplen condiciones PuntosBaremo =  campo "puntos" de la tabla Baremo 

Si baremo - ConfiguracionBaremo es de tipoBaremo = AUTORIA_OTRAS o CAP_LIBRO_OTRAS o EDICION_OTRAS o  COMENTARIO_OTRAS comprobar que se cumple:
    - Que exista en el listado de IndiceImpacto del item una fuenteImpacto con valor distinto a (BCI, ICEE y DIALNET)
    - Si tipoBaremo = AUTORIA_OTRAS
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.032"
    - Si tipoBaremo = CAP_LIBRO_OTRAS
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.004"
    - Si tipoBaremo = EDICION_OTRAS
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.208"
    - Si tipoBaremo = COMENTARIO_OTRAS
            - La cadena resultante de la concatenacion del campo "060.010.010.010" +"." + valor del campo "060.010.010.010" del item = al enumerado "060.010.010.010.COMENTARIO_SISTEMATICO_NORMAS"

   Si se cumplen condiciones PuntosBaremo =  campo "puntos" de la tabla Baremo    


Si baremo - ConfiguracionBaremo es de tipoBaremo = LIBRO_NUMERO_AUTORES hacer:
   Recorrer las litas de autores del item (tabla Autor) con personaRef informado y que pertenecen a un grupo de investigación (tabla GrupoEquipo) con un rol con el flag de baremable a true a fecha 31 de diciembre del año que se esta baremando y el grupo al que pertenecen los autores (tabla Grupo) este activo y el campo "Grupo especial de investigación" a "No" el 31 de diciembre del año que se esta baremando  y contarlos = numero_autores
   
   Obtener el área del item, para ello:
    Si el campo "060.010.010.390" viene informado y es una personaRef y que pertenece a un grupo de investigación con un rol con el flag de baremable a true a fecha 31 de diciembre del año que se esta baremando     
         Se obtiene el área a la que pertenece de nivel 1 (es decir, se va a buscar el área de nodo raíz). Si hay mas de una persona en este  
         campo se van cogiendo de uno en uno y mirando si cumple las condiciones (según vengan en la lista)
    Sino
      Si el autor de posición 1 de la lista de autores es una personaRef y que pertenece a un grupo de investigación con un rol con el flag de baremable a true a fecha 31 de diciembre del año que se esta baremando
      Se obtiene el área a la que pertenece de nivel 1 (es decir, se va a buscar el área de nodo raíz).
      Sino
           Si el autor de posición última de la lista de autores es una personaRef y que pertenece a un grupo de investigación con un rol con el flag de baremable a true a fecha 31 de diciembre del año que se esta baremando
             Se obtiene el área a la que pertenece de nivel 1 (es decir, se va a buscar el área de nodo raíz). 
           
    
   Si existe el área del item, se va a la tabla Modulador de la convocatoria que se esta baremando y se comprueba si el numero_autores es :
     1: se coge el campo valor1 y se pone en PuntosBaremo
     2-3: se coge el campo valor2 y se pone en PuntosBaremo
     4-5: se coge el campo valor3 y se pone en PuntosBaremo
     6-7: se coge el campo valor4 y se pone en PuntosBaremo
     >8: se coge el campo valor5 y se pone en PuntosBaremo
  

Si baremo - ConfiguracionBaremo es de tipoBaremo = LIBRO_EDITORIAL_PRESTIGIO comprobar que se cumple:
  
   Si el campo "060.010.010.100" (editorial) viene informado Entonces:
          
        Obtener el área del item, para ello:
		Si el campo "060.010.010.390" viene informado y es una personaRef y que pertenece a un grupo de investigación con un rol con el flag de   baremable a true a fecha 31 de diciembre del año que se esta baremando     
             Se obtiene el área a la que pertenece de nivel 1 (es decir, se va a buscar el área de nodo raíz). Si hay mas de una perso en 	          este campo se van cogiendo de uno en uno y mirando si cumple las condiciones (según vengan en la lista)
       Sino
            Si el autor de posición 1 de la lista de autores es una personaRef y que pertenece a un grupo de investigación con un rol con el flag de baremable a true a fecha 31 de diciembre del año que se esta baremando
              Se obtiene el área a la que pertenece de nivel 1 (es decir, se va a buscar el área de nodo raíz).
            Sino
                 Si el autor de posición última de la lista de autores es una personaRef y que pertenece a un grupo de investigación con un rol con el flag de baremable a true a fecha 31 de diciembre del año que se esta baremando
                     Se obtiene el área a la que pertenece de nivel 1 (es decir, se va a buscar el área de nodo raíz).  


        Buscar en la tabla EditorialPresitigio si para dicha area del item el campo editorial 060.010.010.100 existe para la TablaEditorial cuyas fechas comprendan el año que se esta baremando (se comparan los nombres de las edoditoriales, pasarlas a mayusculas, quitar acentos y quitar espacios y comparar las cadenas).  Si se cumplen condiciones PuntosBaremo =  campo "puntos" de la tabla Baremo     



Devolver PuntosBaremo
```

  


  


## Algoritmo baremación grupos

  




```
 para cada año de baremación  
    
  
      para cada grupo en grupos_de_investigación que tienen el campo "Grupo especial de investigación" a "No" el 31 de diciembre del año que se esta baremando hacer           
           puntos_produccion_grupo = 0
           puntos_sexenios_grupo = 0
           puntos_ci_grupo = 0 
                                  


        almacenar el registro con los puntos del grupo en la tabla PuntuacionGrupo de la convocatoria que se esta baremando y con puntos_produccion_grupo = 0,   puntos_sexenios_grupo = 0 y  puntos_ci_grupo = 0 (SOLO SI NO EXISTE, buscar por grupoRef y convocatoriaBaremacionId)
         
	       para cada investigador en el grupo a 31 de diciembre de ese año con rol con el flag baremable a true hacer (grupo equipo)
      

                 para cada elemento de la tabla  PuntuacionItemInvestigador filtrando por investigador, anio (año que estas recorriendo) y para  todos los items que corresponden a la convocatoria que se esta baremando (convocatoria baremacion id)  
                          
                       puntos  =   puntos de la tabla PuntuacionItemInvestigador *(porcentaje_participación/100) 
                      
                       almacenar registro en la tabla PuntuacionGrupoInvestigador (puntos, grupo, puntuacionItemInvestigador)

                       si tipoPuntuacion = SEXENIO puntos_sexenios_grupo = puntos_sexenios_grupo + puntos
                       sino
                         si tipoPuntuacion = COSTE_INDIRECTO puntos_ci_grupo = puntos_ci_grupo + puntos 
                          SINO 
                              puntos_produccion_grupo = puntos_produccion_grupo + puntos  

                 fin para   

             
           fin para
      fin para

	  actualizar el registro con los puntos del grupo (puntos_produccion_grupo,puntos_sexenios_grupo y puntos_ci_grupo ) en la tabla PuntuacionGrupo

fin para


Realizar el cálculo del punto de producción, del punto de sexenio y del punto de costes indirectos. La forma de obtener dichos valores es:
suma_sexenios: Suma total de todos los puntos de sexenios todos los grupos baremables en la convocatoria (tabla PuntuacionGrupo)
suma_produccion: Suma total de todos los puntos de producción todos los grupos baremables en la convocatoria en la convocatoria
suma_ci: Suma total de todos los puntos de costes indirectos todos los grupos baremables en la convocatoria en la convocatoria

importe_total_convocatoria: Importe de producción cientifíca definido en la configuración de la convocatoria (campo "importeTotal" de la tabla "ConvocatoriaBaremacion"

peso_sexenios:  importe_total_convocatoria * (peso del Baremo de tipo SEXENIO en la convocatoria de baremación /100). 
peso_produccion:  importe_total_convocatoria * (peso del Baremo de tipo PRODUCCION_CIENTIFICA en la convocatoria de baremación /100).   
peso_ci:  importe_total_convocatoria * (peso del Baremo de tipo COSTE_INDIRECTO en la convocatoria de baremación /100).    

Precio punto sexenio: peso_sexenios  / suma_sexenios
Precio punto producción: peso_produccion  / suma_produccion
Precio punto costes indirectos: peso_ci / suma_ci

Actualizar los campos "puntoProduccion", "puntoSexenio" y "puntoCostesIndirectos" con los valores calculados en la tabla "ConvocatoriaBaremacion"

Actualizar el campo "fechaFinEjecucuón" de la tabla "ConvocatoriaBaremacion" con la fecha actual, para indicar que el proceso se ha ejecutado y finalizado.

Mandar comunicado a los gestores para indicar que se ha finalizado el proceso de baremación.
```

  


  


  





