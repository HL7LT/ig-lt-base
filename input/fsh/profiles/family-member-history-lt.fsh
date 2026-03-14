Profile: FamilyMemberHistoryLt
Parent: FamilyMemberHistory
Id: family-member-history-lt
Title: "FamilyMemberHistoryLt"
Description: "Lithuanian Base FamilyMemberHistory profile, used for health conditions for a person related to the patient."
* ^url = $family-member-history-lt-url
* ^status = #active

* status MS
* patient MS
* patient only Reference(PatientLt)
* participant.actor only Reference(PractitionerLt or PractitionerRoleLt or PatientLt or RelatedPersonLt or CareTeamLt or OrganizationLt or Device)
* age[x] MS
* deceased[x] MS
* reason only CodeableReference(ConditionLt or ObservationLt or DiagnosticReportLt or DocumentReferenceLt or AllergyIntolerance or QuestionnaireResponse) 
* condition MS
* procedure MS
* note MS
