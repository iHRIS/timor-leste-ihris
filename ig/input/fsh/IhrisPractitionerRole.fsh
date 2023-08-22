Profile:        IhrisPractitionerRole
Parent:         PractitionerRole
Id:             ihris-practitioner-role
Title:          "iHRIS Practitioner Role"
Description:    "iHRIS profile of Practitioner Role."

* identifier 0..* MS
* identifier ^label = "Identifier"
* identifier.use MS
* identifier.use ^label = "Use"
* identifier.type MS
* identifier.type ^label = "Type"
* identifier.type.coding ^label = "Type"
* identifier.type.coding 1..1 MS
* identifier.system MS
* identifier.system ^label = "System"
* identifier.value MS
* identifier.value ^label = "Value"
* active 1..1 MS
* active ^label = "Active"
* period 1..1 MS
* period ^label = "Period of Employment"
* period ^constraint[0].key = "ihris-period-start-end"
* period ^constraint[0].severity = #error
* period ^constraint[0].human = "The end date must be after the start date"
* period ^constraint[0].expression = "end.empty() or end = '' or end >= start"
* period.start 1..1 MS
* period.start ^label = "Start Work Date"
* period.start ^minValueDateTime = "1950-01-01"
* period.start ^maxValueDateTime = "2030-01-01"
* period.end 0..1 MS
* period.end ^label = "End Date"
* period.end ^minValueDateTime = "1950-01-01"
* period.end ^maxValueDateTime = "2030-01-01"
* practitioner 0..1 MS
* practitioner ^label = "Health Worker"
* practitioner.reference ^label = "Health Worker"
* practitioner only Reference(IhrisPractitioner)
* code 1..1 MS
* code ^label = "Job"
* code from IhrisJobTimorValueset (required)
* code.coding 1..1 MS
* code.coding ^label = "Job"
* specialty 0..0 MS
* location 1..1 MS 
* location ^label = "Workplace"
* location.reference ^label = "Workplace"
* location only Reference(IhrisFacility)
* extension contains
    IhrisPractitionerRoleSalary named salary 0..1 MS and
    IhrisPractitionerRoleInvestitureDate named investitureDate 1..1 MS and
    IhrisPractitionerRoleReasonDeparture named reasonForDepature 0..1 MS and
    IhrisPractitionerRoleJobInformationRemark named jobInformationRemark 0..1 MS and
    IhrisPractitionerRoleScale named scale 0..1 MS and
    IhrisPractitionerRoleGrade named grade 0..1 MS and
    IhrisPractitionerRoleRegime named regime 0..1 MS and
    IhrisPractitionerRoleRegimeGrade named regimeGrade 0..1 MS
* extension[salary].valueMoney MS
* extension[salary] ^label = "Salary"
* extension[scale].valueString MS
* extension[scale] ^label = "Scale"
* extension[grade].valueString MS
* extension[grade] ^label = "Grade"
* extension[regime].valueCoding MS
* extension[regime] ^label = "Regime"
* extension[regimeGrade].valueCoding MS
* extension[regimeGrade] ^label = "Regime Grade"
* extension[investitureDate].valueDate MS
* extension[investitureDate] ^label = "Investiture Date"
* extension[reasonForDepature].valueCoding MS
* extension[reasonForDepature] ^label = "Reason for Departure"
* extension[jobInformationRemark].valueString MS
* extension[jobInformationRemark] ^label = "Remark"

Extension:      IhrisPractitionerRoleScale
Id:             ihris-practitionerrole-scale
Title:          "iHRIS Salary Scale"
Description:    "iHRIS extension for Job Description Scale."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only string
* valueString 0..1 MS
* valueString ^label = "Scale"

Extension:      IhrisPractitionerRoleGrade
Id:             ihris-practitionerrole-grade
Title:          "iHRIS Grade"
Description:    "iHRIS extension for Job Description Grade."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only string
* valueString 0..1 MS
* valueString ^label = "Grade"

Extension:      IhrisPractitionerRoleSalary
Id:             ihris-practitionerrole-salary
Title:          "iHRIS Job Description salary"
Description:    "iHRIS extension for Job Information Salary."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Money
* valueMoney 0..1 MS
* valueMoney ^label = "Salary"

Extension:      IhrisPractitionerRoleReasonDeparture
Id:             ihris-practitionerrole-reason-departure
Title:          "iHRIS Job Description Reason for Departure"
Description:    "iHRIS extension for Job Description Reason for Departure."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 0..1 MS
* valueCoding ^label = "Reason for Change/Departure"
* valueCoding from IhrisReasonDepartureValueSet (required)

Extension:      IhrisPractitionerRoleRegime
Id:             ihris-practitionerrole-regime
Title:          "iHRIS Job Description Regime"
Description:    "iHRIS extension for Job Description Regime."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 0..1 MS
* valueCoding ^label = "Regime"
* valueCoding from IhrisRegimeValueSet (required)

CodeSystem:      IhrisRegimeCodeSystem
Id:              ihris-regime-codesystem
Title:           "Regime"
* ^date = "2020-11-14T08:41:04.362Z"
* ^version = "0.3.0"
* #Geral	"Regime Geral"
* #Especial	"Rezime Especial"

ValueSet:         IhrisRegimeValueSet
Id:               ihris-regime-valueset
Title:            "iHRIS Reason Departure ValueSet"
* ^date = "2020-11-14T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisRegimeCodeSystem

Extension:      IhrisPractitionerRoleRegimeGrade
Id:             ihris-practitionerrole-regime-grade
Title:          "iHRIS Job Description Regime Grade"
Description:    "iHRIS extension for Job Description Regime Grade."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 0..1 MS
* valueCoding ^label = "Regime Grade"
* valueCoding from IhrisRegimeGradeValueSet (required)

CodeSystem:      IhrisRegimeGradeCodeSystem
Id:              ihris-regime-grade-codesystem
Title:           "Regime Grade"
* ^date = "2020-11-14T08:41:04.362Z"
* ^version = "0.3.0"
* #JUNIORB-1	"JUNIOR B-1"
* #JUNIORB-2	"JUNIOR B-2"
* #JUNIOR-1	"JUNIOR-1"
* #JUNIORB-3	"JUNIOR B-3"
* #JUNIORA-1	"JUNIOR A-1"
* #BASICO-1	"BASICO-1"
* #ASST-1	"ASST-1"
* #ASST-4	"ASST-4"
* #BASICO-2	"BASICO-2"
* #ASST-3	"ASST-3"
* #BASICO-3	"BASICO-3"
* #ASST-2	"ASST-2"

ValueSet:         IhrisRegimeGradeValueSet
Id:               ihris-regime-grade-valueset
Title:            "iHRIS Reason Departure ValueSet"
* ^date = "2020-11-14T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisRegimeGradeCodeSystem

Extension:      IhrisPractitionerRoleInvestitureDate
Id:             ihris-practitionerrole-investiture-Date
Title:          "iHRIS Job Description Investiture Date"
Description:    "iHRIS extension for Investiture Date."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Investiture Date"

Extension:      IhrisPractitionerRoleJobInformationRemark
Id:             ihris-practitionerrole-job-information-remark
Title:          "iHRIS Job Description Job Information Remark"
Description:    "iHRIS extension for Job Information Remark."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only string
* valueString 1..1 MS
* valueString ^label = "Job Information Remark"

Instance:       ihris-page-practitionerrole
InstanceOf:     IhrisPage
Title:          "iHRIS PractitionerRole Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-practitioner-role)
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitionerrole/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "PractitionerRole.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "secondary"
* extension[display].extension[link][1].extension[field].valueString = "PractitionerRole.practitioner.reference"
* extension[display].extension[link][1].extension[text].valueString = "View Practitioner"
* extension[display].extension[link][1].extension[button].valueBoolean = true
* extension[display].extension[link][1].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][1].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Job|PractitionerRole.code[0].coding[0]"
* extension[display].extension[search][1].valueString = "Start Date|PractitionerRole.period.start"
* extension[display].extension[search][2].valueString = "Practitioner|PractitionerRole.practitioner"
* extension[display].extension[search][3].valueString = "Workplace|PractitionerRole.location"
* extension[display].extension[filter][0].valueString = "Job|role|http://ihris.org/fhir/ValueSet/ihris-job-timor"
* extension[section][0].extension[title].valueString = "Position"
* extension[section][0].extension[description].valueString = "Position details"
* extension[section][0].extension[name].valueString = "PractitionerRole"
* extension[section][0].extension[field][0].valueString = "PractitionerRole.code"
* extension[section][0].extension[field][1].valueString = "PractitionerRole.practitioner"
* extension[section][0].extension[field][2].valueString = "PractitionerRole.location"
* extension[section][0].extension[field][3].valueString = "PractitionerRole.period"
* extension[section][0].extension[field][4].valueString = "PractitionerRole.extension:investitureDate"
* extension[section][0].extension[field][5].valueString = "PractitionerRole.extension:salary"
* extension[section][0].extension[field][6].valueString = "PractitionerRole.extension:scale.value[x]:valueString"
* extension[section][0].extension[field][7].valueString = "PractitionerRole.extension:grade.value[x]:valueString"
* extension[section][0].extension[field][8].valueString = "PractitionerRole.extension:regime.value[x]:valueCoding.display"
* extension[section][0].extension[field][9].valueString = "PractitionerRole.extension:regimeGrade.value[x]:valueCoding.display"
* extension[section][0].extension[field][10].valueString = "PractitionerRole.extension:reasonForDepature.value[x]:valueCoding.display"
* extension[section][0].extension[field][11].valueString = "PractitionerRole.extension:jobInformationRemark"

Instance:       ihris-page-job
InstanceOf:     IhrisPage
Title:          "iHRIS Job CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-job-timor)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[search][2].valueString = "Cadre|cadre"
* extension[display].extension[search][3].valueString = "Classification|classification"
* extension[section][0].extension[title].valueString = "Job"
* extension[section][0].extension[description].valueString = "Job Titles"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.code"
* extension[section][0].extension[field][1].valueString = "CodeSystem.definition"
* extension[section][0].extension[field][2].valueString = "CodeSystem.display"
* extension[section][0].extension[field][3].valueString = "CodeSystem.cadre"

Instance:       ihris-page-regime
InstanceOf:     IhrisPage
Title:          "iHRIS Regime CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-regime-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Regime"
* extension[section][0].extension[description].valueString = "Regime"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-regimegrade
InstanceOf:     IhrisPage
Title:          "iHRIS Regime Grade CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-regime-grade-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Regime Grade"
* extension[section][0].extension[description].valueString = "Regime grade"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

/*Instance:       ihris-page-salary-grade
InstanceOf:     IhrisPage
Title:          "iHRIS Salary Scale CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-salary-grade)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Salary Grade"
* extension[section][0].extension[description].valueString = "Salary Grade"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-employment-status
InstanceOf:     IhrisPage
Title:          "iHRIS Employment Status CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-employment-status-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Employment Status"
* extension[section][0].extension[description].valueString = "Employment Status"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-job-type
InstanceOf:     IhrisPage
Title:          "iHRIS Job Type CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-job-type-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Job Type"
* extension[section][0].extension[description].valueString = "Job Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-salary-scale
InstanceOf:     IhrisPage
Title:          "iHRIS Salary Scale CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-salary-grade)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Salary Scale"
* extension[section][0].extension[description].valueString = "Salary Scale"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"*/

Instance:       ihris-page-reason-departure
InstanceOf:     IhrisPage
Title:          "iHRIS Reason for Departure CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-reason-departure-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Reason for Departure"
* extension[section][0].extension[description].valueString = "Reason for Departure"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

/*Instance:       ihris-page-shift
InstanceOf:     IhrisPage
Title:          "iHRIS Shift CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-shift-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Shift"
* extension[section][0].extension[description].valueString = "Shift"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"*/

Instance:       IhrisPractitionerWorkflowEndRole
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS End Role Workflow"
* description = "iHRIS workflow to end a current role/job"
* id = "ihris-endrole"
* url = "http://ihris.org/fhir/Questionnaire/ihris-endrole"
* name = "ihris-endrole"
* status = #active
* date = 2020-08-09
* purpose = "Workflow page for ending a role/job."

* item[0].linkId = "PractitionerRole"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.id"
* item[0].text = "Job End Date"
* item[0].type = #group

* item[0].item[0].linkId = "PractitionerRole.period.end"
* item[0].item[0].text = "End Date"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.end"
* item[0].item[0].type = #date
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "departure"
* item[0].item[1].text = "Reason For Departure"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:reasonForDepature.value[x]:valueCoding"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-reason-departure-valueset"
* item[0].item[1].required = true
* item[0].item[1].repeats = false

Instance:       IhrisPractitionerWorkflowPromotion
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS End Role Workflow"
* description = "iHRIS workflow to record a promotion"
* id = "ihris-promotion"
* url = "http://ihris.org/fhir/Questionnaire/ihris-promotion"
* name = "ihris-promotion"
* status = #active
* date = 2020-08-09
* purpose = "Workflow page for recording a promotion."

* item[0].linkId = "PractitionerRole"
* item[0].text = "Promotion Details"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.id"
* item[0].type = #group

* item[0].item[0].linkId = "OldPractitionerRole"
* item[0].item[0].text = "Old Position Details"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.id"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "PractitionerRole.period.end"
* item[0].item[0].item[0].text = "Position Change Date"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.end"
* item[0].item[0].item[0].type = #dateTime
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false

* item[0].item[0].item[1].linkId = "reasonfordepature"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:reasonForDepature.value[x]:valueCoding"
* item[0].item[0].item[1].text = "Reason For Change"
* item[0].item[0].item[1].type = #choice
* item[0].item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-reason-departure-valueset"
* item[0].item[0].item[1].required = true
* item[0].item[0].item[1].repeats = false

* item[0].item[1].linkId = "NewPractitionerRole"
* item[0].item[1].text = "New Position Details"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.id"
* item[0].item[1].type = #group

* item[0].item[1].item[0].linkId = "PractitionerRole.code"
* item[0].item[1].item[0].text = "New Job Title"
* item[0].item[1].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.code"
* item[0].item[1].item[0].type = #choice
* item[0].item[1].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-job-timor"
* item[0].item[1].item[0].required = true
* item[0].item[1].item[0].repeats = false

* item[0].item[1].item[1].linkId = "PractitionerRole.location"
* item[0].item[1].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.location"
* item[0].item[1].item[1].text = "Workplace"
* item[0].item[1].item[1].type = #reference
* item[0].item[1].item[1].required = true
* item[0].item[1].item[1].repeats = false

* item[0].item[1].item[2].linkId = "PractitionerRole.extension[0]"
* item[0].item[1].item[2].text = "New Salary"
* item[0].item[1].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:salary.value[x]:valueMoney"
* item[0].item[1].item[2].type = #string
* item[0].item[1].item[2].required = true
* item[0].item[1].item[2].repeats = false

* item[0].item[1].item[3].linkId = "PractitionerRole.extension[1]"
* item[0].item[1].item[3].text = "New Scale"
* item[0].item[1].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:scale.value[x]:valueString"
* item[0].item[1].item[3].type = #string
* item[0].item[1].item[3].required = false
* item[0].item[1].item[3].repeats = false

* item[0].item[1].item[4].linkId = "PractitionerRole.extension[2]"
* item[0].item[1].item[4].text = "New Grade"
* item[0].item[1].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:grade.value[x]:valueString"
* item[0].item[1].item[4].type = #string
* item[0].item[1].item[4].required = false
* item[0].item[1].item[4].repeats = false

* item[0].item[1].item[5].linkId = "PractitionerRole.extension[3]"
* item[0].item[1].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:jobInformationRemark.value[x]:valueString"
* item[0].item[1].item[5].text = "Remark"
* item[0].item[1].item[5].type = #string
* item[0].item[1].item[5].required = false
* item[0].item[1].item[5].repeats = false


ValueSet:         IhrisJobTimorValueset
Id:               ihris-job-timor
Title:            "iHRIS Job Title Value Set"
Description:      "iHRIS ValueSet for: iHRISJobTimor"
* ^date = "2023-04-14T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisJobTimorCodeSystem

CodeSystem:      IhrisJobTimorCodeSystem
Id:              ihris-job-timor
Title:           "iHRIS Job Title Code System for Timor-Leste"
* ^date = "2023-04-14T08:41:04.362Z"
* ^version = "0.3.0"
* #Analista	"Analista"	"Analista"
* #Aliados	"Aliados"	"Aliados"
* #Ambiental	"Ambiental"	"Ambiental"
* #AssistantAdministrasaun	"Assistant Administrasaun"	"Assistant Administrasaun"
* #AssistantEnfermeiro	"Assistant Enfermeiro"	"Assistant Enfermeiro"
* #AssistantSMI	"Assistant SMI"	"Assistant SMI"
* #AssistantTecAdmin	"Assistant Tec Admin"	"Assistant Tec Admin"
* #ChefeCentroSaudeLaulara	"Chefe Centro Saude Laulara"	"Chefe Centro Saude Laulara"
* #ChefeCSAileuVilla	"Chefe CS Aileu Villa"	"Chefe CS Aileu Villa"
* #ChefeCSLequidoe	"Chefe CS Lequidoe"	"Chefe CS Lequidoe"
* #ChefeCSRemexio	"Chefe CS Remexio"	"Chefe CS Remexio"
* #Cleaner	"Cleaner"	"Cleaner"
* #DiretorSSMAileu	"Diretor SSM Aileu"	"Diretor SSM Aileu"
* #DPHONonCDC	"DPHO Non CDC"	"DPHO Non CDC"
* #DPHOSMI	"DPHO SMI"	"DPHO SMI"
* #Elektromedik	"Elektromedik"	"Elektromedik"
* #Enfarmagen	"Enfarmagen"	"Enfarmagen"
* #Enfermeira	"Enfermeira"	"Enfermeira"
* #EnfermeiraDentista	"Enfermeira Dentista"	"Enfermeira Dentista"
* #EnfermeiraSenior	"Enfermeira Senior"	"Enfermeira Senior"
* #Enfermeiro	"Enfermeiro"	"Enfermeiro"
* #EnfermeiroDentistaSenior	"Enfermeiro Dentista Senior"	"Enfermeiro Dentista Senior"
* #EnfermeiroSenior	"Enfermeiro Senior"	"Enfermeiro Senior"
* #Farmacista	"Farmacista"	"Farmacista"
* #FarmacistaLogistik	"Farmacista- Logistik"	"Farmacista- Logistik"
* #Finansas	"Finansas"	"Finansas"
* #Fisioterapia	"Fisioterapia"	"Fisioterapia"
* #Loundry	"Loundry"	"Loundry"
* #MedicalRecord	"Medical Record"	"Medical Record"
* #Medicina	"Medicina"	"Medicina"
* #MedicoGeral	"Medico Geral"	"Medico Geral"
* #Medicos	"Medicos"	"Medicos"
* #MedikuGejal	"Mediku Gejal"	"Mediku Gejal"
* #Motorista	"Motorista"	"Motorista"
* #OfficialFinansas	"Official Finansas"	"Official Finansas"
* #OfficialMalariaDistrito	"Official Malaria Distrito"	"Official Malaria Distrito"
* #OficialLaboratorio	"Oficial Laboratorio"	"Oficial Laboratorio"
* #OSPDProgSaudeNutricao	"OSPD-Prog. Saude Nutricao"	"OSPD-Prog. Saude Nutricao"
* #Parteira	"Parteira"	"Parteira"
* #Parteirasenior	"Parteira senior"	"Parteira senior"
* #Radiologia	"Radiologia"	"Radiologia"
* #ResponsavelProgramTB	"Responsavel Program TB"	"Responsavel Program TB"
* #ResponsavelSIS-VE	"Responsavel SIS-VE"	"Responsavel SIS-VE"
* #Seguranca	"Seguranca"	"Seguranca"
* #TecAdministrativo	"Tec Administrativo"	"Tec Administrativo"

CodeSystem:      IhrisReasonDepartureCodeSystem
Id:              ihris-reason-departure-codesystem
Title:           "Reason For Change/Departure"
* ^date = "2020-11-14T08:41:04.362Z"
* ^version = "0.3.0"
* #transfer "Transfer" "Transfer"
* #death "Death" "death"
* #redeployment  "Redeployment" "Redeployment"
* #earlyRetirement "Early Retirement" "Early Retirement"
* #mandatoryRetirement "Mandatory Retirement" "Mandatory Retirement"
* #resignation "Resignation" "Resignation"
* #health "Health Related" "Health Related"
* #quit "Quit" "Quit"

ValueSet:         IhrisReasonDepartureValueSet
Id:               ihris-reason-departure-valueset
Title:            "iHRIS Reason Departure ValueSet"
* ^date = "2020-11-14T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisReasonDepartureCodeSystem