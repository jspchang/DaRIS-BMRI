#============================================================================#
#  Neuropsychological and Clinical Test dictionaries
#============================================================================#

# Staging Model (Assessment Protocol)
#============================================================================#
proc createDict_pssd_ap_staging_model { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-staging-model]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-staging-model :description "diagnosis and clinical tagging model values" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.ap-staging-model "stage-1a"
	addDictionaryEntry  ${ns}.pssd.ap-staging-model "stage-1b"
	addDictionaryEntry  ${ns}.pssd.ap-staging-model "stage-2"
	addDictionaryEntry  ${ns}.pssd.ap-staging-model "stage-3a"
	addDictionaryEntry  ${ns}.pssd.ap-staging-model "stage-3b"
	addDictionaryEntry  ${ns}.pssd.ap-staging-model "stage-3c"
	addDictionaryEntry  ${ns}.pssd.ap-staging-model "stage-4"
	addDictionaryEntry  ${ns}.pssd.ap-staging-model "not-applicable"
	addDictionaryEntry  ${ns}.pssd.ap-staging-model "missing"
}

# Hamilton Depression Rating Scale (Assessment Protocol)
#============================================================================#
proc createDict_pssd_ap_ham_d_sections { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-ham-d-sections]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-ham-d-sections :description "Hamilton Depression Rating Scale question section headings" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "depressed-mood"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "feelings-of-guilt"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "suicide"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "initial-insomnia"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "middle-insomnia"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "insomnia-late"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "work-and-activities"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "retardation"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "agitation"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "anxiety-psychic"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "somatic-anxiety"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "appetite"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "somatic-symptoms"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "sexual-interest"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "hypochondriasis"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "loss-of-weight"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-sections "insight"
}

proc createDict_pssd_ap_ham_d_scores_2 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-ham-d-scores-2]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-ham-d-scores-2 :description "Hamilton Depression Rating Scale score values" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-2 "0"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-2 "1"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-2 "2"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-2 "missing"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-2  "not-applicable"
}

proc createDict_pssd_ap_ham_d_scores_3 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-ham-d-scores-3]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-ham-d-scores-3 :description "Hamilton Depression Rating Scale score values" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-3 "0"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-3 "1"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-3 "2"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-3 "3"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-3 "missing"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-3 "not-applicable"
}

proc createDict_pssd_ap_ham_d_scores_4 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-ham-d-scores-4]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-ham-d-scores-4 :description "Hamilton Depression Rating Scale score values" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-4 "0"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-4 "1"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-4 "2"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-4 "3"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-4 "4"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-4 "missing"
	addDictionaryEntry  ${ns}.pssd.ap-ham-d-scores-4 "not-applicable"
}


# Brief Psychiatric rating Scale (Assessment Protocol)
#============================================================================#

proc createDict_pssd_ap_bprs_sections { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-bprs-sections]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-bprs-sections :description "Brief Psychiatric Rating Scale" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "somatic-concern"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "anxiety"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "depression"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "suicidality"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "guilt"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "hostility"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "elated-mood"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "grandiosity"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "suspiciousness"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "hallucinations"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "unusual-thought-content"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "bizarre-behaviour"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "self-neglect"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "disorientation"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "conceptual-disorganisation"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "blunted-effect"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "emotional-withdrawal"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "motor-retardation"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "tension"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "uncoopoerativeness"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "excitement"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "distractibility"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "motor-hyperactivity"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-sections "mannerisms-and-posturing"
}

proc createDict_pssd_ap_bprs_scores { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-bprs-scores]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-bprs-scores :description "Brief Psychiatric Rating Scores" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "0"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "1"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "2"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "3"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "4"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "5"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "6"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "7"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "missing"
	addDictionaryEntry  ${ns}.pssd.ap-bprs-scores "not-assessed"
}

proc createDict_pssd_ap_sds_scores { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-sds-scores]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-sds-scores :description "Severity of Dependency Scale - Scores" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.ap-sds-scores "0"
	addDictionaryEntry  ${ns}.pssd.ap-sds-scores "1"
	addDictionaryEntry  ${ns}.pssd.ap-sds-scores "2"
	addDictionaryEntry  ${ns}.pssd.ap-sds-scores "3"
}

#============================================================================#
proc createUpdatePSSDDicts { ns } {
	
	
	createDict_pssd_ap_staging_model $ns
	createDict_pssd_ap_ham_d_sections $ns
	createDict_pssd_ap_ham_d_scores_2 $ns
	createDict_pssd_ap_ham_d_scores_3 $ns
	createDict_pssd_ap_ham_d_scores_4 $ns
	createDict_pssd_ap_bprs_sections $ns
	createDict_pssd_ap_bprs_scores $ns
	createDict_pssd_ap_sds_scores $ns
}

#============================================================================#
proc destroyPSSDDicts { ns } {

	set dicts [list $ns.ap-pssd.ap-staging-model $ns.pssd.ap-ham-d-sections \
					$ns.pssd.ap-ham-d-scores-2 $ns.pssd.ap-ham-d-scores-3 \
					$ns.pssd.ap-ham-d-scores-4 $ns:pssd.ap-bprs-sections \
					$ns:pssd.ap-bprs-scores $ns:pssd.ap-sds-scores]
	foreach dict $dicts {
		if { [xvalue exists [dictionary.exists :name $dict]] == "true" } {
			dictionary.destroy :name $dict
		}
	}
}