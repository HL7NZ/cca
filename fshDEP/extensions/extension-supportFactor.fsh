//Ideally, there would be a separate ValueSet for the options of each support factor type. But that's a bit tricky...

Extension: SupportFactor
Id: sact-support-factor
Description: "Support factors needed during treatment"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/sact-support-factor"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "PlanDefinition"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"

//* extension ^slicing.discriminator[1].type = #value
//* extension ^slicing.discriminator[1].path = valueString



* extension contains
    factor 1..1 and
    value 1..1 

* extension[factor] ^definition = "The support factor to consider."
* extension[factor].value[x] only CodeableConcept
* extension[factor].valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/sact-support-factor-code

//to come... * extension[factor].valueCodeableConcept from http://hl7.org/fhir/ValueSet/iso3166-1-2 (preferred)

* extension[value] ^definition = "The value of this support factor"
* extension[value].value[x] only CodeableConcept 
* extension[factor].valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/sact-support-factor-value-code




