Instance:   SuperceededPlan
InstanceOf: CcaPlanDefinition
//InstanceOf: PlanDefinition
Description: "A plan that has been superceeded by another"
Usage: #example


* extension[replaced-by].valueReference.reference = "PlanDefinition/newPlan"
* status = #retired

* action.description = "Here would be the details of this plan."