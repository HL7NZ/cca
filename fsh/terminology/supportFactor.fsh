


ValueSet: SupportFactorCode
Id: sact-support-factor-code
Title: "Support Factors"
Description: "The set of possible support factors (not their values)"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/sact-support-factor-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* include codes from system $SNOMED


//Note that the potential values are for all support factors - ie there isn't a ValueSet of vaklues for each factor.
//This is a limitation of sushi at the moment - bit shoudn't be an issue...
ValueSet: SupportFactorValue
Id: support-factor-value
Title: "Possible values for Support Factors"
Description: "The set of all possible support factors values (not specific to any one factor)"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/sact-support-factor-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* include codes from system $SNOMED