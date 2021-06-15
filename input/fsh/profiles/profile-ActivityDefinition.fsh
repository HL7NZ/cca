
Alias: $locationMedicationCollection = http://hl7.org.nz/fhir/StructureDefinition/sact-location-medication-collection
Alias: $locationAdministration = http://hl7.org.nz/fhir/StructureDefinition/sact-administration-site
Alias: $offLabel = http://hl7.org.nz/fhir/StructureDefinition/sact-off-label

Profile:        CcaActivityDefinition
Parent:         ActivityDefinition
Id:             CcaActivityDefinition
Title:          "ActivityDefinition"
Description:    "CCA Regimen Activity Definition."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/CcaActivityDefinition"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>ActivityDefinition</div>"

* extension contains
    $locationMedicationCollection named location-medication-collection 0..1 and
    $locationAdministration named location-administration 0..1 and 
    $offLabel named off-label 0..1 
    

//elements that have been removed
* identifier 0..0

* experimental 0..0
* subject[x] 0..0


* useContext 0..0

* lastReviewDate 0..0
* approvalDate 0..0
* topic 0..0
* author 0..0
* editor 0..0
* reviewer 0..0
* library 0..0
* priority 0..0
* doNotPerform 0..0
* timing[x] 0..0
* specimenRequirement 0..0
* observationRequirement 0..0
* observationResultRequirement 0..0
* transform 0..0
* dynamicValue 0..0
