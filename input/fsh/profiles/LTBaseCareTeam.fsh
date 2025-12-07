Profile: LTBaseCareTeam
Parent: CareTeam
Id: lt-care-team
Title: "LT Base Care Team"
Description: "Lithuanian Base Care Team profile, used for documenting care teams involved in patient care."
* ^experimental = true
* ^status = #active 

* status MS
* subject MS
* subject only Reference(LTBasePatient or Group)
* period MS
* participant MS
* participant.member only Reference(LTBasePractitioner or LTBasePractitionerRole or LTBaseOrganization or LTBasePatient or LTBaseRelatedPerson or LTBaseCareTeam)
* participant.role MS
* participant.coverage[x] MS
* participant.onBehalfOf MS
* participant.onBehalfOf only Reference(LTBaseOrganization)
* telecom MS
* note MS