
# PiCo
De volgende generatie uitwisseling van persoonsinformatie\
Versie 0.9\
Redactie: Jeroen Balkenende, Bob Coret, Mark Lindeman, Pieter Woltjer, Ivo Zandhuis

## Inleiding

### Samenvatting
PiCo is een kennismodel voor het beschrijven van persoonsvermeldingen en (daaruit afgeleid) uniek geïdentificeerde personen. Het kennismodel maakt gebruik van een aantal bestaande ontologieën:
* [Schema.org](https://schema.org/) wordt zo veel mogelijk gebruikt voor de klassen en eigenschappen 
* [BIO](https://vocab.org/bio/) wordt gebruikt voor een aantal life events, zoals een huwelijk of echtscheiding 
* [PNV](https://www.lodewijkpetram.nl/vocab/pnv/doc/) wordt optioneel gebruikt voor uitgebreide persoonsnamen
* [PROV-O](https://www.w3.org/TR/prov-o/) wordt gebruikt voor informatie over de totstandkoming van persoonsreconstructies 


Daaraan wordt een beperkt aantal eigen properties toegevoegd. Geïnspireerd op [ROAR](https://leonvanwissen.nl/vocab/roar/docs/) is PiCo gebaseerd op vermeldingen van personen in bronnen. Van één of meer persoonsvermeldingen kan een uniek identificeerbaar persoon gereconstrueerd worden.

### Inleiding
PiCo is ontwikkeld en wordt beheerd door het CBG voor het beschrijven van haar eigen collecties en als nieuwe standaard voor het aanleveren van data aan [WieWasWie](https://wiewaswie.nl/).

Het primaire doel van het kennismodel is het kunnen zoeken naar voorouders. Persoonsreconstructies zijn binnen PiCo uniek identificeerbaar en gelinkt aan één of meerdere Persoonsvermeldingen. De ontwikkeling van PiCo was gewenst om de volgende redenen:
* Nieuwe technieken stellen ons in staat data van hogere kwaliteit af te dwingen, waardoor nieuwe toepassingen mogelijk worden, zoals het geautomatiseerd maken van uniek identificeerbare personen.
* Het CBG wil graag aansluiten bij de mogelijkheden van Linked Data zoals deze door het erfgoed is omarmd;
* Linked Data maakt de data makkelijker uitbreidbaar en toepasbaar in andere contexten;
* De toepassing van A2A bij archiefinstellingen bleek bij een aantal nieuwe bronnen en toepassingen alleen mogelijk met een (te) ruime interpretatie van de standaard;

PiCo is de beoogde opvolger van A2A. Het wijkt op een aantal punten af van A2A:
* A2A kent alleen persoonsvermeldingen (in A2A ‘personen’ genoemd), waar PiCo ook uniek identificeerbare personen kent;
* A2A maakt gebruik van eigen woordenlijsten voor bijvoorbeeld rollen of bronsoorten. PiCo maakt zo veel mogelijk gebruik van bestaande thesauri en ontologieën, waardoor het koppelen met andere datasets wordt vereenvoudigd;
* PiCo maakt onderscheid tussen relaties en rollen. In A2A worden beiden vastgelegd in het veld Relatie. Een Rol in PiCo beschrijft de rol van een persoonsvermelding op de bron. Een Relatie beschrijft de relatie tussen twee personen.
* In PiCo spelen Gebeurtenis een minder prominente rol. Het beschrijven van gebeurtenissen is geen doel van de ontologie. Voor het registreren van bijvoorbeeld een huwelijk worden wel Gebeurtenissen gebruikt, maar ze zijn niet langer noodzakelijk zoals dat het geval was in A2A.
* In PiCo kan metadata worden vastgelegd over links tussen personen of persoonsvermeldingen. Bijvoorbeeld: “Op basis van bron B1 stellen we dat de persoonsvermeldingen PV1 en PV2 beiden horen bij persoon P1.” Of: “Op basis van bron B2 stellen we dat persoon P1 de vader is van persoon P2”.
* Net als alle andere linked-data ontologieën, is PiCo uitbreidbaar. De doelstelling van het kennismodel (zoeken naar voorouders), hoeft geen beperking te zijn voor andere onderzoeksdoeleinden.

## Drie concepten
Om data over personen in bronnen te kunnen uitwisselen maken we onderscheid tussen drie verschillende concepten: een Persoonsvermelding, een Persoonsreconstructie en een Bron.

### Persoonsvermelding
Een Persoonsvermelding is de weergave van hoe een persoon is opgenomen in een oorspronkelijke bron. Zo worden er in een huwelijksakte soms wel tien personen vermeld: naast de bruid en bruidegom ook de ouders van het echtpaar en de getuigen. 

Bij de Persoonsvermeldingen wordt data zo veel mogelijk opgenomen zoals deze in de bron is weergegeven, dus met de leeftijd, het beroep en de spelling van de naam van de persoon zoals in de akte is opgenomen. Het model staat toe dat bij het registreren van een Persoonsvermelding keuzes gemaakt worden. De maker van de Persoonsvermelding kan bijvoorbeeld wel de datum opnemen volgens de ISO-standaard (bijvoorbeeld: '1802-07-29'), ook al is deze niet in deze vorm op de akte aanwezig (bijvoorbeeld: '28 thermidor X').

### Persoonsreconstructie
Eén of meer Persoonsvermeldingen kunnen worden gecombineerd tot een uniek identificeerbaar persoon. We noemen dit een Persoonsreconstructie. Deze kan zowel geautomatiseerd worden geconstrueerd of door (meer klassiek) genealogisch onderzoek. Bij het maken van een Persoonsreconstructie kan de onderzoeker data preciezer hebben gemaakt, bijvoorbeeld door plaatsnamen te relateren aan gestandaardiseerde plaatsnaamlijsten (zoals Geonames). Bij elke Persoonsreconstructie moeten verwijzingen zijn opgenomen naar de Persoonsvermeldingen waarop deze is gebaseerd.

### Bron
Elke Persoonsvermelding is aangetroffen in een Bron. Behalve formele aktes en registraties kunnen dit ook boeken of persoonlijke documenten zijn, zoals brieven, dagboeken of e-mails. Van een Bron is altijd weergegeven in welke erfgoedinstelling de Bron wordt bewaard en hopelijk ook een link naar het webadres waarmee de Bron online beschikbaar is gesteld. In PiCo wordt het type bron met het juiste schema-type aangeduid, vaak sdo:ArchiveComponent, maar soms ook sdo:Book, sdo:Photograph of zelfs sdo:Painting.

## Eigenschappen van de concepten
De concepten die in het voorgaande hoofdstuk zijn gedefinieerd hebben verschillende eigenschappen die we willen vastleggen.

### Eigenschappen van Personen
De personen in Persoonsvermeldingen en Persoonsreconstructies hebben vele eigenschappen, waarvan we er hier een aantal benoemen. Het is onmogelijk hierbij volledig te zijn: er zijn vast bronnen die we nu niet in het ontwerp hebben overwogen of waarvan er te weinig voorkomen om de introductie van een eigenschap in onze ontologie te rechtvaardigen.

Personen werden in het verleden vooral geïdentificeerd door hun naam, hun beroep, woonplaats, geloof en informatie over hun geboorte. Ook hun relaties ten opzichte van anderen zijn van belang; deze worden uitgewerkt in de volgende paragraaf. Deze eigenschappen komen daarom consequent terug in veel van de bronnen waarop onderzoek naar personen mogelijk wordt.

Een Persoonsvermelding is een vermelding van een persoon op een bron en *moet* daarom altijd een relatie hebben met een Bron. Hiervoor wordt de eigenschap prov:hadPrimarySource gebruikt.

Een Persoonsreconstructie komt altijd voort uit één of meerdere Persoonsvermeldingen en *moet* daarom altijd een relatie hebben met minstens één Persoonsvermelding. Hiervoor wordt de eigenschap prov:wasDerivedFrom gebruikt. Het gebruik van de eigenschap prov:wasGeneratedBy, om aan te geven op welke manier de Persoonsreconstructie tot stand is gekomen, wordt sterk aangeraden.

Zie [Bijlage 2](#2-eigenschappen-van-persoonsvermelding) voor een overzicht van de eigenschappen van Persoonsvermeldingen en [Bijlage 3](#3-eigenschappen-van-persoonsreconstructie) voor een overzicht van de eigenschappen van Persoonsreconstructies.

### Relaties tussen personen en rollen van personen op een bron
In een akte worden vaak ook de onderlinge relaties tussen de Personen opgenomen. Bij de Persoonsvermelding kunnen deze relaties ook worden weergegeven en getypeerd. Zo kan er in een huwelijksakte een ouderrelatie zijn tussen de bruid en haar moeder.

In A2A werden relaties vaak als de eigenschap “rol” gezien. Zo kun je zeggen dat iemand bij het huwelijk de rol van “moeder van de bruid” heeft. Er is dan een relatie tussen de Persoonsvermelding (van de moeder van de bruid) en de bron (de huwelijksakte). Maar het is correcter om deze informatie weer te geven door een relatie te definiëren tussen de personen die zijn vermeld. De eigenschap ‘rol’ blijft dan beperkt tot termen die de verhouding uitdrukken tussen de persoon en de bron. Zo is de broer van de bruidegom (een relatie) de getuige (rol) bij het huwelijk. Het is niet verplicht om voor elke Persoonsvermelding een rol of een relatie vast te leggen.

### Eigenschappen van Bronnen
Bronnen waarop onderzoek naar personen is gebaseerd, kunnen zich voordoen in veel vormen. Onze ontologie hoeft daarin niet te voorzien: erfgoedbeherende instellingen kunnen daarin keuzes maken die het beste passen bij hun domein. Voor de uitwisseling die nodig is voor PiCo toepassingen, schrijven we daarom voor dat instellingen hun data over Bronnen ook met een algemene samengestelde bronvermelding publiceren. Een Huwelijksakte is dan bijvoorbeeld als volgt omschreven: “BS Huwelijk Haarlem, 11 november 1885, aktenummer 321”. Natuurlijk bestaat deze omschrijving uit verschillende elementen die je als eigenschappen van de bron kunt onderscheiden, maar daarvoor kan de erfgoedinstelling een domein-specifieke standaard inzetten, en schrijft PiCo geen structuur voor.

Het is bij een Bron wel mogelijk (en gewenst) om een link op te nemen naar het record bij de erfgoedbeherende instelling. Dit kan bijvoorbeeld een weblink zijn naar het inventarisnummer. Deze link is bij voorkeur een permalink.

Zie [Bijlage 1](#1-eigenschappen-van-bron) voor een overzicht van eigenschappen van Bronnen.

### Relaties tussen Persoonsvermeldingen, Persoonsreconstructies en Bronnen
Persoonsvermeldingen hebben als eigenschap dat zij zijn overgenomen uit een bepaalde Bron. En Persoonsreconstructies hebben als eigenschap dat zij zijn gebaseerd op één of meer Persoonsvermeldingen.

## Ontologieën
We maken zoveel mogelijk gebruik van classes en properties uit verschillende bestaande ontologieën, waarbij we proberen het aantal ontologieën zo laag mogelijk te houden. Daarmee houden we het gebruik zo eenvoudig mogelijk. Ook proberen we - om de toepassing van PiCo eenvoudig te houden, resources zonder eigen URI (blank nodes) zoveel mogelijk te voorkomen.

Als het nodig is, zullen we eigenschappen uit de gebruikte ontologieën uitbreiden met extra kenmerken. Bijvoorbeeld: de relatie sdo:spouse is in Schema.org niet als wederkerig gedefinieerd. Dat willen we wel. Daarom voegen we in de ontologie deze wederkerigheid toe.

### PiCo model
De basisstructuur van PiCo is geïnspireerd door de ontologie Reconstructions and Observations in Archival Resources (ROAR). In deze ontologie zijn de concepten Persoonsvermelding (roar:PersonObservation) en Persoonsreconstructie (roar:PersonReconstruction) gedefinieerd. We hebben ervoor gekozen voor deze concepten zelf classes te definiëren in een eigen ontologie, om de complexiteit van de verschillende definities te beperken.

Behalve de definities van Persoonsvermelding en Persoonsreconstructie, onderkennen we enkele eigenschappen die niet beschikbaar zijn in een van de door ons gekozen ontologieën. We missen een eigenschap voor leeftijd, geloof, rol en overleden. Deze eigenschappen worden daarom in de eigen ontologie vastgelegd.

### PNV
De structuur van namen in de Nederlandstalige cultuur wordt vastgelegd met behulp van de Person Name Vocabulary ([PNV](https://www.lodewijkpetram.nl/vocab/pnv/doc/)). Daarbij kan een pnv:PersonName - als de bron het toestaat - opgeknipt worden weergegeven met voornamen (pnv:givenName), tussenvoegsel (pnv:surnamePrefix) en achternaam (pnv:baseSurname). Om potentiële vergissingen in het opknippen te ondervangen is een pnv:literalName verplicht, waarin de gehele naam wordt opgenomen in zijn oorspronkelijke weergave op de bron.

### Schema.org - personen
Bijna alle eigenschappen van personen die we willen kunnen vastleggen zijn gedefinieerd in [Schema.org](https://schema.org/). Het gaat daarbij onder meer om sdo:birthDate, sdo:birthPlace, sdo:hasOccupation en sdo:address. Alle eigenschappen die in Schema.org zijn gedefinieerd bij de class sdo:Person kunnen worden gebruikt. 

In Schema.org zijn voor de relaties tussen personen onder meer sdo:parent, sdo:children en sdo:spouse beschikbaar. Deze relaties zijn gender-neutraal. Het is daarom gewenst om ook de eigenschap sdo:gender aan een persoon toe te voegen.

### Schema.org - bronnen
Ook voor bronnen kunnen eigenschappen worden gebruikt uit [Schema.org](https://schema.org/). De belangrijkste eigenschap is het type bron. Deze eigenschap wordt vastgelegd met de property sdo:additionalType. Verder kunnen allerlei properties worden gebruikt die horen bij de class sdo:ArchiveComponent.

### PROV-O
Om aan te geven op welke Persoonsvermeldingen een Persoonsreconstructie is gebaseerd, wordt de property prov:wasDerivedFrom voorgeschreven. Deze is afkomstig uit de [PROV-O](https://www.w3.org/TR/prov-o/) ontologie.

### BIO
Voor een aantal life events die meerdere keren kunnen voorkomen in een leven, zoals huwelijken en echtscheidingen, wordt de [BIO](https://vocab.org/bio/) ontologie gebruikt. Geboortedatum en -plaats en overlijdensdatum en -plaats worden omwille van de eenvoud uit Schema.org gehaald. De stelregel hierbij is: waar mogelijk gebruiken we Schema.org. Wanneer dit niet goed mogelijk is, bijvoorbeeld omdat je meer gegevens wil vastleggen over een Gebeurtenis, of wanneer Schema.org geen geschikte property heeft voor een specifieke gebeurtenis, gebruiken we BIO.  

## Termen
### Rollen en Relaties
Relaties tussen personen worden vastgelegd met behulp van eigenschappen, waarin de aard van de relatie is vastgelegd (bijvoorbeeld sdo:parent). Rollen daarentegen zijn eigenschappen van de persoonsvermelding in de context van de bron waarin de vermelding is aangetroffen. Onderdeel van PiCo is een lijst van mogelijke rollen. Hierin staan onder meer overledene, getuige, aangever, testateur, koper, verkoper en hoofd van het gezin.

Voor een overzicht van de mogelijke rollen, zie [Bijlage 5](#5-terminologiebron-voor-rollen). Voor een overzicht van de mogelijke relaties tussen Persoonsvermeldingen onderling of Persoonsreconstructies onderling, zie [Bijlage 4](#4-relaties-tussen-persoonsvermeldingen--persoonsreconstructies).

### Soorten bronnen
Het is noodzakelijk om bij een Bron aan te geven wat voor soort bron het is. De waardes bij deze eigenschap zijn in PiCo gestandaardiseerd in een voorgeschreven terminologiebron die als onderdeel van PiCo wordt ontwikkeld. Hierin staan ten minste huwelijksakte, geboorteakte, overlijdensakte, bevolkingsregistratie, notariële akte, doopinschrijving, begrafenisregistratie en trouwregistratie.

Om deze brontypes vast te leggen maakt deze terminologiebron gebruik van de ontologie Simple Knowledge Organization Standard (SKOS).

Voor een overzicht van de mogelijke brontypes, [zie Bijlage 6](#6-terminologiebron-voor-brontypes).

## Andere documenten
Naast dit document zijn de volgende documenten van belang voor de nieuwe richtlijn:
* De ontologie zelf, uitgewerkt in Turtle.
* Terminologiebronnen voor Rollen, Relaties en Bronsoorten in SKOS-formaat.
* Uitwerking in SHACL. Voor nadere (technische) specificatie en validatie van datasets in PiCo.

Deze documenten zijn nog in ontwikkeling.

## Bijlages

### 1. Eigenschappen van Bron
Class: eg. sdo:ArchiveComponent

Eigenschappen van een Bron:
* sdo:name
* sdo:additionalType
* sdo:isPartOf
* sdo:holdingArchive
* sdo:dateCreated
* sdo:contentLocation
* sdo:associatedMedia
  * sdo:position
  * sdo:url
  * sdo:embedUrl
  * sdo:thumbnail
* sdo:url

### 2. Eigenschappen van Persoonsvermelding
Class: picom:PersonObservation

Een persoonsvermelding moet altijd gekoppeld zijn aan een bron via de eigenschap prov:hadPrimarySource. Een persoonsvermelding kan alle eigenschappen van sdo:Person krijgen. PiCo voegt daar een paar eigenschappen aan toe uit de PiCo-Ontologie.

Een beknopt overzicht van de mogelijke eigenschappen van een Persoonsvermelding:

* prov:hadPrimarySource (verplicht)
* sdo:name
* sdo:familyName
* sdo:givenName
* pnv:hasName
  * pnv:literalName
  * pnv:initials
  * pnv:givenName
  * pnv:prefix
  * pnv:baseSurname
  * pnv:patronym
* sdo:birthDate
* picom:hasAge
* sdo:birthPlace
* sdo:deathDate
* picom:deceased
* sdo:deathPlace
* sdo:address
* sdo:hasOccupation
* sdo:gender
* sdo:spouse
* sdo:parent
* picom:hasRole
* picom:hasReligion

### 3. Eigenschappen van Persoonsreconstructie
Class: picom:PersonReconstruction

Een Persoonsreconstructie moet altijd gekoppeld zijn aan een Persoonsvermelding door middel van de eigenschap: prov:wasDerivedFrom. Hoe een Persoonsreconstructie tot stand is gekomen (bijvoorbeeld door middel van een algoritme of door handwerk van een onderzoeker) wordt vastgelegd met de eigenschap prov:wasGeneratedBy. Een Persoonsreconstructie is, in tegenstelling tot een Persoonsvermelding, niet direct gekoppeld aan een Bron. De eigenschap picom:hasRole, voor de rol van een Persoonsvermelding op de Bron, wordt niet gebruikt bij Persoonsreconstructies.

Naast alle eigenschappen die genoemd zijn bij een Persoonsvermelding, heeft een Persoonsreconstructie twee extra eigenschappen:
* prov:wasDerivedFrom (verplicht)
* prov:wasGeneratedBy

De eigenschappen prov:hadPrimarySource en picom:hasRole, worden niet gebruikt bij een Persoonsreconstructie. Deze zijn wel te herleiden via de Persoonsvermelding(en) waarop de Persoonsreconstructie gebaseerd is.

### 4. Relaties tussen Persoonsvermeldingen / Persoonsreconstructies
Een niet uitputtend overzicht van relaties die gelegd kunnen worden tussen Persoonsvermeldingen onderling en tussen Persoonsreconstructies onderling:

* sdo:parent (ouder)
* sdo:children (kind)
* sdo:spouse (echtgenoot)
* sdo:sibling (broer/zus)
* sdo:knows (kent, de meest generieke relatie)
* sdo:relatedTo (de meest generieke familierelatie)
* picom:grandparent (grootouder)
* picom:grandchild (kleinkind)
* picom:godparent (peetouder)
* picom:godchild (petekind)
* picom:previousPartner (eerdere partner)
* picom:wid (weduwe/weduwnaar)
* picom:stepparent (stiefouder)
* picom:stepchild (stiefkind) 
* picom:child-in-law (schoonkind)
* picom:parent-in-law (schoonouder)
* picom:half-sibling (halfbroer/halfzus)
* picom:stepsibling (stiefbroer/stiefzus)
* picom:sibling-in-law (schoonbroer/schoonzus)
* picom:great-grandparent (overgrootouder)
* picom:great-grandchild (overgrootkind)
* picom:fosterParent (pleegouder)
* picom:fosterChild (pleegkind)
* picom:stepparent-in-law (stiefschoonouder)
* picom:stepchild-in-law (stiefschoonkind)
* picom:grandparent-in-law (schoongrootouder)
* picom:grandchild-in-law (schoonkleinkind)
* picom:uncle_aunt (oom/tante)
* picom:nephew_niece (neef/nicht - oomzegger/tantezegger)
* picom:nephew_niece-in-law (schoonneef/schoonnicht - oomzegger/tantezegger)
* picom:cousin (neef/nicht)
* picom:cousin-in-law (schoonneef/schoonnicht)
* picom:legitimizedChild (gelegitimeerd kind)


### 5. Terminologiebron voor Rollen
Een persoonsvermelding kan de volgende rollen hebben op een bron:

* deceased (overledene)
* child (kind)
* spouse (huwelijkspartner)
* traveler (reiziger)
* baptized (dopeling)
* employee (werknemer, personeelslid)
* notary (notaris)
* seller (verkoper)
* buyer (koper)
* signatory (ondertekenaar)
* declarant (aangever)
* resident (bewoner)
* conscript (dienstplichtige)
* churchMember (lidmaat)
* civilServant (ambtenaar)
* soldier (militair)
* decorated (gedecoreerde)
* debtor (schuldenaar)
* creditor (schuldeiser)
* conscript (loteling)
* personAppearing (comparant)
* owner (eigenaar)
* passenger (passagier)
* buriedPerson (begravene)
* tenant (huurder)
* constituent (constituant, volmachtgever)
* party (partij)
* beneficiary (begunstigde)
* defendant (gedaagde)
* landlord (verhuurder)
* heir (erfgenaam)
* firstParty (eerste partij)
* secondParty (tweede partij)
* testator (testateur)
* eligableVoter (kiesgerechtigde)
* detainee (arrestant)
* convicted (veroordeelde)
* ??? (patentplichtige, aangeslagene)
* ??? (geconstitueerde)
* ??? (rechthebbende)
* skipper (schipper)
* getuige (witness)

### 6. Terminologiebron voor Brontypes

* DTB dopen
* DTB trouwen
* DTB begraven
* DTB overig
* BS geboorte
* BS huwelijk
* BS overlijden
* bevolkingsregister
* memories van successie
* onroerend goed registraties
* familieadvertenties
* militaire registraties
* rechterlijke archieven
* registratie van vestiging en vertrek
* bidprentjes
* slavernijbronnen
* publicatie
* notariële archieven

[^1]: De [ROAR ontologie](https://leonvanwissen.nl/vocab/roar/docs/) is ontwikkeld door Leon van Wissen en Menno den Engelse.
