Extension: TreatmentIntent
Id: cca-treatment-intent
Description: "The intent of the regimen - what is its purpose"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/cca-treatment-intent"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"

* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/cca-treatment-intent




