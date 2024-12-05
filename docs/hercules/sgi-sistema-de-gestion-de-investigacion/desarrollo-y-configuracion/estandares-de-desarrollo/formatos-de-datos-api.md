# Hércules : Formatos de datos API



Es necesario establecer una acuerdo a la hora de intercambiar datos de algunos tipos concretos a través de las APIs cuya representación puede variar según el formato con el que se decidan presentar como String.

## Formatos

### Campos de tipo Fecha

Se enviará/recibirá un formato de fecha ISO 8601, sin información horaria.

**Ejemplo**

```
{
  "fechaNacimiento": "2021-01-01"
}
```

  


### Campos de tipo Fecha \+ Hora

Se enviará/recibirá un formato de fecha ISO 8601, ajustado a UTC (se debe utilizar el designador UTC especial "Z").

**Ejemplo**

```
{
  "fechaInicio": "2021-01-01T00:00:00Z",
  "fechaFin": "2021-01-31T23:59:59Z",
}
```




