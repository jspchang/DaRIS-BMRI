#============================================================================#
# This script creates generic Document Types for use by various HFI Methods. #
# Document Types created in this script should be re-usable by multiple      #
# Methods.                                                                   #
#============================================================================#

#============================================================================
# Defines the basic genetic information for an animal
proc createDocType_pssd_animal_genetics { ns } {

	asset.doc.type.update \
		:create true :type $ns:pssd.animal.genetics \
		:description "Document type for basic animal (Humans included) genetic information" \
		:label "Animal genetics" \
		:definition < \
		:element -name strain -type document -index true -min-occurs 0 -max-occurs infinity < \
		:description "The genetic strain of the animal" \
		:element -name name -type enumeration  -dictionary ${ns}.pssd.animal.strains \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "The standard name of the genetic strain" \
		> \
		:element -name fraction -type float -min 0.0 -max 1.0 \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "The fraction that this strain contributes" \
		> \
		> \
		>
}

#============================================================================
# Defines the basic modified genetic information for an animal
proc createDocType_pssd_animal_modified_genetics { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.animal.modified-genetics \
		:description "Document type for animal (Humans included) with modified genetic information" \
		:label "Modified animal genetics" \
		:definition < \
		:element -name knockout -type document -min-occurs 0 -max-occurs infinity < \
		:description "Describes a knockout genetic modification" \
		:element -name gene -type enumeration   -dictionary nig.pssd.animal.genes  \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Standard gene name" \
		> \
		:element -name zygosity -type enumeration \
		-enumerated-values "+/-,+/+,-/-" \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Standard zygosity of knockout gene" \
		> \
		> \
		:element -name knockin -type document -min-occurs 0 -max-occurs infinity < \
		:description "Describes a knockin genetic modification" \
		:element -name gene -type enumeration  -dictionary nig.pssd.animal.genes  \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Standard gene name" > \
		:element -name zygosity -type enumeration \
		-enumerated-values "w/w,w/ki,ki/ki" \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Standard zygosity of knockin gene" > \
		> \
		:element -name transgenic  -type document -min-occurs 0 -max-occurs infinity < \
		:description "Describes a transgenic  genetic modification" \
		:element -name promoter -type string \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Standard promote name" > \
		:element -name gene -type enumeration  -dictionary nig.pssd.animal.genes  \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Standard gene name" > \
		> \
		>
}

#============================================================================
# Describes how an animal is anaesthetized typed in but not yet checked
proc createDocType_pssd_anaesthetic { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.anaesthetic  \
		:description "Document type describing how animals are anaesthetized" \
		:label "Anaesthetic" \
		:definition < \
		:element -name method  -type enumeration \
		-enumerated-values "inhalation,intravenous" \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Method of delivery of anaesthetic" \
		> \
		:element -name induction -type document -min-occurs 0 -max-occurs 1 < \
		:description "Describes the anaesthetic induction process" \
		:element -name agent -type enumeration  \
		-enumerated-values "isoflurane" \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Anaesthetic induction agent name" \
		> \
		:element -name concentration -type float -min 0.0 -max 100.0 \
		-index true -min-occurs 0 -max-occurs 1 < \
		:attribute -type enumeration -name units -enumerated-values "%" -min-occurs 0 -default "%" \
		:description "Concentration of agent (%)" \
		> \
		> \
		:element -name maintenance -type document -min-occurs 0 -max-occurs 1 < \
		:description "Describes the anaesthetic maintenance process" \
		:element -name agent -type enumeration  \
		-enumerated-values "isoflurane" \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Anaesthetic maintenance agent name" \
		> \
		:element -name concentration -type document -min-occurs 0 -max-occurs 1 < \
		:description "Describes the anaesthetic maintenance concentration" \
		:element -name min  -type float  -min 0.0 -max 100.0 \
		-index true -min-occurs 0 -max-occurs 1 < \
		:attribute -type enumeration -name units -enumerated-values "%" -min-occurs 0 -default "%" \
		:description "Anaesthetic maintenance agent minimum concentration (%)" \
		> \
		:element -name max  -type float  -min 0.0 -max 100.0 \
		-index true -min-occurs 0 -max-occurs 1 < \
		:attribute -type enumeration -name units -enumerated-values "%" -min-occurs 0 -default "%" \
		:description "Anaesthetic maintenance agent maximum concentration (%)" \
		> \
		> \
		> \
		:element -name monitoring -type enumeration \
		-enumerated-values "respiratory rate,heart rate,temperature" \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Method by which animal is monitored during anaesthetic" \
		> \
		>

}

#============================================================================
proc createDocType_pssd_recovery { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.recovery \
		:description "Document type describing the recovery of an animal after anaesthetic" \
		:label "Recovery" \
		:definition < \
		:element -name method  -type enumeration \
		-enumerated-values "warming light" \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Method of animal recovery after anaesthetic" \
		> \
		>

}

#============================================================================
# Describes how an animal is killed
proc createDocType_pssd_animal_kill { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.animal.kill   \
		:description "Document type describing how animals are killed" \
		:label "Kill" \
		:definition < \
		:element -name route  -type enumeration \
		-enumerated-values "inhalation,intra-peritoneal injection" \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Route of delivery of agent" \
		> \
		:element -name agent -type enumeration  \
		-enumerated-values "isoflurane,pentobarbitane,CO" \
		-index true -min-occurs 0 -max-occurs 1 < \
		:description "Agent name" \
		> \
		:element -name concentration -type float -min 0.0 -max 100.0 \
		-index true -min-occurs 0 -max-occurs 1 < \
		:attribute -type enumeration -name units -enumerated-values "mg/Kg" -min-occurs 0 -default "mg/Kg" \
		:description "Concentration of agent (mg/Kg)" \
		> \
		>

}

#===========================================================================#


#===========================================================================#
proc createDocTypesGeneric { ns } {

	createDocType_pssd_animal_genetics $ns
	createDocType_pssd_animal_modified_genetics $ns
	createDocType_pssd_anaesthetic $ns
	createDocType_pssd_recovery $ns
	createDocType_pssd_animal_kill $ns
}

#===========================================================================#
proc destroyDocTypesGeneric { ns } {

	set doctypes [list $ns:pssd.animal.genetics $ns:pssd.animal.modified-genetics \
	 $ns:pssd.anaesthetic $ns:pssd.recovery $ns:pssd.animal.kill]

	foreach doctype $doctypes {
        destroyDocType $doctype "true"
	}
}