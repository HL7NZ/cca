Alias: $supportFactor = http://hl7.org.nz/fhir/StructureDefinition/cca-support-factor
Alias: $replacedBy = http://hl7.org.nz/fhir/StructureDefinition/cca-replaced-by
Alias: $regimenType = http://hl7.org.nz/fhir/StructureDefinition/cca-regimen-type


Alias: $treatmentIntent = http://hl7.org.nz/fhir/StructureDefinition/cca-treatment-intent
Alias: $offLabel = http://hl7.org.nz/fhir/StructureDefinition/cca-off-label
Alias: $instructions = http://hl7.org.nz/fhir/StructureDefinition/cca-plan-instructions

//Alias: $regimenUnderReview = http://hl7.org.nz/fhir/StructureDefinition/cca-regimen-under-review

Alias: $additionalStatus = http://hl7.org.nz/fhir/StructureDefinition/cca-additional-plan-status

Alias: $disclaimer = http://hl7.org.nz/fhir/StructureDefinition/cca-disclaimer


Alias: $TOD = http://hl7.org.nz/fhir/StructureDefinition/cca-timing-of-days
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
    $instructions named plan-instructions 0..1 and 
    $disclaimer named disclaimer 0..1
   

* status.extension contains
    $additionalStatus named additional-status 0..1


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
    $instructions named action-instructions 0..1 

* action.action.extension contains
    $instructions named action-instructions 0..1 and
    
    $TOD named timing-of-days 0..*




    //top level: Cycle, next level: Actions (eg medication administation) within the cycle

/*
* action.action.modifierExtension contains
    $TOD named timing-of-days 0..*
*/

//slice useContext
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #openAtEnd
* useContext contains 
    cancertype 0..* MS

//set the code and binding for cancer typ
* useContext[cancertype].code = #focus (exactly)

* useContext[cancertype].valueCodeableConcept from http://standards.digital.health.nz/fhir/ValueSet/cancer-type
* useContext[cancertype] ^short = "The type of cancer"
* useContext[cancertype] ^definition = "The type of cancer"





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



//must be at least 1 cycle
* action 1..1

