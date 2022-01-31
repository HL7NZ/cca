Extension: AdditionalDetails
Id: sact-additional-details
Description: "Allows additional information to be added to a regimen such as dosing modification details"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/sact-additional-details"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* extension contains 
    sectionId 1..1 and 
    sectionHeader 0..1 and 
    sectionContent 1..1

* extension[sectionId].url = "sectionId" (exactly)
* extension[sectionId].value[x]  only string
* extension[sectionId] ^short = "The id of the additional info section"

* extension[sectionHeader].url = "sectionHeader" (exactly)
* extension[sectionHeader].value[x]  only string
* extension[sectionHeader] ^short = "The header of the additional info section"

* extension[sectionContent].url = "sectionContent" (exactly)
* extension[sectionContent].value[x]  only string
* extension[sectionContent] ^short = "The content of the additional info section"
