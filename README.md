# A2A-LD

Dit is de repository voor **A2A-LD**, de beoogde opvolger van het *Archive to Archive* (A2A) datamodel. A2A-LD wordt een nieuwe standaard volgens de uitgangsprincipes van Linked Open Data. 

## Doel
Het [CBG](https://cbg.nl) wil komen tot een **toepasbaar applicatieprofiel** voor Personen en Gebeurtenissen. Voor haar **eigen collecties**, maar ook als nieuwe standaard voor **[WieWasWie](https://wiewaswie.nl)**.

Wat wil het CBG met de nieuwe standaard:
- Het primaire doel is kunnen zoeken naar personen. Personen moeten uniek identificeerbaar zijn en gelinkt aan één of meerdere bronnen en gebeurtenissen.	
- Daarnaast moet het mogelijk zijn om op een gestandaardiseerde manier relaties te leggen tussen uniek identificeerbare personen.

## Uitgangspunten
Voor de nieuw te ontwikkelen standaard, gelden de volgende uitgangspunten: 
- We maken gebruik maken Linked Data technologie. Daarbij gebruiken we zo veel mogelijk bestaande ontologieën.
- Conversie van A2A naar A2A-LD moet zo veel mogelijk geautomatiseerd mogelijk zijn. Partijen die nog niet in staat zijn om A2A-LD te genereren, moeten kunnen (blijven) deelnemen aan WieWasWie. 
- We maken onderscheid tussen persoonsvermeldingen (een naam van een persoon die voorkomt in een bron) en personen (een uniek persoon, die gekoppeld kan zijn aan meerdere persoonsvermeldingen). 
- Het moet mogelijk zijn om metadata vast te leggen over links tussen personen of persoonsvermeldingen. Bijvoorbeeld: “*Op basis van bron B1 stellen we dat de persoonsvermeldingen PV1 en PV2 beiden horen bij persoon P1.*” Of: “*Op basis van bron B2 stellen we dat persoon P1 de vader is van persoon P2*”. 
- De standaard moet flexibel zijn. Geschikt voor 10 jaar. Maar niet per se in steen gehouwen voor die periode. 
- De standaard moet uitbreidbaar zijn. De doelstelling van het CBG (zoeken naar voorouders), moet geen beperking zijn voor andere onderzoeksdoeleinden. 

## Verbeterpunten ten opzichte van het huidige A2A-model 
Het huidige A2A-model schiet op een aantal punten te kort. Een aantal knelpunten van het model zijn: 
- A2A kent geen uniek identificeerbare personen, waardoor het leggen van relaties tussen personen lastig is: 
- A2A gaat eigenlijk over persoonsvermeldingen, en niet over personen. 
- A2A kent wel een identifier per persoonsvermelding, maar die is bedoeld om relaties te leggen tussen persoonsvermeldingen binnen één bron. 
- A2A is onvoldoende genormaliseerd: 
- Bij een persoon wordt bijvoorbeeld zijn verblijfplaats, beroep en leeftijd vermeld. Dat zijn geen van allen vaste (identificeerbare) kenmerk van een persoon (maar wel van de persoonsvermelding). 
- A2A maakt geen gebruik van bestaande thesauri. Bijvoorbeeld voor plaatsnamen, event types of voor type relaties. 
- A2A definieert eigenschappen waar al breed geaccepteerde standaarden voor bestaan. Bijvoorbeeld het element Bron. Dit zou goed vervangen kunnen worden door elementen uit, bijvoorbeeld, [Records in Contexts](https://www.ica.org/en/records-in-contexts-ontology). 

## Deliverables
- Een uitwerking van het conceptuele datamodel voor A2A-LD (in tekst vorm). 
- Een technische uitwerking van het applicatieprofiel in [Shapes Constraint Language](https://www.w3.org/TR/shacl/) (SHACL). 
- Voorbeelden voor de toepassing van het model. 
- Een plan voor het uitrollen van het applicatieprofiel in het veld, inclusief: 
  - Communicatiestrategie 
  - Organisatiestructuur voor het beheer van het applicatieprofiel 
  - Wijze van publicatie 

Alle deliverables worden in eerste instantie in het Nederlands opgesteld. Indien nodig, kunnen deze later vertaald worden naar het Engels. 



