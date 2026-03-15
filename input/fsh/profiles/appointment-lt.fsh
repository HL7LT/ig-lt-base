Profile: AppointmentLt
Parent: Appointment
Id: appointment-lt
Title: "AppointmentLt"
Description: "Lithuanian Base Appointment profile, used for planing visit to healthcare services."
* ^url = $appointment-lt-url
* ^status = #active

* status MS
* class MS
* class from http://terminology.hl7.org/ValueSet/encounter-class (preferred)
* serviceCategory MS
* specialty MS
* appointmentType MS
* replaces only Reference(AppointmentLt)
* start MS
* end MS
* note MS
* participant MS
* participant.actor only Reference(PatientLt or PractitionerLt or PractitionerRoleLt or RelatedPersonLt or CareTeamLt or LocationLt or HealthcareServiceLt or Group or Device)
* participant.status MS
