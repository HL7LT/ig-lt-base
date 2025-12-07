Profile: LTBaseComposition
Parent: Composition
Id: lt-composition
Title: "LT Base Composition"
Description: "Lithuanian Base Composition profile, used for creating healthcare compositions."
* ^experimental = true
* ^status = #active

* status MS
* version MS
* type MS
* subject 1.. MS
* encounter MS
* encounter only Reference(LTBaseEncounter)
* date MS
* author MS
* author only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization or LTBasePatient or LTBaseRelatedPerson or Device)
* name MS
* title MS
  *  extension contains translation named translation 0..* MS
* note MS
* section MS
* section.title MS
* section.code MS
* section.author MS
* section.author only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization or LTBasePatient or LTBaseRelatedPerson or Device)
* section.entry MS
* section.section MS
