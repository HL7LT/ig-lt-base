// Alias: $extension-Observation.bodyStructure = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure
// Alias: $extension-Observation.triggeredBy = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy
// Alias: $extension-Observation.value-5Bx-5D = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value%5Bx%5D
// Alias: $patient-eu-core = http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core
// Alias: $location-eu-core = http://hl7.eu/fhir/base/StructureDefinition/location-eu-core
// Alias: $practitioner-eu-core = http://hl7.eu/fhir/base/StructureDefinition/practitioner-eu-core
// Alias: $practitionerRole-eu-core = http://hl7.eu/fhir/base/StructureDefinition/practitionerRole-eu-core
// Alias: $organization-eu-core = http://hl7.eu/fhir/base/StructureDefinition/organization-eu-core

Profile: MedicalTestResultEuCore
Parent: Observation
Id: medicalTestResult-eu-core
Title: "MedicalTestResult (EU core)"
Description: "This profile sets minimum expectations for the Observation resource for Medical Test Results common to most of the use cases."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^version = "2.0.0-ballot"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Copyright HL7 Europe. Licensed under creative commons public domain (CC0 1.0)."
// * extension contains
//     $extension-Observation.bodyStructure named bodyStructure 0..1 and
//     $extension-Observation.triggeredBy named triggeredBy 0..* and
//     $extension-Observation.value-5Bx-5D named value-r5 0..1
// * extension[bodyStructure] ^requirements = "EHDSObservation.anatomicLocation"
// * extension[triggeredBy].extension contains observation 1..1
// * extension[triggeredBy].extension[observation].extension ..0
// * extension[triggeredBy].extension[observation].value[x] only Reference(MedicalTestResultEuCore)
// * extension[triggeredBy].extension[observation].value[x] ^requirements = "EHDSObservation.triggeredBy[x]"
// * extension[triggeredBy].value[x] ..0
// * extension[value-r5] ^short = "only for result of type Attachment"
// * extension[value-r5].value[x] only Attachment
* identifier ^requirements = "EHDSObservation.header.identifier"
* basedOn ^requirements = "EHDSObservation.order"
* status ^requirements = "EHDSObservation.header.status"
* category 1..
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category ^requirements = "EHDSObservation has no requirement"
* category contains
    laboratory 0..1 and
    vital-signs 0..1
* category[laboratory] = $observation-category#laboratory
* category[vital-signs] = $observation-category#vital-signs
* code from $lab-obsCode-eu-lab (preferred)
* code ^requirements = "EHDSObservation.code"
* subject 1..
* subject only Reference($EuPatientUrl)
* subject ^requirements = "EHDSObservation.header.subject"
* focus only Reference($EuPatientUrl or RelatedPerson or Group or Device or $EuLocationUrl)
* focus ^requirements = "EHDSObservation.directSubject[x]"
* effective[x] 1..
* effective[x] only dateTime or Period
* effective[x] ^requirements = "EHDSObservation.observationDate[x]"
* issued ^requirements = "EHDSObservation.header.authorship.datetime"
* performer only Reference($EuPractitionerUrl or $EuPractitionerRoleUrl or $EuOrganizationUrl)
* performer ^requirements = "EHDSObservation.header.performer"
* value[x] ^slicing.rules = #open
// * value[x] ^slicing.discriminator.type = #type
// * value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.ordered = false
* value[x] ^requirements = "EHDSObservation.result.value[x]"
// * value[x] contains valueQuantity 0..1 MS
//* value[x][valueQuantity] only Quantity or CodeableConcept or string or integer or boolean or Range or Ratio or SampledData or time or dateTime or Period or Attachment
//* value[x][valueQuantity].extension contains Uncertainty named uncertainty 0..1
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.extension contains Uncertainty named uncertainty 0..1
* valueQuantity.extension[uncertainty] ^requirements = "EHDSObservation.result.uncertainty"
* dataAbsentReason ^requirements = "EHDSObservation.dataAbsentReason"
* interpretation ^requirements = "EHDSObservation.interpretation"
* note ^requirements = "EHDSObservation.resultDescription"
* bodySite ^requirements = "EHDSObservation.anatomicLocation"
* method ^requirements = "EHDSObservation.method"
* device ^requirements = "Device information for laboratory observations"
* referenceRange ^requirements = "EHDSObservation.referenceRange"
* hasMember only Reference(MedicalTestResultEuCore or QuestionnaireResponse)
* hasMember ^requirements = "EHDSObservation.hasMember[x]"
* derivedFrom only Reference(MedicalTestResultEuCore or ImagingStudy or DocumentReference or QuestionnaireResponse)
* derivedFrom ^requirements = "EHDSObservation.derivedFrom[x]"
* component ^requirements = "EHDSObservation.component"
* component.code from $lab-obsCode-eu-lab (preferred)
* component.code ^requirements = "EHDSObservation.component.code"
* component.value[x] ^requirements = "EHDSObservation.component.result.value[x]"
* component.valueQuantity 0..1
* component.valueQuantity only Quantity
* component.valueQuantity ^sliceName = "valueQuantity"
* component.valueQuantity.extension contains Uncertainty named uncertainty 0..1
* component.valueQuantity.extension[uncertainty] ^requirements = "EHDSObservation.component.result.uncertainty"
* component.dataAbsentReason ^requirements = "EHDSObservation.component.dataAbsentReason"
* component.interpretation ^requirements = "EHDSObservation.component.interpretation"
* component.referenceRange ^requirements = "EHDSObservation.component.referenceRange"