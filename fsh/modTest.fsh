Alias: $testExt = http://clinfhir.com/fhir/StructureDefinition/testExtension

Extension: TestExt
Id: testExtension
Description: "Test extension"
* ^url = "http://clinfhir.com/fhir/StructureDefinition/testExtension"
* . ^isModifier = true
* . ^isModifierReason = "Test reason"

* extension contains 
    day 1..1 and 
    instructions 0..1

* extension[day].url = "day" (exactly)
* extension[day].value[x]  only integer
* extension[day] ^short = "The day number from the start of the cycle"

* extension[instructions].url = "instructions" (exactly)
* extension[instructions].value[x] only string
* extension[instructions] ^short = "Any specific instructions for this day"

Profile:        TestPlan
Parent:         PlanDefinition
Id:             testPlan
* status = #active

* modifierExtension contains
    $testExt named testExt 0..1 and
    $TOD named time-of-days 0..1

* action.modifierExtension contains
    $testExt named testExt 0..1 and
    $TOD named time-of-days 0..1

Instance:   tp1
InstanceOf: TestPlan
Description: "test plan"
Usage: #example
   
* modifierExtension[testExt].extension[day].valueInteger = 1
* modifierExtension[testExt].extension[instructions].valueString = "test"

* action.description = "First description"
* action.modifierExtension[testExt].extension[day].valueInteger = 1
* action.modifierExtension[testExt].extension[instructions].valueString = "test"