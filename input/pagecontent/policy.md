## Policies and conventions

This document describe the policies and naming conventions, adapted for **Lithuania** and aligned with recent **EU interoperability standards** (such as the EHDS and European Common Technical Specifications).

### Policies
#### P01 **HL7 FHIR standard compliance**

* All FHIR implementations **MUST** comply with the HL7 FHIR standard (R5 is the current national baseline).
* All implementations of FHIR interfaces **MUST** comply with the requirements outlined in the relevant release of the HL7 FHIR standards, as outlined on [hl7.org/fhir](http://hl7.org/fhir).

#### P02 **Mandatory Publication of Production Packages**

* To ensure transparency and cross-system interoperability, any FHIR package or resource used in a **production environment** **MUST** be published in the official FHIR Package Registry (e.g., [registry.fhir.org](https://registry.fhir.org)).
* This requirement applies to all nationally defined assets, including but not limited to: **StructureDefinitions**, **OperationDefinitions**, and **ImplementationGuides**.
* ???? All resources supporting the **National Electronic Health System (e-sveikata)** **MUST** be published on the official Centre of Registers (*Registrų centras*) FHIR server to serve as the definitive source of truth for implementers.
* Production systems **MUST NOT** rely on unpublished or local-only versions of FHIR assets; only versions with an `active` status in the registry should be utilized in live interfaces.

#### P03 **Mandatory Publication of Terminology**

* To ensure transparency and cross-system interoperability, any FHIR terminology used in a **production environment** **MUST** be published in the official Lithuanian Terminology server (e.g., [tx.hl7.lt](https://rtx.hl7.lt)).
* This requirement applies to all nationally defined assets, including but not limited to: **CodeSystems**, **ValueSets**, and **ConceptMaps**.
* Production systems **MUST NOT** rely on unpublished or local-only versions of FHIR assets; only versions with an `active` or `retired` status in the registry should be utilized in live interfaces.

#### P04 **Profile Hierarchy**

In Lithuania, profiles are developed according to a tiered approach to ensure international compatibility:

* **Level 1: HL7 International Base** – The core FHIR resource profiles.
* **Level 2: HL7 Europe / Cross-Border** – EU-wide profiles (e.g., European Electronic Health Record Exchange Format - EEHRxF).
* **Level 3: Lithuanian Base (LT-Base)** – Lithuania-wide profiles curated through the national FHIR community.
* **Level 4: Implementation Specific** – Profiles for specific systems (e.g., e-sveikata, private hospital chains, or specific registry projects).

#### P05 **Avoid FHIR Document Paradigm**

* Avoid the [FHIR Document Paradigm](http://www.hl7.org/fhir/documents.html) for real-time data exchange. Use [REST](http://www.hl7.org/fhir/http.html) and [Messaging Paradigms](http://www.hl7.org/fhir/messaging.html) instead.
* *Exception:* Clinical summaries intended for cross-border exchange (e.g., IPS - International Patient Summary) should follow the Document paradigm where specified by EU guidelines.

#### P06 **Must Support**

* If *mustSupport* is true, conformant resource authors **SHALL** be capable of providing a value for the element, and resource consumers **SHALL** be capable of extracting and processing the data element.
* In LT-Base, *mustSupport* is used to flag elements required for national clinical minimum datasets or legal reporting requirements.


#### P07: **Versioning of Profiles and Resources**

* All published artefacts **MUST** follow [Semantic Versioning (SemVer)](http://semver.org/).
* The version number **MUST NOT** be included in the profile's technical name.
* The version number **MUST** be used in the profile's `version` attribute.

Example for a Lithuanian Organization:

```json
{
  "resourceType": "StructureDefinition",
  "id": "organization-lt",
  "url": "https://fhir.hl7.lt/StructureDefinition/Organization-lt",
  "version": "1.0.0"
}
```

#### P08 **FHIR resource ID**

* Logical IDs (`Resource.id`) **MUST** be server-assigned.
* National ID numbers (e.g., Personal Code / *Asmens kodas*) **MUST NOT** be used as the resource logical ID; they must be stored in the `identifier` element.

#### P09 **Logical references**

* In messaging and cross-border exchange, references **SHOULD** be logical references using a URI from a known Lithuanian **CodeSystem** or **NamingSystem**.
* **Common Lithuanian URIs:**
  * Personal Code: `https://fhir.hl7.lt/NamingSystem/asmens-kodas`
  * Healthcare Provider Code (Įstaigos kodas): `https://fhir.hl7.lt/NamingSystem/istaigos-kodas`

---

### Naming Conventions

A unified naming strategy is adopted for **Lithuanian** assets to ensure they are easily discoverable and distinguish them from international or other national profiles.

#### N01: **Resource IDs can only use up to 64 letters,numbers, hyphens and periods.**

Resource Ids must be combination of letters, numbers, hyphens, and periods. Ensure that the name is at least 1 character long but does not exceed 64 characters in length. The expression is `[A-Za-z0-9\-\.]{1,64}`.

#### N02: **Business names must start with an uppercase character, and may contain letters and numbers.**

Names must start with an uppercase letter followed by up to 254 characters that can be a mix of letters, numbers, or underscores. The expression is `^[A-Z]([A-Za-z0-9_]){1,254}$`. The use of underscores is to be avoided.

#### N03: **Convention for StructureDefinition definition**

To ensure uniqueness across the global FHIR ecosystem and clarity within the European Health Data Space (EHDS), all Lithuanian FHIR assets **MUST** follow this structured naming convention for profiles, extensions and data types.

* **Base URL**: The official publishing URL. For Lithuania, this is `https://fhir.hl7.lt` (or the specific governmental domain).
* **Country Suffix**: The suffix **Lt** **MUST** be applied for all Lithuanian assets.
* **IG Suffix**: The IG code **SHOULD** follow to country suffix.
* **Machine Name**: The resource (machine) name should use the [PascalCase](https://wiki.c2.com/?PascalCase).
* **Id**: The resource id should be in lowercase and all words **SHOULD** be separated by hypnes `-`.
* **Language**: Technical name segments **MUST** be in English.

**Naming Requirements:**

* **Resource Name**: [**BusinessName**][**Lt**][**Igcode**] in PascalCase.
* **Resource Id**: [**business-name**]-[**lt**]-[**igcode**] in lowercase with hyphens.
* **Title**: Human-readable name (e.g., "Patient LT").

| Resource Name | Resource Id | Resource Url | Resource Title |
| --- | --- | --- | --- |
| PatientLt | patient-lt | [https://fhir.hl7.lt/base/StructureDefinition/patient-lt](https://www.google.com/search?q=https://fhir.hl7.lt/StructureDefinition/lt-patient) | Patient (LT) |
| PractitionerLTBase | practitioner-lt-base | [https://fhir.hl7.lt/StructureDefinition/practitioner-lt](https://www.google.com/search?q=https://fhir.hl7.lt/StructureDefinition/Practitioner-lt) | Practitioner (LT Base) |
| PathologyOrderLTLab | pathology-order-lt-lab | [https://fhir.hl7.lt/StructureDefinition/pathology-order-lt-lab](https://www.google.com/search?q=https://fhir.hl7.lt/StructureDefinition/pathology-order-lt-lab) | Pathology Order (LT Lab) |

---

#### N04: **CodeSystem and ValueSet convention**

* **Base URL**: The official URL of the terminology server. For Lithuania, this is `https://tx.hl7.lt`.
* **Machine Name**: The resource (machine) name should use the [PascalCase](https://wiki.c2.com/?PascalCase).
* **Id**: The resource id should be in lowercase and all words **SHOULD** be separated by hypnes `-`.
* **Language**: Technical name segments **MUST** be in English.
* **ResourceType**: ValueSets **SHOULD** be suffixed with `VS` (not mandatory) if value set name matches the code system.

* **Resource Name**: [BusinessName][Type] (e.g., LegalStatusVS).

| Resource Name | Resource Id | Resource Url |
| --- | --- | --- |
| IdentitySystem | identity-system | [https://tx.hl7.lt/CodeSystem/identity-system](https://www.google.com/search?q=https://tx.hl7.lt/CodeSystem/identity-system) |
| MedicalSpecialtyVS | medical-specialty | [https://tx.hl7.lt/ValueSet/medical-specialty](https://www.google.com/search?q=https://tx.hl7.lt/ValueSet/medical-specialty) |

---

### Health Services / Providers

#### FHIR-SERV-01 **Base Paths**

The list of the registred and supported namespaces:

| API Name | Provider Code | Base URL |
| --- | --- | --- |
| Lithuanian (FHIR) Base | LT | [https://fhir.hl7.lt](https://www.google.com/url?sa=E&source=gmail&q=https://fhir.hl7.lt) |
| LT National Health System | E-SVEIKATA | [https://api.esveikata.lt/fhir](https://www.google.com/search?q=https://api.esveikata.lt/fhir) |
| National Health Insurance Fund | VLK | [https://api.vlk.lt/fhir](https://www.google.com/search?q=https://api.vlk.lt/fhir) |
| Terminology Server | TX | [https://tx.hl7.lt](https://www.google.com/url?sa=E&source=gmail&q=https://tx.hl7.lt) |

---
