Profile: LTBaseEpisodeOfCare
Parent: EpisodeOfCare
Id: lt-episode-of-care
Title: "LT Base EpisodeOfCare"
Description: "Lithuanian Base EpisodeOfCare profile, used for composing episodes of care."
* ^experimental = true
* ^status = #active

* identifier MS
* status MS
* diagnosis MS
* diagnosis.condition MS
* diagnosis.condition only CodeableReference(LTBaseCondition)
* patient MS
* patient only Reference(LTBasePatient)
* managingOrganization MS
* managingOrganization only Reference(LTBaseOrganization)
* period MS
* referralRequest MS
* referralRequest only Reference(LTBaseServiceRequest)
* careManager MS
* careManager only Reference(LTBasePractitioner or LTBasePractitionerRole)
* careTeam MS
* careTeam only Reference(LTBaseCareTeam)