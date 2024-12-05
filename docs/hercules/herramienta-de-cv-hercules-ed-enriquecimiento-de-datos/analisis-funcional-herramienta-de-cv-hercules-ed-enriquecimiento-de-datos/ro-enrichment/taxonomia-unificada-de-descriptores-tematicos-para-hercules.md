# Hércules : Taxonomía unificada de descriptores temáticos para Hércules



Descargar lataxonomía unificada de descriptores temáticos para Hércules: **[Hércules\-ED\_Taxonomías\_v1\.36\.xlsx](/attachments/598147263/598148703.xlsx "attachments/598147263/598148703.xlsx")**

Uno de los desarrollos del proyecto permite la generación de un Tesauro SKOS a partir del documento Excel de la taxonomía unificada y sus mapeos con otras taxonomías. Este desarrollo está documentado en:

[HerculesED/src/Hercules.ED.Taxonomy at main · HerculesCRUE/HerculesED (github.com)](https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Taxonomy "https://github.com/HerculesCRUE/HerculesED/tree/main/src/Hercules.ED.Taxonomy")

Se ha decidido crear una **clasificación inicial de 3 niveles basada en la clasificación [ASJC de Scopus](https://service.elsevier.com/app/answers/detail/a_id/15181/supporthub/scopus/session/L2F2LzEvdGltZS8xNjI2MTc2NDMxL2dlbi8xNjI2MTc2NDMxL3NpZC9mVTJIUHk5ajgxdEFNQ29CNlZtUVVSTU5ldzFkcmdVSEQ2dDRqS0x6OW1teWliSXQwd1MwX3Y4SGhscGZhQUtkYktyRkpnNEJydzd1MHBPdGpnZ2VjVXVwVlRkMnpvZ0h4SmZYYm5GeVJBWUc0U0FhX282QmpydkElMjElMjE%3D/ "https://service.elsevier.com/app/answers/detail/a_id/15181/supporthub/scopus/session/L2F2LzEvdGltZS8xNjI2MTc2NDMxL2dlbi8xNjI2MTc2NDMxL3NpZC9mVTJIUHk5ajgxdEFNQ29CNlZtUVVSTU5ldzFkcmdVSEQ2dDRqS0x6OW1teWliSXQwd1MwX3Y4SGhscGZhQUtkYktyRkpnNEJydzd1MHBPdGpnZ2VjVXVwVlRkMnpvZ0h4SmZYYm5GeVJBWUc0U0FhX282QmpydkElMjElMjE%3D/")** por ser la más completa y general, ya que abarca las siguientes áreas de conocimiento:

* *Physical Sciences*
* *Health Sciences*
* *Life Sciences*
* *Social Sciences \& Humanities*
* *Multidisciplinary*

Y **sobre los descriptores temáticos de nivel 2 y 3 de la misma se han integrado los descriptores temáticos del resto de clasificaciones más específicas** existentes en las fuentes de datos mencionadas anteriormente: 

* Los descriptores de la [clasificación arXiv](https://arxiv.org/category_taxonomy "https://arxiv.org/category_taxonomy") se han integrado mayoritariamente con los existentes en *Physical Sciences* y *Life Sciences*, incluyendo también alguno en *Social Sciences \& Humanities*.
* Los descriptores de la [clasificación MESH de PubMed que cuelgan de la entrada *Medicine*](https://meshb.nlm.nih.gov/record/ui?ui=D008511 "https://meshb.nlm.nih.gov/record/ui?ui=D008511") se han integrado con los existentes en *Health Sciences*, concretamente en la subárea *Medicine*. Se han utilizado solamente esa parte de la clasificación por recomendación de los investigadores consultados en este dominio.
* Los [categorías de la clasificación SourceForge](https://sourceforge.net/directory/ "https://sourceforge.net/directory/") se han integrado con los descriptores existentes en *Physical Sciences*, concretamente en la subárea *Computer Science*.
* Las [categorías de primer nivel de la clasificación Bio\-Protocol](https://bio-protocol.org "https://bio-protocol.org") se han integrado con los descriptores existentes en *Life Sciences*.

La **integración** ha sido llevada a cabo **creando nuevos descriptores con su nombre original** (en la clasificación a integrar) cuando no existían y **alineando descriptores ya existentes en la clasificación inicial** por ser idénticos o casi idénticos. En los casos de alineación, los criterios seguidos para determinar el texto exacto del descriptor y su ubicación en el nivel 2 o 3 han sido los siguientes:

* Si dos descriptores idénticos (uno de la clasificación inicial y otro de la clasificación más específica a integrar) están en diferentes niveles de la clasificación, se deja el descriptor en el nivel indicado por clasificación más específica.
* Si el texto de un descriptor contiene a otro, se elige el texto más completo.
* Si un descriptor de la clasificación inicial es muy genérico y contiene a otros dos o más de la clasificación más específica para el dominio en cuestión, se elimina el de la clasificación inicial y se añaden al mismo nivel los correspondientes a la clasificación más específica para el dominio en cuestión.
* Si dos descriptores son muy parecidos y no hay en la clasificación inicial otros descriptores similares relacionados con ellos, se elije el texto de la clasificación más específica para el dominio en cuestión.

Para representar las integraciones (creaciones o alineaciones) en eldocumento Excel con la taxonomía unificada de descriptores temáticos para Hércules (**[Hércules\-ED\_Taxonomías\_v1\.36\.xlsx](/attachments/598147263/598148703.xlsx "attachments/598147263/598148703.xlsx")**) se han incluido varias columnas con los códigos originales de dichos descriptores en sus respectivas clasificaciones. 

**ACTUALIZACIÓN.** Se han integrado en la taxonomía unificada los [descriptores del buscador de categorías de WoS\-JCR](/attachments/598147263/598147719.xls "attachments/598147263/598147719.xls"), que coinciden con los que devuelve la [WoS Expanded API](https://developer.clarivate.com/apis/wos "https://developer.clarivate.com/apis/wos") para una publicación de tipo artículo científico. Contiene los 251 descriptores de la categorización [WoS Research Areas](https://incites.help.clarivate.com/Content/Research-Areas/wos-research-areas.htm "https://incites.help.clarivate.com/Content/Research-Areas/wos-research-areas.htm") (WoS\-RA) y además estos otros descriptores:

* Planning \& Development
* DEVELOPMENT STUDIES
* GREEN \& SUSTAINABLE SCIENCE \& TECHNOLOGY
* PSYCHOLOGY, BIOLOGICAL
* QUANTUM SCIENCE \& TECHNOLOGY
* REGIONAL \& URBAN PLANNING

**ACTUALIZACIÓN**. Añadida una alineación de la taxonomía con las siguientes clasificaciones:

* Categorías de la [taxonomía UNESCO](https://skos.um.es/unesco6/ "https://skos.um.es/unesco6/").
* Categorías del [editor CVN de la FECYT](https://cvn.fecyt.es/editor/ "https://cvn.fecyt.es/editor/").




