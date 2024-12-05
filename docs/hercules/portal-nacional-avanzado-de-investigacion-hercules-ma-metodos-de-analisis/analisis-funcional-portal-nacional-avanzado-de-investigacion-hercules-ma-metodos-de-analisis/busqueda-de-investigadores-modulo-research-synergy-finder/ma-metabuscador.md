# Hércules : MA. Metabuscador



El código del servicio de metabúsqueda está en [HerculesMA/metabuscador.md at main · HerculesCRUE/HerculesMA (github.com)](https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/metabuscador.md "https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/metabuscador.md")

El metabuscador se inicia haciendo clic en el “input” que se encuentra en la cabecera, al lado del título de la página. Una vez que se haga clic, se abre un “popup” donde inicialmente se muestran las últimas búsquedas realizadas por el usuario.

![](/attachments/598147659/598148385.jpg)

A partir del segundo carácter, y después de 0\.5s sin escribir ningún carácter, se iniciará una petición GET al servicio de búsqueda. Al mismo tiempo, se guarda esa búsqueda en el navegador del usuario, para mostrarla posteriormente en el listado de “últimas búsquedas”.

El servicio da como resultado un máximo de 3 elementos de cada categoría ordenados por orden de mayor “peso” en el resultado de la búsqueda. El orden resultante es el siguiente:

1. Publicaciones
2. Investigadores
3. Grupos de investigación
4. Proyectos
5. Otros objetos de investigación

![](/attachments/598147659/598148380.jpg)

Una vez que se han recibido los resultados, el buscador muestra las secciones que han dado resultados hasta un máximo de 3 elementos, pintándose únicamente las secciones que tienen resultados. Así mismo, también se puede hacer clic debajo de los resultados para acceder a la búsqueda en cada sección, que enlaza con las páginas de búsqueda que mostraríanlos los resultados completos.

Si no hubiera resultados, se mostraría un mensaje de que no hay resultados.

![](/attachments/598147659/598148381.jpg)

  





