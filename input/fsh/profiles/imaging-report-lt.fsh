Profile: ImagingReportLt
Parent: DiagnosticReportLt
Id: imaging-report-lt
Title: "ImagingReportLt"
Description: "DiagnosticReport: Imaging Report (Eu IM). This document represents the report of an imaging study. It is the anchor resource that refers to all structured data as well as the `Composition` resource that contains the narrative text of the report."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^version = "0.1.0-ballot"
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* ^url = $imaging-report-lt-url
* extension contains http://hl7.org/fhir/StructureDefinition/artifact-version named artifactVersion 0..1
* identifier ^short = "Report identifier"
* identifier ^definition = "Identifiers assigned to this Imaging Report by the performer or other systems. It shall be common to several report versions"
* identifier ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.ordered = false
* basedOn ^slicing.rules = #open
* basedOn contains imorderaccession 0..1
// * basedOn[imorderaccession] only Reference($OrderEuImagingUrl)
* basedOn[imorderaccession] only Reference($service-request-lt-url)
* basedOn[imorderaccession].identifier 1..
* basedOn[imorderaccession].identifier only $AccessionNumberIdentifierEuImagingUrl
* status ^short = "Status of the Report"
* status ^comment = "DiagnosticReport.status and Composition.status shall be aligned"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains imaging 1..1
* category[imaging] = $loinc#18748-4 "Diagnostic imaging study"
* category[imaging].coding 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains eu-template 1..1
* code.coding[eu-template] = $Hl7EuDocumentTypes#imaging-report-v0-0-1 "Imaging Report V0.0.1"
// * subject only Reference($ImPatient)
* subject only Reference($patient-lt-url)
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.ordered = false
* performer ^slicing.rules = #open
* performer contains author 1..*
* performer[author] only Reference($practitioner-role-lt-url)
* resultsInterpreter ^slicing.discriminator.type = #profile
* resultsInterpreter ^slicing.discriminator.path = "resolve()"
* resultsInterpreter ^slicing.ordered = false
* resultsInterpreter ^slicing.rules = #open
* resultsInterpreter contains author 0..*
* resultsInterpreter[author] only Reference($practitioner-role-lt-url)
* study only Reference($imaging-study-lt-url)
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "reference"
* supportingInfo ^slicing.ordered = false
* supportingInfo ^slicing.rules = #open
* supportingInfo.type from $valueset-diagnosticreport-report-support-info (extensible)
* supportingInfo contains procedure 0..*
* supportingInfo[procedure].type = $codesystem-diagnostic-report-support-info#imaging-procedure
* supportingInfo[procedure].reference only Reference($procedure-lt-url)
* composition 1..
* composition only Reference($composition-lt-url)
* composition ^short = "Imaging Diagnostic Report"