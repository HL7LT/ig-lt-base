Profile: EpisodeOfCareLt
Parent: EpisodeOfCare
Id: episode-of-care-lt
Title: "EpisodeOfCareLt"
Description: "Lithuanian Base EpisodeOfCare profile, used for composing episodes of care."
* ^url = $episode-of-care-lt-url
* ^status = #active

* identifier MS
* status MS
* diagnosis MS
* diagnosis.condition MS
* diagnosis.condition only CodeableReference(ConditionLt)
* patient MS
* patient only Reference(PatientLt)
* managingOrganization MS
* managingOrganization only Reference(OrganizationLt)
* period MS
* referralRequest MS
* referralRequest only Reference(ServiceRequestLt)
* careManager MS
* careManager only Reference(PractitionerLt or PractitionerRoleLt)
* careTeam MS
* careTeam only Reference(CareTeamLt)
