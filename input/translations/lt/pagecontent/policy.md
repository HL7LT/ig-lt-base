## Politikos nuostatos ir konvencijos

Šiame dokumente aprašomos politikos nuostatos ir pavadinimų konvencijos, pritaikytos **Lietuvai** ir suderintos su naujausiais **ES sąveikumo standartais** (pvz., EHDS ir Europos bendrų techninių specifikacijų).

### Politikos nuostatos
#### P01 **HL7 FHIR standarto laikymasis**

* Visos FHIR įgyvendinimo sistemos **PRIVALOMA** laikytis HL7 FHIR standarto (R5 yra dabartinė nacionalinė bazė).
* Visos FHIR sąsajų įgyvendinimo sistemos **PRIVALOMA** laikytis reikalavimų, išdėstytų atitinkamame HL7 FHIR standartų leidime, kaip nurodyta [hl7.org/fhir](http://hl7.org/fhir).

#### P02 **Privalomas gamybos paketų paskelbimas**

* Siekiant užtikrinti skaidrumą ir sisteminį sąveikumą, bet koks FHIR paketas ar išteklius, naudojamas **gamybinėje aplinkoje**, **PRIVALOMA** paskelbti oficialiame FHIR paketų registre (pvz., [registry.fhir.org](https://registry.fhir.org)).
* Šis reikalavimas taikomas visiems nacionaliniams turiniams, įskaitant, bet neapsiribojant: **StructureDefinitions**, **OperationDefinitions** ir **ImplementationGuides**.
* Visi ištekliai, palaikantys **Nacionalinę elektroninių sveikatos įrašų sistemą (e-sveikata)**, **PRIVALOMA** paskelbti oficialiame Registrų centro FHIR serveryje, kuris yra tikslus tiesos šaltinis diegiančioms šalims.
* Gamybos sistemos **NETURI** remtis nepaskelbtomis arba tik vietinėmis FHIR turinio versijomis; tiesioginėse sąsajose **TURĖTŲ** būti naudojamos tik versijos su `active` statusu registre.

#### P03 **Privalomas terminologijos paskelbimas**

* Siekiant užtikrinti skaidrumą ir sisteminį sąveikumą, bet kokia FHIR terminologija, naudojama **gamybinėje aplinkoje**, **PRIVALOMA** paskelbti oficialiame Lietuvos terminologijos serveryje (pvz., [tx.hl7.lt](https://tx.hl7.lt)).
* Šis reikalavimas taikomas visiems nacionaliniams turiniams, įskaitant, bet neapsiribojant: **CodeSystems**, **ValueSets** ir **ConceptMaps**.
* Gamybos sistemos **NETURI** remtis nepaskelbtomis arba tik vietinėmis FHIR turinio versijomis; tiesioginėse sąsajose **TURĖTŲ** būti naudojamos tik versijos su `active` arba `retired` statusu registre.

#### P04 **Profilių hierarchija**

Lietuvoje profiliai kuriami laikantis daugiapakopės struktūros, siekiant užtikrinti tarptautinį suderinamumą:

* **1 lygis: HL7 tarptautinė bazė** – pagrindiniai FHIR išteklių profiliai.
* **2 lygis: HL7 Europa / tarpvalstybinis** – ES lygmens profiliai (pvz., Europos elektroninių sveikatos įrašų mainų formatas – EEHRxF).
* **3 lygis: Lietuviška bazė (LT-Base)** – Lietuvos lygmens profiliai, kuruojami per nacionalinę FHIR bendruomenę.
* **4 lygis: Specifinis diegimui** – konkrečių sistemų profiliai (pvz., e-sveikata, privačių ligoninių tinklai ar specifiniai registrų projektai).

#### P05 **FHIR dokumentų paradigmos vengimas**

* Realiojo laiko duomenų mainams nenaudoti [FHIR dokumentų paradigmos](http://www.hl7.org/fhir/documents.html). Vietoje to naudoti [REST](http://www.hl7.org/fhir/http.html) ir [pranešimų paradigmas](http://www.hl7.org/fhir/messaging.html).
* *Išimtis:* klinikinės santraukos, skirtos tarpvalstybiniams mainams (pvz., IPS – tarptautinė paciento santrauka), turėtų laikytis dokumentų paradigmos, jei taip nurodyta ES gairėse.

#### P06 **mustSupport**

* Jei *mustSupport* yra true, atitikties išteklių autoriai **PRIVALOMA** gebėti pateikti elemento reikšmę, o išteklių vartotojai **PRIVALOMA** gebėti išgauti ir apdoroti duomenų elementą.
* LT-Base, *mustSupport* naudojamas žymėti elementus, reikalingus nacionaliniams klinikiniams minimaliems duomenų rinkiniams arba teisinio ataskaitų teikimo reikalavimams.


#### P07: **Profilių ir išteklių versijų valdymas**

* Visi paskelbti artefaktai **PRIVALOMA** laikytis [semantinio versijų valdymo (SemVer)](http://semver.org/).
* Versijos numeris **NETURI** būti įtrauktas į profilio techninį pavadinimą.
* Versijos numeris **PRIVALOMA** naudoti profilio atribute `version`.

Lietuviškos organizacijos pavyzdys:

```json
{
  "resourceType": "StructureDefinition",
  "id": "organization-lt",
  "url": "https://hl7.lt/fhir/base/StructureDefinition/organization-lt",
  "version": "1.0.0"
}
```

#### P08 **FHIR išteklių ID**

* Loginiai ID (`Resource.id`) **PRIVALOMA** priskirti serverio gamybiniams duomenims.
* Kuriant IG, ID PRIVALOMA laikytis kebab-case priesagos konvencijos (pvz., patient-lt).
* Nacionaliniai ID numeriai (pvz., asmens kodas) **NETURI** būti naudojami kaip ištekliaus loginis ID; jie turi būti saugomi elemente `identifier`.

#### P09 **Loginės nuorodos**

* Pranešimų ir tarpvalstybiniuose mainuose, nuorodos **TURĖTŲ** būti loginės nuorodos, naudojančios URI iš žinomos Lietuvos **CodeSystem** ar **NamingSystem**.
* **Dažniausiai naudojami Lietuvos URI:**
  * Asmens kodas: `https://tx.hl7.lt/NamingSystem/asmens-kodas`
  * Įstaigos kodas: `https://tx.hl7.lt/NamingSystem/istaigos-kodas`

---

### Pavadinimų konvencijos

Lietuviškiems turiniams priimta vieninga pavadinimų strategija, siekiant užtikrinti jų lengvą atrandamumą ir atskyrimo nuo tarptautinių ar kitų nacionalinių profilių galimybę.

#### N01: **Išteklių ID gali sudaryti ne daugiau kaip 64 raidės, skaičiai, brūkšneliai ir taškai.**

Išteklių ID turi būti raidžių, skaičių, brūkšnelių ir taškų derinys. Vardas turi būti bent 1 simbolio ilgio, bet neviršyti 64 simbolių.

* Išraiška: `^[a-z0-9\-]{1,64}$`
* Reikalavimas: turi baigtis IG priesaga (pvz., -lt bazei, -lt-lab Lab IG).

#### N02: **Verslo pavadinimai turi prasidėti didžiąja raide ir gali sudaryti raidės bei skaičiai.**

Pavadinimai turi prasidėti didžiąja raide, po kurios gali eiti iki 254 simbolių – raidžių, skaičių ar pabraukimų derinys. Pavadinimai turi prasidėti didžiąja raide (PascalCase). Pabraukimų naudojimas nerekomenduojamas.

* Išraiška: `^[A-Z]([A-Za-z0-9_]){1,254}$`
* Reikalavimas: turi baigtis šalies priesaga Lt (ir pasirinktinai VSLt, siekiant atskirti nuo atitinkamos CodeSystem).

#### N03: **StructureDefinition apibrėžimo konvencija**

Siekiant užtikrinti unikalumą pasaulinėje FHIR ekosistemoje ir aiškumą Europos sveikatos duomenų erdvėje (EHDS), visiems Lietuvos FHIR turiniams **PRIVALOMA** laikytis šios struktūrizuotos pavadinimų konvencijos profilių, plėtinių ir duomenų tipų atveju.

Visi Lietuvos FHIR turiniai PRIVALOMA laikytis priesaga grįstos pavadinimų konvencijos, siekiant užtikrinti natūralų grupavimą abėcėlinėse sąrašuose.

* **Bazinis URL**: oficialus paskelbimo URL. Lietuvai tai yra `https://hl7.lt/fhir/[**igcode**]` (arba konkretus vyriausybės domenas).
* **Šalies priesaga**: priesaga **Lt** **PRIVALOMA** taikoma visiems Lietuvos turiniams.
* **IG priesaga**: IG kodas **TURĖTŲ** eiti po šalies priesagos.
* **Mašininis pavadinimas**: ištekliaus (mašininis) pavadinimas turėtų naudoti [PascalCase](https://wiki.c2.com/?PascalCase).
* **Id**: ištekliaus id turėtų būti mažosiomis raidėmis, o visi žodžiai **TURĖTŲ** būti atskirti brūkšneliais `-`.
* **Kalba**: techniniai pavadinimų segmentai **PRIVALOMA** anglų kalba.
* **Metaduomenys**: visi ištekliai PRIVALOMA naudoti Aliases URL FSH (pvz., * ^url = $patient-lt-url).

**Išteklių pavadinimų reikalavimai:**

* **Ištekliaus pavadinimas**: [**BusinessName**][**Lt**][**Igcode**] PascalCase.
* **Ištekliaus Id**: [**business-name**]-[**lt**]-[**igcode**] mažosiomis raidėmis su brūkšneliais.
* **Antraštė**: žmogui suprantama verslo pavadinimo versija, pasirinktinai su šalies ir IG kodais skliausteliuose.

| Ištekliaus pavadinimas | Ištekliaus Id | Ištekliaus Url | Ištekliaus antraštė |
| --- | --- | --- | --- |
| PatientLt | patient-lt | https://hl7.lt/fhir/base/StructureDefinition/patient-lt | Patient (LT) |
| PractitionerLt | practitioner-lt | https://hl7.lt/fhir/base/StructureDefinition/practitioner-lt | Practitioner (LT) |
| PathologyOrderLtLab | pathology-order-lt-lab | https://hl7.lt/fhir/lab/StructureDefinition/pathology-order-lt-lab | Pathology Order (LT Lab) |

**Egzempliorių pavadinimų reikalavimai:**

* **Antraštė**: [**ResourceType**]: [**BusinessName**] **(example)** – žmogui suprantamas pavadinimas (pvz., „Patient: Male (example)", kur `IGcode -` yra neprivaloma).
* **Egzempliorius**: [**resourceType**]-[**business-name**]-[**example**] mažosiomis raidėmis su brūkšneliais.

| Ištekliaus tipas | Egzempliorius | Antraštė |
| --- | --- | --- |
| Patient | patient-male-example | Patient: Male (example) |
| Observation | observation-prostate-pirads-lesion1-example | Observation: PI-RADS Assessment, Lesion 1 (example) |
| Observation | observation-lab-hba1c-example | Observation: Lab HbA1c (example) |

---

#### N04: **CodeSystem ir ValueSet konvencija**

* **Bazinis URL**: oficialus terminologijos serverio URL. Lietuvai tai yra `https://tx.hl7.lt/fhir`. Kanoninės priešdėliai turėtų būti vengiami.
* **Mašininis pavadinimas**: ištekliaus (mašininis) pavadinimas turėtų naudoti [PascalCase](https://wiki.c2.com/?PascalCase).
* **Id**: ištekliaus id turėtų būti mažosiomis raidėmis, o visi žodžiai **TURĖTŲ** būti atskirti brūkšneliais `-`.
* **Kalba**: techniniai pavadinimų segmentai **PRIVALOMA** anglų kalba.
* **Ištekliaus tipas**: visi terminologijos ištekliai **GALI** turėti priesagą `Lt` (arba `Lt[IgCode]` IG specifinei terminologijai). ValueSets **GALI** pasirinktinai įtraukti `VS` prieš `Lt`, siekiant atskirti nuo atitinkamos CodeSystem.

* **Ištekliaus pavadinimas**: [BusinessName][VS][Lt][IgCode] (pvz., IdentitySystemLt, MedicalSpecialtyVSLt).

| Ištekliaus pavadinimas | Ištekliaus Id | Ištekliaus Url |
| --- | --- | --- |
| IdentitySystemLt | identity-system-lt | https://tx.hl7.lt/fhir/CodeSystem/identity-system |
| MedicalSpecialtyVSLt | medical-specialty-lt | https://tx.hl7.lt/fhir/ValueSet/medical-specialty |
| PatientIdentifierLt | patient-identifier-lt | https://tx.hl7.lt/fhir/ValueSet/patient-identifier |

---

### Skriningo programų šablonai

#### SCRN-01 **Skriningo CarePlan**

Visos nacionalinių skriningo programų IG **TURĖTŲ** naudoti [ScreeningCarePlanLt](StructureDefinition-screening-careplan-lt.html) kaip pagrindinį profilį savo programai skirtam CarePlan. Tai užtikrina nuoseklią dalyvavimo, būsenos stebėjimo, veiklų ir tolesnio stebėjimo struktūrą visose programose.

#### SCRN-02 **Tolesni veiksmai po rekomendacijos**

Skriningo ir diagnostikos IG modeliuoja tolesnius veiksmus po rekomendacijos naudodamos vieną iš dviejų šablonų:

* **ServiceRequest** — kai pateikiamas konkretus klinikinis užsakymas arba siuntimas (pvz., siuntimas biopsijai, tolesnio tyrimo planavimas). Naudoti, kai rekomendacija inicijuoja veiksmų reikalaujantį darbo procesą.
* **Observation** — kai registruojama klinikinė rekomendacija ar vertinimo išvada, informuojanti apie kitą žingsnį, bet tiesiogiai nesukurianti užsakymo (pvz., „rekomenduojama pakartoti skrinigą po 12 mėnesių").

IG **TURĖTŲ** dokumentuoti, kurį šabloną jos naudoja ir kodėl. Abu šablonai yra tinkami; pasirinkimas priklauso nuo to, ar rekomendacija reikalauja veiksmų (ServiceRequest) ar yra informacinė (Observation).

#### SCRN-03 **Radinių raida**

Stebint, kaip radiniai keičiasi laikui bėgant (naujas, padidėjęs, sumažėjęs, stabilus, dingęs), IG **TURĖTŲ** naudoti bendrą [FindingEvolutionVS](ValueSet-finding-evolution.html) ValueSet iš LT Base, o ne apibrėžti vietinius atitikmenis.

---

### Sveikatos paslaugos / teikėjai

#### FHIR-SERV-01 **Baziniai keliai**

Užregistruotų ir palaikomų vardų erdvių sąrašas:

| API pavadinimas | Teikėjo kodas | Bazinis URL |
| --- | --- | --- |
| Lithuanian (FHIR) Base | LT | https://hl7.lt/fhir |
| LT National Health System | E-SVEIKATA | https://api.esveikata.lt/fhir |
| National Health Insurance Fund | VLK | https://api.vlk.lt/fhir |
| Terminology Server | TX | https://tx.hl7.lt/fhir |

---
