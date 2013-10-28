# ============================================================================
# This script creates generic Document Types for use by various BMRI Methods.
# Document Types created in this script should be re-usable by multiple
# Methods.
# ============================================================================

# ============================================================================
# General Doc Types
# ============================================================================
proc createDocType_pssd_date { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.date \
		:description "Date data was collected" \
		:label "date" \
		:definition < \
			:element -name "date" -min-occurs 1 -max-occurs 1 -type date -index true -case-sensitive false < \
				:description "Identifies the date data was collected" \
			> \
		> \
}

proc destroyDocType_pssd_date { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.date]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.date :force $force
    }
}

proc createDocType_pssd_date_received { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.date-received \
		:description "Date data was received" \
		:label "date" \
		:definition < \
			:element -name "date" -min-occurs 1 -max-occurs 1 -type date -index true -case-sensitive false < \
				:description "Identifies the date data was collected" \
			> \
		> \
}

proc destroyDocType_pssd_date_received { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.date-received]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.date-received :force $force
    }
}

# ============================================================================
# General Psychiatrist Assessment Doc Types (green form)
# ============================================================================

proc createDocType_pssd_psychiatrist_screening { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.psychiatrist-screening \
		:description "Psychiatrist screening component of the green form" \
		:label "Psychiatrist Screening" \
		:definition < \
			:element -name "psychiatrist-name" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive false \
			:element -name "dsm-iv-diagnostic-axis-1" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive false \
			:element -name "dsm-iv-diagnostic-axis-2" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive false \
			:element -name "dsm-iv-diagnostic-axis-3" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive false \
			:element -name "dsm-iv-diagnostic-axis-4" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive false \
			:element -name "dsm-iv-diagnostic-axis-5" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive false \
			:element -name "age-of-psychiatric-onset" -type float -min-occurs 0 -max-occurs 1 < \
				:description "Age of onset of psychiatry disorder(s)" \
			> \
			:element -name "depressive-episodes" -type enumeration -min-occurs 0 -max-occurs 1 < \
				:description "Number of depressive episodes" \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.psychiatric-episodes \
				> \
			> \
			:element -name "manic-episodes" -type enumeration -min-occurs 0 -max-occurs 1 < \
				:description "Number of manic episodes" \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.psychiatric-episodes \
				> \
			> \
			:element -name "psychotic-episodes" -type enumeration  -min-occurs 0 -max-occurs 1 < \
				:description "Number of manic episodes" \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.psychiatric-episodes \
				> \
			> \
			:element -name "comments" -type string -min-occurs 0 -max-occurs 1 < \
				:description "Psychiatrist comments" \
			> \
		> \
}

proc destroyDocType_pssd_psychiatrist_screening  { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.psychiatrist-screening]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.psychiatrist-screening :force $force
    }
}

proc createDocType_pssd_diagnostic_information { ns } {

	asset.doc.type.update \
		:create yes :type ${ns}:pssd.diagnostic-information \
		:label "diagnostic-information" \
		:description "Diagnostic information from the green form" \
		:definition < \
			:element -name "substance-user" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "identifies if the subject uses substance" \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.substance-use-no-yes" \
				> \
			> \
			:element -name "amphetamine-use" -min-occurs 0 -max-occurs 1 -type document < \
				:element -name "amphetamine-user" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "identifies if the subject uses amphetamines" \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.substance-use-no-yes" \
					> \
				> \
				:element -name "more-than-once-a-week" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.standard-no-yes" \
					> \
				> \
			> \
			:element -name "cannabis-use" -min-occurs 0 -max-occurs 1 -type document < \
				:element -name "cannabis-user" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "identifies if the subject uses cannabis" \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.substance-use-no-yes" \
					> \
				> \
				:element -name "more-than-once-a-week" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.standard-no-yes" \
					> \
				> \
			> \
			:element -name "alcohol-use" -min-occurs 0 -max-occurs 1 -type document < \
				:element -name "alcohol-user" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "identifies if the subject uses alcohol" \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.substance-use-no-yes" \
					> \
				> \
				:element -name "more-than-once-a-week" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.standard-no-yes" \
					> \
				> \
			> \
			:element -name notes -type string -min-occurs 0 -max-occurs 1 \
			:element -name "child-abuse" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "identifies if the subject has been abused" \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.child-abuse-yes-no" \
				> \
			> \
		> \
}

proc destroyDocType_pssd_diagnostic_information { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.diagnostic-information]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.diagnostic-information :force $force
    }
}

proc createDocType_pssd_diagnostic_ultra_high_risk { ns } {

asset.doc.type.update :create true :type ${ns}:pssd.diagnostic-ultra-high-risk \
	:description "Ultra high risk information from the green form" \
	:label "ultra high risk information" \
	:definition < \
		:element -name "is-ultra-high-risk" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
			:description "identifies if subject is ultra high risk" \
			:restriction -base "enumeration" < \
				:dictionary "$ns.pssd.standard-no-yes" \
			> \
		> \
		:element -name "uhr-symptoms" -min-occurs 0 -max-occurs 1 -type document < \
			:element -name "decline-in-social-functioning" -min-occurs 0 -max-occurs 1 -type boolean -index true \
			:element -name "decline-occupational-vocational-funtioning" -min-occurs 0 -max-occurs 1 -type boolean -index true \
			:element -name "decline-in-cognition" -min-occurs 0 -max-occurs 1 -type boolean -index true \
			:element -name "patient-shows-mood-disturbance" -min-occurs 0 -max-occurs 1 -type boolean -index true \
			:element -name "patient-shows-subthreshold-psychotic-symptoms" -min-occurs 0 -max-occurs 1 -type boolean -index true \
			:element -name "patient-shows-drug-and-alchole-use" -min-occurs 0 -max-occurs 1 -type boolean -index true \
			:element -name "patient-has-a-family-history-of-psychiatric-disorder" -min-occurs 0 -max-occurs 1 -type boolean -index true \
		> \
		:element -name "diagnosis" -min-occurs 0 -max-occurs infinity -type document < \
			:element -name "diagnosis-type" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
				:description "Diagnosis information for subjects condition" \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.diagnosis-type" \
				> \
			> \
			:element -name "condition-type" -type enumeration -min-occurs 0 -max-occurs 1 < \
				:restriction -base "enumeration" < \
					:dictionary "$ns.pssd.diagnostic-diagnosis" \
				> \
			> \
			:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -index true -case-sensitive false \
		> \
		:element -name "notes" -type string -min-occurs 0 -max-occurs 1 < \
			:description "Psychiatrist notes if diagnosis is unclear or the subject is still being assessed" \
		> \
	> \
}

proc destroyDocType_pssd_diagnostic_ultra_high_risk  { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.diagnostic-ultra-high-risk]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.diagnostic-ultra-high-risk :force $force
    }
}


proc createDocType_pssd_diagnostic_staging_model { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.diagnostic-staging-model \
		:description "Diagnosis and clinical staging model stage from the green form" \
		:label "staging-model" \
		:definition < \
			:element -name "diagnosis-clinical-staging-model" -type enumeration -min-occurs 0 -max-occurs 1 < \
				:description "Subject's Diagnosis and clinical staging model stage" \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.staging-model \
				> \
			> \
		> \
}

proc destroyDocType_pssd_diagnostic_staging_model { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.diagnostic-staging-model]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.diagnostic-staging-model :force $force
    }
}

proc createDocType_pssd_medical_history { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.medical-history \
		:description "Medical History information from the green form" \
		:label "medical-history" \
		:definition < \
			:element -name "major-medical-conditions" -min-occurs 0 -max-occurs 1 -type document < \
				:element -name "has-a-major-medical-conditions" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "identifies if patient has a medical history" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.major-medical-condition-yes-no \
					> \
				> \
				:element -name specify -type string -min-occurs 0 -index true -case-sensitive false \
			> \
		> \
}

proc destroyDocType_pssd_medical_history { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.medical-history]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.medical-history :force $force
    }
}

proc createDocType_pssd_family_medical_history { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.family-medical-history \
		:description "Family medical history information from the green form" \
		:label "family-medical-history" \
		:definition < \
			:element -name "relatives" -min-occurs 0 -max-occurs infinity -type document < \
				:element -name "relative-degree" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "relatives with medical histories" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.relative-degree \
					> \
				> \
				:element -name "relative-type" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.relative-type" \
					> \
				> \
				:element -name "conditions" -type enumeration -min-occurs 0 -max-occurs infinity < \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.relative-medical-condition" \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 \
			> \
			:element -name "notes" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive true \
		> \
}

proc destroyDocType_pssd_family_medical_history { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.family-medical-history]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.family-medical-history :force $force
    }
}

proc createDocType_pssd_sofas { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.sofas \
		:description "Social and Occupational Functioning Assessment Scale information from the green form" \
		:label "sofas" \
		:definition < \
			:element -name "code" -min-occurs 0 -max-occurs 1 -type float -index true -case-sensitive false < \
				:description "Social and Occupational Functioning Assessment Scale code" \
			> \
		> \
}

proc destroyDocType_pssd_sofas { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.SOFAS]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.SOFAS :force $force
    }
}

proc createDocType_pssd_current_treatment { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.current-treatment \
		:description "subjects current treatment information from the green form" \
		:label "current-treatment" \
		:definition < \
			:element -name "anti-depressant-treatment" -type document -min-occurs 0 < \
				:element -name "type" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:description "anti-depressant medication type, dose and frequency" \
					:restriction -base enumeration < \
						:dictionary "$ns.pssd.anti-depressant-types" \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "dose" -type document -min-occurs 0 -max-occurs 1 < \
					:description "anti-depressant medication type, dose and frequency" \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-units" \
						> \
					> \
				> \
				:element -name "timing" -type document -min-occurs 0 -max-occurs 1 < \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "timing" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-timing" \
						> \
					> \
				> \
			> \
			:element -name "sedative-hypnotic-treatment" -type document -min-occurs 0 < \
				:element -name "type" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:description "sedative and hypnotic medication type, dose and frequency" \
					:restriction -base enumeration < \
						:dictionary "$ns.pssd.sedative-hypnotic-types" \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "dose" -type document -min-occurs 0 -max-occurs 1 < \
					:description "anti-depressant medication type, dose and frequency" \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-units" \
						> \
					> \
				> \
				:element -name "timing" -type document -min-occurs 0 -max-occurs 1 < \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "timing" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-timing" \
						> \
					> \
				> \
			> \
			:element -name "other-adjunctive-treatment" -type document -min-occurs 0 < \
				:element -name "type" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:description "other adjunctive medication type, dose and frequency" \
					:restriction -base enumeration < \
						:dictionary "$ns.pssd.other-adjunctive-types" \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "dose" -type document -min-occurs 0 -max-occurs 1 < \
					:description "anti-depressant medication type, dose and frequency" \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-units" \
						> \
					> \
				> \
				:element -name "timing" -type document -min-occurs 0 -max-occurs 1 < \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "timing" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-timing" \
						> \
					> \
				> \
			> \
			:element -name "mood-stabiliser-treatment" -type document -min-occurs 0 < \
				:element -name "type" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:description "mood stabiliser medication type, dose and frequency" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.mood-stabiliser-types \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "dose" -type document -min-occurs 0 -max-occurs 1 < \
					:description "anti-depressant medication type, dose and frequency" \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-units" \
						> \
					> \
				> \
				:element -name "timing" -type document -min-occurs 0 -max-occurs 1 < \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "timing" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-timing" \
						> \
					> \
				> \
			> \
			:element -name "anti-psychotic-treatment" -type document -min-occurs 0  < \
				:element -name "type" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:description "anti-psychotic medication type, dose and frequency" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.anti-psychotic-types \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "dose" -type document -min-occurs 0 -max-occurs 1 < \
					:description "anti-depressant medication type, dose and frequency" \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-units" \
						> \
					> \
				> \
				:element -name "timing" -type document -min-occurs 0 -max-occurs 1 < \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "timing" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-timing" \
						> \
					> \
				> \
			> \
			:element -name "benzodiazepine-treatment" -type document -min-occurs 0 < \
				:element -name "type" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:description "benzodiazepine medication type, dose and frequency" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.benzodiazepine-types \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "dose" -type document -min-occurs 0 -max-occurs 1 < \
					:description "anti-depressant medication type, dose and frequency" \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-units" \
						> \
					> \
				> \
				:element -name "timing" -type document -min-occurs 0 -max-occurs 1 < \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "timing" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-timing" \
						> \
					> \
				> \
			> \
			:element -name "stimulant-treatment" -type document -min-occurs 0 < \
				:element -name "type" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:description "stimulant medication type, dose and frequency" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.stimulant-types \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "dose" -type document -min-occurs 0 -max-occurs 1 < \
					:description "anti-depressant medication type, dose and frequency" \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-units" \
						> \
					> \
				> \
				:element -name "timing" -type document -min-occurs 0 -max-occurs 1 < \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "timing" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-timing" \
						> \
					> \
				> \
			> \
			:element -name "anti-convulsant-treatment" -type document -min-occurs 0 < \
				:element -name "type" -type enumeration -min-occurs 0 -max-occurs 1 < \
					:description "anti-convulsant medication type, dose and frequency" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.anti-convulsant-types \
					> \
				> \
				:element -name "specify" -type string -min-occurs 0 -max-occurs 1 -case-sensitive false \
				:element -name "dose" -type document -min-occurs 0 -max-occurs 1 < \
					:description "anti-depressant medication type, dose and frequency" \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "unit" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-units" \
						> \
					> \
				> \
				:element -name "timing" -type document -min-occurs 0 -max-occurs 1 < \
					:element -name "value" -type float -min-occurs 0 -max-occurs 1 \
					:element -name "timing" -type enumeration -min-occurs 0 -max-occurs 1 < \
						:restriction -base enumeration < \
							:dictionary "$ns.pssd.dose-timing" \
						> \
					> \
				> \
			> \
			:element -name "notes" -type string -min-occurs 0 -max-occurs 1 -case-sensitive true \
		> \
}

proc destroyDocType_pssd_current_treatment { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.current-treatment]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.current-treatment :force $force
    }
}

proc createDocType_pssd_additional_gf_notes { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.additional-gf-notes \
		:description "Additional notes from the green form" \
		:label "additional-notes" \
		:definition < \
			:element -name "additional-notes" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive false < \
				:description "additional notes from the green form" \
			> \
		> \
}


proc destroyDocType_pssd_additional_gf_notes { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.additional-gf-notes]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.additional-gf-notes :force $force
    }
}

# ============================================================================
# Psychiatrist Assessment Documents
# ============================================================================

proc createDocType_pssd_substance_nicotine_caffeine { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.substance.nicotine-caffeine \
		:description "Document type for nicotine or caffeine use" \
		:label "Has had today" \
		:definition < \
			:element -name caffeine-nicotine-consumption  -min-occurs 0 -max-occurs 2 -type document < \
				:element -name type -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive false < \
					:description "describes the substance the subject has had." \
					:restriction -base "enumeration" < \
						:dictionary "$ns.pssd.nicotine-caffeine" \
					> \
				> \
				:element -name quantity -min-occurs 0 -max-occurs 1 -type float -index true -case-sensitive false \
				:element -name average-intake -min-occurs 0 -max-occurs 1 -type float -index true -case-sensitive false \
			> \
		> \
	}

proc createDocType_pssd_checked_self_report { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.checked-self-report \
		:description "Indicates if the subjects self report has been checked" \
		:label "checked-self-report" \
		:definition < \
			:element -name "checked"  -min-occurs 0 -max-occurs 1 -type boolean -index true -case-sensitive false < \
				:description "describes the substance the subject has had." \
			> \
		> \
	}

proc createDocType_pssd_inclusion_exclusion { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.inclusion-exclusion \
		:description "Inclusion exclusion check list for the youth mental health study" \
		:label "Inclusion exclusion criteria" \
		:definition < \
			:element -name "ymhs-inclusion" -min-occurs 0 -max-occurs 5 -type enumeration -index true -case-sensitive true < \
				:description "inclusion criteria for youth mental health study" \
				:restriction -base "enumeration" < \
					:value "aged-between-12-and-30" \
					:value "may-have-at-least-mild-symptoms-of-depression-anxiety-depression" \
					:value "speak-fluent-english" \
					:value "likely-to-remain-in-contact-for-12-months" \
					:value "free-from-alcohol-drugs-for-48-hours" \
				> \
			> \
			:element -name "nsu-exclusion" -min-occurs 0 -max-occurs 1 -type enumeration -index true -case-sensitive true < \
				:description "Exclusion criteria for NSU" \
				:restriction -base "enumeration" < \
					:value "current-primary-amphetamines-cannabis-alcohol-use" \
				> \
			> \
			:element -name "ymhs-exclusion" -min-occurs 0 -max-occurs 6 -type enumeration -index true -case-sensitive true < \
				:description "Exclusion criteria for youth mental health study" \
				:restriction -base "enumeration" < \
					:value "suffer-from-intellectual-disability" \
					:value "suffer-from-major-neurological-disorder" \
					:value "suffer-from-major-medical-illness" \
					:value "history-of-sustained-head-injury" \
					:value "unable-to-undergo-mri" \
					:value "undergone-ect-within-last-3-months" \
					:value "poor-english-speaking" \
				> \
			> \
		> \
	}

proc createDocType_pssd_education_years { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.education.years \
		:description "Years subject has been educated" \
		:label "Years of education" \
		:definition < \
			:element -name years -min-occurs 0 -max-occurs 1 -type float -index true -case-sensitive false < \
				:description "Number of years subject has been educated" \
			> \
		> \
	}

proc createDocType_pssd_background_information { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.background-information \
		:description "Background subject notes" \
		:label "Background information" \
		:definition < \
			:element -name "clinician-notes" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive true < \
				:description "clinician notes" \
			> \
			:element -name "diagnosis-and-history-notes" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive true < \
				:description "diagnosis and history notes" \
			> \
			:element -name "age-of-onset" -min-occurs 0 -max-occurs 1 -type float -index true -case-sensitive false < \
				:description "age of illness onset" \
			> \
			:element -name "other-relevant-information" -min-occurs 0 -max-occurs 1 -type string -index true -case-sensitive true < \
				:description "other relevant information notes" \
			> \
		> \
	}

# ============================================================================
# Document create procedure
# ============================================================================

proc create-PSSD-bmri-ymh-DocTypes { ns } {
    createDocType_pssd_date $ns
    createDocType_pssd_date_received $ns
    createDocType_pssd_psychiatrist_screening $ns
    createDocType_pssd_diagnostic_information $ns
    createDocType_pssd_diagnostic_ultra_high_risk $ns
    createDocType_pssd_diagnostic_staging_model $ns
    createDocType_pssd_medical_history $ns
    createDocType_pssd_family_medical_history $ns
    createDocType_pssd_sofas $ns
    createDocType_pssd_current_treatment $ns
    createDocType_pssd_additional_gf_notes $ns
    createDocType_pssd_substance_nicotine_caffeine $ns
    createDocType_pssd_checked_self_report $ns
    createDocType_pssd_education_years $ns
    createDocType_pssd_inclusion_exclusion $ns
    createDocType_pssd_background_information $ns
}

# ============================================================================
# Document destroy procedure
# ============================================================================

proc destroy-PSSD-bmri-ymh-DocTypes { ns } {
    set force "false"
    destroyDocType_pssd_date $ns $force
    destroyDocType_pssd_date_received $ns $force
    destroyDocType_pssd_psychiatrist_screening $ns $force
    destroyDocType_pssd_diagnostic_information $ns $force
    destroyDocType_pssd_diagnostic_ultra_high_risk $ns $force
    destroyDocType_pssd_diagnostic_staging_model $ns $force
    destroyDocType_pssd_medical_history $ns $force
    destroyDocType_pssd_family_medical_history $ns $force
    destroyDocType_pssd_sofas $ns $force
    destroyDocType_pssd_current_treatment $ns $force
    destroyDocType_pssd_additional_gf_notes $ns $force
    destroyDocTyoe_pssd_substance_nicotine_caffeine $ns $force
    destroyDocType_pssd_checked_self_report $ns $force
	destroyDocType_pssd_education_years $ns $force
    destroyDocType_pssd_inclusion_exclusion $ns $force
    destroyDocType_pssd_background_information $ns $force
}