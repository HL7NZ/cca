Extension: Instructions
Id: Instructions
Title: "Instructions for use"
Description: "Specific instructions for use of the regimen overall, or for the individual cycles"

* ^url = "http://clinfhir.com/fhir/StructureDefinition/instructions"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"

* ^context[1].type = #element
* ^context[1].expression = "PlanDefinition.action"

* value[x] only markdown