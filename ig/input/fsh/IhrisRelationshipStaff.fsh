Instance:       ihris-es-report-staff
InstanceOf:     IhrisRelationship
Title:          "Staff Relationship"
Usage:          #example

* code.text = "iHRISRelationship"
* code.coding = #iHRISRelationship
* subject.reference = "StructureDefinition/ihris-practitioner"
* extension[reportdetails].extension[name].valueString = "practitioner"
* extension[reportdetails].extension[label].valueString = "Staff Report"
* extension[reportdetails].extension[resource].valueString = "Practitioner"
* extension[reportdetails].extension[query].valueString = "active=true"
* extension[reportdetails].extension[displayCheckbox].valueBoolean = true
* extension[reportdetails].extension[locationBasedConstraint].valueBoolean = true

* extension[reportdetails].extension[reportelement][0].extension[label].valueString = "Id"
* extension[reportdetails].extension[reportelement][0].extension[name].valueString = "identifier.where(type.coding.where(code='PMIS')).value"
* extension[reportdetails].extension[reportelement][0].extension[display].valueString = "PMIS"
* extension[reportdetails].extension[reportelement][0].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][0].extension[dropDownFilter].valueBoolean = false
* extension[reportdetails].extension[reportelement][0].extension[order].valueInteger = 0

* extension[reportdetails].extension[reportelement][1].extension[label].valueString = "payroll"
* extension[reportdetails].extension[reportelement][1].extension[name].valueString = "identifier.where(type.coding.where(code='PAYROLL')).value"
* extension[reportdetails].extension[reportelement][1].extension[display].valueString = "Payroll"
* extension[reportdetails].extension[reportelement][1].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][1].extension[dropDownFilter].valueBoolean = false
* extension[reportdetails].extension[reportelement][1].extension[order].valueInteger = 1

/* extension[reportdetails].extension[reportelement][1].extension[label].valueString = "prefix"
* extension[reportdetails].extension[reportelement][1].extension[name].valueString = "name.prefix"
* extension[reportdetails].extension[reportelement][1].extension[display].valueString = "Prefix"
* extension[reportdetails].extension[reportelement][1].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][1].extension[dropDownFilter].valueBoolean = false*/

* extension[reportdetails].extension[reportelement][2].extension[label].valueString = "family"
* extension[reportdetails].extension[reportelement][2].extension[name].valueString = "name.where(use='official').family"
* extension[reportdetails].extension[reportelement][2].extension[display].valueString = "Given name"
* extension[reportdetails].extension[reportelement][2].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][2].extension[dropDownFilter].valueBoolean = false
* extension[reportdetails].extension[reportelement][2].extension[order].valueInteger = 2

* extension[reportdetails].extension[reportelement][3].extension[label].valueString = "given"
* extension[reportdetails].extension[reportelement][3].extension[name].valueString = "name.where(use='official').first().given"
* extension[reportdetails].extension[reportelement][3].extension[display].valueString = "Family name"
* extension[reportdetails].extension[reportelement][3].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][3].extension[dropDownFilter].valueBoolean = false
* extension[reportdetails].extension[reportelement][3].extension[order].valueInteger = 3

* extension[reportdetails].extension[reportelement][4].extension[label].valueString = "gender"
* extension[reportdetails].extension[reportelement][4].extension[name].valueString = "gender"
* extension[reportdetails].extension[reportelement][4].extension[display].valueString = "Gender"
* extension[reportdetails].extension[reportelement][4].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][4].extension[dropDownFilter].valueBoolean = true
* extension[reportdetails].extension[reportelement][4].extension[order].valueInteger = 4

* extension[reportdetails].extension[reportelement][5].extension[label].valueString = "birthDate"
* extension[reportdetails].extension[reportelement][5].extension[name].valueString = "birthDate"
* extension[reportdetails].extension[reportelement][5].extension[display].valueString = "BirthDate"
* extension[reportdetails].extension[reportelement][5].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][5].extension[dropDownFilter].valueBoolean = false
* extension[reportdetails].extension[reportelement][5].extension[order].valueInteger = 5

* extension[reportdetails].extension[reportelement][6].extension[label].valueString = "placeOfBirth"
* extension[reportdetails].extension[reportelement][6].extension[name].valueString = "Practitioner.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-placeOfBirth').valueString"
* extension[reportdetails].extension[reportelement][6].extension[display].valueString = "Place of Birth"
* extension[reportdetails].extension[reportelement][6].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][6].extension[dropDownFilter].valueBoolean = true
* extension[reportdetails].extension[reportelement][6].extension[order].valueInteger = 6

/* extension[reportdetails].extension[reportelement][7].extension[label].valueString = "nationality"
* extension[reportdetails].extension[reportelement][7].extension[name].valueString = "Practitioner.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-nationality').valueCoding.display"
* extension[reportdetails].extension[reportelement][7].extension[display].valueString = "Citizenship"
* extension[reportdetails].extension[reportelement][7].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][7].extension[dropDownFilter].valueBoolean = true

* extension[reportdetails].extension[reportelement][8].extension[label].valueString = "phone"
* extension[reportdetails].extension[reportelement][8].extension[name].valueString = "Practitioner.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-phone').valueString"
* extension[reportdetails].extension[reportelement][8].extension[display].valueString = "Phone Number"
* extension[reportdetails].extension[reportelement][8].extension[filter].valueBoolean = false
* extension[reportdetails].extension[reportelement][8].extension[dropDownFilter].valueBoolean = false

* extension[reportdetails].extension[reportelement][9].extension[label].valueString = "martialStatus"
* extension[reportdetails].extension[reportelement][9].extension[name].valueString = "Practitioner.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-marital-status').valueCoding.display"
* extension[reportdetails].extension[reportelement][9].extension[display].valueString = "Marital Status"
* extension[reportdetails].extension[reportelement][9].extension[filter].valueBoolean = true
* extension[reportdetails].extension[reportelement][9].extension[dropDownFilter].valueBoolean = true*/

* extension[reportdetails].extension[reportelement][7].extension[label].valueString = "ihris-related-group"
* extension[reportdetails].extension[reportelement][7].extension[name].valueString = "Practitioner.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-related-group').extension.where(url='location').valueString"
* extension[reportdetails].extension[reportelement][7].extension[filter].valueBoolean = false
* extension[reportdetails].extension[reportelement][7].extension[dropDownFilter].valueBoolean = false

* extension[reportlink][0].extension[name].valueString = "role"
* extension[reportlink][0].extension[resource].valueString = "PractitionerRole"
* extension[reportlink][0].extension[linkElement].valueString = "PractitionerRole.practitioner.reference"
* extension[reportlink][0].extension[linkTo].valueString = "practitioner"
* extension[reportlink][0].extension[linkElementSearchParameter].valueString = "practitioner"
* extension[reportlink][0].extension[multiple].valueBoolean = false

* extension[reportlink][0].extension[reportelement][0].extension[label].valueString = "job"
* extension[reportlink][0].extension[reportelement][0].extension[name].valueString = "code.coding.display"
* extension[reportlink][0].extension[reportelement][0].extension[display].valueString = "Job Title"
* extension[reportlink][0].extension[reportelement][0].extension[filter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][0].extension[dropDownFilter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][0].extension[order].valueInteger = 8

* extension[reportlink][0].extension[reportelement][1].extension[label].valueString = "startDate"
* extension[reportlink][0].extension[reportelement][1].extension[name].valueString = "period.start"
* extension[reportlink][0].extension[reportelement][1].extension[display].valueString = "Start Date"
* extension[reportlink][0].extension[reportelement][1].extension[filter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][1].extension[dropDownFilter].valueBoolean = false
* extension[reportlink][0].extension[reportelement][1].extension[order].valueInteger = 9

* extension[reportlink][0].extension[reportelement][2].extension[label].valueString = "endDate"
* extension[reportlink][0].extension[reportelement][2].extension[name].valueString = "period.end"
* extension[reportlink][0].extension[reportelement][2].extension[display].valueString = "End Date"
* extension[reportlink][0].extension[reportelement][2].extension[filter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][2].extension[dropDownFilter].valueBoolean = false
* extension[reportlink][0].extension[reportelement][2].extension[order].valueInteger = 11

* extension[reportlink][0].extension[reportelement][3].extension[label].valueString = "investitureDate"
* extension[reportlink][0].extension[reportelement][3].extension[name].valueString = "PractitionerRole.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-investiture-Date').valueDate"
* extension[reportlink][0].extension[reportelement][3].extension[display].valueString = "Investiture Date"
* extension[reportlink][0].extension[reportelement][3].extension[filter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][3].extension[dropDownFilter].valueBoolean = false
* extension[reportlink][0].extension[reportelement][3].extension[order].valueInteger = 10

* extension[reportlink][0].extension[reportelement][4].extension[label].valueString = "salary"
* extension[reportlink][0].extension[reportelement][4].extension[name].valueString = "PractitionerRole.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-salary').valueMoney.value"
* extension[reportlink][0].extension[reportelement][4].extension[display].valueString = "Salary"
* extension[reportlink][0].extension[reportelement][4].extension[filter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][4].extension[dropDownFilter].valueBoolean = false
* extension[reportlink][0].extension[reportelement][4].extension[order].valueInteger = 12

* extension[reportlink][0].extension[reportelement][5].extension[label].valueString = "scale"
* extension[reportlink][0].extension[reportelement][5].extension[name].valueString = "PractitionerRole.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-scale').valueString"
* extension[reportlink][0].extension[reportelement][5].extension[display].valueString = "Scale"
* extension[reportlink][0].extension[reportelement][5].extension[filter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][5].extension[dropDownFilter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][5].extension[order].valueInteger = 13

* extension[reportlink][0].extension[reportelement][6].extension[label].valueString = "grade"
* extension[reportlink][0].extension[reportelement][6].extension[name].valueString = "PractitionerRole.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-grade').valueString"
* extension[reportlink][0].extension[reportelement][6].extension[display].valueString = "Grade"
* extension[reportlink][0].extension[reportelement][6].extension[filter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][6].extension[dropDownFilter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][6].extension[order].valueInteger = 14

* extension[reportlink][0].extension[reportelement][7].extension[label].valueString = "regime"
* extension[reportlink][0].extension[reportelement][7].extension[name].valueString = "PractitionerRole.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-regime').valueCoding.display"
* extension[reportlink][0].extension[reportelement][7].extension[display].valueString = "Regime"
* extension[reportlink][0].extension[reportelement][7].extension[filter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][7].extension[dropDownFilter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][7].extension[order].valueInteger = 15

* extension[reportlink][0].extension[reportelement][8].extension[label].valueString = "regimeGrade"
* extension[reportlink][0].extension[reportelement][8].extension[name].valueString = "PractitionerRole.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitionerrole-regime-grade').valueCoding.display"
* extension[reportlink][0].extension[reportelement][8].extension[display].valueString = "Regime Grade"
* extension[reportlink][0].extension[reportelement][8].extension[filter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][8].extension[dropDownFilter].valueBoolean = true
* extension[reportlink][0].extension[reportelement][8].extension[order].valueInteger = 16

* extension[reportlink][1].extension[name].valueString = "facility"
* extension[reportlink][1].extension[resource].valueString = "Location"
* extension[reportlink][1].extension[linkElement].valueString = "Location.id"
* extension[reportlink][1].extension[linkTo].valueString = "role.location.reference"
* extension[reportlink][1].extension[multiple].valueBoolean = false
* extension[reportlink][1].extension[reportelement][0].extension[label].valueString = "dutyPost"
* extension[reportlink][1].extension[reportelement][0].extension[name].valueString = "name"
* extension[reportlink][1].extension[reportelement][0].extension[display].valueString = "WorkPlace"
* extension[reportlink][1].extension[reportelement][0].extension[filter].valueBoolean = true
* extension[reportlink][1].extension[reportelement][0].extension[dropDownFilter].valueBoolean = true
* extension[reportlink][1].extension[reportelement][0].extension[order].valueInteger = 7