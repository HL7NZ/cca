Profile:        CcaDosage
Parent:         Dosage
Id:             CcaDosage
Title:          "Dosage"
Description:    "CCA Regimen Dosage."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/CcaDosage"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dosage</div>"

* route from https://standards.digital.health.nz/fhir/ValueSet/sact-dose-unit
* timing.code from https://standards.digital.health.nz/fhir/ValueSet/sact-dose-administration-frequency

//elements that have been removed
* additionalInstruction 0..0
* patientInstruction 0..0
* site 0..0
* method 0..0
* maxDosePerPeriod 0..0
* maxDosePerLifetime 0..0
* doseAndRate.type 0..0
