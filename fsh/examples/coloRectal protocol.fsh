
Alias: $SNOMED = http://snomed.info/sct

Instance:   pd1
InstanceOf: CcaPlanDefinition
Description: "Example Plan definition"
Usage: #example

* status = #draft
* version = "3.0.3"
* title = "Colorectal Adjuvant FOLFOX (a7)"

* type.coding.system = "http://terminology.hl7.org/CodeSystem/plan-definition-type"
* type.coding.code = #order-set

* publisher = "New Zealand Medicines Formulary LP"
* date = "2020-06-29T20:14:18.417+12:00"


//support factors

//at risk of diarrhoea
* extension[support-factor].extension[factor].valueCodeableConcept = $SNOMED#TOUPDATE-SUPPORT4 "Diarrhoea risk"
* extension[support-factor].extension[value].valueBoolean = true

//Needs anti-fungal support
* extension[support-factor][1].extension[factor].valueCodeableConcept = $SNOMED#TOUPDATE-SUPPORT8 "AntiFungal Prophylaxis"
* extension[support-factor][1].extension[value].valueBoolean = true

//Infusion related risk
* extension[support-factor][2].extension[factor].valueCodeableConcept = $SNOMED#TOUPDATE-SUPPORT2 "Hypersensitivity / Infusion related reaction ris"
* extension[support-factor][2].extension[value].valueBoolean = true


//the focus of the plan is on colorectal cancer
* useContext.code = #focus
* useContext.code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext.valueCodeableConcept = http://snomed.info/sct#781382000 "Colorectal cancer"

//the type of regimen - ?Is the code really a snomed code??
* useContext[1].code = #program
* useContext[1].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[1].valueCodeableConcept = http://snomed.info/sct#FOLFOX "FOLFOX"

//relatedArtifacts
* relatedArtifact.type = #citation
* relatedArtifact.display = "test"
* relatedArtifact.url = "http://www.ncbi.nlm.nih.gov/pubmed/23434"

* relatedArtifact[1].type = #citation
* relatedArtifact[1].display = "test2"
* relatedArtifact[1].url = "http://www.ncbi.nlm.nih.gov/pubmed/34324"


