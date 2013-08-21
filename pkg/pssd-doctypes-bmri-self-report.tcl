#============================================================================#
# This script creates document types for subject Self-Reports for
# the Youth mental Health Project 
#============================================================================#

proc createDocType_pssd_subject_languages{ ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject.languages \
		:description "the subjects language" \
		:label "Languages" \
		:definition < \
			:element -name "language" -min-occurs 0 -max-occurs infinity -type enumeration -index true -case-sensitive false < \
				:description "Subjects language" \
				:restriction -base "enumeration" < \
					:dictionary $ns.psd.subject.languages \
				> \
				:element -name "language-type" -min-occurs 0 -max-occurs infinity -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "first" \
						:value "second" \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -index true -case-sensitive false \
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

proc createDocType_pssd_subject_education{ ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.subject.education \
		:description "subject education information" \
		:label "Education" \
		:definition < \
			:element -name "high-school-grade-completed" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "Subjects language" \
				:restriction -base "enumeration" < \
						:value "primary" \
						:value "year-9-10" \
						:value "year-12" \
						:value "missing-on-form" \
				> \
			> \
			:element -name "tertiary-education-completed" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "Subjects language" \
				:restriction -base "enumeration" < \
						:value "TAFE" \
						:value "university-degree" \
						:value "university-diploma" \
						:value "masters" \
						:value "doctorate" \
						:value "not-applicable" \
						:vlaue "Missing" \
				> \
			> \
			:element -name "total-years-full-time-education" -type string -min-occurs 0 -index true -case-sensitive false \
			:element -name "specify-details-of-study" -type string -min-occurs 0 -index true -case-sensitive false \
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

proc createDocType_pssd_sr_vocation{ ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.sr-vocation \
		:description "subject education information" \
		:label "vocational-status" \
		:definition < \
			:element -name "student" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
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
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "employed" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "subjects employment status" \
				:restriction -base "enumeration" < \
					:value "part-time-employment" \
					:value "full-time-employment" \
			:element -name "volunteer" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
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
					:value "yes" \
					:value "no" \
					:value "not-applicable" \
					:value "missing" \
				> \
			> \
			:element -name "unemployment-benefits" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "subjects employment status" \
				:restriction -base "enumeration" < \
					:value "yes" \
					:value "no" \
					:value "not-applicable" \
					:value "missing" \
				> \
			> \
			:element -name "other-income" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "subjects employment status" \
				:restriction -base "enumeration" < \
					:value "yes" \
					:value "no" \
					:value "not-applicable" \
					:value "missing" \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "current-last-occupation" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "time-in-current-last-occupation" -type integer -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
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
			:element -name "heart-disease" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by heart disease" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "vascular-disease" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by vascular disease" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "high-blood-pressure" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by high blood pressure" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
				:element -name "medication" -type string -min-occurs 0 -max-occurs infinity -index true -case-sensitive true -label "medication" < \
					:element -name "length-of-treatment" -type integer -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
					:element -name "units" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
						:restriction -base "enumeration" < \
							:value "months" \
						> \
					> \
					:element -name "still-receiving-treatment" -min-occurs 0 -max-occurs 1 -type boolean -index true \
				> \
			> \
			:element -name "high-cholesterol" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by high cholesterol" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "stroke-or-cerebral-haemorrhage" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by stroke or cerebral haemorrhage" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "transient-ischaemic-attacks" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by transient ischaemic attacks" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "diabetes" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by diabetes" \
				:element -name "type" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "type-1-insulin-dependent" \
						:value "type-2-non-insulin-dependent" \
						:value "other" \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "thyroid-disease" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by diabetes" \
				:element -name "type" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "hyperthyroidism" \
						:value "hypothyroidism" \
					:element -name "medication" -type string -min-occurs 0 -max-occurs infinity -index true -case-sensitive true -label "medication" < \
						:element -name "length-of-treatment" -type integer -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
						:element -name "units" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
							:restriction -base "enumeration" < \
								:value "months" \
							> \
						> \
					> \
				> \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "severe-infection" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by severe infection" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "head-injury" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by a head injury" \
				:element -name "type" -min-occurs 0 -max-occurs infinity -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "skull-fracture" \
						:value "loss-of-consciousness" \
						:value "post-traumatic-amnesis" \
						:value "hospitalisation" \
					> \
					:element -name "duration" -min-ocurrs 0 -max-occurs 1 -type integer -index true < \
						:element -name "unit" -min-occurs 1 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
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
			:element -name "chronic-pain" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by chronic pain" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "cancer-or-tumour" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by cancer or tumor" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "other-serious-medical-illness" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by other serious medical illness" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "epilepsy-or-seizures" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by epilepsy or seizures" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "other-neurological-disorder" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by other neurological disorder" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "any-perinatal-complications" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "has the subject suffered or been affected by any perinatal complications" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "learning-disability" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "Did the subject have a learning disability" \
				:element -name "details" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			> \
			:element -name "smaked-tobacco" -min-occurs 0 -max-occurs 1 -type boolean -index true < \
				:description "Has the subject ever smoke;d tobacco" \
				:element -name "unit" -min-occurs 1 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "never" \
						:value "occasionally but stopped" \
						:value "occasionally continuing" \
						:value "regularly but stopped" \
						:value "regularly continuing" \
					> \
					:element -name "time-since-quitting" -type integer -min-occurs 0 -max-occurs 1 -index true \
					:element -name "number-of-years-smoking" -type integer -min-occurs 0 -max-occurs 1 -index true \
					:element -name "number-of-cigaretted-on-heaviest-day" -type integer -min-occurs 1 -max-occurs 1 -index true \
				> \
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
			:element -name "name-of-medication" -type string -min-occurs 0 -max-occurs 7 -case-sensitive false -label "name-of-medication" < \
				:element -name "dose" -type float -min-occurs 0 \
				:element -name "timing" -type string -min-occurs 0 -case-sensitive false \
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
			:element -name "relative-degree" -min-occurs 0 -max-occurs infinity -type enumeration -index true -case-sensitive false < \
				:description "relatives with medical histories" \
				:restriction -base "enumeration" < \
					:value "first" \
					:value "second" \
					:value "not-applicable" \
					:value "missing" \
				> \
				:element -name "relative-type" -type enumeration -min-occurs 0 -max-occurs infinity < \
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
				:element -name "details" -type string -min-occurs 0 \
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
# Self Report Scale Document Types											 #
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
			:element -name "total-score" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true \
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
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-9" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-10" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-11" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-12" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-13" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-14" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-15" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-16" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-17" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-18" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-19" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-20" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-21" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-22" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-23" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-24" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-25" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "question-26" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-who-qol \
				> \
			> \
			:element -name "who-qol-physical-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "who-qol-psychological-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "who-qol-social-relationships-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "who-qol-environment-raw" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "who-qol-physical-transformed" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "who-qol-psychological-transformed" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "who-qol-social-relationships-transformed" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "who-qol-environment-transformed" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
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
			:element -name "tobacco" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.standard-no-yes \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "alcohol" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.standard-no-yes \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "cannabis" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.standard-no-yes \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "cocaine" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.standard-no-yes \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "amphetamine" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.standard-no-yes \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "sedatives" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.standard-no-yes \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "hallucinogens" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.standard-no-yes \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "opioids" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.standard-no-yes \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "other" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.standard-no-yes \
				> \
				:element -name "age-of-first-use" -type integer -min-occurs 0 -max-occurs 1 \
				:element -name "specify" -type string -min-occurs -max-occurs 1 -index true -case-sensitive true \ 
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

	asset.doc.type.update :create true :type ${ns}:pssd.sr-substance-use-scale-4_last_3_months \
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
			:element -name "sedatives" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "hallucinogens" -type enumeration -min-occurs 0 -max-occurs 1 -index true  < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "opioids" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
			> \
			:element -name "other" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				:element -name "specify" -type string -min-occurs -max-occurs 1 -index true -case-sensitive true \ 
			> \
		> \
}

proc destroyDocType_pssd_sr_substance_use_scale_4_last_3_months { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.sr-substance-use-scale-4_last_3_months]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.sr-substance-use-scale-4_last_3_months :force $force
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
			:element -name "total-score" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
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
	createDocTYpe_pssd_sr_substance_use_scale_4_ever $ns
	createDocTYpe_pssd_sr_substance_use_scale_4_ever_last_3_months $ns
	createDocTYpe_pssd_sr_substance_use_baseline_audit $ns
	createDocTYpe_pssd_sr_substance_use_alcohol $ns

}

#============================================================================#
proc destroyPSSD-bmri-self-report { ns } {
set doctypes [list $ns:pssd.subject.languages $ns:pssd.subject.education \
				$ns:pssd.sr-vocation $ns:pssd.sr-personal-medical-history \
				$ns:pssd.sr-current-medication $ns:pssd.sr-family-medical-history \
				$ns:pssd.sr-kessler-10 $ns:pssd.sr-dass $ns:pssd.sr-who-qol \
				$ns:pssd.sr-substance-use-scale-4-ever \
				$ns:pssd.sr-substance-use-scale-4-last-3-months \
				$ns:pssd.sr-substance-use-baseline-audit \
				$ns:pssd.sr-substance-use-alcohol]
	foreach doctype $doctypes {
		 destroyDocType $doctype "true"
	}
}
