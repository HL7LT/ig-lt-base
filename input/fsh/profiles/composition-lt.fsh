Profile: CompositionLt
Parent: CompositionEu
Id: composition-lt
Title: "CompositionLt"
Description: "Lithuanian Base Composition profile, used for creating healthcare compositions."
* ^url = $composition-lt-url
* ^status = #active

* status MS
* version MS
* type MS
* subject 1.. MS
* encounter MS
* encounter only Reference(EncounterLt)
* date MS
* author MS
* author only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt or $patient-lt-url or $EuPatientAnimalUrl or RelatedPersonLt or Device)
* name MS
* title MS
  *  extension contains translation named translation 0..* MS
* note MS
* section MS
* section.title MS
* section.code MS
* section.author MS
* section.author only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt or PatientLt or RelatedPersonLt or Device)
* section.entry MS
* section.section MS
