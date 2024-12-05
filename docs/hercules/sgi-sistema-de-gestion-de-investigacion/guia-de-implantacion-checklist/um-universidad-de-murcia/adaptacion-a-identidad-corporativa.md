# Hércules : Adaptación a identidad corporativa



### Ficheros de aplicación

Los ficheros css en los que queda recogida la identidad corporativa son



| Fichero | Descripción |
| --- | --- |
| src/styles/colors.scss | Paletas de colores |
| src/styles/typography.scss | Tipografía |

  


En el archivo colors.scss se definen las paletas de colores que se utilizan en la aplicación y las variables para determinar cuales son los colores principales de cada paleta y los colores de contraste.

Las paletas de color disponibles son las siguientes:

* **$palette\-primary**: es la paleta principal (azules en la versión base del SGI) y es la que se utiliza en los títulos de página, iconos, botones de las acciones de las tablas, etc.
* **$palette\-accent**: es la paleta secundaria (verdes en la versión base del SGI), se utiliza en los botones de guardar de los formularios y en los botones de añadir de los listados.
* **$palette\-warn**: es la paleta para los errores (rojos en la versión base del SGI)
* **$palette\-grey**: es la paleta de grises

Adicionalmente hay otros agrupadores de colores:

* **$sgi\-foreground** y **$sgi\-background**: colores y colores de fondo que se aplican al tema y que se utilizan en distintos componentes de angular material.
* **$sgi\-custom\-colors**: colores personalizados propios del sgi, es una agrupación de colores que no se encuentran dentro de las paletas de colores anteriores y que se utilizan en disitintos componentes de la aplicación. Estos colores no forman parte del tema y por lo tanto sólo se aplican donde se indica explícitamente.

### Aplicar cambios sobre los estilos

Los estilos referentes a la imagen corporativa están centralizados en los fichero colors.scss y typography.scss, por lo tanto, para realizar un cambio sólo es necesario modificar en estos archivos los valores deseados.

Para que estos cambios se trasladen a los componentes de la aplicación y los componentes de angular material que se utilizan es necesario realizar los siguientes pasos:

1. Realizar los cambios necesarios sobre el fichero colors y/o typography.
2. Compilar la aplicación web
3. Generar una nueva imagen de docker con la aplicación con los estilos modificados.
4. Realizar el despliegue de la nueva versión de la web.




