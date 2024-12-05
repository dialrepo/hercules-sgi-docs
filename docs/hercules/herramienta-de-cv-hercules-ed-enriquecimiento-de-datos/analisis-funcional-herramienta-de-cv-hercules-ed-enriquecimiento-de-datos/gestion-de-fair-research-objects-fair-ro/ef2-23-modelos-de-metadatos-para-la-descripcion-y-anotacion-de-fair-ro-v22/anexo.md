# Hércules : Anexo



Tabla de metadatos expuestos en la documentación de ROH de la entidad **IAO\_0000030 (Information Content Entity)**




| **Prefix** | **Class** |  |  |  |  |  | **Prefix** |  | **Object property** (bold indicates explicit Domain, otherwise a Restriction) | **Range Class** | **Prefix** | **Datatype Property** (bold indicates explicit domain; otherwise a restriction) | **Range Datatype** (if typed) | **Range values** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **obo\-iao** | **IAO\_0000030 (Information Content Entity)** |  |  |  |  |  | roh |  | correspondingOrganization | foaf:Organization | roh | language | xsd:string |  |
|  | **roh** | **Repository** |  |  |  | roh |  | correspondingAuthor |  | foaf:Person | roh | title | xsd:string |  |
|  |  |  |  |  |  | roh |  | hasKnowledgeArea |  | (skos:Concept and (skos:inScheme some roh:KnowledgeArea)) | vivo | description | xsd:string |  |
|  |  |  |  |  |  | roh |  | hasReadme |  | roh:README | bibo | abstract | xsd:string |  |
|  |  |  |  |  |  | cito |  | cites |  | roh:ExperimentalProtocol or ero: ERO\_0000071 or roh:Repository or bibo:Document | vivo | freeTextKeyword | xsd:string |  |
|  |  |  |  |  |  | roh |  | partOfResearchObject |  | roh:ResearchObject |  |  |  |  |
|  |  |  |  |  |  | roh |  | repositoryHasPart |  | ExperimentalProtocol or bibo:Document or ero: ERO\_0000071 |  |  |  |  |
|  |  |  |  |  |  | roh |  | hasPredecessor |  | roh:Repository |  |  |  |  |
|  |  |  |  |  |  | roh |  | seqOfAuthors |  | rdf:Seq |  |  |  |  |
|  |  |  |  |  |  | roh |  | hasLicense |  | vivo:License |  |  |  |  |
|  |  |  |  |  |  | roh |  | repositoryStatus |  | roh:Closed or roh:Open |  |  |  |  |
|  |  |  |  |  |  | vivo |  | dateTimeValue |  | vivo:DateTimeValue |  |  |  |  |
|  |  |  |  |  |  | foaf |  | homePage |  | vivo:Webpage |  |  |  |  |
|  |  | roh | BitBucketRepository |  |  | roh |  | hasPredecessor |  | roh: BitBucketRepository |  |  |  |  |
|  |  | roh | GitHubRepository |  |  | roh |  | hasPredecessor |  | roh:GitHubRepository |  |  |  |  |
|  |  | roh | ZenodoRepository |  |  | roh |  | hasPredecessor |  | roh: ZenodoRepository | bibo | doi | xsd:integer |  |
|  |  |  |  |  |  |  |  |  |  |  | vivo | identifier | xsd:integer |  |
|  | **bibo** | **Collection** |  |  |  |  |  |  |  |  | bibo | oclcnum | rdfs:Literal |  |
|  |  | roh | Dossier |  |  | vivo |  | dateTimeInterval |  | vivo:DateTimeInterval | vivo | description | rdfs:Literal |  |
|  |  |  |  |  |  | vivo |  | relates |  | roh:FundingProgram or roh:ProjectContract or bibo:Report or vivo:Project | vivo | identifier | xsd:string |  |
|  |  |  |  |  |  |  |  |  |  |  | roh | title | xsd:string |  |
|  |  | bibo | Periodical |  |  | vivo |  | publisher |  | foaf:Organization | bibo | eissn | rdfs:Literal |  |
|  |  |  |  |  |  |  |  |  |  |  | bibo | issn | rdfs:Literal |  |
|  |  |  | bibo | Journal |  |  |  |  |  |  | vivo | abbreviation | rdfs:Literal |  |
|  |  |  | bibo | Magazine |  |  |  |  |  |  |  |  |  |  |
|  | **bibo** | **Document** |  |  |  | bibo |  | **authorList** |  | rdf:Seq | bibo | abstract | xsd:string |  |
|  |  |  |  |  |  | roh |  | correspondingAuthor |  | foaf:Person | bibo | doi | xsd:string |  |
|  |  |  |  |  |  | roh |  | partOfRepository |  | roh:Repository | roh | title | xsd:string |  |
|  |  |  |  |  |  | roh |  | partOfResearch |  | roh:Research |  |  |  |  |
|  |  |  |  |  |  | vivo |  | dateTimeValue |  | vivo:DateTimeValue | vivo | freeTextKeyword | xsd:string |  |
|  |  |  |  |  |  | bibo |  | **editorList** |  | rdf:Seq | bibo | **pageStart** | rdfs:Literal |  |
|  |  |  |  |  |  | vivo |  | hasPublicationVenue |  | bibo:Collection or bibo:Book | bibo | **pageEnd** | rdfs:Literal |  |
|  |  |  |  |  |  | vivo |  | **publisher** |  | foaf:Agent |  |  |  |  |
|  |  |  |  |  |  | cito |  | **cites** |  | roh:Experimental Protocol or ero: ERO\_0000071 or roh:Repository or bibo:Document |  |  |  |  |
|  |  |  |  |  |  | roh |  | documentStatus |  | roh:Accepted or roh:Rejected |  |  |  |  |
|  |  | roh | README |  |  | roh |  | readmeOf |  | roh:Repository or ero: ERO\_0000071 |  |  |  |  |
|  |  | roh | ExperimentalProtocolResult |  |  | roh |  | producedBy |  | roh:ExperimentalProtocol |  |  |  |  |
|  |  | vivo | Abstract |  |  |  |  |  |  |  |  |  |  |  |
|  |  | bibo | Article |  |  |  |  |  |  |  | bibo | **issue** |  |  |
|  |  |  | bibo | AcademicArticle |  | **vivo** |  | **hasPublicationVenue** |  | **bibo:Journal** | bibo | eanucc13 | rdfs:Literal |  |
|  |  |  |  | obo\-iao: IAO\_0000013 (JournalArticle) |  | vivo |  | dateTimeValue |  | vivo:DateTimeValue |  |  |  |  |
|  |  |  |  |  |  | roh |  | **hasMetric** |  | roh:PublicationMetric |  |  |  |  |
|  |  |  |  | roh:PeerReviewedArticle |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh | BlogPost |  |  |  |  |  |  |  |  |  |  |
|  |  |  | vivo | ConferencePaper |  | bibo |  | presentedAt |  | bibo:Conference |  |  |  |  |
|  |  |  |  | roh: WorkshopPaper |  |  |  |  |  |  |  |  |  |  |
|  |  |  | vivo | EditorialArticle |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh | PeerReviewedArticle |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh | PressArticle |  |  |  |  |  |  |  |  |  |  |
|  |  | bibo | AudioVisualDocument |  |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh | RadioProgram |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh | TvProgram |  |  |  |  |  |  |  |  |  |  |
|  |  | bibo | Book |  |  | vivo |  | publisher |  | foaf:Organization | bibo | edition | rdfs:Literal |  |
|  |  |  |  |  |  |  |  |  |  |  | bibo | isbn | rdfs:Literal |  |
|  |  |  |  |  |  |  |  |  |  |  | bibo | iccn | rdfs:Literal |  |
|  |  |  |  |  |  |  |  |  |  |  | vivo | placeOfPublication | rdfs:Literal |  |
|  |  |  | bibo | Proceedings |  |  |  |  |  |  |  |  |  |  |
|  |  | roh | CaseStudy |  |  |  |  |  |  |  |  |  |  |  |
|  |  | roh | Catalog |  |  |  |  |  |  |  |  |  |  |  |
|  |  | bibo | CollectedDocument |  |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh | Database |  |  |  |  |  |  |  |  |  |  |
|  |  |  | bibo | EditedBook |  |  |  |  |  |  |  |  |  |  |
|  |  |  | bibo | Issue |  | obo\-ro |  | BFO\_0000051 (hasPart) |  | bibo:Article | bibo | issue | rdfs:Literal |  |
|  |  | vivo | ConferencePoster |  |  |  |  |  |  |  |  |  |  |  |
|  |  | roh | CurriculumVitae |  |  | roh |  | **CVOf** |  | foaf:Person | roh | summary | xsd:string |  |
|  |  | vivo | Dataset |  |  | cito |  | isCitedAsDataSourceBy |  | bibo:Document |  |  |  |  |
|  |  | bibo | DocumentPart |  |  | vivo |  | publisher |  | foaf:Organization | vivo | placeOfPublication | rdfs:Literal |  |
|  |  |  | bibo | BookSection |  |  |  |  |  |  | bibo | edition | rdfs:Literal |  |
|  |  |  |  | bibo: Chapter |  |  |  |  |  |  |  |  |  |  |
|  |  | roh | EditedPublication |  |  |  |  |  |  |  |  |  |  |  |
|  |  | foaf | Image |  |  |  |  |  |  |  |  |  |  |  |
|  |  | roh | Invoice |  |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh |  | ProformaInvoice |  |  |  |  |  |  |  |  |  |
|  |  | bibo | Manual |  |  |  |  |  |  |  |  |  |  |  |
|  |  | bibo | Patent |  |  | **vivo** |  | **assignee** |  | **foaf:Organization** | **vivo** | **identifier** | xsd:string |  |
|  |  |  |  |  |  | vivo |  | dateIssued |  | vivo:DateTimeValue | roh | modality | xsd:string |  |
|  |  |  |  |  |  | roh |  | expirationDate |  | vivo:DateTimeValue |  |  |  |  |
|  |  |  |  |  |  | roh |  | hasKnowledgeArea |  | (skos:Concept and (skos:inScheme some roh:KnowledgeArea)) |  |  |  |  |
|  |  |  |  |  |  | gn |  | locatedIn |  | gn:Feature |  |  |  |  |
|  |  |  |  |  |  | roh |  | ownerOrganization |  | foaf:Organization |  |  |  |  |
|  |  |  |  |  |  | **roh** |  | **patentCountry** |  | (skos:Concept and (skos:inScheme some roh:Country)) |  |  |  |  |
|  |  |  |  |  |  | **roh** |  | **patentInventor** |  | foaf:Person |  |  |  |  |
|  |  | bibo | Report |  |  | bibo |  | distributor |  | foaf:Organization |  |  |  |  |
|  |  |  |  |  |  | vivo |  | publisher |  | foaf:Organization |  |  |  |  |
|  |  |  | roh | EthicalReport |  |  |  |  |  |  |  |  |  |  |
|  |  |  |  | roh: EthicalAudit |  |  |  |  |  |  |  |  |  |  |
|  |  |  |  | roh: EthicalValidation |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh | EvaluationSummary |  | roh |  | evaluationStatus |  | roh:Final or roh:Provisional |  |  |  |  |
|  |  |  | roh | Justification |  | vivo |  | relates |  | roh:Project |  |  |  |  |
|  |  |  | vivo | ResearchProposal |  | vivo |  | relates |  | roh:Justification or roh:ProjectContract or roh:Project or vivo:ResearchProposal |  |  |  |  |
|  |  |  | roh | TechnicalReport |  |  |  |  |  |  |  |  |  |  |
|  |  | bibo | Thesis |  |  | **roh** |  | **supervisedBy** |  | foaf:Person | vivo | abbreviation | rdfs:Literal |  |
|  |  |  |  |  |  |  |  |  |  |  | vivo | placeOfPublication | rdfs:Literal |  |
|  |  |  | roh | BachelorsThesis |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh | MastersThesis |  |  |  |  |  |  |  |  |  |  |
|  |  |  | roh | PhDThesis |  |  |  |  |  |  |  |  |  |  |
|  |  | bibo | Webpage |  |  |  |  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |




