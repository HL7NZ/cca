Alias: $supportFactor = http://clinfhir.com/fhir/StructureDefinition/support-factor
Alias: $TOD = http://clinfhir.com/fhir/StructureDefinition/timing-of-days

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
   
* action.action.action.extension contains
    $TOD named timing-of-days 0..*





//elements that have been removed

//Uses the '3 level' representation of actions suggested by the example in the spec
//top level: Regimen options. Allows different 'versions' of the rregimen to be selected based on trigger criteria. Only 1 supported
* action 1..1
//next level: Represents the different defined cycles. May be more than one
//third level: the components of a single cycle