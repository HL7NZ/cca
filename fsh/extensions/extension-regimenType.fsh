Extension: RegimenType
Id: cca-regimen-type
Title: "Regimen type"
Description: "The overall type of the regimen - eg FOLFOX"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/cca-regimen-type"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"


* value[x] only CodeableConcept 
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/cca-regimen-type