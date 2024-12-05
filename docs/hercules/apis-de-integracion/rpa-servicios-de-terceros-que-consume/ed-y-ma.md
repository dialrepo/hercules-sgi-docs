# Hércules : ED y MA



Esta página contiene el inventario de servicios de integración consumidos por Hércules RPA para incorporar información desde Hércules\-SGI y Hércules\-ED. A continuación se detallarán que servicios y consultas que se utilizan por proceso.

  


[Proceso 1 : Segmentación y generación automática de boletines informativos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534800&src=contextnavpagetreemode "https://confluence.um.es/confluence/pages/viewpage.action?pageId=397534800&src=contextnavpagetreemode")

  


* Obtención de artículos:



```
select ?s ?nombreDoc ?nombreRevista ?aniomesdia ?fecha group_concat(?nombreArea;separator="|") as ?nombreArea ?autor ?ORCID from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
  		where
            {
                ?s a 'document'.
                ?s <http://w3id.org/roh/title> ?nombreDoc.
                ?s <http://purl.org/dc/terms/issued> ?fecha.
                BIND(?fecha/1000000 as ?aniomesdia).
                ?s <http://purl.org/ontology/bibo/authorList> ?authorList.
                OPTIONAL{
                   ?s <http://vivoweb.org/ontology/core#hasPublicationVenue> ?revista.
                  ?revista <http://w3id.org/roh/title> ?nombreRevista.
                }

                ?authorList <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?persona.
                ?persona <http://xmlns.com/foaf/0.1/name> ?autor.
                OPTIONAL{
                  ?persona <http://w3id.org/roh/ORCID> ?ORCID
                }
                OPTIONAL{
                        ?s <http://w3id.org/roh/hasKnowledgeArea> ?area.
                        ?area <http://w3id.org/roh/categoryNode> ?nodo.
                        ?nodo <http://www.w3.org/2008/05/skos#prefLabel> ?nombreArea.
                        MINUS{?nodo <http://www.w3.org/2008/05/skos#narrower> ?hijos}
                }
                FILTER(?aniomesdia>=" + start_date + " AND ?aniomesdia<=" + end_date + ")"
            }order by desc(?fecha) desc(?s) 
```

  


* Obtención de Oferta Tecnológica (OTC):



```
select * from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
	where {
            ?idOferta a 'offer'.
            ?idOferta  <http://www.schema.org/name> ?titulo.
            ?idOferta  <http://www.schema.org/description> ?description.
            ?idOferta  <http://www.schema.org/availability> <http://gnoss.com/items/offerstate_003>.
            ?idOferta  <http://w3id.org/roh/researchers> ?investigador.
            ?investigador foaf:name ?nombre.
            ?idOferta   <http://purl.org/dc/terms/issued> ?fecha
   	FILTER(?fecha>="+start_date+" && ?fecha <=" +end_date+")"
    }order by desc(?fecha) desc(?s)
```

  


  


[Proceso 2 : Sexenios y acreditaciones](https://confluence.um.es/confluence/display/HERCULES/Proceso+2+%3A+Sexenios+y+acreditaciones?src=contextnavpagetreemode "https://confluence.um.es/confluence/display/HERCULES/Proceso+2+%3A+Sexenios+y+acreditaciones?src=contextnavpagetreemode")

En este proceso se utilizan los servicios de ED y MA para recuperar producción científica desde su servicio de datos enriquecidos, a continuación se detallan las consultas SPARQL que se llevan a cabo : 

* Obtener datos de investigador a partir de ORCID:



```
select ?person ?nombreCompleto ?email ?nombreDepartamento ?nombreUniversidad from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
    where 
    {
        ?person a 'person'.
        ?person <http://xmlns.com/foaf/0.1/name> ?nombreCompleto.
        OPTIONAL{
            ?person <http://vivoweb.org/ontology/core#departmentOrSchool> ?departamento.
            ?departamento <http://purl.org/dc/elements/1.1/title> ?nombreDepartamento.
        }
        OPTIONAL{
            ?person <http://w3id.org/roh/hasRole> ?org.
            ?org <http://w3id.org/roh/title> ?nombreUniversidad .
        }
        OPTIONAL{
    ?person <https://www.w3.org/2006/vcard/ns#email> ?email.
    }

        ?person <http://w3id.org/roh/ORCID> ?orcid.
        FILTER(?orcid='"""+orcid+"""')
    }


```

  


* Obtener datos de investigador a partir de PersonaRef:



```
select ?person ?nombreCompleto ?email ?nombreDepartamento ?nombreUniversidad from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
        where 
        {
            ?person a 'person'.
            ?person <http://xmlns.com/foaf/0.1/name> ?nombreCompleto.
            OPTIONAL{
                ?person <http://vivoweb.org/ontology/core#departmentOrSchool> ?departamento.
                ?departamento <http://purl.org/dc/elements/1.1/title> ?nombreDepartamento.
            }
            OPTIONAL{
                ?person <http://w3id.org/roh/hasRole> ?org.
                ?org <http://w3id.org/roh/title> ?nombreUniversidad .
            }
            OPTIONAL{
        ?person <https://www.w3.org/2006/vcard/ns#email> ?email.
        }
            ?person <http://w3id.org/roh/crisIdentifier> ?identifier.
            FILTER(?identifier='"""+persona_ref+"""')
 		} 
```

  


* Obtener datos de investigador a partir del email del investigador:



```
select ?person ?nombreCompleto ?email ?nombreDepartamento ?nombreUniversidad from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
        where 
        {
            ?person a 'person'.
            ?person <http://xmlns.com/foaf/0.1/name> ?nombreCompleto.
            OPTIONAL{
                ?person <http://vivoweb.org/ontology/core#departmentOrSchool> ?departamento.
                ?departamento <http://purl.org/dc/elements/1.1/title> ?nombreDepartamento.
            }
            OPTIONAL{
                ?person <http://w3id.org/roh/hasRole> ?org.
                ?org <http://w3id.org/roh/title> ?nombreUniversidad .
            }
            OPTIONAL{
        ?person <https://www.w3.org/2006/vcard/ns#email> ?email.
        }
            ?person <https://www.w3.org/2006/vcard/ns#email> ?email.
            FILTER(?email='"""+email+"""') 
        }
```

  


* Obtener producción científica a partir del ORCID de investigador:



```
select distinct ?doc ?citasWos ?citasScopus ?citasSemanticScholar ?tipoProduccion ?title ?posicion ?autorUnico ?quartile from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
    where 
    {
                        select distinct ?title ?citasWos ?citasScopus ?citasSemanticScholar ?tipoProduccion ?posicion ?doc min(?quartile) as ?quartile ?nombreFuenteIndiceImpacto !(max(?dif)) as ?autorUnico
                        where
                        {
                            ?doc a 'document'.
                            ?doc <http://w3id.org/roh/title> ?title.
                            ?doc <http://vivoweb.org/ontology/core#hasPublicationVenue> ?revista.
                            ?doc <http://w3id.org/roh/isValidated> 'true'.
                            ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                            ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#comment> ?posicion.
                            ?doc <http://purl.org/dc/terms/issued> ?fecha.  
                            BIND(?fecha/10000000000 as ?anioFecha).
                            ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.

                            OPTIONAL{?doc <http://w3id.org/roh/wosCitationCount> ?citasWos.} 
                            OPTIONAL{?doc <http://w3id.org/roh/scopusCitationCount> ?citasScopus.}      
                            OPTIONAL{?doc <http://w3id.org/roh/semanticScholarCitationCount> ?citasSemanticScholar.}

                            ?revista <http://w3id.org/roh/impactIndex> ?indiceImpacto.
                            ?indiceImpacto <http://w3id.org/roh/year> ?anioIndiceImpacto.
                            ?indiceImpacto <http://w3id.org/roh/impactSource> ?fuenteIndiceImpacto.
                            ?fuenteIndiceImpacto <http://purl.org/dc/elements/1.1/title> ?nombreFuenteIndiceImpacto.
                            ?indiceImpacto  <http://w3id.org/roh/impactCategory> ?categoriaIndiceImpacto.
                            ?categoriaIndiceImpacto <http://w3id.org/roh/quartile> ?quartile.
                            ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                            ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                            FILTER(lang(?tipoProduccion )='es')
                            FILTER(?anioIndiceImpacto=?anioFecha)
                            FILTER(lang(?nombreFuenteIndiceImpacto)='es')


                            ?person <http://w3id.org/roh/ORCID> ?orcid.
                            FILTER(?orcid='"""+orcid+"""')
                            FILTER(?anioFecha in ("""+periodo+"""))

                            ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor2.
                            ?listAuthor2 <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person2.
                            BIND(?person!=?person2 as ?dif)
                        }
    }
        
```

  


  


* Obtener producción científica a partir del PersonaRef de investigador:



```
select distinct ?doc ?citasWos ?citasScopus ?citasSemanticScholar ?tipoProduccion ?title ?posicion ?autorUnico ?quartile from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
        where 
        {
                            select distinct ?title ?citasWos ?citasScopus ?citasSemanticScholar ?tipoProduccion ?posicion ?doc min(?quartile) as ?quartile ?nombreFuenteIndiceImpacto !(max(?dif)) as ?autorUnico
                            where
                            {
                                ?doc a 'document'.
                                ?doc <http://w3id.org/roh/title> ?title.
                                ?doc <http://vivoweb.org/ontology/core#hasPublicationVenue> ?revista.
                                ?doc <http://w3id.org/roh/isValidated> 'true'.
                                ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                                ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#comment> ?posicion.
                                ?doc <http://purl.org/dc/terms/issued> ?fecha.  
                                BIND(?fecha/10000000000 as ?anioFecha).
                                ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.

                                OPTIONAL{?doc <http://w3id.org/roh/wosCitationCount> ?citasWos.} 
                                OPTIONAL{?doc <http://w3id.org/roh/scopusCitationCount> ?citasScopus.}      
                                OPTIONAL{?doc <http://w3id.org/roh/semanticScholarCitationCount> ?citasSemanticScholar.}

                                ?revista <http://w3id.org/roh/impactIndex> ?indiceImpacto.
                                ?indiceImpacto <http://w3id.org/roh/year> ?anioIndiceImpacto.
                                ?indiceImpacto <http://w3id.org/roh/impactSource> ?fuenteIndiceImpacto.
                                ?fuenteIndiceImpacto <http://purl.org/dc/elements/1.1/title> ?nombreFuenteIndiceImpacto.
                                ?indiceImpacto  <http://w3id.org/roh/impactCategory> ?categoriaIndiceImpacto.
                                ?categoriaIndiceImpacto <http://w3id.org/roh/quartile> ?quartile.
                                ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                                ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                                FILTER(lang(?tipoProduccion )='es')
                                FILTER(?anioIndiceImpacto=?anioFecha)
                                FILTER(lang(?nombreFuenteIndiceImpacto)='es')


                                ?person <http://w3id.org/roh/crisIdentifier> ?identifier.
                                FILTER(?identifier='"""+persona_ref+"""')

                                ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor2.
                                ?listAuthor2 <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person2.
                                BIND(?person!=?person2 as ?dif)
                            }
        }         
```

  


* Obtener producción científica a partir del email de investigador:



```
select distinct ?doc ?citasWos ?citasScopus ?citasSemanticScholar ?tipoProduccion ?title ?posicion ?autorUnico ?quartile from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
            where 
            {
                                select distinct ?title ?citasWos ?citasScopus ?citasSemanticScholar ?tipoProduccion ?posicion ?doc min(?quartile) as ?quartile ?nombreFuenteIndiceImpacto !(max(?dif)) as ?autorUnico
                                where
                                {
                                    ?doc a 'document'.
                                    ?doc <http://w3id.org/roh/title> ?title.
                                    ?doc <http://vivoweb.org/ontology/core#hasPublicationVenue> ?revista.
                                    ?doc <http://w3id.org/roh/isValidated> 'true'.
                                    ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                                    ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#comment> ?posicion.
                                    ?doc <http://purl.org/dc/terms/issued> ?fecha.  
                                    BIND(?fecha/10000000000 as ?anioFecha).
                                    ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.

                                    OPTIONAL{?doc <http://w3id.org/roh/wosCitationCount> ?citasWos.} 
                                    OPTIONAL{?doc <http://w3id.org/roh/scopusCitationCount> ?citasScopus.}      
                                    OPTIONAL{?doc <http://w3id.org/roh/semanticScholarCitationCount> ?citasSemanticScholar.}

                                    ?revista <http://w3id.org/roh/impactIndex> ?indiceImpacto.
                                    ?indiceImpacto <http://w3id.org/roh/year> ?anioIndiceImpacto.
                                    ?indiceImpacto <http://w3id.org/roh/impactSource> ?fuenteIndiceImpacto.
                                    ?fuenteIndiceImpacto <http://purl.org/dc/elements/1.1/title> ?nombreFuenteIndiceImpacto.
                                    ?indiceImpacto  <http://w3id.org/roh/impactCategory> ?categoriaIndiceImpacto.
                                    ?categoriaIndiceImpacto <http://w3id.org/roh/quartile> ?quartile.
                                    ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                                    ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                                    FILTER(lang(?tipoProduccion )='es')
                                    FILTER(?anioIndiceImpacto=?anioFecha)
                                    FILTER(lang(?nombreFuenteIndiceImpacto)='es')


                                    ?person <https://www.w3.org/2006/vcard/ns#email> ?email.
                                    FILTER(?email='"""+email+"""') 

                                    ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor2.
                                    ?listAuthor2 <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person2.
                                    BIND(?person!=?person2 as ?dif)
                                }
            }         
```

  


* Obtención de capítulos de libros de investigador por ORCID:



```
select ?doc ?titulo ?anioFecha ?tipoProduccion from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
        where
        {
                        ?doc a 'document'.
                        ?doc <http://w3id.org/roh/title> ?titulo .
                        ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                        ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                        FILTER(lang(?tipoProduccion)='es')
                        ?doc <http://w3id.org/roh/isValidated> 'true'.
                        ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                        ?doc <http://purl.org/dc/terms/issued> ?fecha. 
                        BIND(?fecha/10000000000 as ?anioFecha).
                        ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.

                        ?person <http://w3id.org/roh/ORCID> ?orcid.
                        FILTER(?orcid='"""+orcid+"""')
                        FILTER(?typeProduccion=<http://gnoss.com/items/publicationtype_004>)
        }
```

  


* Obtención de capítulos de libros de investigador por PersonaRef:



```
select ?doc ?titulo ?anioFecha ?tipoProduccion from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
        where
        {
                        ?doc a 'document'.
                        ?doc <http://w3id.org/roh/title> ?titulo .
                        ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                        ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                        FILTER(lang(?tipoProduccion)='es')
                        ?doc <http://w3id.org/roh/isValidated> 'true'.
                        ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                        ?doc <http://purl.org/dc/terms/issued> ?fecha. 
                        BIND(?fecha/10000000000 as ?anioFecha).
                        ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.

                        ?person <http://w3id.org/roh/crisIdentifier> ?identifier.
                        FILTER(?identifier='"""+persona_ref+"""')
                        FILTER(?typeProduccion=<http://gnoss.com/items/publicationtype_004>)
        }
```

  


* Obtención de capítulos de libros de investigador por email:



```
select ?doc ?titulo ?anioFecha ?tipoProduccion from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
        where
        {
                        ?doc a 'document'.
                        ?doc <http://w3id.org/roh/title> ?titulo .
                        ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                        ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                        FILTER(lang(?tipoProduccion)='es')
                        ?doc <http://w3id.org/roh/isValidated> 'true'.
                        ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                        ?doc <http://purl.org/dc/terms/issued> ?fecha. 
                        BIND(?fecha/10000000000 as ?anioFecha).
                        ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.

                        ?person <https://www.w3.org/2006/vcard/ns#email> ?email.
                        FILTER(?email='"""+email+"""')
                        FILTER(?typeProduccion=<http://gnoss.com/items/publicationtype_004>)
        }
```

  


* Obtención de libros de investigador por ORCID:



```
select ?doc ?titulo ?anioFecha ?tipoProduccion from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
        where
        {
                        ?doc a 'document'.
                        ?doc <http://w3id.org/roh/title> ?titulo .
                        ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                        ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                        FILTER(lang(?tipoProduccion)='es')
                        ?doc <http://w3id.org/roh/isValidated> 'true'.
                        ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                        ?doc <http://purl.org/dc/terms/issued> ?fecha. 
                        BIND(?fecha/10000000000 as ?anioFecha).
                        ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.

                        ?person <http://w3id.org/roh/ORCID> ?orcid.
                        FILTER(?orcid='"""+orcid+"""')
                        FILTER(?typeProduccion=<http://gnoss.com/items/publicationtype_032>)
        }
```

  


* Obtención de libros de investigador por PersonaRef:



```
select ?doc ?titulo ?anioFecha ?tipoProduccion from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
        where
        {
                        ?doc a 'document'.
                        ?doc <http://w3id.org/roh/title> ?titulo .
                        ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                        ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                        FILTER(lang(?tipoProduccion)='es')
                        ?doc <http://w3id.org/roh/isValidated> 'true'.
                        ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                        ?doc <http://purl.org/dc/terms/issued> ?fecha. 
                        BIND(?fecha/10000000000 as ?anioFecha).
                        ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.

                        ?person <http://w3id.org/roh/crisIdentifier> ?identifier.
                        FILTER(?identifier='"""+persona_ref+"""')
                        FILTER(?typeProduccion=<http://gnoss.com/items/publicationtype_032>)
        }
```

  


* Obtención de libros de investigador por email:



```
select ?doc ?titulo ?anioFecha ?tipoProduccion from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
        where
        {
                        ?doc a 'document'.
                        ?doc <http://w3id.org/roh/title> ?titulo .
                        ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                        ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                        FILTER(lang(?tipoProduccion)='es')
                        ?doc <http://w3id.org/roh/isValidated> 'true'.
                        ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                        ?doc <http://purl.org/dc/terms/issued> ?fecha. 
                        BIND(?fecha/10000000000 as ?anioFecha).
                        ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.

                        ?person <https://www.w3.org/2006/vcard/ns#email> ?email.
                        FILTER(?email='"""+email+"""')
                        FILTER(?typeProduccion=<http://gnoss.com/items/publicationtype_032>)
        }
```

  


* Obtener información y parámetros de un artículo a partir de su ID:



```
select ?titulo ?doi ?tipoProduccion ?fechaPublicacion ?citasWos ?citasScopus  ?citasSemanticScholar ?volumen ?numero ?paginaInicio ?paginaFin min(?journalNumberInCat) as ?journalNumberInCat min(?publicationPosition) as ?publicationPosition  ?issn ?revista ?editorial ?nombreRevista ?indiceImpacto  min(?cuartil)  as ?cuartil    from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
    where
    {
                    ?doc a 'document'.
                    ?doc <http://purl.org/dc/terms/issued> ?fecha.  
                    OPTIONAL{?doc <http://purl.org/ontology/bibo/volume> ?volumen.}
                    OPTIONAL{?doc <http://purl.org/ontology/bibo/issue> ?numero.}
                    OPTIONAL{?doc <http://purl.org/ontology/bibo/pageStart> ?paginaInicio.}
                    OPTIONAL{?doc <http://purl.org/ontology/bibo/pageEnd> ?paginaFin.}
                    ?doc <http://vivoweb.org/ontology/core#hasPublicationVenue> ?revista.
                    ?revista <http://w3id.org/roh/title> ?nombreRevista.
                    OPTIONAL{?revista <http://purl.org/ontology/bibo/issn> ?issn.}
                    BIND(?fecha/10000000000 as ?anioFecha).
                    ?revista <http://w3id.org/roh/impactIndex> ?impactIndex.
                    OPTIONAL{?revista <http://purl.org/ontology/bibo/editor> ?editorial.}
                    ?impactIndex<http://w3id.org/roh/year> ?anioIndiceImpacto.
                    ?impactIndex<http://w3id.org/roh/impactIndexInYear> ?indiceImpacto.
                    ?impactIndex<http://w3id.org/roh/impactSource> ?fuenteIndiceImpacto.
                    ?fuenteIndiceImpacto <http://purl.org/dc/elements/1.1/title> ?nombreFuenteIndiceImpacto.
                    ?impactIndex<http://w3id.org/roh/impactCategory> ?categoriaIndiceImpacto.
                    ?categoriaIndiceImpacto <http://w3id.org/roh/quartile> ?cuartil .
                    ?categoriaIndiceImpacto <http://w3id.org/roh/journalNumberInCat> ?journalNumberInCat .
                    ?categoriaIndiceImpacto <http://w3id.org/roh/publicationPosition> ?publicationPosition .
                    ?doc <http://w3id.org/roh/title> ?titulo .
                    ?doc <http://purl.org/dc/terms/issued> ?fecha.  
                    OPTIONAL{?doc <http://w3id.org/roh/wosCitationCount> ?citasWos.} 
                    OPTIONAL{?doc <http://w3id.org/roh/scopusCitationCount> ?citasScopus.}      
                    OPTIONAL{?doc <http://w3id.org/roh/semanticScholarCitationCount> ?citasSemanticScholar.} 
                    OPTIONAL{?doc <http://purl.org/ontology/bibo/doi> ?doi.}       
                    BIND( concat(substr(str(?fecha),7,2),'-',substr(str(?fecha),5,2),'-',substr(str(?fecha),1,4)) as ?fechaPublicacion )
                    ?doc <http://purl.org/dc/elements/1.1/type> ?typeProduccion.
                    ?typeProduccion <http://purl.org/dc/elements/1.1/title> ?tipoProduccion .
                    FILTER(lang(?tipoProduccion )='es')
                    FILTER(?anioIndiceImpacto=?anioFecha)
                    FILTER(?doc =<"""+id_articulo+""">)
    }
        
```

  


* Obtención de los autores de un artículo en orden por posición del investigador :



```
select ?posicion ?autor ?nombreAutor ?emailAutor ?orcidAutor from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
    where
    {
                    ?doc a 'document'.
                    ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                    ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?autor.
                    ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#comment> ?posicion.
                    ?autor <http://xmlns.com/foaf/0.1/name>  ?nombreAutor.
                    OPTIONAL{?autor <http://w3id.org/roh/ORCID> ?orcidAutor .}
                    OPTIONAL{?autor <https://www.w3.org/2006/vcard/ns#email> ?emailAutor .}
                    FILTER(?doc =<"""+id_articulo+""">)
    }order by asc(?posicion)
```

  


* Obtener trabajos presentados en congresos nacionales e internacionales de un investigador:



```
select ?doc from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
            where
            {
                ?doc a 'document'.
                ?doc <http://w3id.org/roh/scientificActivityDocument> <http://gnoss.com/items/scientificactivitydocument_SAD2>.
                ?doc <http://w3id.org/roh/isValidated> 'true'.
                ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
                ?doc <http://purl.org/dc/terms/issued> ?fecha. 
                BIND(?fecha/10000000000 as ?anioFecha).
                ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.
                """+filtro_investigador+"""
			 	FILTER(?anioFecha in ("""+periodo+"""))
            }
```

  


* Obtener patentes de un investigador:



```
select ?doc from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
where
{
      ?doc a 'patent'.   
      ?doc <http://w3id.org/roh/isValidated> 'true'.
      ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
      ?doc <http://purl.org/dc/terms/issued> ?fecha. 
      BIND(?fecha/10000000000 as ?anioFecha).
      ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person. 
	  """+filtro_investigador+"""
      FILTER(?anioFecha in (2010,2011,2013,2015,2018,2020))
} 
```

  


* Obtener título y fecha de una patente utilizando su identificador:



```
select ?titulo ?fechaPublicacion from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
where
{
     ?doc a 'patent'.
     ?doc <http://w3id.org/roh/title> ?titulo .
     OPTIONAL{?doc <http://purl.org/dc/terms/issued> ?fecha. }
     FILTER(?doc =<"""+id+""">)
}
```

  


* Obtener lista de autores de una patente utilizando su identificador:



```
select ?posicion ?autor ?nombreAutor ?emailAutor ?orcidAutor from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
where
{
    ?doc a 'document'.
    ?doc <http://purl.org/ontology/bibo/authorList> ?listAuthor.
    ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?autor.
    ?listAuthor <http://www.w3.org/1999/02/22-rdf-syntax-ns#comment> ?posicion.
                ?autor <http://xmlns.com/foaf/0.1/name>  ?nombreAutor.
    OPTIONAL{?autor <http://w3id.org/roh/ORCID> ?orcidAutor .}
    OPTIONAL{?autor <https://www.w3.org/2006/vcard/ns#email> ?emailAutor .}
    FILTER(?doc =<"""+id+""">)
}order by asc(?posicion)
```

  


donde, *filtro\_investigador* es el filtro que indica el identificador del investigador, puede ser personaRef, email u ORCID, como se puede ver en las queries anteriores.

  


[Proceso 4 : Sistemas Inteligentes de encaje entre convocatorias e investigadores](https://confluence.um.es/confluence/display/HERCULES/Proceso+4+%3A++Sistemas+Inteligentes+de+encaje+entre+convocatorias+e+investigadores?src=contextnavpagetreemode "https://confluence.um.es/confluence/display/HERCULES/Proceso+4+%3A++Sistemas+Inteligentes+de+encaje+entre+convocatorias+e+investigadores?src=contextnavpagetreemode")

  


* Obtención de grafo de colaboración:



```
SELECT ?person ?nombre ?email count(distinct ?documento) as ?colaboracionesDocumentos  count(distinct ?proy)  as ?colaboracionesProyectos
count(distinct ?documento)  + count(distinct ?proy) as ?totalColaboraciones
from <http://gnoss.com/b836078b-78a0-4939-b809-3f2ccf4e5c01>
WHERE
	{          
        ?person a 'person'.
        ?person foaf:name ?nombre.
        ?person <https://www.w3.org/2006/vcard/ns#email> ?email
        {
            ?documento <http://purl.org/ontology/bibo/authorList> ?listaAutoresA.
            ?listaAutoresA <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?personaBuscar.
            ?documento a 'document'.
            ?documento <http://purl.org/ontology/bibo/authorList> ?listaAutores.
            ?listaAutores <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.                     
        }
        UNION
        {       
            ?proy <http://w3id.org/roh/membersProject> ?personaBuscar.
            ?proy a 'project'.
            ?proy <http://w3id.org/roh/membersProject> ?person.                
        }          
        FILTER(?person != ?personaBuscar)
        ?personaBuscar a 'person'.
        ?personaBuscar <https://www.w3.org/2006/vcard/ns#email> ?emailPersonaBuscar.
        FILTER( ?emailPersonaBuscar="""+"'"+investigador_email+"'"+""")
	}order by desc(?totalColaboraciones)
```

  


* Obtención de la lista de investigadores:



```
select ?person ?nombrePersona ?email from <http://gnoss.com/document.owl> from <http://gnoss.com/person.owl> from <http://gnoss.com/taxonomy.owl> 
where { 
            ?doc a <http://purl.org/ontology/bibo/Document>.
            ?doc <http://purl.org/ontology/bibo/authorList> ?autor.
            ?autor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.
            ?person <http://xmlns.com/foaf/0.1/name> ?nombrePersona.
            ?person <https://www.w3.org/2006/vcard/ns#email> ?email.
}GROUP BY ?email 


```

  


* Obtención de los datos de una persona dado su identificador "personaRef":



```
select ?person ?identifier ?nombrePersona ?email from <http://gnoss.com/document.owl> from <http://gnoss.com/person.owl> from <http://gnoss.com/taxonomy.owl> 
where { 
            ?doc a <http://purl.org/ontology/bibo/Document>.
            ?doc <http://purl.org/ontology/bibo/authorList> ?autor.
            ?autor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.
            ?person <http://w3id.org/roh/crisIdentifier> ?identifier.
            ?person <http://xmlns.com/foaf/0.1/name> ?nombrePersona.
            ?person <https://www.w3.org/2006/vcard/ns#email> ?email.
            FILTER(?email='"""+email+"""')
}GROUP BY ?email 


```

  





