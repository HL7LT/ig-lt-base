Profile: CareTeamLt
Parent: CareTeam
Id: care-team-lt
Title: "CareTeamLt"
Description: "Lithuanian Base Care Team profile, used for documenting care teams involved in patient care."
* ^url = $care-team-lt-url
* ^status = #active 

* status MS
* subject MS
* subject only Reference(PatientLt or Group)
* period MS
* participant MS
* participant.member only Reference(PractitionerLt or PractitionerRoleLt or OrganizationLt or PatientLt or RelatedPersonLt or CareTeamLt)
* participant.role MS
* participant.coverage[x] MS
* participant.onBehalfOf MS
* participant.onBehalfOf only Reference(OrganizationLt)
* telecom MS
* note MS
