Extension: OffLabel
Id: off-label
Title: "Off label"
Description: "Indicates that the medication is being used for a purpose for which it has not been specifically approved"

* ^url = "http://clinfhir.com/fhir/StructureDefinition/off-label"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "ActivityDefinition"


* value[x] only boolean 