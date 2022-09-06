# Example data about Abe Bos (Joure 1858 - Haarlem 1954), strike leader Railwaystrike 1903

This example contains five sources with data about one person, ie. it contains five PersonObservations. They refer to the same person, ie. the PersonReconstruction.

## Preliminary conclusion
* Use roar, pnv and schema. Additionally for PersonReconstruction: PROV
* CBG addition would be the relevant "named individuals" or properties. 

## Discussion
### How to model relations?
Option 1) define properties. disadvantage: not flexible because new relationtypes must be added to the ontology; advantage: enables "real" reasoning in the future

Option 2a) do reification (with the roar:hasRelation construct) and define named individuals. Disadvantage: a more complex construct, excludes reasoning, advantage: easier extensible (one could even use a Literal to define a relation, if no defined named individual is available (yet)), 

### Is rdfs:label a MUST-HAVE?

### What are good and sufficient relation properties?
see named individual/relations-openarch.tsv

### What are good and sufficient role names?
see named individual/relations-openarch.tsv

### What are good and sufficient document types?
see named individual/sources-openarch.tsv

## Te bespreken met de stuurgroep:
- beheer overnemen van ROAR en PNV?

![Part of graph on Abe Bos](https://github.com/CBG-nl/A2A-LD/blob/main/examples/abe-bos/abe-bos.png?raw=true)