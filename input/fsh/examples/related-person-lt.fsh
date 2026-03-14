Instance: related-person-ruta-petrauskiene-example
InstanceOf: RelatedPersonLt
Usage: #example
Title: "RelatedPerson: Rūta Petrauskienė (example)"
Description: "An example Related Person conforming to the Lithuanian Base Profile."

* patient = Reference(patient-example) 
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ECON "emergency contact"

// Name (Assumed to be required via 'insert HumanName')
* name[0].family = "Petrauskienė"
* name[0].given[0] = "Rūta"
* name[0].text = "Rūta Petrauskienė"
