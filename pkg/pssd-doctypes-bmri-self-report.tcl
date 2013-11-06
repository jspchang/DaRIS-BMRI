#============================================================================#
# This script creates document -min-occurs 0 types for subject Self-Reports for
# the Youth mental Health Project 
#============================================================================#

proc createDocType_pssd_subject_languages { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject.languages \
		:description "the subjects language" \
		:label "Languages" \
		:definition < \
			:element -name languages -type document -min-occurs 0 -max-occurs infinity < \
				:element -name "language-type" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.language-type \
					> \
				> \
				:element -name "language" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false -label "language" < \
					:description "subjects languages" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.languages \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
			> \
		> \
}

proc destroyDocType_pssd_subject_languages { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.subject.languages]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.subject.languages :force $force
    }
}

#============================================================================#

proc createDocType_pssd_subject_education { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject.education \
		:description "subject education information" \
		:label "Education" \
		:definition < \
			:element -name "highest-school-grade-completed" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "Subjects highest school grade completed" \
				:restriction -base "enumeration" < \
						:value "primary" \
						:value "year-9-10" \
						:value "year-12" \
						:value "missing-on-form" \
				> \
			> \
			:element -name "tertiary-education-completed" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "Subjects highest tertiary qualification comlpeted" \
				:restriction -base "enumeration" < \
						:value "TAFE" \
						:value "university-degree" \
						:value "university-diploma" \
						:value "masters" \
						:value "doctorate" \
						:value "not-applicable" \
						:value "Missing" \
				> \
			> \
			:element -name "total-years-full-time-education" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
			:element -name "specify-details-of-study" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
		> \
}

proc destroyDocType_pssd_subject_education { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.subject.education]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.subject.education :force $force
    }
}

#============================================================================#

proc createDocType_pssd_sr_vocation { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.sr-vocation \
		:description "subject education information" \
		:label "vocational-status" \
		:definition < \
			:element -name "student" -max-occurs 1 -type document -min-occurs 0 < \
				:element -name "student-type" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "subjects study status" \
					:restriction -base "enumeration" < \
						:value "part-time-secondary" \
						:value "full-time-secondary" \
						:value "part-time-tertiary" \
						:value "full-time-tertiary" \
						:value "discontinued-school-or-study-due-to-symptoms" \
						:value "full-time-primary" \
						:value "not-applicable" \
						:value "missing" \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "employed" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "subjects employment status" \
				:restriction -base "enumeration" < \
					:value "part-time-employment" \
					:value "full-time-employment" \
				> \
			> \
			:element -name "occupation" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "subjects employment status" \
				:restriction -base "enumeration" < \
					:value "volunteer-work" \
					:value "not-currently-working" \
					:value "leave-of-absence" \
					:value "unemployed" \
`					:value "house-duties" \
					:value "retired" \
					:value "missing" \
				> \
			> \
			:element -name "disability-support-pension" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "subjects employment status" \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.standard-no-yes" \
				> \
			> \
			:element -name "unemployment-benefits" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "subjects employment status" \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.standard-no-yes" \
				> \
			> \
			:element -name "other-income" -max-occurs infinity -type document -min-occurs 0 < \
				:element -name "has-other-income" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "subjects employment status" \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.standard-no-yes" \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "current-last-occupation" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "time-in-current-last-occupation" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:value "hours" \
						:value "weeks" \
						:value "months" \
						:value "years" \
					> \
				> \
			> \
			:element -name "vocational-goals" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "marital-status" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "subjects employment status" \
				:restriction -base "enumeration" < \
					:value "never-married" \
					:value "married-de-facto" \
					:value "separated" \
					:value "widowed" \
					:value "divorced" \
					:value "missing" \
				> \
			> \
			:element -name "living-status" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "subjects employment status" \
				:restriction -base "enumeration" < \
					:value "home-alone-independent" \
					:value "independent-shared-accommodation" \
					:value "partially-supported" \
					:value "dependent" \
					:value "other" \
					:value "missing" \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_vocation { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-vocation]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-vocation :force $force
    }
}

#============================================================================#

proc createDocType_pssd_sr_personal_medical_history { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.sr-personal-medical-history \
		:description "subject medical status" \
		:label "personal-medical-history" \
		:definition < \
			:element -name "heart-disease" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by heart disease" \
				:element -name "has-heart-disease" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "vascular-disease" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by vascular disease" \
				:element -name "has-vascular-disease" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "high-blood-pressure" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by high blood pressure" \
				:element -name "has-high-blood-pressure" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "medication" -type document -min-occurs 0 -max-occurs infinity < \
					:element -name "medication" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
					:element -name "length-of-treatment" -type integer -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
					:element -name "units" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
						:restriction -base "enumeration" < \
							:value "months" \
							:value "years" \
						> \
					> \
					:element -name "still-receiving-treatment" -min-occurs 0 -max-occurs 1 -type boolean -index true \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "high-cholesterol" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by high cholesterol" \
				:element -name "has-high-cholesterol" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "stroke-or-cerebral-haemorrhage" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by stroke or cerebral haemorrhage" \
				:element -name "has-stroke-or-cerebral-haemorrhage" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "transient-ischaemic-attacks" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by transient ischaemic attacks" \
				:element -name "transient-ischaemic-attacks" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "diabetes" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "diabetes" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:description "has the subject suffered or been affected by diabetes" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "type" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "type-1-insulin-dependent" \
						:value "type-2-non-insulin-dependent" \
						:value "other" \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "thyroid-disease" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by thyroid disease" \
				:element -name "has-thyroid-disease" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "type" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "hyperthyroidism" \
						:value "hypothyroidism" \
					> \
				> \
				:element -name "medication" -type document -min-occurs 0 -max-occurs infinity < \
					:element -name "medication-name" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
					:element -name "length-of-treatment" -type integer -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
					:element -name "units" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
						:restriction -base "enumeration" < \
							:value "months" \
							:value "years" \
						> \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "severe-infection" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-had-a-severe-infection" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "head-injury" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-had-a-head-injury" -type enumeration 0 -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -min-occurs 0 -max-occurs infinity -type document < \
					:element -name "type" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
						:restriction -base "enumeration" < \
							:value "skull-fracture" \
							:value "loss-of-consciousness" \
							:value "post-traumatic-amnesis" \
							:value "hospitalisation" \
						> \
					> \
					:element -name "duration" -max-occurs 1 -type document -min-occurs 0 < \
						:element -name "value" -min-occurs 0 -max-occurs 1 -type integer -index true \
						:element -name "unit" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
							:restriction -base "enumeration" < \
								:value "minutes" \
								:value "hours" \
								:value "days" \
								:value "months" \
							> \
						> \
					> \
					:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
				> \
			> \
			:element -name "chronic-pain" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by chronic pain" \
				:element -name "has-suffered-chronic-pain" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "cancer-or-tumour" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by cancer or tumor" \
				:element -name "has-had-a-cancer-or-tumour" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "other-serious-medical-illness" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by other serious medical illness" \
				:element -name "has-suffered-other-serious-medical-illness" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "epilepsy-or-seizures" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-suffered-epilepsy-or-seizures" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:description "has the subject suffered or been affected by epilepsy or seizures" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "other-neurological-disorder" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-suffered-other-neurological-disorder" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:description "has the subject suffered or been affected by other neurological disorder" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "any-perinatal-complications" -type document -min-occurs 0 -max-occurs 1 < \
				:description "has the subject suffered or been affected by any perinatal complications" \
				:element -name "has-suffered-any-perinatal-complications" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "learning-disability" -type document -min-occurs 0 -max-occurs 1 < \
				:description "Did the subject have a learning disability" \
				:element -name "has-a-learning-disability" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "smoked-tobacco" -type document -min-occurs 0 -max-occurs 1 < \
				:description "Has the subject ever smoked tobacco" \
				:element -name "has-smoked-tobacco" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "usage" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "never" \
						:value "occasionally but stopped" \
						:value "occasionally continuing" \
						:value "regularly but stopped" \
						:value "regularly continuing" \
					> \
				> \
				:element -name "time-since-quitting" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "number-of-years-smoking" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "number-of-cigarettes-on-heaviest-day" -type integer -min-occurs 0 -max-occurs 1 -index true \
			> \
		> \
}

proc destroyDocType_pssd_sr_personal_medical_history { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-personal-medical-history]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-personal-medical-history :force $force
    }
}

#============================================================================#

proc createDocType_pssd_sr_current_medication { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.sr-current-medication \
		:description "medication currently being taken by subject" \
		:label "current-medication" \
		:definition < \
			:element -name "medication" -type document -min-occurs 0 -max-occurs 7 < \
				:element -name "name-of-medication" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "length-of-treatment" -type integer -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
				:element -name "dose" -type float -min-occurs 0 -max-occurs 1 \
				:element -name "units" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.does-units" \
					> \
				> \
				:element -name "timing" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "medication-start-date" -type date -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "medication-notes" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
		> \
}

proc destroyDocType_pssd_sr_current_medication { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-current-medication]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-current-medication :force $force
    }
}

#============================================================================#

proc createDocType_pssd_sr_family_medical_history { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-family-medical-history \
		:description "Family medical history information from the self report form" \
		:label "family-medical-history" \
		:definition < \
			:element -name "relatives" -max-occurs infinity -type document -min-occurs 0 < \
				:element -name "relative-degree" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "relatives with medical histories" \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.relative-degree" \
					> \
				> \
				:element -name "relative-type" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.relative-type" \
					> \
				> \
				:element -name "condition" -type enumeration -min-occurs 0 -max-occurs infinity -index true < \
					:restriction -base "enumeration" < \
						:value "stroke-or-haemorrhage" \
						:value "hypertension" \
						:value "heart-disease" \
						:value "diabetes" \
						:value "dementia-or-neurodegenerative-disorder" \
						:value "psychological-psychiatric-problems" \
						:value "other-serious-disorder" \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 \
			> \
		> \
}

proc destroyDocType_pssd_sr_family_medical_history { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-family-medical-history]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-family-medical-history :force $force
    }
}

#============================================================================#
# Self Report Scale document -min-occurs 0 Types											 #
#============================================================================#

# Scale 1 - Kessler 10
#============================================================================#
proc createDocType_pssd_sr_kessler_10 { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-kessler-10 \
		:description "scale 1 - kessler 10" \
		:label "scale-1-kessler-10" \
		:definition < \
			:element -name "question-1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "question-2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "question-6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "question-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "question-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "question-10" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-kessler-10 \
				> \
			> \
			:element -name "total-score" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_kessler_10 { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-kessler-10]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-kessler-10 :force $force
    }
}

# Scale 2 - Depression Anxiety Stress Scale
#============================================================================#
proc createDocType_pssd_sr_dass { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-dass \
		:description "scale 2 - depression anxiety stress scale" \
		:label "scale-2-depression-anxiety-stress-scale" \
		:definition < \
			:element -name "question-1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-10" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-11" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-12" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-13" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-14" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-15" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-16" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-17" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-18" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-19" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-20" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "question-21" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-dass \
				> \
			> \
			:element -name "total-score" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "depression-score-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "anxiety-score-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "stress-score-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_dass { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-dass]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-dass :force $force
    }
}

# Scale 3 - World Health Organisation Quality of Life 
#============================================================================#
proc createDocType_pssd_sr_who_qol { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-who-qol \
		:description "scale 3 - world health organisation quality of life scale" \
		:label "scale-3-world-health-organisation-quality-of-life" \
		:definition < \
			:element -name "question-1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-10" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-11" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-12" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-13" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-14" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-15" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-16" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-2 \
				> \
			> \
			:element -name "question-17" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-18" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-19" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-20" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-21" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-22" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-23" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-24" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-25" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-1 \
				> \
			> \
			:element -name "question-26" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol-3 \
				> \
			> \
			:element -name "physical-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "psychological-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "social-relationships-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "environment-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "physical-transformed" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "psychological-transformed" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "social-relationships-transformed" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "environment-transformed" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_who_qol { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-who-qol]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-who-qol :force $force
    }
}

# Scale 4 - Substance Use Questionnaire
#============================================================================#
proc createDocType_pssd_sr_substance_use_scale_4_ever { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-substance-use-scale-4-ever \
		:description "scale 4 - question 1, substances ever used by the subject" \
		:label "scale-4-substance-use-ever" \
		:definition < \
			:element -name "tobacco" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-used" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "alcohol" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-used" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "cannabis" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-used" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "cocaine" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-used" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "amphetamine" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-used" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "inhalants" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-used" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "sedatives" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-used" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "hallucinogens" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-used" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "opioids" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "has-used" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "other-drugs" -type document -min-occurs 0 -max-occurs infinity < \
				:element -name "uses-other-drugs" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.standard-no-yes \
					> \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "alcohol-use-in-last-week" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "cannabis-use-in-last-week" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "amphetamine-use-in-last-week" -type integer -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_substance_use_scale_4_ever { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-substance-use-scale-4-ever]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-substance-use-scale-4-ever :force $force
    }
}

proc createDocType_pssd_sr_substance_use_scale_4_last_3_months { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-substance-use-scale-4-last-3-months \
		:description "scale 4 - question 2, substances used by subject in last 3 months" \
		:label "scale-4-substance-use-last-3-months" \
		:definition < \
			:element -name "tobacco" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "alcohol" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "cannabis" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "cocaine" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "amphetamine" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "inhalants" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "sedatives" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "hallucinogens" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "opioids" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "other-drugs" -type document -min-occurs 0 -max-occurs infinity < \
				:element -name "uses-other-drugs" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
		> \
}

proc destroyDocType_pssd_sr_substance_use_scale_4_last_3_months { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-substance-use-scale-4-last-3-months]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-substance-use-scale-4-last-3-months :force $force
    }
}

# Scale 5 - Substance Use Baseline Audit
#============================================================================#
proc createDocType_pssd_sr_substance_use_baseline_audit { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-substance-use-baseline-audit \
		:description "scale 5 - substance use baseline, audit" \
		:label "scale-5-substance-use-baseline-audit" \
		:definition < \
			:element -name "question-1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-a \
				> \
			> \
			:element -name "question-2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-a \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-b \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-10" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-d \
				> \
			> \
			:element -name "question-11" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-d \
				> \
			> \
			:element -name "total-auto-score" -type string -length 3 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_substance_use_baseline_audit { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-substance-use-baseline-audit]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-substance-use-baseline-audit :force $force
    }
}

# Scale 6 - Substance Use Alcohol
#============================================================================#
proc createDocType_pssd_sr_substance_use_alcohol { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-substance-use-alcohol \
		:description "scale 6 - substance use alcohol" \
		:label "scale-6-substance-use-alcohol" \
		:definition < \
			:element -name "question-1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-a \
				> \
			> \
			:element -name "question-2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-b \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-c \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-d \
				> \
			> \
			:element -name "question-10" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-5-d \
				> \
			> \
			:element -name "total-score" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_substance_use_alcohol { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-substance-use-alcohol]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-substance-use-alcohol :force $force
    }
}

# Scale 7 - Work and Social Life Scale
#============================================================================#
proc createDocType_pssd_sr_wsls { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-wsls \
		:description "scale 7 - work and social life scale" \
		:label "scale-7-work-social-life-scale" \
		:definition < \
			:element -name "question-1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-wsls \
				> \
			> \
			:element -name "question-2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-wsls \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-wsls \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-wsls \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-wsls \
				> \
			> \
			:element -name "question-6" -max-occurs 1 -type document -min-occurs 0 < \
				:description "number of days in the last month where the subject was unable to carry out your usual daily activities" \
				:element -name "value" -min-occurs 0 -max-occurs 1 -type integer -index true \
				:element -name "unit" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "days" \
					> \
				> \
			> \
			:element -name "question-7" -max-occurs 1 -type document -min-occurs 0 < \
				:description "number of days in the last month where the subject stayed in bed all or most of the day because of illness or injury" \
				:element -name "value" -min-occurs 0 -max-occurs 1 -type integer -index true \
				:element -name "unit" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "days" \
					> \
				> \
			> \
			:element -name "total-score" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_wsls { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-wsls]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-wsls :force $force
    }
}

# Scale 8 - Antisocial Process Screening Device
#============================================================================#
proc createDocType_pssd_sr_apsd { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-apsd \
		:description "scale 8 - antisocial process screening device" \
		:label "scale-8-antisocial-process-screening-device" \
		:definition < \
			:element -name "question-1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-10" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-11" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-12" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-13" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-14" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-15" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-16" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-17" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-18" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-19" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "question-20" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-apsd \
				> \
			> \
			:element -name "total-score" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_apsd { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-apsd]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-apsd :force $force
    }
}

# Scale 9 - Social Interaction Anxiety Scale
#============================================================================#
proc createDocType_pssd_sr_sias { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-sias \
		:description "scale 9 - social interaction anxiety scale" \
		:label "scale-9-social-interaction-anxiety-scale" \
		:definition < \
			:element -name "question-1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-10" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-11" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-12" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-13" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-14" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-15" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-16" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-17" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-18" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-19" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "question-20" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-sias \
				> \
			> \
			:element -name "total-score" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_sias { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-sias]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-sias :force $force
    }
}

# Scale 10 - Difficulties dues to health conditions questionnaire
#============================================================================#
proc createDocType_pssd_sr_scale_10 { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-10 \
		:description "scale 10 - Difficulties dues to health conditions questionnaire" \
		:label "scale-10-difficulties-due-to-health-conditions-questionnaire" \
		:definition < \
			:element -name "h1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-a \
				> \
			> \
			:element -name "d1.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d1.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d1.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d1.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d1.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d1.6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d2.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d2.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d2.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d2.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d2.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d3.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d3.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d3.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d3.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d4.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d4.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d4.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d4.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d4.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d5.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d5.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d5.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d5.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d5.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d5.6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d5.7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d5.8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d6.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d6.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d6.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d6.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d6.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d6.6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d6.7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-b \
				> \
			> \
			:element -name "d6.8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "h2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10-c \
				> \
			> \
			:element -name "h3" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "h4" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "h5" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_sr_scale_10 { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-10]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-10 :force $force
    }
}

# Scale 11
#============================================================================#
proc createDocType_pssd_sr_scale_11_part_a { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-11-part-a \
		:description "scale 11 - part a" \
		:label "scale-11-part-a" \
		:definition < \
			:element -name "time-up-on-an-average-weekday" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "time" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true \
				:element -name "am-pm" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.am-pm \
					> \
				> \
			> \
			:element -name "time-up-on-an-average-weekend" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "time" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true \
				:element -name "am-pm" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.am-pm \
					> \
				> \
			> \
			:element -name "average-waking-hours-spent-alone" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-a \
				> \
			> \
			:element -name "subject-starts-conversations-at-home" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-b \
				> \
			> \
			:element -name "subject-leaves-the-house" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-b \
				> \
			> \
			:element -name "subject-reaction-in-presence-of-strangers" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-c \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_scale_11_part_a { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-11-part-a]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-11-part-a :force $force
    }
}

proc createDocType_pssd_sr_scale_11_part_b { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-11-part-b \
		:description "scale 11 - part b" \
		:label "scale-11-part-b" \
		:definition < \
			:element -name "number-of-friends" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "has-partner" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.standard-no-yes" \
				> \
			> \
			:element -name "regularity-of-sensible-rational-conversations" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "almost-never" \
					:value "rarely" \
					:value "sometimes" \
					:value "often" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "difficulty-talking-to-people" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "very-easy" \
					:value "quite-easy" \
					:value "average" \
					:value "quite-difficult" \
					:value "very-difficult" \
					:value "missing-not-available" \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_scale_11_part_b { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-11-part-b]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-11-part-b :force $force
    }
}

proc createDocType_pssd_sr_scale_11_part_c { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-11-part-c \
		:description "scale 11 - part c" \
		:label "scale-11-part-c" \
		:definition < \
			:element -name "buying-items-from-the-shops" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "washing-pots-tidying-up" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "regular-washing-bathing" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "washing-oen-clothes" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "looking-for-a-job-or-working" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "doing-food-shopping" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "prepare-and-cook-a-meal" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "leaving-the-house-alone" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "using-buses-trains-etc" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "using-money" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "budgeting" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "choosing-and-buying-clothes-for-self" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "take-care-of-personal-appearance" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_scale_11_part_c { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-11-part-c]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-11-part-c :force $force
    }
}

proc createDocType_pssd_sr_scale_11_part_d { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-11-part-d \
		:description "scale 11 - part d" \
		:label "scale-11-part-d" \
		:definition < \
			:element -name "playing-musical-instruments" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "sewing-knitting" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "gardening" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "reading-things" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "watching-television" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "listening-to-record-or-radio" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "cooking" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "d-i-y-activities" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "fixing-things" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "walking-rambling" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "driving-riding-as-recreation" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "swimming" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "hobby" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "shopping" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "artistic-activity" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_scale_11_part_d { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-11-part-d]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-11-part-d :force $force
    }
}

proc createDocType_pssd_sr_scale_11_part_e { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-11-part-e \
		:description "scale 11 - part e" \
		:label "scale-11-part-e" \
		:definition < \
			:element -name "cinema" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "theatre-concert" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "watching-indoor-sports" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "watching-outdoor-sports" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "art-gallery-museum" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "exhibition" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "visiting-places-of-interest" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "meetings-talks" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "evening-class" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "visiting-relatives-in-their-homes" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "being-visited-by-relatives" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "visiting-friends" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "parties" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "formal-occasions" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "disco-etc" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "nightclub-social-club" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "playing-indoor-sports" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "playing-outdoor-sports" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "club-society" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "pub" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "eating-out" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
			:element -name "church-activity" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.never-rarely-sometimes-often \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_scale_11_part_e { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-11-part-e]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-11-part-e :force $force
    }
}

proc createDocType_pssd_sr_scale_11_part_f { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-11-part-f \
		:description "scale 11 - part f" \
		:label "scale-11-part-f" \
		:definition < \
			:element -name "public-transport" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "handling-money" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "budgeting" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "cooking" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "weekly-shopping" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "looking-for-a-job-in-employment" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "washing-own-clothes" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "personal-hygiene" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "washing-tidying" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "purchasing-from-shops" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "leaving-the-house-alone" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "choosing-and-buying-clothes" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
			:element -name "caring-for-personal-appearance" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-11-f \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_scale_11_part_f { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-11-part-f]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-11-part-f :force $force
    }
}

proc createDocType_pssd_sr_scale_11_part_g { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-11-part-g \
		:description "scale 11 - part g" \
		:label "scale-11-part-g" \
		:definition < \
			:element -name "is-the-subject-in-regular-employment" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.standard-no-yes" \
				> \
			> \
			:element -name "if-yes-what-sort-of-job" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "if-yes-how-many-hours-worked" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "if-yes-how-long-has-the-subject-had-this-job" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "if-no-when-was-subject-last-employed" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "if-no-what-sort-of-job-was-it" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "if-no-how-many-hours-per-week" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "disabled" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.standard-no-yes" \
				> \
			> \
			:element -name "attends-hospital-as-a-day-patient" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.standard-no-yes" \
				> \
			> \
			:element -name "subject-is-capable-of-some-sort-of-employment" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "definitely-yes" \
					:value "would-be-difficult" \
					:value "no" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "regularity-of-subject-attempts-to-find-employment" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "almost-never" \
					:value "rarely" \
					:value "sometimes" \
					:value "often" \
					:value "missing-not-available" \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_scale_11_part_g { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-11-part-g]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-11-part-g :force $force
    }
}

#Scale 12
#============================================================================#
proc createDocType_pssd_sr_scale_12 { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-12 \
		:description "scale 12" \
		:label "scale-12" \
		:definition < \
			:element -name "question-1" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:value "am" \
						:value "pm" \
					> \
				> \
			> \
			:element -name "question-2" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:value "am" \
						:value "pm" \
					> \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "not-at-all-dependent" \
					:value "slightly-dependent" \
					:value "fairly-dependent" \
					:value "very-dependent" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "not-at-all-easy" \
					:value "slightly-easy" \
					:value "fairly-easy" \
					:value "very-easy" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "not-at-all-alert" \
					:value "slightly-alert" \
					:value "fairly-alert" \
					:value "very-alert" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "not-at-all-good" \
					:value "slightly-good" \
					:value "fairly-good" \
					:value "very-good" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "very-refreshed" \
					:value "slightly-tired" \
					:value "fairly-refreshed" \
					:value "very-very" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "seldom-or-never-later" \
					:value "less-than-one-hour" \
					:value "1-2-hours-later" \
					:value "more-than-2-hours-later" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "would-be-on-good-form" \
					:value "would-be-on-reasonable-form" \
					:value "would-find-it-difficult" \
					:value "would-find-it-very-difficult" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-10" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.am-pm" \
					> \
				> \
			> \
			:element -name "question-11" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "8am-10am" \
					:value "11am-1pm" \
					:value "3pm-5pm" \
					:value "7pm-9pm" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-12" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "not-tired-at-all" \
					:value "a-little-tired" \
					:value "fairly-tired" \
					:value "very-tired" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-13" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "wake-up-at-usual -time-and-not-go-back-to-sleep" \
					:value "wake-up-at-usual-time-and-will-doze" \
					:value "wake-up-at-usual-time-but-will-fall-asleep" \
					:value "will-wake-up-later-than-usual" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-14" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "not-go-to-bed-until-6am" \
					:value "nap-before-4am-sleep-after-6am" \
					:value "good-sleep-before-4am-nap-after-6am" \
					:value "sleep-before-4am-remain-awake-after-6am" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-15" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "8am-10am" \
					:value "11am-1pm" \
					:value "3pm-5pm" \
					:value "7pm-9pm" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-16" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "would-be-on-good-form" \
					:value "would-be-on-reasonable-form" \
					:value "would-find-it-difficult" \
					:value "would-find-it-very-difficult" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "question-17" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.am-pm" \
					> \
				> \
			> \
			:element -name "question-18" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.am-pm" \
					> \
				> \
			> \
			:element -name "question-19" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "morning" \
					:value "more-morning-than-evening" \
					:value "more-evening-than-morning" \
					:value "evening-type" \
					:value "missing-not-available" \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_scale_12 { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-12]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-12 :force $force
    }
}

# Scale 13 
#============================================================================#
proc createDocType_pssd_sr_scale_13 { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-13 \
		:description "scale 13" \
		:label "scale-13" \
		:definition < \
			:element -name "question-1" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.am-pm" \
					> \
				> \
			> \
			:element -name "question-2" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:value "minutes" \
					> \
				> \
			> \
			:element -name "question-3" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.am-pm" \
					> \
				> \
			> \
			:element -name "question-4" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:value "hours" \
					> \
				> \
			> \
			:element -name "questions-5-a" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-5-b" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-5-c" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-5-d" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-5-e" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-5-f" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-5-g" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-5-h" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-5-j" -type document -min-occurs 0 -max-occurs infinity < \
				:element -name "answer" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.sr-scale-13-5 \
					> \
				> \
				:element -name "reason" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "question-6" -type enumeration and -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-6 \
				> \
			> \
			:element -name "questions-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-9 \
				> \
			> \
			:element -name "question-10" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-10 \
				> \
			> \
			:element -name "questions-11-a" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-11-b" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-11-c" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-11-d" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
			:element -name "questions-11-e" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-13-5 \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_scale_13 { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-scale-13]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-scale-13 :force $force
    }
}

# Scale 13 
#============================================================================#
proc createDocType_pssd_sr_time_to_complete { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.sr-time-to-complete \
		:description "time to complete form" \
		:label "time-to-complete" \
		:definition < \
			:element -name "time-to-complete" -type document -min-occurs 0 -max-occurs 1 < \
				:element -name "value" -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:value "hours" \
					> \
				> \
			> \
		> \
}

proc destroyDocType_pssd_sr_time_to_complete { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-time-to-complete]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-time-to-complete :force $force
    }
}
#============================================================================#
proc createPSSD-bmri-self-report { ns } {

	createDocType_pssd_subject_languages $ns
	createDocType_pssd_subject_education $ns
	createDocType_pssd_sr_vocation $ns
	createDocType_pssd_sr_personal_medical_history $ns
	createDocType_pssd_sr_current_medication $ns
	createDocType_pssd_sr_family_medical_history $ns
	createDocType_pssd_sr_kessler_10 $ns
	createDocType_pssd_sr_dass $ns
	createDocType_pssd_sr_who_qol $ns
	createDocType_pssd_sr_substance_use_scale_4_ever $ns
	createDocType_pssd_sr_substance_use_scale_4_last_3_months $ns
	createDocType_pssd_sr_substance_use_baseline_audit $ns
	createDocType_pssd_sr_substance_use_alcohol $ns
	createDocType_pssd_sr_apsd $ns
	createDocType_pssd_sr_sias $ns
	createDocType_pssd_sr_scale_10 $ns
	createDocType_pssd_sr_scale_11_part_a $ns
	createDocType_pssd_sr_scale_11_part_b $ns
	createDocType_pssd_sr_scale_11_part_c $ns
	createDocType_pssd_sr_scale_11_part_d $ns
	createDocType_pssd_sr_scale_11_part_e $ns
	createDocType_pssd_sr_scale_11_part_f $ns
	createDocType_pssd_sr_scale_11_part_g $ns
	createDocType_pssd_sr_scale_12 $ns
	createDocType_pssd_sr_scale_13 $ns
	createDocType_pssd_sr_time_to_complete $ns
	createDocType_pssd_sr_wsls $ns
}

#============================================================================#
proc destroyPSSD-bmri-self-report { ns } {
set doctypes [list $ns:pssd.subject.languages \
				$ns:pssd.subject.education \
				$ns:pssd.sr-vocation \
				$ns:pssd.sr-personal-medical-history \
				$ns:pssd.sr-current-medication \
				$ns:pssd.sr-family-medical-history \
				$ns:pssd.sr-kessler-10 \
				$ns:pssd.sr-dass \
				$ns:pssd.sr-who-qol \
				$ns:pssd.sr-substance-use-scale-4-ever \
				$ns:pssd.sr-substance-use-scale-4-last-3-months \
				$ns:pssd.sr-substance-use-baseline-audit \
				$ns:pssd.sr-substance-use-alcohol \
				$ns:pssd.sr-apsd $ns:pssd.sr-sias\
				$ns:pssd.sr-scale-10 \
				$ns:pssd.sr-scale-11-part-a \
				$ns:pssd.sr-scale-11-part-b \
				$ns:pssd.sr-scale-11-part-c \
				$ns:pssd.sr-scale-11-part-d \
				$ns:pssd.sr-scale-11-part-e \
				$ns:pssd.sr-scale-11-part-f \
				$ns:pssd.sr-scale-11-part-g\
				$ns:pssd.sr-scale-12 \
				$ns:pssd.sr-scale-13 \
				$ns:pssd.sr-time-to-complete \
				$ns:pssd.sr-wsls] \
	foreach doctype $doctypes {
		 destroyDocType $doctype "true"
	}
}
