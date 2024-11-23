[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/CBG-Centrum-voor-familiegeschiedenis/PiCo/blob/main/README.md)
[![nl](https://img.shields.io/badge/lang-nl-blue.svg)](https://github.com/CBG-Centrum-voor-familiegeschiedenis/PiCo/blob/main/README.nl.md)

## PiCo
This is the repository for **Persons in Context (PiCo)**, the intended successor to the *Archive to Archive* (A2A) data model. PiCo will be a new standard based on the principles of Linked Open Data. 

## Purpose
The [CBG](https://cbg.nl) wants to achieve an **applicable application profile** for persons and events. For its **own collections**, but also as a new standard for **[WieWasWie](https://wiewaswie.nl)**.

What does the CBG want from the new standard?
- The primary goal is to be able to search for people. People must be uniquely identifiable and linked to one or more sources and events.	
- It must also be possible to establish relationships between uniquely identifiable persons in a standardised way.

## Starting points
The following starting points apply to the new standard to be developed: 
- We use Linked Data technology. We will use existing ontologies as much as possible.
- The conversion from A2A to PiCo should be as automated as possible. Parties that are not yet able to generate PiCo must be able to (continue to) participate in WieWasWie. 
- We distinguish between person records (a name of a person that appears in a source) and persons (a unique person that can be linked to several person records). 
- It should be possible to record metadata about links between persons or person mentions. For example, "*Based on source S1, we note that person observations PO1 and PO2 both belong to person P1.*". Or: "*Based on source S2, we state that person P1 is the father of person P2*". 
- The standard should be flexible. Suitable for 10 years. But not necessarily set in stone for that period. 
- The standard must be extensible. The purpose of CBG (to find ancestors) should not be a limitation for other research purposes. 

## Improvements to the current A2A model
The current A2A model falls short in a number of ways. Some of the model's bottlenecks are 
- A2A has no uniquely identifiable individuals, which makes it difficult to establish relationships between individuals: 
- A2A is really about person identifiers, not people. 
- A2A does have an identifier per person record, but this is intended to establish relationships between person records within a single source. 
- A2A is not sufficiently standardised: 
- For example, a person's place of residence, occupation and age are given. None of these are fixed (identifiable) characteristics of a person (but they are of the person record). 
- A2A does not use existing thesauri. For example, for place names, event types or type relationships. 
- A2A defines attributes for which widely accepted standards already exist. For example, the source element. This could well be replaced by elements from e.g. [Records in Contexts](https://www.ica.org/en/records-in-contexts-ontology). 

## Deliverables
- An elaboration of the conceptual data model for PiCo (in text form). 
- A technical elaboration of the application profile in [Shapes Constraint Language](https://www.w3.org/TR/shacl/) (SHACL). 
- Examples of the application of the model. 
- A plan for the roll-out of the application profile in the field, including 
  - Communication strategy 
  - Organisational structure for managing the application profile 
  - Mode of publication 

All deliverables will initially be produced in Dutch. If necessary, they can later be translated into English. 

## PiCo Documentation
More extensive documentation of the Persons in Context model can be found at: [https://personsincontext.org](https://personsincontext.org) and in the academic article (Woltjer et al. 2024, [https://doi.org/10.51964/hlcs19312](https://doi.org/10.51964/hlcs19312)).

## Acknowledgements
PiCo is inspired by the [ROAR](https://leonvanwissen.nl/vocab/roar/docs/) ontology for Reconstructions and Observations in Archival Resources.
ROAR was developed by
* Menno den Engelse, ([Islands of Meaning, The Netherlands](https://islandsofmeaning.nl/))
* Leon van Wissen, ([University of Amsterdam, The Netherlands](https://www.uva.nl/over-de-uva/organisatie/faculteiten/faculteit-der-geesteswetenschappen/faculteit-der-geesteswetenschappen.html))


## License

Shield: [![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa].

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa].

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
