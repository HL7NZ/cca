Extension: TreatmentIntent
Id: treatment-intent
Description: "The intent of the regimen - what is its purpose"

* ^url = "http://clinfhir.com/fhir/StructureDefinition/treatment-intent"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"

* value[x] only CodeableConcept
* valueCodeableConcept from http://clinfhir.com/fhir/ValueSet/treatment-intent


CodeSystem:  TreatmentIntent
Id: treatment-intent
Title: "Treatment intent"
Description:  "The intent of the regimen - what is its purpose"

* ^url = "http://clinfhir.com/fhir/CodeSystem/treatment-intent"

* #st "Something"


ValueSet : TreatmentIntent
Id: treatment-intent
Title: "Treatment intent"
Description:  "The intent of the regimen - what is its purpose"

* ^url = "http://clinfhir.com/fhir/ValueSet/treatment-intent"

* codes from system http://clinfhir.com/fhir/CodeSystem/treatment-intent





