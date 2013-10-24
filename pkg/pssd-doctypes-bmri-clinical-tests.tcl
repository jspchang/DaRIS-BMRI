# ============================================================================
# This script creates document types for Clinical Neuropsychological tests for
# the Youth mental Health Project 
# ============================================================================

proc createDocType_pssd_ap_sofas { ns } {

	asset.doc.type.update \
		:create true :type ${ns}:pssd.ap-sofas \
		:description "Social and Occupational Functioning Assessment Scale information from the Assessment Protocol form" \
		:label "sofas" \
		:definition < \
			:element -name "code" -min-occurs 0 -max-occurs 1 -type float -index true -case-sensitive false < \
				:description "Social and Occupational Functioning Assessment Scale code" \
			> \
		> \
}

proc destroyDocType_pssd_ap_sofas { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-sofas]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-sofas :force $force
    }
}

proc createDocType_pssd_ap_staging_model { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-staging-model \
		:description "Diagnosis and clinical staging model stage from the Assessment Protocol form" \
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

proc destroyDocType_pssd_ap_staging_model { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-staging-model]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-staging-model :force $force
    }
}

proc createDocType_pssd_ap_ham_d { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-ham-d \
		:description "Hamilton Depression Rating - scale" \
		:label "hamilton-depression-rating-scale" \
		:definition < \
			:element -name "depressed-mood" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-4 \
				> \
			> \
			:element -name "feelings-of-guilt" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-4 \
				> \
			> \
			:element -name "suicide" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-4 \
				> \
			> \
			:element -name "initial-insomnia" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-2 \
				> \
			> \
			:element -name "middle-insomnia" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-2 \
				> \
			> \
			:element -name "insomnia-late" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-2 \
				> \
			> \
			:element -name "work-and-activities" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-4 \
				> \
			> \
			:element -name "retardation" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-4 \
				> \
			> \
			:element -name "agitation" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-4 \
				> \
			> \
			:element -name "anxiety-psychic" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-4 \
				> \
			> \
			:element -name "somatic-anxiety" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-4 \
				> \
			> \
			:element -name "appetite" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-2 \
				> \
			> \
			:element -name "somatic-symptoms" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-2 \
				> \
			> \
			:element -name "sexual-interest" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-2 \
				> \
			> \
			:element -name "hypochondriasis" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-4 \
				> \
			> \
			:element -name "loss-of-weight" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-3 \
				> \
			> \
			:element -name "insight" -type enumeration -min-occurs 0 -max-occurs 1 -index true < \
				:restriction -base "enumeration" < \
					:dictionary $ns.pssd.ap-ham-d-scores-2 \
				> \
			> \
			:element -name "total-score" -type integer -length 2 -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_ham_d { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-ham-d]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-ham-d :force $force
    }
}

proc createDocType_pssd_ap_bprs { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-bprs \
		:description "Brief psychiatric rating scale" \
		:label "brief-psychiatric-rating-scale" \
		:definition < \
			:element -name "sections" -type document -min-occurs 1 -max-occurs 1 < \
				:element -name "somatic-concern" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "anxiety" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "depression" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "suicidality" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "guilt" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "hostility" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "elated-mood" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "grandiosity" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "suspiciousness" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "hallucinations" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "unusual-thought-content" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "bizarre-behaviour" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "self-neglect" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "disorientation" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "conceptual-disorganisation" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "blunted-effect" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "emotional-withdrawal" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "motor-retardation" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "tension" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "uncooperativeness" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "excitement" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "distractibility" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "motor-hyperactivity" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
				:element -name "mannerisms-and-posturing" -type enumeration -min-occurs 0 max-occurs 1 < \
					:description "Question section score" \
					:restriction -base "enumeration" < \
						:dictionary $ns.pssd.ap-bprs-scores \
					> \
				> \
			> \
			:element -name "bprs-total" -type float -max-occurs 1 -min-occurs 0 -index true < \
				:description "total-score" \
			> \
			:element -name "bprs-positive-symptoms-factor" -type float -max-occurs 1 -min-occurs 0 < \
				:description "positive symptoms factor score" \
			> \
			:element -name "bprs-depression-factor" -type float -max-occurs 1 -min-occurs 0 < \
				:description "depression factor score" \
			> \
			:element -name "bprs-negative-symptoms-factor" -type float -max-occurs 1 -min-occurs 0 < \
				:description "negative symptom factor score" \
			> \
			:element -name "bprs-mania-factor" -type float -max-occurs 1 -min-occurs 0 < \
				:description "somatic factor score" \
			> \
			:element -name "bprs-disorientation-factor" -type float -max-occurs 1 -min-occurs 0 -index true < \
				:description "disorientation factor score" \
			> \
		> \
}

proc destroyDocType_pssd_ap_bprs { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-bprs]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-bprs :force $force
    }
}

proc createDocType_pssd_ap_ymrs { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-ymrs \
		:description "Young mania rating scale" \
		:label "young-mania-rating-scale" \
		:definition < \
			:element -name "elevated-mood" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-a \
				> \
			> \
			:element -name "increased-motor-activity-energy" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-b \
				> \
			> \
			:element -name "sexual-interest" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-c \
				> \
			> \
			:element -name "sleep" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-d \
				> \
			> \
			:element -name "irritability" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-e \
				> \
			> \
			:element -name "speech" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-f \
				> \
			> \
			:element -name "language" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-g \
				> \
			> \
			:element -name "content" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-h \
				> \
			> \
			:element -name "disruptive-aggressive-behaviour" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-i \
				> \
			> \
			:element -name "appearance" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-j \
				> \
			> \
			:element -name "insight" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
				:restriction -base enumeration < \
					:dictionary $ns.pssd.sr-ymrs-k \
				> \
			> \
			:element -name "ymrs-total" -type float -max-occurs 1 -min-occurs 0 -index true < \
				:description "total-score" \
			> \
		> \
}

proc destroyDocType_pssd_ap_bprs { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-bprs]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-bprs :force $force
    }
}

proc createDocType_pssd_ap_sds { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-sds \
		:description "Severity of Dependence Scale" \
		:label "severity-of-dependence-scale" \
		:definition < \
			:element -name drug -type document -min-occurs 0 -max-occurs 3 < \
				:element -name "drug-name" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.ap-sds-types \
					> \
				> \
				:element -name "drug-class" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.ap-sds-drug-class \
					> \
				> \
				:element -name "amount-use-pattern" -type string -min-occurs 0 -max-occurs 1 -index true \
				:element -name "administration-route" -type string -min-occurs 0 -max-occurs 1 -index true \
				:element -name "response-card-q1" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
					:description "Question 1 - Do you think your use of ‘drug’ was out of control?" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.ap-sds-scores \
					> \
				> \
				:element -name "response-card-q2" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
					:description "Question 2 - Did the prospect of missing a fix (or dose) make you anxious or worried?" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.ap-sds-scores \
					> \
				> \
				:element -name "response-card-q3" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
					:description "Question 3 - Did you worry about your use of ‘drug’?" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.ap-sds-scores \
					> \
				> \
				:element -name "response-card-q4" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
					:description "Question 4 - Did you wish you could stop?" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.ap-sds-scores \
					> \
				> \
				:element -name "response-card-q5" -type enumeration -max-occurs 1 -min-occurs 0 -index true < \
					:description "Question 5 - How difficult was it to stop of go without ‘drug’?" \
					:restriction -base enumeration < \
						:dictionary $ns.pssd.ap-sds-scores \
					> \
				> \
				:element -name "total-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			> \
		> \
}

proc destroyDocType_pssd_ap_sds { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-sds]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-sds :force $force
    }
}

#=======================================================================#
# Assessment protocol checklists										#
#=======================================================================#


proc createDocType_pssd_ap_interview_checklist { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-interview-checklist \
		:description "Assessment protocol interview checklist" \
		:label "interview-checklist" \
		:definition < \
			:element -name diagnosis-check -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name hamilton-depression-scale -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name brief-psychiatric-rating-scale -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name social-accupational-functioning-assessment-scale -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name severity-of-dependence-scale -type boolean -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_interview_checklist { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-interview-checklist]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-interview-checklist :force $force
    }
}

proc createDocType_pssd_ap_tests_checklist { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-tests-checklist \
		:description "Assessment protocol tests checklist" \
		:label "tests-checklist" \
		:definition < \
			:element -name weschler-test-of-adult-reading -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name logical-memory -type document -min-occurs 0 -max-occurs 1 < \
				:element -name logical-memory -type boolean -min-occurs 0 -max-occurs 1 -index true \
				:element -name record-time -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name unit -type string -min-occurs 0 -max-occurs 1 -index false \
			> \
			:element -name rey-auditory-visual-learning-test -type document -min-occurs 0 -max-occurs 1 < \
				:element -name rey-auditory-visual-learning-test -type boolean -min-occurs 0 -max-occurs 1 -index true \
				:element -name record-time -type integer -min-occurs 0 -max-occurs 1 -index true \
				:element -name unit -type string -min-occurs 0 -max-occurs 1 -index false \
			> \
			:element -name information-test -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name rey-complex-figures-test -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name controlled-oral-word-association-test -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name rey-auditory-visual-learning-test-3-minute-delay -min-occurs 0 -type boolean -max-occurs 1 -index true \
			:element -name mental-control-wms-3 -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name trail-making-test -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name logical-memory-25-35-minute-delay -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name rey-auditory-visual-learning-test-20-minute-delay-recognition -type boolean -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_tests_checklist { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-tests-checklist]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-tests-checklist :force $force
    }
}

proc createDocType_pssd_ap_cantab_checklist { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-cantab-checklist \
		:description "Assessment protocol cantab checklist" \
		:label "cantab-checklist" \
		:definition < \
			:element -name motor-screening-task -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name spatial-span -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name reaction-time -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name stop-signal -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name rapid-visual-information-processing -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name intra-extra-dimensional-set-shifting -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name paired-associate-learning -type boolean -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_cantab_checklist { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-cantab-checklist]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-cantab-checklist :force $force
    }
}

proc createDocType_pssd_ap_other_checklist { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-other-checklist \
		:description "Assessment protocol other protocol checklist" \
		:label "other-checklist" \
		:definition < \
			:element -name blood -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name urine-saliva -type boolean -min-occurs 0 -max-occurs 1 -index true \
			:element -name mri -type boolean -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_other_checklist { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-other-checklist]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-other-checklist :force $force
    }
}

#=======================================================================#
# Raw scores and Z-scores												#
#=======================================================================#

proc createDocType_pssd_ap_wtar_raw_zscores { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-wtar-raw-zscores \
		:description "Assessment protocol weschler test of adult reading raw and z-scores" \
		:label "wtar-raw-and-z-scores" \
		:definition < \
			:element -name raw-score -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name standard-score -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name predicted-iq -type float -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_wtar_raw_zscores { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-wtar-raw-zscores]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-wtar-raw-zscores :force $force
    }
}

proc createDocType_pssd_ap_wais_wms_scores { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-wais-wms-scores \
		:description "Assessment protocol wais-wms subtests-scores" \
		:label "wtar-raw-and-z-scores" \
		:definition < \
			:element -name "information-raw-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "information-age-ss-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-1-recall-story-a-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-1-1st-recall-story-b" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-1-2nd-recall-story-b" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-1-recall-raw-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-1-recall-age-ss-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-2-recall-story-a-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-2-recall-story-b-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-2-recall-raw-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-2-recall-age-ss-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-retention-raw-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "logical-memory-retention-age-ss-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "mental-control-raw-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "mental-control-age-ss-score" -type float -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_wais_wms_scores { ns force } {
    if { $force != "true" && $force != "false" } {
                set force "false"
    }
    if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-wais-wms-scores]] == "true" } {
                asset.doc.type.destroy :type ${ns}:pssd.ap-wais-wms-zscores :force $force
    }
}

proc createDocType_pssd_ap_ravlt_scores { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-ravlt-scores \
		:description "Assessment protocol ravlt scores" \
		:label "rey-auditory-visual-learning-test-scores" \
		:definition < \
			:element -name ravlt-words-1 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-words-2 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-words-3 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-words-4 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-words-5 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-words-sum -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-words-b1 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-words-6 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-words-7 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-words-rec-a -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-1 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-2 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-3 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-4 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-5 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-sum -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-b1 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-6 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-7 -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name ravlt-sd-rec-a -type float -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_ravlt_scores { ns force } {
	if { $force != "true" && $force != "false" } {
		set force "false"
	}
	if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-ravlt-scores]] == "true" } {
		asset.doc.type.destroy :type ${ns}:pssd.ap-ravlt-scores :force $force
	}
}

proc createDocType_pssd_ap_rcft_scores { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-rcft-scores \
		:description "Assessment protocol rey complex figures scores" \
		:label "rey-complex-figure-scores" \
		:definition < \
			:element -name "time-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "time-percentile" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "copy-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "copy-percentile" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "three-minute-recall-score" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "three-minute-recall-percentile" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "thirty-minute-recall-score" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "thirty-minute-recall-percentile" -type integer -min-occurs 0 -max-occurs 1 -index true \
			:element -name "recognition-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "recognition-percentile" -type integer -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_rcft_scores { ns force } {
	if { $force != "true" && $force != "false" } {
		set force "false"
	}
	if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-rcft-scores]] == "true" } {
		asset.doc.type.destroy :type ${ns}:pssd.ap-rcft-scores :force $force
	}
}

proc createDocType_pssd_ap_tmt_scores { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-tmt-scores \
		:description "Assessment protocol trail making test scores" \
		:label "trail-making-test-scores" \
		:definition < \
			:element -name "a-score-secs" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "a-errors" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "a-z-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "b-score-secs" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "b-errors" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "b-z-score" -type float -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_tmt_scores { ns force } {
	if { $force != "true" && $force != "false" } {
		set force "false"
	}
	if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-tmt-scores]] == "true" } {
		asset.doc.type.destroy :type ${ns}:pssd.ap-tmt-scores :force $force
	}
}

proc createDocType_pssd_ap_dass_scores { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-dass-scores \
		:description "Assessment protocol depression anxiety stress scale scores" \
		:label "depression-anxiety-stress-scale-scores" \
		:definition < \
			:element -name "depression-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "depression-range" -type string -min-occurs 0 -max-occurs 1 -index true \
			:element -name "anxiety-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "anxiety-range" -type string -min-occurs 0 -max-occurs 1 -index true \
			:element -name "stress-score" -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name "stress-range" -type string -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_dass_scores { ns force } {
	if { $force != "true" && $force != "false" } {
		set force "false"
	}
	if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-dass-scores]] == "true" } {
		asset.doc.type.destroy :type ${ns}:pssd.ap-dass-scores :force $force
	}
}

proc createDocType_pssd_ap_cowat_scores { ns } {

	asset.doc.type.update :create true :type ${ns}:pssd.ap-cowat-scores \
		:description "Assessment protocol Controlled oral word association test scores" \
		:label "controlled-oral-word-association-test-scores" \
		:definition < \
			:element -name letters-f -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name letters-a -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name letters-s -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name letters-score -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name letters-range -type string -min-occurs 0 -max-occurs 1 -index true \
			:element -name animals-score -type float -min-occurs 0 -max-occurs 1 -index true \
			:element -name animals-range -type string -min-occurs 0 -max-occurs 1 -index true \
		> \
}

proc destroyDocType_pssd_ap_cowat_scores { ns force } {
	if { $force != "true" && $force != "false" } {
		set force "false"
	}
	if { [xvalue exists [asset.doc.type.exists :type ${ns}:pssd.ap-cowat-scores]] == "true" } {
		asset.doc.type.destroy :type ${ns}:pssd.ap-cowat-scores :force $force
	}
}

#============================================================================#
proc createPSSD-bmri-clinical-tests-DocTypes { ns } {

	createDocType_pssd_ap_sofas $ns
	createDocType_pssd_ap_staging_model $ns
	createDocType_pssd_ap_ham_d $ns
	createDocType_pssd_ap_bprs $ns
	createDocType_pssd_ap_ymrs $ns
	createDocType_pssd_ap_sds $ns
	createDocType_pssd_ap_interview_checklist $ns
	createDocType_pssd_ap_tests_checklist $ns
	createDocType_pssd_ap_cantab_checklist $ns
	createDocType_pssd_ap_other_checklist $ns
	createDocType_pssd_ap_wtar_raw_zscores $ns
	createDocType_pssd_ap_wais_wms_scores $ns
	createDocType_pssd_ap_ravlt_scores $ns
	createDocType_pssd_ap_rcft_scores $ns
	createDocType_pssd_ap_tmt_scores $ns
	createDocType_pssd_ap_dass_scores $ns
	createDocType_pssd_ap_cowat_scores $ns
}

#============================================================================#
proc destroyPSSD-bmri-clinical-tests-DocTypes { ns } {
set doctypes [list $ns:pssd.ap-sofas \
				$ns:pssd.ap-staging-model \
				$ns:pssd.ap-ham-d \
				$ns:psdd.ap.bprs \
				$ns:psdd.ap-ymrs \
				$ns:pssd.ap-sds \
				$ns:pssd.ap-interview-checklist \
				$ns:pssd.ap-tests-checklist \
				$ns:pssd.ap-cantab-checklist \
				$ns:pssd.ap-other-checklist \
				$ns:pssd.ap-wtar-raw-zscores \
				$ns:pssd.ap-wais-wms-scores \
				$ns:pssd.ap-ravlt-scores \
				$ns:pssd.ap-rcft-scores \
				$ns:pssd.ap-dass-scores \
				$ns:pssd.ap-cowat-scores]
	foreach doctype $doctypes {
		 destroyDocType $doctype "true"
	}
}
