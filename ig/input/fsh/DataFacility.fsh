Instance: Facility
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].resource = TL.M6.F1
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F1"
* entry[+].resource = TL.M6.F2
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F2"
* entry[+].resource = TL.M6.F3
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F3"
* entry[+].resource = TL.M6.F4
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F4"
* entry[+].resource = TL.M6.F5
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F5"
* entry[+].resource = TL.M6.F6
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F6"
* entry[+].resource = TL.M6.F7
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F7"
* entry[+].resource = TL.M6.F8
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F8"
* entry[+].resource = TL.M6.F9
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F9"
* entry[+].resource = TL.M6.F10
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F10"
* entry[+].resource = TL.M6.F11
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F11"
* entry[+].resource = TL.M6.F12
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F12"
* entry[+].resource = TL.M6.F13
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F13"
* entry[+].resource = TL.M6.F14
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F14"
* entry[+].resource = TL.M6.F15
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F15"
* entry[+].resource = TL.M6.F16
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F16"
* entry[+].resource = TL.M6.F17
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F17"
* entry[+].resource = TL.M6.F18
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F18"
* entry[+].resource = TL.M6.F19
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F19"
* entry[+].resource = TL.M6.F20
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F20"
* entry[+].resource = TL.M6.F21
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F21"
* entry[+].resource = TL.M6.F22
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F22"
* entry[+].resource = TL.M6.F23
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F23"
* entry[+].resource = TL.M6.F24
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F24"
* entry[+].resource = TL.M6.F25
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F25"
* entry[+].resource = TL.M6.F26
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F26"
* entry[+].resource = TL.M6.F27
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F27"
* entry[+].resource = TL.M6.F28
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F28"
* entry[+].resource = TL.M6.F29
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F29"
* entry[+].resource = TL.M6.F30
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F30"
* entry[+].resource = TL.M6.F31
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F31"
* entry[+].resource = TL.M6.F32
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F32"
* entry[+].resource = TL.M6.F33
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/TL.M6.F33"

Instance: TL.M6.F1
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F2
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F3
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-Klinik Uma Ita nian"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F4
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-PS Daisoli"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F5
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-PS Liurai"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F6
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-PS Maurusa"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F7
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-PS Rairema"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F8
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-PS Saboria"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F9
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-PS Seloi Kraik"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F10
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-PS Suku Liurai"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F11
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-PT Mantane"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F12
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Aileu Vila-PT Hatulai"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F13
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Laulara"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F14
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Laulara-PS Bocolero"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F15
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Laulara-PS Fatisi"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F16
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Laulara-PS Madabeno"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F17
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Laulara-PS Talitu"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F18
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Laulara-PS Tohumeta"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F19
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Lequidoe"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F20
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Lequidoe-PS Bereleu"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F21
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Lequidoe-PS Fahisoi"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F22
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Liquidoe"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F23
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remexio"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F24
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remexio-PS Bereliurai"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F25
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remexio-PS Fadabloko"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F26
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remexio-PS Faturasa"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F27
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remexio-PS Hautoho"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F28
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remexio-PS Laulara"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F29
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remexio-PS Maumeta"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F30
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remexio-PS Suku Liurai"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F31
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remexio-PS Tulataqueu"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F32
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "CS Remixio-PS Bereliurai"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"

Instance: TL.M6.F33
InstanceOf: Location
Usage: #inline
* meta.profile[0] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_Location"
* meta.profile[+] = "http://ihe.net/fhir/StructureDefinition/IHE_mCSD_FacilityLocation"
* meta.profile[+] = "http://ihris.org/fhir/StructureDefinition/ihris-facility"
* name = "SMS Aileu"
* status = #active
* partOf = Reference(Location/TL.M6)
* type[0] = urn:ietf:rfc:3986#urn:ihe:iti:mcsd:2019:facility
* type[=].text = "Facility"
* physicalType = http://hl7.org/fhir/codesystem-location-physical-type.html#bu
* physicalType.text = "Building"