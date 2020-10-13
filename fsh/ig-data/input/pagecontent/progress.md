### Progress report


#### Friday August 21

##### Progress

* Initial build completed. 
* [Profiles](http://build.fhir.org/ig/HL7NZ/cca/branches/master/profiles.html) on PlanDefinition and ActivityDefinition done
  * Note that urls are in the hl7nz domain temporarily, and may need to be changed
* [Extensions](http://build.fhir.org/ig/HL7NZ/cca/branches/master/extensions.html) created
  * Note that urls are in the clinfhir domain temporarily, and may need to be changed
* Single [example]() created.
  * includes a javascript based script that generates IG specific text for the resource from the structured data. This may be useful as a QA check for instances - the output from this script should be the same as that from the designer app, to prove that the structured contents are correct.

##### Waiting from business

These are activities they require further input from the business. Mostly they are terminology related - specifically the contents of ValueSets for the coded elements (core and extensions). In many (?most) cases they will be snomed, so the contents of the value need to be supplied (a spreadsheet is fine) and they can be cast into formal FHIR structures. 

If there are ValueSets that have non-SNOMED contents then it may be necessary to create CodeSystem resources if they defined by the project.

Specifics:

* [Support Factors](StructureDefinition-support-factor.html). We need codes for each support factor, and also for the possible values for each factor. 
* The [Location Administration](ValueSet-location-administration.html) ValueSet needs populating. These are where the specific medications can be administered (Home, clinic etc)
* The [Medication Collection](ValueSet-location-medication-collection.html) ValueSet needs populating. These are where the medications are stored and collected prior to administration
* Decide if we want a reference from a new Plan back to the one that it has replaced (we [have one](StructureDefinition-replaced-by.html) from deprecated to new but not the other way)
* Decide on the supported search parameters for Plans

##### Plans for next dev cycle

Work on creating more examples from the test system





