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
# Self Report - Scale Dictionaries
#============================================================================#

proc createDict_pssd_sr_kessler_10 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-kessler-10]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-kessler-10 :description "self report scale 1" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-kessler-10 "none-of-the-time"
	addDictionaryEntry  ${ns}.pssd.sr-kessler-10 "a-little-of-the-time"
	addDictionaryEntry  ${ns}.pssd.sr-kessler-10 "some-of-the-time"
	addDictionaryEntry  ${ns}.pssd.sr-kessler-10 "most-of-the-time"
	addDictionaryEntry  ${ns}.pssd.sr-kessler-10 "all-of-the-time"
	addDictionaryEntry  ${ns}.pssd.sr-kessler-10 "missing"
}

proc createDict_pssd_sr_dass { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-dass]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-dass :description "self report scale 2" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-dass "0"
	addDictionaryEntry  ${ns}.pssd.sr-dass "1"
	addDictionaryEntry  ${ns}.pssd.sr-dass "2"
	addDictionaryEntry  ${ns}.pssd.sr-dass "2"
	addDictionaryEntry  ${ns}.pssd.sr-dass "3"
	addDictionaryEntry  ${ns}.pssd.sr-dass "missing-not-available"
}

proc createDict_pssd_sr_who_qol { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-who-qol]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-who-qol :description "self report scale 3" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-who-qol "1"
	addDictionaryEntry  ${ns}.pssd.sr-who-qol "2"
	addDictionaryEntry  ${ns}.pssd.sr-who-qol "2"
	addDictionaryEntry  ${ns}.pssd.sr-who-qol "4"
	addDictionaryEntry  ${ns}.pssd.sr-who-qol "5"
	addDictionaryEntry  ${ns}.pssd.sr-who-qol "missing-not-available"
}

proc createDict_pssd_sr_substance_use_scale_4_last_3_months { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-last-3-months]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-last-3-months :description "self report scale 4" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-last-3-months "never"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-last-3-months "once-or-twice"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-last-3-months "monthly"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-last-3-months "weekly"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-last-3-months "daily-or-almost-daily"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-last-3-months "missing-not-available"
}

proc createDict_pssd_sr_substance_use_scale_5_a { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-5-a]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-5-a :description "substance use scale a" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-a "never"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-a "monthly-or-less"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-a "2-4-times-month" 
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-a "2-3-times-a-week" 
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-a "4-or-more-times-a-week"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-a "missing-not-available"
}

proc createDict_pssd_sr_substance_use_scale_5_b { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-5-b]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-5-b :description "substance use scale  b" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-b "1-or-2"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-b "3-or-4"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-b "5-or-6" 
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-b "7-to-9" 
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-b "10-or-more"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-b "missing-not-available"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-b "not-applicable"
}

proc createDict_pssd_sr_substance_use_scale_5_c { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-5-c]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-5-c :description "substance use scale c" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-c "never"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-c "less-than-monthly"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-c "monthly" 
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-c "daily-or-almost-daily"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-c "missing-not-available"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-c "not-applicable"
}

proc createDict_pssd_sr_substance_use_scale_5_d { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-5-d]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-5-d :description "substance use scale d" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-d "no"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-d "yes-not-in-last-year"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-d "yes-in-last-year"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-d "missing-not-available"
	addDictionaryEntry  ${ns}.pssd.sr-substance-use-scale-5-d "not-applicable"
}

proc createDict_pssd_sr_wsls { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-wsls]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-wsls :description "work and social life scale dictionary" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-wsls "not"
	addDictionaryEntry  ${ns}.pssd.sr-wsls "minimally"
	addDictionaryEntry  ${ns}.pssd.sr-wsls "slightly"
	addDictionaryEntry  ${ns}.pssd.sr-wsls "mildy"
	addDictionaryEntry  ${ns}.pssd.sr-wsls "moderately"
	addDictionaryEntry  ${ns}.pssd.sr-wsls "severely"
	addDictionaryEntry  ${ns}.pssd.sr-wsls "extremely"
	addDictionaryEntry  ${ns}.pssd.sr-wsls "cannot"
	addDictionaryEntry  ${ns}.pssd.sr-wsls "missing-not-available"
	addDictionaryEntry  ${ns}.pssd.sr-wsls "not-applicable"
}

proc createDict_pssd_sr_apsd { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-apsd]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-apsd :description "antisocial process screening device dictionary" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-apsd "not-at-all"
	addDictionaryEntry  ${ns}.pssd.sr-apsd "sometimes true"
	addDictionaryEntry  ${ns}.pssd.sr-apsd "definitely true"
	addDictionaryEntry  ${ns}.pssd.sr-apsd "missing-not-available"
}

proc createDict_pssd_sr_sias { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-sias]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-sias :description "social interaction anxiety dictionary" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-sias "not-at-all"
	addDictionaryEntry  ${ns}.pssd.sr-sias "slightly-characteristic-or-true"
	addDictionaryEntry  ${ns}.pssd.sr-sias "moderately-characteristic-or-true"
	addDictionaryEntry  ${ns}.pssd.sr-sias "very-characteristic-or-true"
	addDictionaryEntry  ${ns}.pssd.sr-sias "extremely-characteristic-or-true"
	addDictionaryEntry  ${ns}.pssd.sr-sias "missing-not-available"
}

proc createDict_pssd_sr_scale_10 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-10]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-10 :description "self report scale 10" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.sr-scale-10 "none"
	addDictionaryEntry  ${ns}.pssd.sr-scale-10 "mild"
	addDictionaryEntry  ${ns}.pssd.sr-scale-10 "moderate"
	addDictionaryEntry  ${ns}.pssd.sr-scale-10 "severe"
	addDictionaryEntry  ${ns}.pssd.sr-scale-10 "extreme-cannot"
	addDictionaryEntry  ${ns}.pssd.sr-scale-10 "missing-not-available"
}

proc createDict_pssd_never_rarely_sometimes_often { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.never-rarely-sometimes-often]] == "false" } {
		dictionary.create :name ${ns}.pssd.never-rarely-sometimes-often :description "never rarely sometimes often dictionary" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.never-rarely-sometimes-often "never"
	addDictionaryEntry  ${ns}.pssd.never-rarely-sometimes-often "rarely"
	addDictionaryEntry  ${ns}.pssd.never-rarely-sometimes-often "sometimes"
	addDictionaryEntry  ${ns}.pssd.never-rarely-sometimes-often "often"
	addDictionaryEntry  ${ns}.pssd.never-rarely-sometimes-often "missing-not-available"
}

proc createDict_pssd_adequately_needs_help_unable_do_not_know { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.adequately-needs-help-unable-do-not-know]] == "false" } {
		dictionary.create :name ${ns}.pssd.adequately-needs-help-unable-do-not-know :description "adequately needs help unable do not know" :case-sensitive false \
	}
	addDictionaryEntry  ${ns}.pssd.adequately-needs-help-unable-do-not-know "adequately"
	addDictionaryEntry  ${ns}.pssd.adequately-needs-help-unable-do-not-know "needs-help"
	addDictionaryEntry  ${ns}.pssd.adequately-needs-help-unable-do-not-know "unable"
	addDictionaryEntry  ${ns}.pssd.adequately-needs-help-unable-do-not-know "do-not-know"
	addDictionaryEntry  ${ns}.pssd.adequately-needs-help-unable-do-not-know "missing-not-available"
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
	createDict_pssd_sr_kessler_10 $ns
	createDict_pssd_sr_dass $ns
	createDict_pssd_sr_who_qol $ns
	createDict_pssd_sr_substance_use_scale_4_last_3_months $ns
	createDict_pssd_sr_substance_use_scale_5_a $ns
	createDict_pssd_sr_substance_use_scale_5_b $ns
	createDict_pssd_sr_substance_use_scale_5_c $ns
	createDict_pssd_sr_substance_use_scale_5_d $ns
	createDict_pssd_sr_wsls $ns
	createDict_pssd_sr_sias $ns
	createDict_pssd_sr_scale_10 $ns
	createDict_pssd_never_rarely_sometimes_often $ns
	createDict_pssd_adequately_needs_help_unable_do_not_know $ns
}

#============================================================================#
proc destroyPSSDDicts { ns } {

	set dicts [list $ns.ap-pssd.ap-staging-model $ns.pssd.ap-ham-d-sections \
					$ns.pssd.ap-ham-d-scores-2 $ns.pssd.ap-ham-d-scores-3 \
					$ns.pssd.ap-ham-d-scores-4 $ns.pssd.ap-bprs-sections \
					$ns.pssd.ap-bprs-scores $ns.pssd.ap-sds-scores $ns.pssd.sr-kessler-10 \
					$ns.pssd.sr-dass $ns.pssd.sr-who-qol \
					$ns.pssd.sr-substance-use-scale-last-3-months \
					$ns.pssd.sr-substance-use-scale-5-a $ns.pssd.sr-substance-use-scale-5-b \
					$ns.pssd.sr-substance-use-scale-5-c $ns.pssd.sr-substance-use-scale-5-d \
					$ns.pssd.sr-wsls $ns.pssd.sr-sias $ns.pssd.sr-scale-10 \
					$ns.pssd.never-rarely-sometimes-often \
					$ns.pssd.adequately-needs-help-unable-do-not-know]
	foreach dict $dicts {
		if { [xvalue exists [dictionary.exists :name $dict]] == "true" } {
			dictionary.destroy :name $dict
		}
	}
}