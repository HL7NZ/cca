
Alias: $SNOMED = http://snomed.info/sct
Alias: $NZMT = https://nzulm.org.nz/nzmt

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

//Cabergoline admin
* contained = 5cd0c665-040c-4d7f-9106-8ecd56eab694

//Tragacanth
* contained = d651591f-5f92-43c2-b13b-bfaf24681b86


//support factors

//at risk of diarrhoea
* extension[support-factor].extension[factor].valueCodeableConcept = $SNOMED#TOUPDATE-SUPPORT4 "Diarrhoea risk"
* extension[support-factor].extension[value].valueCodeableConcept.text = "low"

//Needs anti-fungal support
* extension[support-factor][1].extension[factor].valueCodeableConcept = $SNOMED#TOUPDATE-SUPPORT8 "AntiFungal Prophylaxis"
* extension[support-factor][1].extension[value].valueCodeableConcept.text = "low"

//Infusion related risk
* extension[support-factor][2].extension[factor].valueCodeableConcept = $SNOMED#TOUPDATE-SUPPORT2 "Hypersensitivity / Infusion related reaction ris"
* extension[support-factor][2].extension[value].valueCodeableConcept.text = "low"

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



* action.description = "Administration of Cabergoline and Tragacanth daily over 14 days"

//the Cabergoline admin
* action.action.definitionCanonical = "#5cd0c665-040c-4d7f-9106-8ecd56eab694"
* action.action.description = "2mg of Cabergoline daily for 14 days by IV Infusion"


* action.action[1].definitionCanonical = "#d651591f-5f92-43c2-b13b-bfaf24681b86"
* action.action[1].description = "3mg of Tragacanth daily for 14 days by IV Infusion"


Instance:   5cd0c665-040c-4d7f-9106-8ecd56eab694
InstanceOf: CcaActivityDefinition
Description: "Cabergoline Administration"
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Cabergoline administration, 2mg over 20 minutes</div>"
* text.status = #additional

* productCodeableConcept = $NZMT#10250021000116102 "Cabergoline"
* dosage.text = "2 mg over 20 minutes by IV infusion"
* dosage.route = $SNOMED#180177004 "continuous intravenous infusion"
* dosage.doseAndRate.doseQuantity.value = 2 
* dosage.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.code = #mg

* dosage.doseAndRate.rateQuantity.value = 2 
* dosage.doseAndRate.rateQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateQuantity.code = #min


* status = #draft

Instance:   d651591f-5f92-43c2-b13b-bfaf24681b86
InstanceOf: CcaActivityDefinition
Description: "Tragacanth Administration"
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Tragacanth administration, 3mg over 3 hours by continuous IV infusion</div>"
* text.status = #additional

* productCodeableConcept = $NZMT#10711851000116105 "Tragacanth"
* dosage.text = "3 mg over 3 hours by IV infusion"
* dosage.route = $SNOMED#180177004 "continuous intravenous infusion"
* dosage.doseAndRate.doseQuantity.value = 3 
* dosage.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.code = #mg

* dosage.doseAndRate.rateQuantity.value = 3 
* dosage.doseAndRate.rateQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateQuantity.code = #h


* status = #draft