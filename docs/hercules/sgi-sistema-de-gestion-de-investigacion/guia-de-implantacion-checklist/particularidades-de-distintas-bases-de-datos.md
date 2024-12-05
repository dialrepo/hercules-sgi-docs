# Hércules : Particularidades de distintas bases de datos



Aquí se encuentra la documentación de los cambios realizados en función de las distintas bases de datos que se han testado.1\. La ordenación y las búsquedas no tienen que ser sensibles a los acentos ni distinguir entre mayúsculas y minúsculas.

##### Oracle:

Hay que modificar las variables de sesion **NLS\_SORT** para que use un collation como SPANISH\_AI (tiene que tener sufijo AI que indica que no es sensible a acentos ni mayúsculas) y  **NLS\_COMP** a LINGUISTIC para que las comparaciones se hagan de forma acorde a lo indicado en **NLS\_SORT.**

Para aplicar esta configuración usar un trigger que cambie en la sesion estos valores como el siguiente: 



| **CREATE** OR REPLACE **TRIGGER** SYS.ALTER\_COLLATION\_FOR\_SGI**AFTER** LOGON **on** **DATABASE****BEGIN**    IF ( user like '%\_SGI' ) **THEN**        **execute** immediate 'ALTER SESSION SET NLS\_SORT\=SPANISH\_AI';        **execute** immediate 'ALTER SESSION SET NLS\_COMP\=LINGUISTIC';    **END** IF;**END**; |
| --- |

  


##### SQL Server:

Al crear la base de datos indicar un collation con los sufijos CI (case\-insensitive) y AI (accent\-insensitive) como Modern\_Spanish\_100\_CI\_AI.



| **CREATE** **DATABASE** SGI **COLLATE** Modern\_Spanish\_100\_CI\_AI; |
| --- |

  


#### 2\. La longitud de las columnas de texto se debe de medir en caracteres, en lugar de en bytes.

##### Oracle:

Para que se defina el tamaño en caracteres la propiedad **NLS\_LENGTH\_SEMANTIC** tiene que tener el valor CHAR, para hacerlo hay que usar un trigger que cambie en la sesion estos valores como el siguiente: 



| **CREATE** OR REPLACE **TRIGGER** SYS.ALTER\_NLS\_FOR\_SGI**AFTER** LOGON **on** **DATABASE****BEGIN**    IF ( user like '%\_SGI' ) **THEN**        **execute** immediate 'ALTER SESSION SET NLS\_LENGTH\_SEMANTICS\="CHAR"';    **END** IF;**END**; |
| --- |

  


##### SQL Server:

Aunque la longitud se mide en bytes con las codificaciones habituales para el español los caracteres usan un solo byte.

#### 3\. (SQL Server) Nivel de aislamiento READ\_COMMITTED\_SNAPSHOT si se producen dead locks

Tanto en Oracle como en SQL Server el nivel por defecto es READ\_COMMITTED pero aunque el nombre sea el mismo no se comportan del mismo modo y SQL Server realiza bloqueos también en las lecturas  lo que puede producir dead locks con mayor probabilidad ([https://www.dbi\-services.com/blog/how\-sql\-server\-mvcc\-compares\-to\-oracle\-and\-postgresql/](https://urldefense.com/v3/__https:/www.dbi-services.com/blog/how-sql-server-mvcc-compares-to-oracle-and-postgresql/__;!!D9dNQwwGXtA!TToYltPgqmtNLz3xZmnEiCDVvltMFocbCqt412zS1ISYxl7RySU56QOb0lx_NhuR9aZgI7noW0SG3otNzLRD2Xez$ "https://urldefense.com/v3/__https:/www.dbi-services.com/blog/how-sql-server-mvcc-compares-to-oracle-and-postgresql/__;!!D9dNQwwGXtA!TToYltPgqmtNLz3xZmnEiCDVvltMFocbCqt412zS1ISYxl7RySU56QOb0lx_NhuR9aZgI7noW0SG3otNzLRD2Xez$")), en el caso de detectarlos se debería de configurar como READ\_COMMITTED\_SNAPSHOT que tiene un comportamiento más similar al comportamiento por defecto de postgres y oracle.



| **ALTER** **DATABASE** SGI **SET** READ\_COMMITTED\_SNAPSHOT **ON**; |
| --- |

  





