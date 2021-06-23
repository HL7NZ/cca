### ValueSets
<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>
<tr><td width='20%'>Administration location</td><td>The physical location where the administration occurred - eg at home or in a clinic</td><td><a href='ValueSet-sact-administration-site-code.html'>https://standards.digital.health.nz/fhir/ValueSet/sact-administration-site-code</a></td><td><div>http://snomed.info/sct</div></td></tr>
<tr><td width='20%'>Cancer type</td><td>The type of Cancer</td><td><a href='ValueSet-cancer-type-code.html'>https://standards.digital.health.nz/fhir/ValueSet/cancer-type-code</a></td><td><div>http://snomed.info/sct</div><div>http://snomed.info/sct</div></td></tr>
<tr><td width='20%'>Medication collection location</td><td>The physical location where the medication can be collected on prior to administration - eg a pharmacy</td><td><a href='ValueSet-sact-location-medication-collection-code.html'>https://standards.digital.health.nz/fhir/ValueSet/sact-location-medication-collection-code</a></td><td><div>http://snomed.info/sct</div></td></tr>
<tr><td width='20%'>PlanDefinition additional status</td><td>Other codes used for the PlanDefinition status</td><td><a href='ValueSet-sact-plan-definition-status-code.html'>https://standards.digital.health.nz/fhir/ValueSet/sact-plan-definition-status-code</a></td><td><div><a href='CodeSystem-sact-plan-definition-status-code.html'>https://standards.digital.health.nz/ns/sact-plan-definition-status-code</a></div></td></tr>
<tr><td width='20%'>Possible values for Support Factors</td><td>The set of all possible support factors values (not specific to any one factor)</td><td><a href='ValueSet-sact-support-factor-value-code.html'>https://standards.digital.health.nz/fhir/ValueSet/sact-support-factor-value-code</a></td><td><div>http://snomed.info/sct</div></td></tr>
<tr><td width='20%'>Regimen type code</td><td>The type of regimen - eg FOLFOX</td><td><a href='ValueSet-sact-regimen-code.html'>https://standards.digital.health.nz/fhir/ValueSet/sact-regimen-code</a></td><td><div><a href='CodeSystem-sact-regimen-code.html'>https://standards.digital.health.nz/ns/sact-regimen-code</a></div></td></tr>
<tr><td width='20%'>Support Factors</td><td>The set of possible support factors (not their values)</td><td><a href='ValueSet-sact-support-factor-code.html'>https://standards.digital.health.nz/fhir/ValueSet/sact-support-factor-code</a></td><td><div>http://snomed.info/sct</div></td></tr>
<tr><td width='20%'>Treatment intent</td><td>The intent of the regimen - what is its purpose</td><td><a href='ValueSet-sact-treatment-intent-code.html'>https://standards.digital.health.nz/fhir/ValueSet/sact-treatment-intent-code</a></td><td><div>https://standards.digital.health.nz/ns/treatment-intent-code</div><div>http://snomed.info/sct</div></td></tr>
</table>
<br/><br/>
### Retired ValueSets
<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>
</table>
<br/><br/>
### CodeSystems

These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>CodeSystem Url</th></tr>
<tr><td width='20%'>PlanDefinition additional status</td><td>Other codes used for the PlanDefinition status</td><td><a href='CodeSystem-sact-plan-definition-status-code.html'>https://standards.digital.health.nz/ns/sact-plan-definition-status-code</a></td></tr>
<tr><td width='20%'>Regimen type code</td><td>Codes used for the regimen type</td><td><a href='CodeSystem-sact-regimen-code.html'>https://standards.digital.health.nz/ns/sact-regimen-code</a></td></tr>
<tr><td width='20%'>Treatment intent</td><td>The intent of the regimen - what is its purpose</td><td><a href='CodeSystem-sact-treatment-intent-code.html'>https://standards.digital.health.nz/ns/sact-treatment-intent-code</a></td></tr>
</table>

### ValueSets defined but not used

<table><tr><th>Url</th></tr>
<tr><td><a href='ValueSet-sact-support-factor-code.html'>https://standards.digital.health.nz/fhir/ValueSet/sact-support-factor-code</a></td></tr>
</table>