Extension: TimingOfDays
Id: timing-of-days
Description: "Allows specific days to be indicated in a regimen cycle. extends the UV extension: http://hl7.org/fhir/extension-timing-daysofcycle.html by adding instructions"

* ^url = "http://clinfhir.com/fhir/StructureDefinition/timing-of-days"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition.action"

* extension contains 
    day 1..1 and 
    instructions 0..1

* extension[day].value[x]  only integer
* extension[day] ^short = "The day number from the start of the cycle"

* extension[instructions].value[x] only string
* extension[instructions] ^short = "Any specific instructions for this day"