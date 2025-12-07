Profile: LTBaseAppointment
Parent: Appointment
Id: lt-appointment
Title: "LT Base Appointment"
Description: "Lithuanian Base Appointment profile, used for planing visit to healthcare services."
* ^experimental = true
* ^status = #active

* status MS
* class MS
* serviceCategory MS
* specialty MS
* appointmentType MS
* replaces only Reference(LTBaseAppointment)
* start MS
* end MS
* note MS
* participant MS
* participant.actor only Reference(LTBasePatient or LTBasePractitioner or LTBasePractitionerRole or LTBaseRelatedPerson or LTBaseCareTeam or LTBaseLocation or LTBaseHealthcareService or Group or Device)
* participant.status MS
