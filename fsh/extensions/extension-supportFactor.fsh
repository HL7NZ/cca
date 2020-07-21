
Extension: SupportFactor
Id: support-factor
Description: "Support factors needed during treatment"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/support-factor"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"

* extension contains
    factor 1..1 and
    value 1..1 


* extension[factor] ^definition = "The support factor to consider."
* extension[factor].value[x] only CodeableConcept 
//to come... * extension[factor].valueCodeableConcept from http://hl7.org/fhir/ValueSet/iso3166-1-2 (preferred)

* extension[value] ^definition = "The value of this support factor"
* extension[value].value[x] only CodeableConcept or boolean
//todo - binding to come
