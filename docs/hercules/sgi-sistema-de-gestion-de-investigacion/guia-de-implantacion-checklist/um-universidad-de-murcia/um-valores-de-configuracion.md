# Hércules : UM \- Valores de configuración



## Identificación de colectivos

#### Listado de colectivos UMU



| ID | Colectivo |
| --- | --- |
| 1 | Alumnos |
| 2 | Personas de administración y servicios |
| 3 | Personal docente e investigador |
| 4 | Externos |

  


#### Mapeo Tipos colectivo SGI \- Colectivo UMU



| Tipo colectivo SGI | Colectivo UMU |
| --- | --- |
| Solicitante ética | Alumnos (1\)Personal docente e investigador (3\)Externos (4\) |
| Evaluador ética | Personas de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |
| Equipo trabajo ética | Personas de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |
| Solicitante csp | Alumnos (1\)Personas de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |
| Responsable económico csp | Personas de administración y servicios (2\)Personal docente e investigador (3\) |
| Autor invención | Alumnos (1\)Personas de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |
| Responsable proyecto externo | Externos (4\) |
| Autor prc | Alumnos (1\)Personas de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |
| Destinatario comunicado | Alumnos (1\)Personas de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |
| Persona autorizada grupo | Alumnos (1\)Personas de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |
| Tutor csp | Personas de administración y servicios (2\)Personal docente e investigador (3\) |
| Miembro Equipo Empresa de Explotación de Resultados | Alumnos (1\)Personas de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |

  


#### Roles proyecto SGI \- Mapeo colectivos UMU

Tablas "rol proyecto" y "rol proyecto colectivo"



| ID (rol proyecto) | Abreviatura (rol proyecto) | Nombre (rol proyecto) | Descripción (rol proyecto) | Colectivos (rol proyecto colectivo) |
| --- | --- | --- | --- | --- |
| 1 | IP | Investigador/a principal | Investigador/a principal | Personal docente e investigador (3\)Externos (4\) |
| 2 | COIP | Co\-Investigador/a Principal | Co\-Investigador/a Principal | Personal docente e investigador (3\)Externos (4\) |
| 3 | PDI | PDI – UMU | PDI – UMU miembro E.I. | Personal docente e investigador (3\) |
| 4 | PDIEX | PDI – EXTERNO | PDI – EXTERNO miembro E.I. | Externos (4\) |
| 5 | ASESR | Asesor científico | Asesor científico E.I. | Personal de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |
| 6 | PAS | PAS E.I. | PAS E.I. | Personal de administración y servicios (2\)Externos (4\) |
| 7 | PFOEI | Personal en formación E.I. | Personal en formación E.I. | Alumnos (1\) |
| 8 | COLEI | Colaborador E.I. | Colaborador E.I. | Personal docente e investigador (3\) |
| 9 | PCOET | Personal contratado E.T. | Personal contratado E.T. | Personal de administración y servicios (2\)Personal docente e investigador (3\) |
| 10 | PFOET | Personal en formación E.T. | Personal en formación E.T. | Alumnos (1\) |
| 11 | RPET | Resto personal E.T. | Resto personal E.T. | Alumnos (1\)Personal de administración y servicios (2\)Personal docente e investigador (3\)Externos (4\) |
| 12 | COLET | Colaborador E.T. | Colaborador E.T. | Personal docente e investigador (3\)Externos (4\) |
| 13 | PRASC | Profesorado Asociado | Profesorado Asociado | Personal docente e investigador (3\) |

  


## Configuración del correo.

Se hace durante el despliegue. En la implantación del piloto de Murcia tiene los siguientes valores:

    \- name: SPRING\_MAIL\_HOST

      value: "[smpt.um.es](http://smpt.um.es "http://smpt.um.es")"

    \- name: SPRING\_MAIL\_PORT

      value: "465"

    \- name: SPRING\_MAIL\_USERNAME

      value: [noreply@um.es](mailto:noreply@um.es "mailto:noreply@um.es")

    \- name: SPRING\_MAIL\_PASSWORD

      value: ""

    \- name: SGI\_DISABLE\-EMAIL\-SEND

      value: "false"

    \- name: SGI\_FAKE\-EMAIL\-RECIPIENTS

      value: [fakeSGI@um.es](mailto:fakeSGI@um.es "mailto:fakeSGI@um.es")

En este caso, todos los correos se generan desde la cuenta [noreply@um.es](mailto:noreply@um.es "mailto:noreply@um.es") y llegan al correo fakeSGI.

## CSP

### Tabla Configuracion



| Nombre campo | Valor |
| --- | --- |
| formato\_partida\_presupuestaria | ``` ^[A-Z0-9]{2}\\.[A-Z0-9]{4}\\.[A-Z0-9]{4}(\\.[A-Z0-9]{5,})$ ``` |

  


## ETICA

### Tabla Configuracion



| Nombre campo | Valor |
| --- | --- |
| dias\_archivada\_inactivo | ``` 45 ``` |
| dias\_limite\_evaluador | 3 |
| meses\_archivada\_pendiente\_correcciones | 6 |
| dias\_aviso\_retrospectiva | 30 |

  


## CONFIGURACIÓN (CONF)

Identificador de la Universidad de Murcia (id en el SGEMP): Q3018001

  


## PRC

### Valores tabla índice de experimentalidad

[Indice experimentalidad.xlsx](/attachments/597852492/597858211.xlsx "attachments/597852492/597858211.xlsx")

### Puntos baremos Artículos



| Baremo | Puntuación |
| --- | --- |
| JCR \- Q1 | 8 |
| JCR \- Q1 \- Decil1(baremo adicional) | 1 |
| JCR \- Q2 | 6\.5 |
| JCR \- Q3 | 5 |
| JCR \- Q4 | 3\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q1 | 6\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q2 | 5\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q3 | 4\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q4 | 3\.5 |
| DIALNET, MIAR,FECYT \- Q1 | 3\.5 |
| DIALNET, MIAR,FECYT \- Q2 | 4 |
| DIALNET, MIAR,FECYT \- Q3 | 3 |
| DIALNET, MIAR,FECYT \- Q4 | 2 |
| Artículo | 0\.75 |
| Nature o Science | 16 |
| Indice normalizado | 1 |
| Liderazgo | 1 |
| Excelencia | 1 |
| Open Access | 1 |
| Internacionalización | 1 |
| Multidisciplinariedad/Interdisciplinariedad | 1 |
| Número de autores | nº autores:modulador1: 1,32\-3:1,14\-5:16\-7:0,98\+:0,8 |
| Áreas | Poner por defecto 1 para cada área |

### Puntos baremos Libros



| Baremo | Puntuación |
| --- | --- |
| Autoría \- BCI \- Editorial extranjera | 12 |
| Autoría \- BCI \- Editorial nacional | 8 |
| Autoría \- ICEE \- Q1 | 12 |
| Autoría \-  ICEE \- Resto cuartiles | 8 |
| Autoría \- DIALNET | 2 |
| Autoría \- Otras contribuciones | 2 |
| Capítulo de libro \- BCI \- Editorial extranjera | 4 |
| Capítulo de libro \- BCI \- Editorial nacional | 3 |
| Capítulo de libro \- ICEE \- Q1 | 4 |
| Capítulo de libro \-  ICEE \- Resto cuartiles | 3 |
| Capítulo de libro \- DIALNET | 0\.75 |
| Capítulo de libro \- Otras contribuciones | 0\.75 |
| Edición \- BCI \- Editorial extranjera | 5 |
| Edición \- BCI \- Editorial nacional | 2\.5 |
| Edición \- ICEE \- Q1 | 5 |
| Edición \-  ICEE \- Resto cuartiles | 2\.5 |
| Edición \- DIALNET | 1 |
| Edición \- Otras contribuciones | 1 |
| Comentario sistemático a normas \- BCI \- Editorial extranjera |  |
| Comentario sistemático a normas \- BCI \- Editorial nacional |  |
| Comentario sistemático a normas \- ICEE \- Q1 | 4 |
| Comentario sistemático a normas \-  ICEE \- Resto cuartiles | 3 |
| Comentario sistemático a normas \- DIALNET |  |
| Comentario sistemático a normas \- Otras contribuciones |  |
| Editorial de reconocido prestigio | 2 |
| Número de autores | No lo tenemos definido. Poned por defecto todo a 1\. |

### Puntos baremos Comités editoriales



| Baremo | Puntuación |
| --- | --- |
| JCR \- Q1 | 8 |
| JCR \- Q2 | 6\.5 |
| JCR \- Q3 | 5 |
| JCR \- Q4 | 3\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q1 | 6\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q2 | 5\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q3 | 4\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q4 | 3\.5 |
| DIALNET, MIAR,FECYT \- Q1 | 4 |
| DIALNET, MIAR,FECYT \- Q2 | 3 |
| DIALNET, MIAR,FECYT \- Q3 | 2 |
| DIALNET, MIAR,FECYT \- Q4 | 1 |
| Comité editorial | 0\.75 |
| JCR \- Q1 \- Editor | 2 |
| JCR \- Q1  \- Editor | 1\.5 |
| JCR \- Q2  \- Editor | 1 |
| JCR \- Q3  \- Editor | 0\.5 |
| JCR \- Q4  \- Editor | 1\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q1  \- Editor | 1\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q2  \- Editor | 1 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q3  \- Editor | 0\.5 |
| CitEC, SCOPUS, SCIMAGO, ERIH\-PLUS \- Q4  \- Editor | 0\.25 |
| DIALNET, MIAR,FECYT \- Q1  \- Editor | 1 |
| DIALNET, MIAR,FECYT \- Q2  \- Editor | 0\.75 |
| DIALNET, MIAR,FECYT \- Q3  \- Editor | 0\.5 |
| DIALNET, MIAR,FECYT \- Q4  \- Editor | 0\.25 |

### Puntos baremos Congresos



| Baremo | Puntuación |
| --- | --- |
| Grupo 1 o CORE A \* | 7 |
| Grupo 2 o CORE A | 4 |
| Internacional \- Póster o cartel | 0\.3 |
| Internacional \- Ponencia oral o escrita | 0\.5 |
| Internacional \- Plenaria/ponencia invitada o keynote | 2 |
| Nacional \- Póster o cartel | 0\.15 |
| Nacional \- Ponencia oral o escrita | 0\.25 |
| Nacional \- Plenaria/ponenecia invitada o keynote | 1 |
| Resumen o abstract en una revista | 0\.2 |
| Internacional \- obra colectiva | 0\.5 |
| Nacional \- obra colectiva | 0\.2 |

### Puntos baremos Obras artísticas



| Baremo | Puntuación |
| --- | --- |
| Exp. Grupo 1 individual | 9 |
| Exp. Grupo 1 colectiva | 5 |
| Exp. Grupo 2 individual | 7 |
| Exp. Grupo 2 colectiva | 4 |
| Exp. Grupo 3 | 3 |
| Exp. Grupo 4 | 1 |
| Diseño \- Grupo 1 | 6 |
| Diseño \- Grupo 2 | 2 |
| Diseño \- Grupo 3 | 0\.5 |

### Puntos baremos Dirección de tesis



| Baremo | Puntuación |
| --- | --- |
| Tesis doctoral | 5 |
| Tesina, DEA, TFM | 1 |
| Mención industrial | 3 |
| Mención internacional | 3 |

### Puntos baremos Organización de actividades I\+D\+i



| Baremo | Puntuación |
| --- | --- |
| Comité científico y/o organizador nacional | 0\.5 |
| Comité científico y/o organizador internacional | 1 |
| Comité científico y/o organizador nacional \- Presidente | 1\.5 |
| Comité científico internacional \- Presidente | 2\.5 |

### Puntos baremos Invenciones



| Baremo | Puntuación |
| --- | --- |
| Patente \- Nacional | 8 |
| Patente \- Internacional | 15 |
| Otro registro de la propiedad \- Nacional | 4 |
| Otro registro de la propiedad \- Internacional | 7\.5 |
| Licencia explotación | \< 30000 5\>30000 15 |

### Puntos baremos Proyectos investigación



| Baremo | Puntuación |
| --- | --- |
| Regional/Autonómico | 7 |
| Nacional | 15 |
| Europeos/Internacional | 15 |
| Resto | 5 |
| Regional/Autonómico \- Convocatoria de excelencia | 5 |
| Nacional \- Convocatoria de excelencia | 10 |
| Regional/Autonómico \- IP | 2 |
| Nacional \- IP | 7 |
| Europeos/Internacional \- IP | 7 |
| Resto \- IP | 2 |

### Puntos baremos Contratos



| Baremo | Puntuación |
| --- | --- |
| Cuantía | Cuantía Puntos\< 30000 230000 \- 60000 4\>60000 6 |




