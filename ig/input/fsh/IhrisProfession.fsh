Profile:        IhrisBasicProfession
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-profession
Title:          "Profession Information"
Description:    "iHRIS Profile of the Basic resource for Profession."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisProfession named profession 1..1 MS
* extension[profession].extension[profession].valueCoding 1..1 MS
* extension[profession].extension[profession].valueCoding ^label = "Profession"
* extension[profession].extension[professionByPENSS].valueCoding ^label = "Profession By PENSS"
* extension[profession].extension[professionByPENSS].valueCoding 1..1 MS
* extension[profession].extension[professionByKSP].valueCoding ^label = "Profession by KSP"
* extension[profession].extension[professionByKSP].valueCoding 1..1 MS
* extension[profession].extension[stdKSPPHCM].valueCoding ^label = "Std KSP (Municipality)"
* extension[profession].extension[stdKSPPHCM].valueCoding 0..1 MS
* extension[profession].extension[stdKSPPHCH].valueCoding ^label = "Std KSP (Hospitals)"
* extension[profession].extension[stdKSPPHCH].valueCoding 0..1 MS
* extension[profession].extension[compoundAllies].valueCoding ^label = "Compound Allies"
* extension[profession].extension[compoundAllies].valueCoding 0..1 MS
    
Extension:      IhrisProfession
Id:             ihris-profession
Title:          "Profession details"
* extension contains
      profession 1..1 MS and
      professionByPENSS 0..1 MS and
      professionByKSP 0..1 MS and
      stdKSPPHCM 0..1 MS and
      stdKSPPHCH 0..1 MS and
      compoundAllies 0..1 MS
* extension[profession].value[x] only Coding
* extension[profession].valueCoding from IhrisProfessionValueSet
* extension[profession].valueCoding ^label = "Profession"
* extension[professionByPENSS].value[x] only Coding
* extension[professionByPENSS].valueCoding ^label = "Profession By PENSS"
* extension[professionByPENSS].valueCoding from IhrisProfessionValueSet (required)
* extension[professionByKSP].value[x] only Coding
* extension[professionByKSP].valueCoding ^label = "Profession by KSP"
* extension[professionByKSP].valueCoding from IhrisProfessionValueSet (required)
* extension[stdKSPPHCM].value[x] only Coding
* extension[stdKSPPHCM].valueCoding ^label = "Std KSP (Municipality)"
* extension[stdKSPPHCM].valueCoding from IhrisProfessionValueSet (required)
* extension[stdKSPPHCH].value[x] only Coding
* extension[stdKSPPHCH].valueCoding ^label = "Std KSP (Hospitals)"
* extension[stdKSPPHCH].valueCoding from IhrisProfessionValueSet (required)
* extension[compoundAllies].valueCoding ^label = "Compound Allies"
* extension[compoundAllies].valueCoding from IhrisProfessionValueSet (required)

CodeSystem:      IhrisProfessionCodeSystem
Id:              ihris-profession-codesystem
Title:           "iHRIS Profession CodeSystem"
* ^date = "2023-04-14T08:41:04.362Z"
* ^version = "0.3.0"
* #AdmFinansas	"Adm. Finansas"	"Adm. Finansas"
* #Administrasaun	"Administrasaun"	"Administrasaun"
* #Aliados	"Aliados"	"Aliados"
* #Analista	"Analista"	"Analista"
* #AsstEnfermeiros	"Asst. Enfermeiros"	"Asst. Enfermeiros"
* #ChefeCS	"Chefe CS"	"Chefe CS"
* #Dentaria "Dentaria" "Dentaria"
* #EIS	"EIS"	"EIS"
* #Elektromediku	"Elektromediku"	"Elektromediku"
* #Enfermeiro	"Enfermeiro"	"Enfermeiro"
* #EnfermeiroDentaria	"Enfermeiro Dentaria"	"Enfermeiro Dentaria"
* #Farmacia	"Farmacia"	"Farmacia"
* #Farmasista	"Farmasista"	"Farmasista"
* #Fisioterapia	"Fisioterapia"	"Fisioterapia"
* #MedicalRecord	"Medical Record"	"Medical Record"
* #MedicoGeral	"Medico Geral"	"Medico Geral"
* #Medicos	"Medicos"	"Medicos"
* #Motorista	"Motorista"	"Motorista"
* #Nutrisaun	"Nutrisaun"	"Nutrisaun"
* #Parteira	"Parteira"	"Parteira"
* #Parteiras	"Parteiras"	"Parteiras"
* #PesoalGeral	"Pesoal Geral"	"Pesoal Geral"
* #Radiologia	"Radiologia"	"Radiologia"
* #SaudeAmbiental	"Saude Ambiental"	"Saude Ambiental"
* #SaudePublika	"Saude Publika"	"Saude Publika"
* #SupportStaff	"Support Staff"	"Support Staff"
* #TekAxiliar	"Tek. Axiliar"	"Tek. Axiliar"
* #TekSupport	"Tek. Support"	"Tek. Support"
* #TeknikDentaria	"Teknik Dentaria"	"Teknik Dentaria"

ValueSet:         IhrisProfessionValueSet
Id:               ihris-profession-valueset
Title:            "iHRIS ProfessionValueSet"
* ^date = "2020-11-11T08:41:04.362Z"
* ^version = "0.3.0"
* codes from system IhrisProfessionCodeSystem

Instance:       IhrisPractitionerWorkflowProfession
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS Profession Workflow"
* description = "iHRIS workflow to record a Profession"
* id = "ihris-profession"
* url = "http://ihris.org/fhir/Questionnaire/ihris-profession"
* name = "ihris-profession"
* status = #active
* date = 2020-08-27
* purpose = "Workflow page for recording a Profession information."

* item[0].linkId = "Basic"
* item[0].text = "Profession"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-profession-valueset"
* item[0].item[0].text = "Profession"
* item[0].item[0].type = #choice
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[1].text = "Profession By PENSS"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-profession-valueset"
* item[0].item[1].required = true
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[2].text = "Profession by KSP"
* item[0].item[2].type = #choice
* item[0].item[2].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-profession-valueset"
* item[0].item[2].required = true
* item[0].item[2].repeats = false

* item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[3].text = "Std KSP (Municipality)"
* item[0].item[3].type = #choice
* item[0].item[3].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-profession-valueset"
* item[0].item[3].required = false
* item[0].item[3].repeats = false

* item[0].item[4].linkId = "Basic.extension[0].extension[4]"
* item[0].item[4].text = "Std KSP (Hospitals)"
* item[0].item[4].type = #choice
* item[0].item[4].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-profession-valueset"
* item[0].item[4].required = false
* item[0].item[4].repeats = false

* item[0].item[5].linkId = "Basic.extension[0].extension[5]"
* item[0].item[5].text = "Compound Allies"
* item[0].item[5].type = #choice
* item[0].item[5].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-profession-valueset"
* item[0].item[5].required = false
* item[0].item[5].repeats = false

Instance:       ihris-page-profession
InstanceOf:     IhrisPage
Title:          "Profession"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-profession)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[link][1].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][1].extension[text].valueString = "Add Another"
* extension[display].extension[link][1].extension[button].valueBoolean = true
* extension[display].extension[link][1].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][1].extension[url].valueUrl = "/questionnaire/ihris-profession/profession?practitioner=FIELD"
* extension[display].extension[search][0].valueString = "Practitioner|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[search][1].valueString = "Profession|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-profession').extension.where(url='profession').valueCoding.display"
* extension[display].extension[search][2].valueString = "Profession By PENSS|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-profession').extension.where(url='professionByPENSS').valueCoding.display"
* extension[display].extension[search][3].valueString = "Profession by KSP|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-profession').extension.where(url='professionByKSP').valueCoding.display"
* extension[display].extension[search][4].valueString = "Std KSP (Municipality)|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-profession').extension.where(url='stdKSPPHCM').valueCoding.display"
* extension[display].extension[search][5].valueString = "Std KSP (Hospitals)|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-profession').extension.where(url='stdKSPPHCH').valueCoding.display"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Profession"
* extension[section][0].extension[description].valueString = "Profession details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "extension:practitioner"
* extension[section][0].extension[field][1].valueString = "extension:profession.extension:profession.value[x]:valueCoding"
* extension[section][0].extension[field][2].valueString = "extension:profession.extension:professionByPENSS.value[x]:valueCoding"
* extension[section][0].extension[field][3].valueString = "extension:profession.extension:professionByKSP.value[x]:valueCoding"
* extension[section][0].extension[field][4].valueString = "extension:profession.extension:stdKSPPHCM.value[x]:valueCoding"
* extension[section][0].extension[field][5].valueString = "extension:profession.extension:stdKSPPHCH.value[x]:valueCoding"
* extension[section][0].extension[field][6].valueString = "extension:profession.extension:compoundAllies.value[x]:valueCoding"


Instance:       ihris-page-professioncodesystem
InstanceOf:     IhrisPage
Title:          "iHRIS Profession CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-profession-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[search][2].valueString = "Region|region"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Profession"
* extension[section][0].extension[description].valueString = "Profession"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.code"
* extension[section][0].extension[field][1].valueString = "CodeSystem.definition"
* extension[section][0].extension[field][2].valueString = "CodeSystem.display"