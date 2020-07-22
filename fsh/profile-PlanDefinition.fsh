Alias: $supportFactor = http://hl7.org.nz/fhir/StructureDefinition/support-factor

Profile:        CcaPlanDefinition
Parent:         PlanDefinition
Id:             CcaPlanDefinition
Title:          "PlanDefinition"
Description:    "CCA Regimen Plan Definition."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/CcaPlanDefinition"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>CCA Plan definition</div>"
/*
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"

* extension ^slicing.discriminator[1].type = #value
* extension ^slicing.discriminator[1].path = "factor"

* extension ^slicing.rules = #openAtEnd

* extension[diarrrhoea-risk]^url = $supportFactor
* extension[diarrrhoea-risk].factor = "dr"

*/
* extension contains
    $supportFactor named support-factor 0..*




//elements that have been removed
