Extension: PlanInstructions
Id: sact-plan-instructions
Title: "Instructions for use"
Description: "Specific instructions for use of the regimen overall, or for the individual cycles"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/sact-plan-instructions"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "PlanDefinition"

* ^context[1].type = #element
* ^context[1].expression = "PlanDefinition.action"

* ^context[2].type = #element
* ^context[2].expression = "PlanDefinition.action.action"



* value[x] only markdown