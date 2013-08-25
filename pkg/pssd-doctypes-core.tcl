# ============================================================================
# This script creates generic Document Types for use by various project and 
# subject BMRI Methods. Document Types created in this script should be 
# re-usable by multiple methods.
# ============================================================================

# ============================================================================
# Project Doc Types
# ============================================================================
proc createDocType_pssd_project { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.project \
		:label "Project" \
		:description "Document type for  project" \
		:definition < \
            :element -name facility-id -min-occurs 0 -max-occurs infinity -type enumeration -index true -enumerated-values  "Brain and Mind research Institute,Other" < \
            	:description "Facility ID of the project allocated by some other authority" > \
            :element -name "funding-id"  -index "true" -min-occurs "0" -type enumeration -dictionary ${ns}.funding.organization < \
                :description "An identifier for the funding source (e.g. ARC/LIEF)" > \
			:element -name keyword -type string -index true -min-occurs 0 -max-occurs infinity < \
				:description "A keyword relevant to this Project" > \
			:element -name field-of-research -type enumeration -min-occurs 1 -max-occurs infinity -index true -dictionary  pssd.ANZSRC.Division-11.field-of-research < \
                :description "Standard ANZSRC Field of Research (Medical and Health Sciences) classification" > \
        > \
	}
proc createDocType_pssd_identity { ns } {

	asset.doc.type.update \
		:create true :type $ns:pssd.identity \
		:description "Document type for subject identity" \
		:label "External Subject Identifier" \
		:definition < \
		:element -name id -min-occurs 0 -max-occurs infinity  -type string -index true  < \
		:description "Unique identifier for the subject allocated by some other authority for cross-referencing" \
		:attribute -name type -type enumeration -min-occurs 0 < \
		:restriction -base enumeration < \
		:value RCH \
		:value HFIAS \
		:value aMRIF \
		:value INF \
		:value VIBES \
		:value Other \
		> \
		> \
		> \
		>

}
# ============================================================================
# Subject Doc Types
# ============================================================================

proc createDocType_pssd_subject_identifiers { ns } {

    asset.doc.type.update \
    	:create true :type $ns:pssd.subject.identifiers \
        :description "Document type for subject identifiers" \
        :label "Subject Identifiers" \
        :definition < \
        	:element -name "subject-bmri-id" -type "string" -index true -min-occurs 1 -max-occurs 1 < \
            	:description "The BMRI ID for a subject, used to link a subject across multiple projects" > \
    		:element -name "subject-project-id" -type "string" -index true -min-occurs 1 -max-occurs 1 < \
            	:description "The project specific ID for a subject" > \
    	> \
	}

proc createDocType_pssd_subject { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject \
		:description "Document type for project-based subject" \
		:label "Subject" \
		:definition < \
			:element -name "type"  -min-occurs 1 -max-occurs 1 -type enumeration -enumerated-values animal,non-animal -index true -case-sensitive false < \
               	:description "Animal or non-animal Subject" \
            > \
			:element -name "control" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "Identifies if the subject is a member of a control group" \
			> \
			:element -name "included"  -min-occurs 1 -max-occurs 1 -type enumeration -index true -case-sensitive false -enumerated-values "included,excluded,to-be-determined" < \
            	:description "Identifies if subject is included in study" \
            > \
        > \
	}


proc createDocType_pssd_animal_subject { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.animal.subject \
		:description "Document type for an animal (Humans included) subject" \
		:label "Subject Basics" \
		:definition < \
			:element -name species -min-occurs 0 -max-occurs 1 -type enumeration  -dictionary $ns.pssd.animal.species -index true -case-sensitive false < \
				:description "Species type of the animal" \
			> \
		> \
	}
	
	
proc createDocType_pssd_subject_gender { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject.gender \
		:description "Document type for an animal (Humans included) subject" \
		:label "Subject gender" \
		:definition < \
            :element -name "gender" -min-occurs 0 -max-occurs 1 -type enumeration -dictionary $ns.pssd.subject.gender -index true < \
				:description "Gender of the subject" \
			> \
		> \
	}
# ============================================================================
# Demographics Doc types
# ============================================================================

proc createDocType_pssd_subject_handedness { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject.handedness \
		:description "Document type for a subject handedness" \
		:label "Handedness" \
		:definition < \
			:element -name handedness -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "Handedness of the subject" \
				:restriction -base "enumeration" < \
					:value left \
					:value right \
					:value ambidextrous \
					:value unknown \
				> \
			> \
		> \
	}
	
proc createDocType_pssd_subject_height { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject.height \
		:description "Document type for subject height" \
		:label "Subject height" \
		:definition < \
			:element -name height -min-occurs 0 -max-occurs 1 -type document < \
				:element -name "value" -min-occurs 0 -max-occurs 1 -type float -index true  \
				:element -name "units" -min-occurs 0 -max-occurs 1 -type float -index true  <\
					:restriction -base "enumeration" < \
						:value "meters" \
					> \
				> \
			> \
		> \
	}

proc createDocType_pssd_subject_date_of_birth { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject.date-of-birth \
		:description "Document type for a subject date of birth" \
		:label "Date of Birth" \
		:definition < \
		    :element -name "date-of-birth" -min-occurs 0 -max-occurs 1 -type "date" -index true  -case-sensitive false < \
                :description "Birth date of the subject" \
            > \
        > \
    }
    
    
proc createDocType_pssd_subject_age_at_baseline { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject.age-at-baseline \
		:description "Document type for a Human age at baseline" \
		:label "Age at baseline" \
		:definition < \
            :element -name "age-at-baseline" -min-occurs 0 -max-occurs 1 -type integer -index true  < \
              	:description "Age of subject at baseline" \
            > \
        > \
    }
    
proc createDocType_pssd_referral_date { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.referral-date \
		:description "Document type for date of referral" \
		:label "referral-date" \
		:definition < \
			:element -name "referral-date"  -min-occurs 1 -max-occurs 1 -type date -index true -case-sensitive false < \
                :description "Identifies the date the subject was referred" \
            > \
        > \
    }

proc createDocType_pssd_patient_data_summary { ns } {
	asset.doc.type.update \
		:create true :type ${ns}:pssd.patient-data-summary \
		:description "Document type for capturing if a patient wants a summary of their data" \
		:label "patient-requested-data-summary" \
		:definition < \
			:element -name patient-data-summary -type boolean -min-occurs 0 -max-occurs 1 -index true < \
				:description "Apply true if patient has requested the results form the their assessment" \
			> \
		> \
	}

proc createDocType_pssd_referring_clinician { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.referring-clinician \
		:description "Document to capture referring clinician details" \
		:label "referring-clinician" \
		:definition < \
			:element -name prefix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Prefix" \
			:element -name first  -type string -min-occurs 1 -max-occurs 1 -length 40 -label "First" \
			:element -name middle -type string -min-occurs 0 -max-occurs 1 -length 100 -label "Middle" < \
				:description "If there are several 'middle' names then put them in this field" \
			> \
			:element -name last   -type string -min-occurs 1 -max-occurs 1 -length 40 -label "Last" \
			:element -name suffix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Suffix" \
			:element -name referral-notes -type string -min-occurs 0 -max-occurs 1 -case-sensitive true \
		> \
	}

proc createDocType_pssd_psychiatrist { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.psychiatrist \
		:description "Document to capture psychiatrist details" \
		:label "psychiartrist" \
		:definition < \
			:element -name prefix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Prefix" \
            :element -name first  -type string -min-occurs 1 -max-occurs 1 -length 40 -label "First" \
            :element -name middle -type string -min-occurs 0 -max-occurs 1 -length 100 -label "Middle" < \
             	:description "If there are several 'middle' names then put them in this field" \
             > \
			:element -name last   -type string -min-occurs 1 -max-occurs 1 -length 40 -label "Last" \
			:element -name suffix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Suffix" \
			:element -name referral-notes -type string -min-occurs 0 -max-occurs 1 -case-sensitive true \
		> \
	}

proc createDocType_pssd_research_psychologist { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.research-psychologist \
		:description "Document to capture research psychologist details" \
		:label "research-psychologist" \
		:definition < \
			:element -name prefix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Prefix" \
            :element -name first  -type string -min-occurs 1 -max-occurs 1 -length 40 -label "First" \
            :element -name middle -type string -min-occurs 0 -max-occurs 1 -length 100 -label "Middle" < \
             	:description "If there are several 'middle' names then put them in this field" \
             > \
			:element -name last   -type string -min-occurs 1 -max-occurs 1 -length 40 -label "Last" \
			:element -name suffix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Suffix" \
			:element -name referral-notes -type string -min-occurs 0 -max-occurs 1 -case-sensitive true \
		> \
	}

proc createDocType_pssd_human_identity { ns } {

	asset.doc.type.update \
		:create true \
		:type ${ns}:pssd.human.identity \
		:label "Human Identification" \
		:description "Document type for human subject identity" \
		:definition < \
			:element -name prefix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Prefix" \
			:element -name first  -type string -min-occurs 1 -max-occurs 1 -length 40 -label "First" \
			:element -name middle -type string -min-occurs 0 -max-occurs 1 -length 100 -label "Middle" < \
				:description "If there are several 'middle' names then put them in this field" > \
			:element -name last   -type string -min-occurs 1 -max-occurs 1 -length 40 -label "Last" \
			:element -name suffix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Suffix" \
		> \
	}



proc createDocType_pssd_animal_disease { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.animal.disease  \
		:description "Document type for animal subject (Humans included) disease" \
		:label "Subject disease" \
		:definition < \
		:element -name disease -min-occurs 0 -max-occurs 1 -index true -type enumeration  -dictionary $ns.pssd.subject.pathology -case-sensitive false < \
			:description "Disease pathology of the subject" > \
		:element -name disease-state -type document -min-occurs 0 -max-occurs infinity < \
			:description "Describe the state of the disease in the subject with time" > < \
				:element -name state -type enumeration -min-occurs 0 -max-occurs 1 -index true -enumerated-values pre-symptomatic,symptomatic,asymptomatic < \
					:description "State of the disease at the specified time" > \
				:element -name time -type document -min-occurs 0 -max-occurs 1 < \
					:element -name date -type date -min-occurs 0 -max-occurs 1 -index true < \
						:description "Date when current disease state was set" > \
					:element -name time-point -type integer -min-occurs 0 -max-occurs 1 -index true < \
						:description "Time-point (0 is baseline) when current disease state was set" > \
				> \
			>\
		>\
	}
	
proc createDocType_pssd_animal_genetics { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.animal.genetics \
		:description "Document type for basic animal (Humans included) genetic information" \
		:label "Animal genetics" \
		:definition < \
			:element -name strain -type document -min-occurs 0 -max-occurs infinity < \
				:description "The genetic strain of the animal" \
				:element -name name -type enumeration  -dictionary nig.pssd.animal.strains -index true -min-occurs 0 -max-occurs 1 < \
					:description "The standard name of the genetic strain" > \
				:element -name fraction -type float -min 0.0 -max 1.0 -index true -min-occurs 0 -max-occurs 1 < \
					:description "The fraction that this strain contributes" > \
			> \
		>
	}

proc createDocType_pssd_general_practitioner { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.general-practitioner \
		:description "Document to capture general practitioner details" \
		:label "general-practitioner" \
		:definition < \
			:element -name "clinician-details" -type document -min-occurs 0 -max-occurs infinity < \
				:element -name prefix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Prefix" \
				:element -name first  -type string -min-occurs 1 -max-occurs 1 -length 40 -label "First" \
				:element -name middle -type string -min-occurs 0 -max-occurs 1 -length 100 -label "Middle" < \
					:description "If there are several 'middle' names then put them in this field" \
				 > \
				:element -name last   -type string -min-occurs 1 -max-occurs 1 -length 40 -label "Last" \
				:element -name suffix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Suffix" \
				:element -name referral-notes -type string -min-occurs 0 -max-occurs 1 -case-sensitive true \
				:element -name phone -type integer -min-occurs 0 -max-occurs 1 -label "Phone" \
				:element -name address -type string -min-occurs 0 -max-occurs 1 -case-sensitive true \
				:element -name time-seeing-general-practioner -type document -min-occurs 0 -max-occurs 1 < \
					:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
					:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
						:restriction -base "enumeration" < \
							:value "months" \
							:value "years" \
					> \
					> \
				> \
			> \
		> \
	}

proc createDocType_pssd_clinician { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.clinician \
		:description "Document to capture clinician details" \
		:label "clinician" \
		:definition < \
			:element -name prefix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Prefix" \
			:element -name first  -type string -min-occurs 1 -max-occurs 1 -length 40 -label "First" \
			:element -name middle -type string -min-occurs 0 -max-occurs 1 -length 100 -label "Middle" < \
				:description "If there are several 'middle' names then put them in this field" \
			> \
			:element -name last -type string -min-occurs 1 -max-occurs 1 -length 40 -label "Last" \
			:element -name suffix -type string -min-occurs 0 -max-occurs 1 -length 20 -label "Suffix" \
			:element -name referral-notes -type string -min-occurs 0 -max-occurs 1 -case-sensitive true \
			:element -name phone -type integer -min-occurs 0 -max-occurs 1 -label "Phone" \
			:element -name address -type string -min-occurs 0 -max-occurs 1 -case-sensitive true \
			:element -name specialty -type string -min-occurs 0 -max-occurs 1 -case-sensitive true\
		> \
	}

proc createDocType_pssd_weight { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.weight \
		:description "Document to capture clinician details" \
		:label "clinician" \
		:definition < \
			:element -name "weight" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index 1 \
				:element -name "unit" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "kilograms" \
					> \
				> \
			> \
		> \
	}

#============================================================================#
proc createPSSDCoreDocTypes { ns } {

	createDocType_pssd_project $ns
	createDocType_pssd_subject_identifiers $ns
	createDocType_pssd_subject $ns
	createDocType_pssd_animal_subject $ns
	createDocType_pssd_subject_date_of_birth $ns
	createDocType_pssd_subject_age_at_baseline $ns
	createDocType_pssd_subject_height $ns
	createDocType_pssd_referral_date $ns
	createDocType_pssd_referring_clinician $ns
	createDocType_pssd_patient_data_summary $ns
	createDocType_pssd_psychiatrist $ns
	createDocType_pssd_research_psychologist $ns
	createDocType_pssd_human_identity $ns
	createDocType_pssd_animal_disease $ns
	createDocType_pssd_animal_genetics $ns
	createDocType_pssd_identity $ns
	createDocType_pssd_subject_gender $ns
	createDocType_pssd_subject_handedness $ns
	createDocType_pssd_general_practitioner $ns
	createDocType_pssd_clinician $ns
	createDocType_pssd_weight $ns
}

#============================================================================#
proc destroyPSSDCoreDocTypes { ns } {
set doctypes [list \
				$ns:pssd.project \
				$ns:pssd.subject.identifiers \
				$ns:pssd.subject \
				$ns:pssd.animal.subject \
				$ns:pssd.subject.date-of-birth \
				$ns:pssd.subject.age-at-baseline \
				$ns:pssd.referring-clinician \
				$ns:pssd.referral-date \
				$ns:pssd.patient-data-summary \
				$ns:pssd.human.identity \
				$ns:pssd.animal.disease \
				$ns:pssd.animal.genetics \
				$ns:pssd.psychiatrist \
				$ns:pssd.research-psychologist \
				$ns:pssd.subject.gender \
				$ns:pssd.subject.handedness $ns:pssd.subject.height \
				$ns:pssd.general-practitioner \
				$ns:pssd.clinician \
				$ns:pssd.weight]
	foreach doctype $doctypes {
      	 destroyDocType $doctype "true"
	}
}
