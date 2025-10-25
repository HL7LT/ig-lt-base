
ValueSet: LTCurrentSmokingStatus
Id: lt-current-smoking-status
Title: "Current Smoking Status"
Description: "HL7 LT SNOMED value set for smoking status."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania" 
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#266919005 "Never smoked tobacco (finding)"
* $sct#77176002 "Smoker (finding)"
* $sct#8517006 "Ex-smoker (finding)"
// * $sct#449868002 "Smokes tobacco daily (finding)"
// * $sct#428041000124106 "Occasional tobacco smoker (finding)"
// * $sct#266927001 "Tobacco smoking consumption unknown (finding)"
// * $sct#230063004 "Heavy cigarette smoker (finding)"
// * $sct#230060001 "Light cigarette smoker (finding)"

ValueSet: LTTobaccoSmokingConsumption
Id: lt-tobacco-smoking-consumption
Title: "Tobacco Smoking Consumption - Cigarettes per day" 
Description: "Categorical representation of average cigarettes smoked per day."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#266920004 "Trivial cigarette smoker (less than one cigarette/day)"
* $sct#160603005 "Light cigarette smoker (1–9 cigs/day)"
* $sct#160604004 "Moderate cigarette smoker (10-19 cigs/day)"
* $sct#160605003 "Heavy cigarette smoker (20-39 cigs/day)"
* $sct#160606002 "Very heavy cigarette smoker (40+ cigs/day)"
* $sct#230065006 "Chain smoker"



Profile: LTLifeTrackTobaccoUse
Parent: LTBaseObservation
Id: lt-lifetrack-tobaccouse
Title: "LT LifeTrack Tobacco Use Observation"
Description: "This profile constrains the Observation resource to represent Tobacco use assessment in a patient summary."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^publisher = "HL7 Lithuanian"
* ^jurisdiction = $m49.htm#001 "World"
* category = $observation-category#social-history "Social History"
* code MS
// * code.coding[0] = $loinc#72166-2 "Tobacco smoking status"
// * code ^mustSupport = true
// * code.coding[1] = $sct#229819007 "Tobacco use and exposure (observable entity)"
* code ^mustSupport = true // Constraint on the code CodeableConcept itself
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loincCode 1..1 and sctCode 0..1
* code.coding[loincCode] = $loinc#72166-2 "Tobacco smoking status"
* code.coding[sctCode] = $sct#229819007 "Tobacco use and exposure (observable entity)"
* subject 1.. MS
* subject only Reference(LTBasePatient)
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTCurrentSmokingStatus (preferred)
// * valueCodeableConcept ^sliceName = "valueCodeableConcept"
* component ..0
* component ^mustSupport = false


// Example: current smoker
Instance: example-LTSmoking-current-smoker
InstanceOf: LTLifeTrackTobaccoUse
Usage: #example
Title: "Example LT Smoking Status - Current Smoker"
Description: "Example instance showing a patient who currently smokes."

* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#72166-2 "Tobacco smoking status"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#77176002 "Smoker (finding)"
* note.text = "Patient reports smoking approximately 10 cigarettes per day for 5 years."



Profile: LTLifeTrackTobaccoSmokingConsumption
Parent: LTBaseObservation
Id: lt-lifetrack-tobacco-smoking-consumption
Title: "LT LifeTrack Tobacco Smoking Consumption Observation"
Description: "This profile constrains the Observation resource to represent Tobacco smoking consumption assessment in a patient summary."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^publisher = "HL7 Lithuanian"
* ^jurisdiction = $m49.htm#001 "World"
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#266918002 "Tobacco smoking consumption (observable entity)"
* subject 1.. MS
* subject only Reference(LTBasePatient)
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from LTTobaccoSmokingConsumption (preferred)
* component ..0
* component ^mustSupport = false


// Example: Tobacco Smoking Consumption
Instance: example-tobacco-smoking-consumption
InstanceOf: LTLifeTrackTobaccoSmokingConsumption
Usage: #example
Title: "Example LT Smoking Consumption - Light cigarette smoker (1–9 cigs/day)"
Description: "Example instance showing a patient who is a light cigarette smoker."

* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#266918002 "Tobacco smoking consumption (observable entity)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#160603005 "Light cigarette smoker (1–9 cigs/day)"
* note.text = "Patient reports smoking approximately 8 cigarettes per day."