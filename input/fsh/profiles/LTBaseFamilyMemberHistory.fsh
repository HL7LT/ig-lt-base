Profile: LTBaseFamilyMemberHistory
Parent: FamilyMemberHistory
Id: lt-family-member-history
Title: "LT Base FamilyMemberHistory"
Description: "Lithuanian Base FamilyMemberHistory profile, used for health conditions for a person related to the patient."
* ^experimental = true
* ^status = #active

* status MS
* patient MS
* patient only Reference(LTBasePatient)
* participant.actor only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBasePatient or LTBaseRelatedPerson or LTBaseCareTeam or LTBaseOrganization or Device)
* age[x] MS
* deceased[x] MS
* reason only CodeableReference(LTBaseCondition or LTBaseObservation or LTBaseDiagnosticReport or LTBaseDocumentReference or AllergyIntolerance or QuestionnaireResponse) 
* condition MS
* procedure MS
* note MS
