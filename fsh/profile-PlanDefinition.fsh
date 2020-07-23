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

* extension contains
    $supportFactor named support-factor 0..* 
   
* action.action.action.extension contains
    $TOD named timing-of-days 0..*

//elements that have been removed
* goal 0..0
* library 0..0
* endorser 0..0
* reviewer 0..0
* lastReviewDate 0..0
* approvalDate 0..0

* action.prefix 0..0
* action.priority 0..0
* action.code 0..0
* action.reason 0..0
* action.subject[x] 0..0
* action.trigger 0..0
* action.condition 0..0
* action.input 0..0
* action.output 0..0
* action.timing[x] only Timing
* action.type 0..0
* action.precheckBehavior 0..0
* action.cardinalityBehavior 0..0
* action.transform 0..0
* action.dynamicValue 0..0


//Uses the '3 level' representation of actions suggested by the example in the spec
//top level: Regimen options. Allows different 'versions' of the rregimen to be selected based on trigger criteria. Only 1 supported
* action 1..1
//next level: Represents the different defined cycles. May be more than one
//third level: the components of a single cycle