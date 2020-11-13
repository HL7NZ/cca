


ValueSet: SupportFactorCode
Id: sact-support-factor-code
Title: "Support Factors"
Description: "The set of possible support factors (not their values)"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/sact-support-factor-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $SNOMED#718526003 "Antifungal prophylaxis"
* $SNOMED#427314002 "Antiviral prophylaxis"
* $SNOMED#128333008 "Diarrhoea risk"
* $SNOMED#419219000 "Emetogenicity"
* $SNOMED#81286007 "Growth factor support"
* $SNOMED#281800008 "Hydration"
* $SNOMED#421961002 "Hypersensitivity / Infusion related reaction risk"
* $SNOMED#772120006 "Irradiated blood components"
* $SNOMED#56661000210100 "Mesna uroprotection"
* $SNOMED#441952005 "Ocular toxicity risk"
* $SNOMED#75549005 "Pneumocystis jiroveci pneumonia (PJP) prophylaxis"

//Note that the potential values are for all support factors - ie there isn't a ValueSet of vaklues for each factor.
//This is a limitation of sushi at the moment - bit shoudn't be an issue...
ValueSet: SupportFactorValue
Id: sact-support-factor-value-code
Title: "Possible values for Support Factors"
Description: "The set of all possible support factors values (not specific to any one factor)"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/sact-support-factor-value-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* $SNOMED#897021009 "Routine antifungal prophylaxis not recommended"
* $SNOMED#897020005 "Routine antifungal prophylaxis recommended"
* $SNOMED#897022002 "Routine antiviral prophylaxis not recommended"
* $SNOMED#897019004 "Routine antiviral prophylaxis recommended"
* $SNOMED#723509005 "High - anti-diarrhoeals are usually prescribed with this treatment "
* $SNOMED#723505004 "Low - anti-diarrhoeals are not usually prescribed with this treatment"
* $SNOMED#75540009 "High"
* $SNOMED#62482003 "Low"
* $SNOMED#255508009 "Medium "
* $SNOMED#255605001 "Minimal"
* $SNOMED#54361000210104 "Recommended for primary prophylaxis"
* $SNOMED#54371000210105 "Recommended for secondary prophylaxis"
* $SNOMED#54271000210101 "Routine hydration not recommended"
* $SNOMED#54261000210107 "Routine hydration recommended"
* $SNOMED#723509005 "High - routine premedication recommended"
* $SNOMED#723505004 "Low - routine premedication recommended"
* $SNOMED#54311000210101 "Irradiation of blood components is not recommended"
* $SNOMED#54301000210103 "Irradiation of blood components is recommended"
* $SNOMED#723509005 "High - administer corticosteroid eyedrops to minimise corneal toxicity"
* $SNOMED#723505004 "Low "
* $SNOMED#391159000 "Routine antibiotic prophylaxis not recommended"
* $SNOMED#413555000 "Routine antibiotic prophylaxis recommended"
* $SNOMED#54291000210102 "Routine mesna uroprotection not recommended"
* $SNOMED#54281000210104 "Routine mesna uroprotection recommended "