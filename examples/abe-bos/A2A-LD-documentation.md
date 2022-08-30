# A2A-LD

## Uitgangspunten
- Er is onderscheid tussen een Persoonreconstructie, Persoonsvermelding en Document.
- We doen niet: locaties en locatievermeldingen.

### Algemeen
- Er is onderscheid tussen een rol-in-de-bron en relatie-tussen-de-personen. Bv. bij een huwelijksakte rol: getuige, relatie: neef van de bruidegom.
Rollen: bruid, bruidegom, boreling
Relatie: vader van de bruid, moeder van de bruidegom, kind van
*Er moet een waarde (IRI of property) uit een voorgedefinieerde lijst worden gekozen.*
- datum is van type xsd:date (alleen Gregoriaanse kalender, dus > 1583-01-01)

### Persoonsvermelding
- Bij een Persoonsvermelding wordt zoveel mogelijk uitgegaan van de bron, dus
- Namen worden overgenomen zoals op de bron is beschreven. Uitzonderingen: datum ("18 Januarij 1853" wordt vastgelegd als "1853-01-18") en plaatsnaam ("Leijden" wordt vastgelegd als "Leiden")
- Er is geen sprake van "links ipv strings". Uitzondering: rol en relatie.

### Persoonsreconstructie

### Document
Alle documenten kunnen door de beherende instelling zo precies worden beschreven als zij zelf noodzakelijk achten. Voor de A2A uitwisseling bieden ze daarnaast tevens een beperkte beschrijving van het document aan met als rdf:type roar:Document. Hierbij moet tenminste worden opgenomen:
- schema:name (toch niet liever rdfs:label?)
- beherende instelling
- schema:additionalType
Verder: datum, plaats (bij huwelijk verplicht want anders)