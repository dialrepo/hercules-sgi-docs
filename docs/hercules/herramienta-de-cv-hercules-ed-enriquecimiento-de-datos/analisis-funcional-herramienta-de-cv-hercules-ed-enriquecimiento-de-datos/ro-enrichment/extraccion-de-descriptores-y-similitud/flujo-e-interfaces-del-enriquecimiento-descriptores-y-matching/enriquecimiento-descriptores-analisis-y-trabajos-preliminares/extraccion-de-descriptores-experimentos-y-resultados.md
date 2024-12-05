# Hércules : Extracción de descriptores. Experimentos y resultados



## Preparación de datasets

Se ha definido una taxonomía unificada que cubre las diferentes áreas de conocimiento y los diferentes tipos de de RO:

* Papers (ASJC \+ Arxiv\+ Pubmed) \+ protocolos (Bio\-protocol) \+ proyectos código (Sourceforge).

Para la generación de datasets de entrenamiento se han utilizado las siguientes fuentes:

* Protocolos: Bio\-protocol.
* Proyectos código: Sourceforge.
* Papers: Arxiv \+ dataset interno (autores españoles).

### Dataset de ROs de bioprotocolos

Se ha creado un dataset mediante scraping de las páginas de [bio\-protocol.org](http://bio-protocol.org "http://bio-protocol.org"). Hemos recuperado 6\.473 protocolos, obteniendo los siguientes metadatos para cada uno de ellos: título, autores, DOI, publicación, resumen, palabras clave, background, materiales, equipamiento, software, procedimiento, análisis de datos, notas, recetas, reconocimientos, declaración de intereses, ética, referencias y categorías.



| **Category** | **Total in dataset** | **Train** | **Dev** | **test** |
| --- | --- | --- | --- | --- |
| Biochemistry | 1009 | 705 | 154 | 150 |
| Biophysics | 43 | 32 | 4 | 7 |
| Cancer\_Biology | 320 | 226 | 49 | 45 |
| Cell\_Biology | 1401 | 972 | 213 | 216 |
| Developmental\_Biology | 172 | 130 | 14 | 28 |
| Environmental\_science | 11 | 7 | 2 | 2 |
| Immunology | 435 | 297 | 71 | 67 |
| Microbiology | 895 | 601 | 153 | 141 |
| Molecular\_Biology | 733 | 498 | 103 | 132 |
| Neuroscience | 441 | 296 | 78 | 67 |
| Plant\_Science | 754 | 542 | 98 | 114 |
| Stem\_Cell | 162 | 113 | 24 | 25 |
| Systems\_Biology | 97 | 67 | 18 | 12 |
| **Total** | 6473 | 4486 | 981 | 1006 |
| **Total examples** | 3489 | 2435 | 525 | 529 |

Tabla 1: Dataset de bioprotocolos.

### Dataset de descripciones de proyectos de código

Se ha creado un dataset que incluye descripciones de proyectos de código enlazados con los correspondientes descriptores temáticos (21\) a partir de [sourceforge.net](http://sourceforge.net "http://sourceforge.net"). En un primer paso, se han descargado los nombres de los proyectos alojados en sourceforge mediante scraping a partir del directorio [https://sourceforge.net/directory](https://sourceforge.net/directory "https://sourceforge.net/directory"). Posteriormente, se han obtenido los metadatos (que incluyen los descriptores temáticos) de cada nombre utilizando el API [sourceforge.net/projects/codeblocks](http://sourceforge.net/projects/codeblocks "http://sourceforge.net/projects/codeblocks").). Se muestra, a continuación, las estadísticas para los descriptores de primer nivel:



| **Category** | **Total in dataset** | **Train** | **Dev** | **test** |
| --- | --- | --- | --- | --- |
| Multimedia | 7112 | 4970 | 1080 | 1062 |
| Desktop Environment | 4539 | 3180 | 684 | 675 |
| Social sciences | 393 | 273 | 62 | 58 |
| Mobile | 1356 | 956 | 205 | 195 |
| Sociology | 309 | 232 | 33 | 44 |
| Blockchain | 120 | 81 | 19 | 20 |
| Scientific/Engineering | 6977 | 4912 | 982 | 1083 |
| Software Development | 9055 | 6352 | 1343 | 1360 |
| Internet | 7993 | 5566 | 1223 | 1204 |
| Formats and Protocols | 4713 | 3344 | 666 | 703 |
| Religion and Philosophy | 553 | 389 | 85 | 79 |
| Database | 4900 | 3442 | 738 | 720 |
| Security | 4684 | 3300 | 692 | 692 |
| Communications | 6047 | 4191 | 928 | 928 |
| Games/Entertainment | 5482 | 3860 | 812 | 810 |
| Office/Business | 5623 | 3984 | 808 | 831 |
| System | 7888 | 5500 | 1176 | 1212 |
| Education | 4719 | 3292 | 726 | 701 |
| Terminals | 1061 | 737 | 162 | 162 |
| Text Editors | 4504 | 3180 | 661 | 663 |
| Printing | 830 | 567 | 135 | 128 |
| **Total** | 88858 | 62308 | 13220 | 13330 |
| **Total examples** | 57687 | 40381 | 8653 | 8653 |

Tabla 2: Dataset de proyectos de código.

### Dataset de artículos científicos

Se está creando un dataset de artículos científicos con un doble objetivo: servir de entrenamiento para la extracción de descriptores y utilizarlo para obtener datos que permitan realizar pruebas de carga. Para la elaboración del dataset nos hemos encontrado con múltiples problemas legales y restricciones en el uso de fuentes de datos como WoS, Dialnet y otras. Por ello, se están utilizando las siguientes fuentes de datos disponibles para ello y que igualmente condicionan la elaboración de una taxonomía unificada de descriptores temáticos:

* ArXiv.
* PubMed.
* Dataset interno creado a partir de Scopus en el marco de un proyecto del Plan de Impulso de la Lengua y utilizado en el Challenge.

[ASJC de Scopus](https://service.elsevier.com/app/answers/detail/a_id/15181/supporthub/scopus/session/L2F2LzEvdGltZS8xNjI2MTc2NDMxL2dlbi8xNjI2MTc2NDMxL3NpZC9mVTJIUHk5ajgxdEFNQ29CNlZtUVVSTU5ldzFkcmdVSEQ2dDRqS0x6OW1teWliSXQwd1MwX3Y4SGhscGZhQUtkYktyRkpnNEJydzd1MHBPdGpnZ2VjVXVwVlRkMnpvZ0h4SmZYYm5GeVJBWUc0U0FhX282QmpydkElMjElMjE%3D/ "https://service.elsevier.com/app/answers/detail/a_id/15181/supporthub/scopus/session/L2F2LzEvdGltZS8xNjI2MTc2NDMxL2dlbi8xNjI2MTc2NDMxL3NpZC9mVTJIUHk5ajgxdEFNQ29CNlZtUVVSTU5ldzFkcmdVSEQ2dDRqS0x6OW1teWliSXQwd1MwX3Y4SGhscGZhQUtkYktyRkpnNEJydzd1MHBPdGpnZ2VjVXVwVlRkMnpvZ0h4SmZYYm5GeVJBWUc0U0FhX282QmpydkElMjElMjE%3D/") y [arXiv](https://arxiv.org/category_taxonomy "https://arxiv.org/category_taxonomy") utilizan descriptores diferentes en sus clasificaciones, por lo que ha sido necesario hacer una fusión entre los dos sistemas de clasificación. También se ha realizado el mismo proceso de integración con los descriptores de la clasificación [MESH de PubMed que cuelgan de la entrada “Medicine”](https://meshb.nlm.nih.gov/record/ui?ui=D008511 "https://meshb.nlm.nih.gov/record/ui?ui=D008511"), dado que investigadores consultados en dicho dominio así lo han sugerido. Por lo tanto, la taxonomía fusionada es la resultante de la única aproximación factible encontrada. La taxonomía resultante tiene tres niveles de granularidad:

* Nivel 1 (L1\): 5 descriptores
* Nivel 2 (L2\): 27 descriptores
* Nivel 3 (L3\): 344 descriptores



| **Category** | **Total in dataset** | **Train** | **Dev** | **Test** |
| --- | --- | --- | --- | --- |
| Agricultural and Biological Sciences | 13,128 | 9106 | 2007 | 2015 |
| Arts and Humanities | 6,857 | 4804 | 1060 | 992 |
| Biochemistry, Genetics and Molecular Biology | 15,506 | 10880 | 2303 | 2323 |
| Business, Management and Accounting | 6,896 | 4789 | 1050 | 1057 |
| Chemical Engineering | 8,277 | 5790 | 1195 | 1292 |
| Chemistry | 13,180 | 9204 | 1925 | 2051 |
| Computer Science | 13,637 | 9573 | 2036 | 2028 |
| Decision Sciences | 5,344 | 3742 | 798 | 804 |
| Dentistry | 2,970 | 2087 | 454 | 429 |
| Earth and Planetary Sciences | 6,429 | 4493 | 974 | 962 |
| Economics, Econometrics and Finance | 6,771 | 4776 | 994 | 1001 |
| Energy | 6,476 | 4552 | 923 | 1001 |
| Engineering | 14,885 | 10379 | 2191 | 2315 |
| Environmental Science | 10,350 | 7206 | 1541 | 1603 |
| Health Professions | 5,107 | 3608 | 786 | 713 |
| Immunology and Microbiology | 7,494 | 5237 | 1164 | 1093 |
| Materials Science | 9,531 | 6717 | 1367 | 1447 |
| Mathematics | 12,415 | 8699 | 1873 | 1843 |
| Medicine | 24,845 | 17442 | 3731 | 3671 |
| Multidisciplinary | 4,344 | 3059 | 633 | 652 |
| Neuroscience | 6,391 | 4480 | 971 | 940 |
| Nursing | 5,365 | 3725 | 812 | 828 |
| Pharmacology, Toxicology and Pharmaceutics | 6,122 | 4257 | 946 | 918 |
| Physics and Astronomy | 14,277 | 9992 | 2181 | 2104 |
| Psychology | 6,412 | 4495 | 968 | 948 |
| Social Sciences | 11,434 | 8054 | 1701 | 1678 |
| Veterinary | 5,043 | 3569 | 771 | 703 |
| **Total** | 123,965 | 86,775 | 18,594 | 18,594 |
| **Total examples** | 249,486 | 174,715 | 37,355 | 37,411 |

Tabla 3\. Dataset de papers (L2\=27 descriptores).

## Entrenamiento y evaluación de clasificadores multi\-etiqueta para identificación de descriptores temáticos

A partir del dataset presentado anteriormente se han entrenado clasificadores multi\-etiqueta utilizando diferentes estrategias de representación textual y diferentes algoritmos. Por un lado, se ha analizado una representación textual no densa basada en bolsa\-de\-palabras, y por otro, una representación densa basada en embeddings contextuales.

Para implementar la clasificación basada en la representación vectorial no densa se han estudiado los algoritmos Logistic Regression y SVM. Los valores de los vectores se computan en base al estadístico TFIDF, y la clasificación multi\-etiqueta se aborda mediante la estrategia one\-vs\-all y oversampling aleatorio en cada clasificador booleano.

El clasificador basado en la representación densa se ha implementado utilizando modelos de lenguaje neuronal pre\-entrenados (BERT, BART, Electra...) que se han afinado (*fine\-tuned)* a la tarea multi\-etiqueta.

Se muestran, a continuación, los resultados (según las métricas de Precision, Recall, y F\-score) obtenidos en los experimentos:



| **Overall results (macro avg)** | **P** | **R** | **F** |
| --- | --- | --- | --- |
| **LR** | **0\.66** | **0\.59** | **0\.62** |
| SVM | 0\.59 | 0\.46 | 0\.52 |
| Bert\-base Binary Classifiers (oversample) |  |  |  |
| Bert\-base \- (Zuhaitz\-TF) \- oversample max | 0\.67 | 0\.56 | 0\.60 |
| Bert\-base \- (Transformers\-Pytorch) \- oversample max | 0\.68 | 0\.56 | 0\.61 |
| Electra\-base \- (Transformers\-Pytorch) \- oversample max | 0\.69 | 0\.54 | 0\.58 |
| **RoBerta\-base \- (Transformers\-Pytorch) \- oversample max** | **0\.71** | **0\.62** | **0\.66** |
| **RoBerta\-large \- (Transformers\-Pytorch) \- oversample max** | **0\.65** | **0\.65** | **0\.65** |
| Bert\-large\-cased \- (Transformers\-Pytorch) \- oversample max | 0\.63 | 0\.59 | 0\.60 |
| Electra\-large \- (Transformers\-Pytorch) \- oversample max | 0\.65 | 0\.48 | 0\.53 |
| BigBird\-base\-(2048\) \- (Transformers\-Pytorch) \- oversample max | 0\.66 | 0\.58 | 0\.61 |

Tabla 4: Resultados para bioprotocolos (13 descriptores).

  
  




| **Overall results (macro avg)** | **P** | **R** | **F** |
| --- | --- | --- | --- |
| **LR** | **0\.49** | **0\.60** | **0\.53** |
| SVM | 0\.53 | 0\.52 | 0\.51 |
| Bert\-base Binary Classifiers (oversample) | 0\.65 | 0\.49 | 0\.55 |
| **Bert\-base (512\) \- (Transformers\-Pytorch) \- oversample max** | **0\.68** | **0\.55** | **0\.61** |
| RoBerta\-base \- (Transformers\-Pytorch) \- oversample max | 0\.66 | 0\.56 | 0\.60 |
| **RoBerta\-large \- (Transformers\-Pytorch) \- oversample max** | **0\.67** | **0\.59** | **0\.62** |
| Bert\-large\-cased (256\) \- (Transformers\-Pytorch) \- oversample max | 0\.66 | 0\.57 | 0\.61 |

Tabla 5: Resultados para proyectos de código (21 descriptores).

  




| **Granularity** | **System** | **P** | **R** | **F** |
| --- | --- | --- | --- | --- |
| L0 (5 label) | LR | 0\.82 | 0\.82 | 0\.82 |
| SVM | 0\.77 | 0\.86 | 0\.81 |
| **BERT** | **0\.92** | **0\.92** | **0\.92** |
| L1 (27 label) | LR | 0\.61 | 0\.86 | 0\.72 |
| SVM | 0\.75 | 0\.79 | 0\.77 |
| **BERT** | **0\.93** | **0\.92** | **0\.92** |
| L2 (344 label) | LR | 0\.41 | 0\.86 | 0\.55 |
| SVM | 0\.68 | 0\.72 | 0\.7 |
| BERT | 0\.89 | 0\.84 | 0\.86 |
| **mBERT (test on Spanish papers)** | **0\.94** | **0\.93** | **0\.94** |

Tabla 6: Resultados para papers con distintas granularidades de la taxonomía. También se incluyen resultados de evaluación multilingüe mostrando resultados para papers en castellano (mBERT).

## Entrenamiento y evaluación de sistema para identificación de descriptores específicos

Se ha experimentado con un enfoque de extracción consistente de dos componentes: extractor de sintagmas nominales para identificar los candidatos a descriptor específico, y clasificador supervisado para cribar los candidatos. Para implementar el clasificador supervisado se han analizado dos enfoques. La estructura del sistema estudiado sería la siguiente:

* Extractor de sintagmas nominales: Procesador lingüistico de spaCy \+ patrones morfosintácticos.
* Clasificador supervisado:
+ Basado en atributos (Gradient Boosting): Frecuencia, posición, frecuencia en colección de dominio abierto, incluido en título?, incluido en abstract?,. …
+ Basado en un modelo BERT ajustado a la tarea.

Se muestran, a continuación, los resultados obtenidos sobre el dataset de papers Krapivin descrito en el capítulo 2\.



|  | **Gradient Boosting** | | | **Bert (pair\-sentence classification)** | | |
| --- | --- | --- | --- | --- | --- | --- |
| **Score type** | **All** | **Single\-word** | **Multi\-word** | **All** | **Single\-word** | **Multi\-word** |
| R@5 | 0\.35 | 0\.50 | 0\.62 | 0\.31 | 0\.43 | 0\.38 |
| R@10 | 0\.53 | 0\.65 | 0\.77 | 0\.44 | 0\.52 | 0\.54 |
| R@15 | 0\.62 | 0\.75 | 0\.83 | 0\.52 | 0\.58 | 0\.62 |
| R@20 | 0\.70 | 0\.82 | 0\.89 | 0\.57 | 0\.62 | 0\.67 |

Tabla 7: Resultados para extracción de descriptores específicos sobre papers (dataset *Krapivin*). Métrica de evaluación, recall at X.

  


Próximos trabajos:

* Evaluación de descriptores específicos sobre proyectos de código, e integración de matching (enlazado de entidades) en el proceso de extracción de descriptores específicos. Ver apartado de Matching en [Flujo e interfaces del enriquecimiento. Descriptores y Matching](/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/index.md "/hercules/herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/analisis-funcional-herramienta-de-cv-hercules-ed-enriquecimiento-de-datos/ro-enrichment/extraccion-de-descriptores-y-similitud/flujo-e-interfaces-del-enriquecimiento-descriptores-y-matching/index.md").




