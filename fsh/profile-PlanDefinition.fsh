Alias: $supportFactor = http://clinfhir.com/fhir/StructureDefinition/support-factor
Alias: $replacedBy = http://clinfhir.com/fhir/StructureDefinition/replaced-by
Alias: $regimenType = http://clinfhir.com/fhir/StructureDefinition/regimen-type


Alias: $treatmentIntent = http://clinfhir.com/fhir/StructureDefinition/treatment-intent
Alias: $offLabel = http://clinfhir.com/fhir/StructureDefinition/off-label
Alias: $instructions = http://clinfhir.com/fhir/StructureDefinition/plan-instructions

Alias: $regimenUnderReview = http://clinfhir.com/fhir/StructureDefinition/regimen-under-review

Alias: $TOD = http://clinfhir.com/fhir/StructureDefinition/timing-of-days
Alias: $type = http://terminology.hl7.org/CodeSystem/plan-definition-type

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
    $supportFactor named support-factor 0..* and 
    $regimenType named regimen-type 0..1 and
    $replacedBy named replaced-by 0..1 and
    $treatmentIntent named treatment-intent 0..1 and
    $offLabel named offLabel 0..1 and
    $instructions named plan-instructions 0..1
   

* status.extension contains
    $regimenUnderReview named regimen-under-review 0..1


//fix the type to clincial-protocol
* type = $type#clinical-protocol

* useContext.value[x] only CodeableConcept

//elements that have been removed
* goal 0..0
* library 0..0
* endorser 0..0
* reviewer 0..0
//* lastReviewDate 0..0
//* approvalDate 0..0

* action.extension contains
    $instructions named instructions 0..1

//slice useContext
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #openAtEnd
* useContext contains 
    cancertype 0..* MS

//set the code and binding for cancer type
//* useContext[cancertype].code = http://hl7.org/fhir/codesystem-usage-context-type.html#focus (exactly)
* useContext[cancertype].code = #focus (exactly)

* useContext[cancertype].valueCodeableConcept from http:clinfhir.com/fhir/ValueSet/cancer-type
* useContext[cancertype] ^short = "The type of cancer"
* useContext[cancertype] ^definition = "The type of cancer"


* action.action.action.action.extension contains
    $TOD named timing-of-days 0..*

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