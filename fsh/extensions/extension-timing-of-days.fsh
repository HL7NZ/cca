Extension: TimingOfDays
Id: timing-of-days
Description: "Allows specific days to be indicated in a component of a regimen cycle. extends the idea of  UV extension: http://hl7.org/fhir/extension-timing-daysofcycle.html by adding instructions"

* ^url = "http://clinfhir.com/fhir/StructureDefinition/timing-of-days"
//* . ^isModifier = true
//* . ^isModifierReason = "Specifies the day the medication should be administered"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

/* 
* ^context.type = #element
* ^context.expression = "PlanDefinition.action.action"

*/
* extension contains 
    day 1..1 and 
    instructions 0..1

* extension[day].url = "day" (exactly)
* extension[day].value[x]  only integer
* extension[day] ^short = "The day number from the start of the cycle"
//* extension[day] ^isModifier = true
//* extension[day] ^isModifierReason = "Specifies the day the medication should be administered"

* extension[instructions].url = "instructions" (exactly)
* extension[instructions].value[x] only string
* extension[instructions] ^short = "Any specific instructions for this day"
//* extension[instructions] ^isModifier = true
//* extension[instructions] ^isModifierReason = "Specifies the day the medication should be administered"