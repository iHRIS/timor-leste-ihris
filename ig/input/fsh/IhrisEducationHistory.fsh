Profile:        IhrisBasicEducationHistory
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-education-history
Title:          "Qualification Information"
Description:    "iHRIS Profile of the Basic resource for Qualification."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisEducationHistory named educationHistory 1..1 MS
* extension[educationHistory].extension[level].valueCoding ^label = "Educational Background"
* extension[educationHistory].extension[level].valueCoding 0..1 MS
* extension[educationHistory].extension[publicHealth].valueCoding ^label = "Qualification of Public Health"
* extension[educationHistory].extension[publicHealth].valueCoding 0..1 MS
* extension[educationHistory].extension[literary].valueString ^label = "Qualification of Literary"
* extension[educationHistory].extension[literary].valueString 0..1 MS
    
Extension:      IhrisEducationHistory
Id:             ihris-education-history
Title:          "Qualification details"
* extension contains
      level 0..1 MS and
      publicHealth 0..1 MS and
      literary 0..1 MS
* extension[level].value[x] only Coding
* extension[level].valueCoding ^label = "Education Background"
* extension[level].valueCoding from IhrisEducationBackgroundValueSet (required)
* extension[publicHealth].value[x] only Coding
* extension[publicHealth].valueCoding ^label = "Qualification of Public Health"
* extension[publicHealth].valueCoding from IhrisPublicHealthValueSet (required)
* extension[literary].value[x] only string
* extension[literary].valueString ^label = "Qualification of Literary"

CodeSystem:      IhrisEducationBackgroundCodeSystem
Id:              ihris-educational-background-codesystem
Title:           "Educational Background"
* ^date = "2020-11-11T08:41:04.362Z"
* ^version = "0.3.0"
* #D1 "D1" "D1"
* #D2 "D2" "D2"
* #D3 "D3" "D3"
* #D4 "D4" "D4"
* #S1 "S1" "S1"
* #SD "SD" "SD"
* #SMA "SMA" "SMA"
* #SMP "SMP" "SMP"

ValueSet:         IhrisEducationBackgroundValueSet
Id:               ihris-educational-background-valueset
Title:            "iHRIS Educational Major ValueSet"
* ^date = "2020-11-11T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisEducationBackgroundCodeSystem

CodeSystem:      IhrisPublicHealthCodeSystem
Id:              ihris-public-health-codeSystem
Title:           "Qualification of Public Health"
* ^date = "2020-09-29T08:41:04.362Z"
* #Saude "Saude Publika" "Saude Publika"
* #Enfermeiro "Enfermeiro Dentaria" "Enfermeiro Dentaria"
* #Dentaria "Dentaria" "Dentaria"
* #Teknik "Teknik Dentaria" "Teknik Dentaria"

ValueSet:         IhrisPublicHealthValueSet
Id:               ihris-public-health-valueset
Title:            "iHRIS Public Health ValueSet"
* ^date = "2020-09-29T08:41:04.362Z"
* ^version = "0.2.0"
* codes from system IhrisPublicHealthCodeSystem

Instance:       IhrisPractitionerWorkflowEducationHistory
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS Qualification Workflow"
* description = "iHRIS workflow to record a Qualification"
* id = "ihris-education-history"
* url = "http://ihris.org/fhir/Questionnaire/ihris-education-history"
* name = "ihris-education-history"
* status = #active
* date = 2020-08-27
* purpose = "Workflow page for recording a Qualification information."

* item[0].linkId = "Basic"
* item[0].text = "Qualification"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-educational-background-valueset"
* item[0].item[0].text = "Education Background"
* item[0].item[0].type = #choice
* item[0].item[0].required = false
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[1].text = "Qualification of Public Health"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-public-health-valueset"
* item[0].item[1].required = false
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[2].text = "Qualification of Literary"
* item[0].item[2].type = #string
* item[0].item[2].required = false
* item[0].item[2].repeats = false

Instance:       ihris-page-basic-education-history
InstanceOf:     IhrisPage
Title:          "Qualification"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-education-history)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[link][1].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][1].extension[text].valueString = "Add Another"
* extension[display].extension[link][1].extension[button].valueBoolean = true
* extension[display].extension[link][1].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][1].extension[url].valueUrl = "/questionnaire/ihris-education-history/basic-education-history?practitioner=FIELD"
* extension[display].extension[search][0].valueString = "Practitioner|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Education Background|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-education-history').extension.where(url='level').valueCoding.display"
* extension[display].extension[search][2].valueString = "Qualification of Public Health|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-education-history').extension.where(url='publicHealth').valueCoding.display"
* extension[display].extension[search][3].valueString = "Qualification of Literary|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-education-history').extension.where(url='literary').valueString"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Qualification"
* extension[section][0].extension[description].valueString = "Qualification details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:practitioner"
* extension[section][0].extension[field][1].valueString = "extension:educationHistory.extension:level.value[x]:valueCoding"
* extension[section][0].extension[field][2].valueString = "extension:educationHistory.extension:publicHealth.value[x]:valueCoding"
* extension[section][0].extension[field][3].valueString = "extension:educationHistory.extension:literary.value[x]:valueString"


Instance:       ihris-page-educational-background
InstanceOf:     IhrisPage
Title:          "iHRIS Education Background CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-educational-background-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[search][2].valueString = "Region|region"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Education Background"
* extension[section][0].extension[description].valueString = "Education Background"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.code"
* extension[section][0].extension[field][1].valueString = "CodeSystem.definition"
* extension[section][0].extension[field][2].valueString = "CodeSystem.display"

Instance:       ihris-page-public-health
InstanceOf:     IhrisPage
Title:          "iHRIS Qualification of Public Health CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-public-health-codeSystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Qualification of Public Health"
* extension[section][0].extension[description].valueString = "Qualification of Public Health CodeSystem"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"