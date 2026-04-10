### Leidimų pastabos

v0.3.0 - xx.xx.2026

#### Atnaujintos politikos ir pavadinimų suteikimo konvencijos

* Atnaujinta policy.md su pataisytomis pavadinimų konvencijomis, suderintomis su FHIR migracijos vadovu
* Pataisytos išteklių ID priesagos taisyklės: visi ištekliai naudoja priesagą `-lt` (arba `-lt-{ig}` kitiems IG), ValueSet nenaudoja `-vs` ID
* Patikslinta verslo pavadinimų priesagos taisyklė: `Lt` yra privaloma, pasirenkama `VS` priešdėlis prieš `Lt` ValueSet (pvz., `VSLt`, ne `LtVS`)
* Pataisyti profilio pavadinimų pavyzdžiai: `PractitionerLt`, `PathologyOrderLtLab` su tinkamu PascalCase
* Atnaujintas egzempliorių pavadinimų šablonas: naudoja `(example)` skliausteliuose
* Pataisyta terminologijos pavadinimų suteikimas: privaloma `Lt` priesaga visuose CodeSystem ir ValueSet pavadinimuose
* Pataisytos visos sugedusios URL nuorodos ir pašalintos Google peradresavimo nuorodos iš lentelių
* Ištaisytos įvairios rašybos klaidos ir gramatinės klaidos politikos dokumentacijoje
