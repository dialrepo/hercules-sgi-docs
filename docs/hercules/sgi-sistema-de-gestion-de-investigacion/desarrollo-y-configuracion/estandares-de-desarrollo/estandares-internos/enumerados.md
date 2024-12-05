# Hércules : Enumerados



## Reglas generales

El nombre del enumerado será como el de cualquier otra clase. Se aplicará *camel case*.

Para los posibles valores aplican las siguientes reglas:

* Nombre en mayúsculas
* Separación de palabras mediante guión bajo (\_)
* Sin caracteres especiales o de puntuación
* Breves pero significativos, no más de 20 caracteres de longitud

Si el ámbito del enumerado está acotado a una clase se declara dentro de la Clase, si es común a varias clases, entonces se declara en la parte común.

## Declaración en Spring

Siempre deberán ser enumerados básicos, sin ningún tipo de extensión o métodos adicionles.

Cuando el ámbito del enumerado sea el de la clase, como por ejemplo el **Estado**, se declararía dentro de clase a continuación de cualquier constante o atributo estático.

Cuando el ámbito sea más amplio y se utilice en más de una clase, se declararía dentro del paquete **org.crue.hercules.sgi.\<modulo\>.enums**

El mapping de un atributo de la entidad hacía el enumerado se realizará mediante la anotación  *@Enumerated(EnumType.STRING)*

Ejemplo:



```
public class Entidad {
  private static final long serialVersionUID = 1L;

  public enum Estado {
	BORRADOR,
    REGISTRADA;
  }
  ...
  @Column(name = "estado", length = 20, nullable = true)
  @Enumerated(EnumType.STRING)
  private Estado estado;
  ...
}
```

## Declaración en Angular

Cuando el ámbito del enumerado sea el de la clase, como por ejemplo el **Estado**, se declararía al final del fichero de definición de la entidad.

Cuando el ámbito sea más amplio y se utilice en más de una clase, se declararía dentro de la carpeta **src/app/core/enums**

En la declaración se deberá asignar como valor el string que represente valor y deberá coincidir con la declaración realizada en el backend.

Adicionalmente, se deberá crear el mapping de asignación de los valores a un código de internacionalización. Esto se realiza mediante un Map\<T, string\> en donde T es el enumerado.

Para la asignación de los códigos de internacionalización, ver [i18n](https://confluence.treelogic.com/display/HERCULES/i18n "https://confluence.treelogic.com/display/HERCULES/i18n")

Ejemplo:



```
export interface Entidad {
  ...
  estado: Estado;
  ...
}
...
export enum Estado {
  BORRADOR = 'BORRADOR',
  REGISTRADA = 'REGISTRADA'
}

export const ESTADO_MAP: Map<Estado, string> = new Map([
  [Estado.BORRADOR, marker('<modulo>.entidad.estado.BORRADOR')],
  [Estado.REGISTRADA, marker('<modulo>.entidad.estado.REGISTRADA')]
]);
```

  





