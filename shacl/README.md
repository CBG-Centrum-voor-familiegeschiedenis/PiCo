# Validating PiCo RDF
## Introduction to SHACL

The [Shapes Constraint Language](https://www.w3.org/TR/shacl/) (SHACL) is a W3C-recommended language designed to describe and validate the structure of RDF (Resource Description Framework) data. In the context of knowledge graphs, SHACL plays a vital role in maintaining **high data quality** by enforcing constraints on the data, ensuring that it adheres to specific rules and shapes. 

SHACL defines shapes—descriptions of how RDF data should be structured—and enforce these descriptions across datasets. These shapes ensure that the data conforms to predefined expectations, such as the types of properties entities should have, the data types of those properties, or cardinality constraints (e.g., how many times a property can occur). 
## Using Apache Jena SHACL
To validate a RDF file (which can be Turtle, N-triple, RDF/XML, JSON-LD) against a SHACL shapes file, the [Apache Jena tool `shacl`](https://jena.apache.org/documentation/shacl/index.html) can be used. This tool is part of the [Apache Jena distribution](https://jena.apache.org/download/index.cgi).

The `--shapes` and `--data` parameters can be an offline file or an URL of an online file. For PiCo, the pico_shacl_v0.1.ttl can be downloaded or referenced via its (raw) URL. Some examples below (output omitted):

	shacl validate --shapes pico_shacl_v0.1.ttl \ 
          --data test2.ttl
                     
	shacl validate --shapes pico_shacl_v0.1.ttl \ 
          --data https://www.openarchieven.nl/smh:f9ddec9e-a701-463b-fb0c-a1beda807112/ttl:pico
                     
	shacl validate --shapes pico_shacl_v0.1.ttl \ 
          --data https://www.genealogieonline.nl/wo2slachtoffers/23.ttl

    shacl validate --shapes https://raw.githubusercontent.com/CBG-Centrum-voor-familiegeschiedenis/PiCo/refs/heads/main/shacl/pico_shacl_v0.1.ttl \ 
          --data https://raw.githubusercontent.com/ivozandhuis/a2a-to-pico/refs/heads/main/examples/output/allefriezen_8f998b40-9d13-1861-62fe-feb667283688.ttl

    shacl validate --shapes https://raw.githubusercontent.com/CBG-Centrum-voor-familiegeschiedenis/PiCo/refs/heads/main/shacl/pico_shacl_v0.1.ttl \ 
          --data https://raw.githubusercontent.com/ivozandhuis/a2a-to-pico/refs/heads/main/examples/output/NL-HlmNHA_3586-667_54_A2A.rdf

    shacl validate --shapes pico_shacl_v0.1.ttl \ 
          --data https://raw.githubusercontent.com/CBG-Centrum-voor-familiegeschiedenis/PiCo/refs/heads/main/examples/reconstruction-with-blanknodes/rinske-pieters-van-der-werf.ttl

    shacl validate --shapes pico_shacl_v0.1.ttl \ 
          --data https://raw.githubusercontent.com/CBG-Centrum-voor-familiegeschiedenis/PiCo/refs/heads/main/examples/various-sources/personreconstruction.ttl
