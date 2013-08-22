#============================================================================#
# This script creates document types for subject Self-Reports for
# the Youth mental Health Project 
#============================================================================#

proc createDocType_pssd_subject_languages { ns } {

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

proc createDocType_pssd_subject_education { ns } {

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
						:value "Missing" \
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

proc createDocType_pssd_sr_vocation { ns } {

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
				> \
			> \
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
				:element -name "medication" -type string -min-occurs 0 -max-occurs infinity -index true -case-sensitive true -label "medication" <\
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
					> \
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
					:element -name "duration" -min-occurs 0 -max-occurs 1 -type integer -index true < \
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
			:element -name "other" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-substance-use-scale-last-3-months \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
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
			:element -name "total-score" -type integer -length 3 -min-occurs 0 -max-occurs 1 -index true \
			:element -name "question-6" -min-occurs 0 -max-occurs 1 -type integer -index true < \
				:description "number of days in the last month where the subject was unable to carry out your usual daily activities" \ 
				:element -name "unit" -min-occurs 1 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:restriction -base "enumeration" < \
						:value "days" \
					> \
				> \
			> \
			:element -name "question-7" -min-occurs 0 -max-occurs 1 -type integer -index true < \
				:element -name "unit" -min-occurs 1 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "number of days in the last month where the subject stayed in bed all or most of the day because of illness or injury" \ 
					:restriction -base "enumeration" < \
						:value "days" \
					> \
				> \
			> \
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
					:value "very-good" \
					:value "good" \
					:value "moderate" \
					:value "bad" \
					:value "very-bad" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "d1.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d1.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d1.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d1.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d1.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d1.6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d2.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d2.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d2.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d2.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d2.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d3.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d3.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d3.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d3.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d4.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d4.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d4.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d4.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d4.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d5.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d5.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d5.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d5.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d5.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d5.6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d5.7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d5.8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d6.1" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d6.2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d6.3" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d6.4" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d6.5" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d6.6" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d6.7" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "d6.8" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.sr-scale-10 \
				> \
			> \
			:element -name "h2" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "not-at-all" \
					:value "mildly" \
					:value "moderate" \
					:value "severely" \
					:value "extremely" \
					:value "missing-not-available" \
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
			:element -name "time-up-on-an-average-weekday" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true < \
				:element -name "am-pm" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:value "am" \
						:value "pm" \
					> \
				> \
			> \
			:element -name "time-up-on-an-average-weekend" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true < \
				:element -name "am-pm" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:value "am" \
						:value "pm" \
					> \
				> \
			> \
			:element -name "average-waking-hours-spent-alone" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "0-3" \
					:value "3-6" \
					:value "6-9" \
					:value "9-12" \
					:value "12" \
					:value "missing-not-available" \
				> \
				:element -name "unit" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
					:restriction -base "enumeration" < \
						:value "hours" \
					> \
				> \
			> \
			:element -name "subject-starts-conversations-at-home" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "almost-never" \
					:value "rarely" \
					:value "sometimes" \
					:value "often" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "subject-leaves-the-house" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "almost-never" \
					:value "rarely" \
					:value "sometimes" \
					:value "often" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "subject-reaction-in-presence-of-strangers" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "avoid-them" \
					:value "feel-nervous" \
					:value "accept-them" \
					:value "like-them" \
					:value "missing-not-available" \
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
			:element -name "has-partner" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "yes" \
					:value "no" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "regularity-of-sensible-rational-conversations" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "almost-never" \
					:value "rarely" \
					:value "sometimes" \
					:value "often" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "difficulty-talking-to-people" -type enumeration -min-occurs 1 -max-occurs 1 -index true < \
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
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "handling-money" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "budgeting" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "cooking" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "weekly-shopping" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "looking-for-a-job-in-employment" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "washing-own-clothes" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "personal-hygiene" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "washing-tidying" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "purchasing-from-shops" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "leaving-the-house-alone" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "choosing-and-buying-clothes" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
				> \
			> \
			:element -name "caring-for-personal-appearance" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.adequately-needs-help-unable-do-not-know \
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

	asset.doc.type.update :create true :type ${ns}:pssd.sr-scale-11-part-f \
		:description "scale 11 - part g" \
		:label "scale-11-part-g" \
		:definition < \
			:element -name "is-the-subject-in-regular-employment" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "yes" \
					:value "no" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "if-yes-what-sort-of-job" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "if-yes-how-many-hours-worked" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "if-yes-how-long-has-the-subject-had-this-job" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "if-no-when-was-subject-last-employed" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "if-no-what-sort-of-job-was-it" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "if-no-how-many-hours-per-week" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive true \
			:element -name "disabled" -type enumeration -min-occurs 0 and -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "yes" \
					:value "no" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "attends-hospital-as-a-day-patient" -type enumeration -min-occurs 0 and -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "yes" \
					:value "no" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "subject-is-capable-of-some-sort-of-employment" -type enumeration -min-occurs 0 and -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:value "definitely-yes" \
					:value "would-be-difficult" \
					:value "no" \
					:value "missing-not-available" \
				> \
			> \
			:element -name "regularity-of-subject-attempts-to-find-employment" -type enumeration -min-occurs 0 and -max-occurs 1 -index true < \
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
				$ns:pssd.sr-substance-use-alcohol $ns:pssd.sr-apsd $ns:pssd.sr-sias\
				$ns:pssd.sr-scale-10 $ns:pssd.sr-scale-11-part-a \
				$ns:pssd.sr-scale-11-part-b $ns:pssd.sr-scale-11-part-c \
				$ns:pssd.sr-scale-11-part-d $ns:pssd.sr-scale-11-part-e \
				$ns:pssd.sr-scale-11-part-f $ns:pssd.sr-scale-11-part-g]
	foreach doctype $doctypes {
		 destroyDocType $doctype "true"
	}
}
