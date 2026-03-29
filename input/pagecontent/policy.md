## Policies and conventions

This document describe the policies and naming conventions, adapted for **Lithuania** and aligned with recent **EU interoperability standards** (such as the EHDS and European Common Technical Specifications).

### Policies
#### P01 **HL7 FHIR standard compliance**

* All FHIR implementations **MUST** comply with the HL7 FHIR standard (R5 is the current national baseline).
* All implementations of FHIR interfaces **MUST** comply with the requirements outlined in the relevant release of the HL7 FHIR standards, as outlined on [hl7.org/fhir](http://hl7.org/fhir).

#### P02 **Mandatory Publication of Production Packages**

* To ensure transparency and cross-system interoperability, any FHIR package or resource used in a **production environment** **MUST** be published in the official FHIR Package Registry (e.g., [registry.fhir.org](https://registry.fhir.org)).
* This requirement applies to all nationally defined assets, including but not limited to: **StructureDefinitions**, **OperationDefinitions**, and **ImplementationGuides**.
* All resources supporting the **National Electronic Health System (e-sveikata)** **MUST** be published on the official Centre of Registers (*Registrų centras*) FHIR server to serve as the definitive source of truth for implementers.
* Production systems **MUST NOT** rely on unpublished or local-only versions of FHIR assets; only versions with an `active` status in the registry should be utilized in live interfaces.

#### P03 **Mandatory Publication of Terminology**

* To ensure transparency and cross-system interoperability, any FHIR terminology used in a **production environment** **MUST** be published in the official Lithuanian Terminology server (e.g., [tx.hl7.lt](https://tx.hl7.lt)).
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
  "url": "https://hl7.lt/fhir/base/StructureDefinition/organization-lt",
  "version": "1.0.0"
}
```

#### P08 **FHIR resource ID**

* Logical IDs (`Resource.id`) **MUST** be server-assigned for production data.
* For IG development, IDs MUST follow the kebab-case suffix convention (e.g., patient-lt).
* National ID numbers (e.g., Personal Code / *Asmens kodas*) **MUST NOT** be used as the resource logical ID; they must be stored in the `identifier` element.

#### P09 **Logical references**

* In messaging and cross-border exchange, references **SHOULD** be logical references using a URI from a known Lithuanian **CodeSystem** or **NamingSystem**.
* **Common Lithuanian URIs:**
  * Personal Code: `https://tx.hl7.lt/NamingSystem/asmens-kodas`
  * Healthcare Provider Code (Įstaigos kodas): `https://tx.hl7.lt/NamingSystem/istaigos-kodas`

---

### Naming Conventions

A unified naming strategy is adopted for **Lithuanian** assets to ensure they are easily discoverable and distinguish them from international or other national profiles.

#### N01: **Resource IDs can only use up to 64 letters,numbers, hyphens and periods.**

Resource Ids must be combination of letters, numbers, hyphens, and periods. Ensure that the name is at least 1 character long but does not exceed 64 characters in length. 

* Expression: `^[a-z0-9\-]{1,64}$`
* Requirement: Must end with the IG suffix (e.g., -lt for Base, -lt-lab for Lab IG).

#### N02: **Business names must start with an uppercase character, and may contain letters and numbers.**

Names must start with an uppercase letter followed by up to 254 characters that can be a mix of letters, numbers, or underscores. Names must start with an uppercase letter (PascalCase). The use of underscores is to be avoided.

* Expression: `^[A-Z]([A-Za-z0-9_]){1,254}$`
* Requirement: Must end with the country suffix Lt (and optionally VSLt to distinguish from a matching CodeSystem).

#### N03: **Convention for StructureDefinition definition**

To ensure uniqueness across the global FHIR ecosystem and clarity within the European Health Data Space (EHDS), all Lithuanian FHIR assets **MUST** follow this structured naming convention for profiles, extensions and data types. 

All Lithuanian FHIR assets MUST follow the suffix-based naming convention to ensure they are grouped naturally in alphabetical lists.

* **Base URL**: The official publishing URL. For Lithuania, this is `https://hl7.lt/fhir/[**igcode**]` (or the specific governmental domain).
* **Country Suffix**: The suffix **Lt** **MUST** be applied for all Lithuanian assets.
* **IG Suffix**: The IG code **SHOULD** follow the country suffix.
* **Machine Name**: The resource (machine) name should use the [PascalCase](https://wiki.c2.com/?PascalCase).
* **Id**: The resource id should be in lowercase and all words **SHOULD** be separated by hyphens `-`.
* **Language**: Technical name segments **MUST** be in English.
* **Metadata**: All resources MUST use Aliases for URLs in FSH (e.g., * ^url = $patient-lt-url).

**Resource Naming Requirements:**

* **Resource Name**: [**BusinessName**][**Lt**][**Igcode**] in PascalCase.
* **Resource Id**: [**business-name**]-[**lt**]-[**igcode**] in lowercase with hyphens.
* **Title**: Human-readable version of the business name and optionally country and IG codes in the brackets.

| Resource Name | Resource Id | Resource Url | Resource Title |
| --- | --- | --- | --- |
| PatientLt | patient-lt | https://hl7.lt/fhir/base/StructureDefinition/patient-lt | Patient (LT) |
| PractitionerLt | practitioner-lt | https://hl7.lt/fhir/base/StructureDefinition/practitioner-lt | Practitioner (LT) |
| PathologyOrderLtLab | pathology-order-lt-lab | https://hl7.lt/fhir/lab/StructureDefinition/pathology-order-lt-lab | Pathology Order (LT Lab) |

**Instance Naming Requirements:**

* **Title**: [**ResourceType**]: [**BusinessName**] **(example)** - Human-readable name (e.g., "Patient: Male (example)", where `IGcode -` is optional).
* **Instance**: [**resourceType**]-[**business-name**]-[**example**] in lowercase with hyphens.

| Resource Type | Instance | Title |
| --- | --- | --- |
| Patient | patient-male-example | Patient: Male (example) |
| Observation | observation-prostate-pirads-lesion1-example | Observation: PI-RADS Assessment, Lesion 1 (example) |
| Observation | observation-lab-hba1c-example | Observation: Lab HbA1c (example) |

---

#### N04: **CodeSystem and ValueSet convention**

* **Base URL**: The official URL of the terminology server. For Lithuania, this is `https://tx.hl7.lt/fhir`. Canonical prefix should be avoided.
* **Machine Name**: The resource (machine) name should use the [PascalCase](https://wiki.c2.com/?PascalCase).
* **Id**: The resource id should be in lowercase and all words **SHOULD** be separated by hyphens `-`.
* **Language**: Technical name segments **MUST** be in English.
* **ResourceType**: All terminology resources **MAY** include the `Lt` suffix (or `Lt[IgCode]` for IG-specific terminology). ValueSets **MAY** optionally include `VS` before `Lt` to distinguish from a matching CodeSystem.

* **Resource Name**: [BusinessName][VS][Lt][IgCode] (e.g., IdentitySystemLt, MedicalSpecialtyVSLt).

| Resource Name | Resource Id | Resource Url |
| --- | --- | --- |
| IdentitySystemLt | identity-system-lt | https://tx.hl7.lt/fhir/CodeSystem/identity-system |
| MedicalSpecialtyVSLt | medical-specialty-lt | https://tx.hl7.lt/fhir/ValueSet/medical-specialty |
| PatientIdentifierLt | patient-identifier-lt | https://tx.hl7.lt/fhir/ValueSet/patient-identifier |

---

### Screening Programme Patterns

#### SCRN-01 **Screening CarePlan**

All national screening programme IGs **SHOULD** use [ScreeningCarePlanLt](StructureDefinition-screening-careplan-lt.html) as the parent profile for their programme-specific CarePlan. This ensures consistent structure for enrollment, status tracking, activities, and follow-up across programmes.

#### SCRN-02 **Follow-up Recommendations**

Screening and diagnostic IGs model follow-up recommendations using one of two patterns:

* **ServiceRequest** — when a concrete clinical order or referral is being placed (e.g., referral to biopsy, scheduling a follow-up examination). Use this when the recommendation triggers an actionable workflow step.
* **Observation** — when recording a clinical recommendation or assessment finding that informs the next step but does not directly create an order (e.g., "recommend repeat screening in 12 months").

IGs **SHOULD** document which pattern they use and why. Both patterns are valid; the choice depends on whether the recommendation is actionable (ServiceRequest) or informational (Observation).

#### SCRN-03 **Finding Evolution**

When tracking how findings change over time (new, increased, decreased, stable, absent), IGs **SHOULD** use the shared [FindingEvolutionVS](ValueSet-finding-evolution.html) ValueSet from LT Base rather than defining local equivalents.

---

### Health Services / Providers

#### FHIR-SERV-01 **Base Paths**

The list of the registred and supported namespaces:

| API Name | Provider Code | Base URL |
| --- | --- | --- |
| Lithuanian (FHIR) Base | LT | https://hl7.lt/fhir |
| LT National Health System | E-SVEIKATA | https://api.esveikata.lt/fhir |
| National Health Insurance Fund | VLK | https://api.vlk.lt/fhir |
| Terminology Server | TX | https://tx.hl7.lt/fhir |

---
