Profile: LaboratoryReportLt
Parent: DiagnosticReportLt
Id: laboratory-report-lt
Title: "LaboratoryReportLt"
Description: "DiagnosticReport: Laboratory Report (Eu Lab) used to represent an entry of a Laboratory Report, including its context, for the scope of the HL7 Europe project."
* ^language = #en
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^url = $laboratory-report-lt-url
* ^version = "0.2.0-ci"
* ^status = #draft
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* . ^short = "Laboratory Report DiagnosticReport"
* . ^definition = "Laboratory Report DiagnosticReport"
* identifier ^short = "Report identifier"
* identifier ^definition = "Identifiers assigned to this Laboratory Report by the performer or other systems. It shall be common to several report versions"
* identifier ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"
* basedOn only Reference($service-request-lt-url)
* status ^short = "Status of the Report"
* status ^comment = "DiagnosticReport.status and Composition.status shall be aligned, based on the http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus mapping"
* category only CodeableConcept
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "Report Category"
* category ^definition = "A code that classifies this laboratory report. Two basic categories has been selected in this guide: laboratory specialty and Study type. Laboratory specialty is characteristic of the laboratory that produced the test result while Study type is an arbitrary classificion of the test type."
* category ^comment = "DiagnosticReport.category and Composition.category shall be aligned"
* category contains
    studyType 0..* and
    specialty 0..*
* category[studyType] from $lab-studyType-eu-lab (required)
* category[studyType] ^short = "The way of grouping of the test results into clinically meaningful domains (e.g. hematology study, microbiology study, etc.)"
* category[studyType] ^definition = "Laboratory services, i.e., results of tests performed, could be characterized using typology of services, commonly called study types. Study type could be seen as an attribute or grouping mechanism that assigns a common clinical sense to certain types of laboratory test results., e.g., Hemoglobin, Platelet count, etc. belongs to 'Hematology study'."
* category[studyType] ^comment = "In comparison to the laboratory specialty which is an attribute of laboratory, study type is a categorization of laboratory service. It needs to be mentioned that classification of test to study types in not standardized."
* category[specialty] from $lab-specialty-eu-lab (required)
* category[specialty] ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
* category[specialty] ^definition = "Laboratory specialty is an attribute of any laboratory setting representing professional qualification of the laboratory to execute certain kind of laboratory tests."
* category[specialty] ^comment = "Specialty could be used as parameter for searching/querying of laboratory test results."
* code only CodeableConcept
* code from $lab-reportType-eu-lab (preferred)
* code ^short = "Type of (Laboratory) Report"
* code ^definition = "Specifies that it refers to a Laboratory Report"
* code ^comment = "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL be equal"
* subject 1..
* subject only Reference($patient-lt-url or $EuPatientAnimalUrl or Group or $location-lt-url or Device)
* subject ^short = "Who and/or what this report is about"
* subject ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
* subject ^comment = "DiagnosticReport and Composition SHALL have the same subject"
* encounter ^short = "The healthcare event which this Laboratory Report is about (when test ordered)."
* encounter ^definition = "The healthcare event (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about."
* encounter ^comment = "This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests).\n\n  DiagnosticReport and Composition SHALL have the same encounter."
* effective[x] ^short = "Clinically relevant time/time-period for report."
* performer ^short = "Responsible Diagnostic Service."
* performer ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."
* resultsInterpreter ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."
* specimen only Reference($Specimen-eu-lab)
* specimen ^short = "Specimens this report is based on."
// * result only Reference($Observation-resultslab-eu-lab)
* result only Reference($observation-lt-url)
* result ^short = "results"
* study ..0
* media ^short = "Additional data (like images, diagrams or documents) associated with this report"
* media ^definition = "A list of additional data, other then presented form of the report, associated with this report. This data is generally created during the diagnostic process, and may be directly of the patient, or of treated specimens (i.e. slides of interest)."
* media ^requirements = "Some diagnostic reports may include additional data such as images, diagrams or documents that are relevant to the report. This additional information can provide further context and support for the findings presented in the report."
* media ^alias[0] = "DICOM; Slides; Scans; Pictures; Documents; Diagrams"
* media ^alias[+] = "Slides"
* media ^alias[+] = "Scans"
* media.comment ^short = "Comment about the image or data (e.g. explanation)"
* media.comment ^definition = "Allows for a comment about the image or data, such as an explanation of its significance or context within the diagnostic report."
* media.comment ^requirements = "The provider of the report should make a comment about each image or data included in the report. This comment can provide valuable context and help the reader understand the significance of the image or data in relation to the overall findings of the report."
* media.link ^short = "Reference to the image or data"
* media.link ^definition = "A reference to the image or data associated with this report."
* presentedForm ^short = "Entire report as issued (pdf recommended)"

