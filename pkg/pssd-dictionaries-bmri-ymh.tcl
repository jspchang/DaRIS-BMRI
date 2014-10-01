#============================================================================#
#  Neuropsychological and Clinical Test dictionaries
#============================================================================#

# Hamilton Depression Rating Scale (Assessment Protocol)
#============================================================================#
proc createDict_pssd_ap_ham_d_sections { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-ham-d-sections]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-ham-d-sections :description "Hamilton Depression Rating Scale question section headings" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "depressed-mood" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "feelings-of-guilt" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "suicide" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "initial-insomnia" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "middle-insomnia" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "insomnia-late" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "work-and-activities" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "retardation" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "agitation" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "anxiety-psychic" :variant -lang numeric "10"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "somatic-anxiety" :variant -lang numeric "11"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "appetite" :variant -lang numeric "12"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "somatic-symptoms" :variant -lang numeric "13"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "sexual-interest" :variant -lang numeric "14"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "hypochondriasis" :variant -lang numeric "15"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "loss-of-weight" :variant -lang numeric "16"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-sections :term "insight" :variant -lang numeric "17"
}

proc createDict_pssd_ap_ham_d_scores_2 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-ham-d-scores-2]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-ham-d-scores-2 :description "Hamilton Depression Rating Scale score values" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-2 :term "0" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-2 :term "1" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-2 :term "2" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-2 :term "missing-unavailable" :variant -lang numeric "999"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-2 :term "not-applicable" :variant -lang numeric "888"
}

proc createDict_pssd_ap_ham_d_scores_3 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-ham-d-scores-3]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-ham-d-scores-3 :description "Hamilton Depression Rating Scale score values" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-3 :term "0" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-3 :term "1" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-3 :term "2" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-3 :term "3" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-3 :term "missing-unavailable" :variant -lang numeric "999"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-3 :term "not-applicable" :variant -lang numeric "888"
}

proc createDict_pssd_ap_ham_d_scores_4 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-ham-d-scores-4]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-ham-d-scores-4 :description "Hamilton Depression Rating Scale score values" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-4 :term "0" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-4 :term "1" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-4 :term "2" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-4 :term "3" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-4 :term "4" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-4 :term "missing-unavailable" :variant -lang numeric "999"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-ham-d-scores-4 :term "not-applicable" :variant -lang numeric "888"
}


# Brief Psychiatric rating Scale (Assessment Protocol)
#============================================================================#

proc createDict_pssd_ap_bprs_sections { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-bprs-sections]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-bprs-sections :description "Brief Psychiatric Rating Scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "somatic-concern" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "anxiety" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "depression" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "suicidality" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "guilt" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "hostility" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "elated-mood" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "grandiosity" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "suspiciousness" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "hallucinations" :variant -lang numeric "10"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "unusual-thought-content" :variant -lang numeric "11"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "bizarre-behaviour" :variant -lang numeric "12"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "self-neglect" :variant -lang numeric "13"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "disorientation" :variant -lang numeric "14"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "conceptual-disorganisation" :variant -lang numeric "15"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "blunted-effect" :variant -lang numeric "16"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "emotional-withdrawal" :variant -lang numeric "17"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "motor-retardation" :variant -lang numeric "18"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "tension" :variant -lang numeric "19"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "uncoopoerativeness" :variant -lang numeric "20"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "excitement" :variant -lang numeric "21"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "distractibility" :variant -lang numeric "22"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "motor-hyperactivity" :variant -lang numeric "23"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-sections :term "mannerisms-and-posturing" :variant -lang numeric "24"
}

proc createDict_pssd_ap_bprs_scores { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-bprs-scores]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-bprs-scores :description "Brief Psychiatric Rating Scores" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-scores :term "not-present" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-scores :term "very-mild" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-scores :term "mild" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-scores :term "moderate" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-scores :term "moderate-severe" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-scores :term "severe" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-scores :term "extreme-severe" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-scores :term "missing-not-available" :variant -lang numeric "999"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-bprs-scores :term "not-assessed" :variant -lang numeric "0"
}

proc createDict_pssd_ap_sds_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-sds-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-sds-types :description "Severity of Dependency Scale -Types" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-types :term "alcohol" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-types :term "cannabis" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-types :term "amphetamine" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-types :term "ecstasy" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-types :term "other" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-types :term "opioids" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-types :term "missing-not-available" :variant -lang numeric "999"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-types :term "not-applicable" :variant -lang numeric "888"
}

proc createDict_pssd_ap_sds_scores { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-sds-scores]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-sds-scores :description "Severity of Dependency Scale - Scores" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-scores :term "never-almost-never" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-scores :term "sometimes" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-scores :term "often" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-scores :term "always-nearly-always" :variant -lang numeric "3"
}

proc createDict_pssd_ap_sds_drug_class { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.ap-sds-drug-class]] == "false" } {
		dictionary.create :name ${ns}.pssd.ap-sds-drug-class :description "Severity of Dependency Scale - Scores" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-drug-class :term "primary" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-drug-class :term "secondary" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-drug-class :term "tertiary" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-drug-class :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.ap-sds-drug-class :term "missing-not-available" :variant -lang numeric "999"
}

#============================================================================#
# Self Report - Scale Dictionaries
#============================================================================#

proc createDict_pssd_sr_kessler_10 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-kessler-10]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-kessler-10 :description "self report scale 1" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-kessler-10 :term "none-of-the-time" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-kessler-10 :term "a-little-of-the-time" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-kessler-10 :term "some-of-the-time" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-kessler-10 :term "most-of-the-time" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-kessler-10 :term "all-of-the-time" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-kessler-10 :term "missing" :variant -lang numeric "999"
}

proc createDict_pssd_sr_dass { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-dass]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-dass :description "self report scale 2" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-dass :term "0" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-dass :term "1" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-dass :term "2" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-dass :term "3" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-dass :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-dass :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_who_qol_1 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-who-qol-1]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-who-qol-1 :description "self report scale 3" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-1 :term "very-dissatisfied" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-1 :term "fairly-dissatisfied" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-1 :term "neither-satisfied-nor-dissatisfied" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-1 :term "satisfied" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-1 :term "very-satisfied" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-1 :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_who_qol_2 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-who-qol-2]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-who-qol-2 :description "self report scale 3" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-2 :term "not-at-all" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-2 :term "slightly" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-2 :term "moderately" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-2 :term "very" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-2 :term "extremely" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-2 :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_who_qol_3 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-who-qol-3]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-who-qol-3 :description "self report scale 3" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-3 :term "never" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-3 :term "infrequently" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-3 :term "sometimes" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-3 :term "frequently" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-3 :term "always" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-who-qol-3 :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_substance_use_scale_4_last_3_months { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-last-3-months]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-last-3-months :description "self report scale 4" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-last-3-months :term "never" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-last-3-months :term "once-or-twice" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-last-3-months :term "monthly" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-last-3-months :term "weekly" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-last-3-months :term "daily-or-almost-daily" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-last-3-months :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_substance_use_scale_5_a { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-5-a]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-5-a :description "substance use scale a" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-a :term "never" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-a :term "monthly-or-less" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-a :term "2-4-times-month" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-a :term "2-3-times-a-week" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-a :term "4-or-more-times-a-week" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-a :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_substance_use_scale_5_b { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-5-b]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-5-b :description "substance use scale  b" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-b :term "1-or-2" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-b :term "3-or-4" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-b :term "5-or-6" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-b :term "7-to-9" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-b :term "10-or-more" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-b :term "missing-not-available" :variant -lang numeric "999"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-b :term "not-applicable" :variant -lang numeric "888"
}

proc createDict_pssd_sr_substance_use_scale_5_c { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-5-c]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-5-c :description "substance use scale c" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-c :term "never" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-c :term "less-than-monthly" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-c :term "monthly" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-c :term "weekly" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-c :term "daily-or-almost-daily" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-c :term "missing-not-available" :variant -lang numeric "999"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-c :term "not-applicable" :variant -lang numeric "888"
}

proc createDict_pssd_sr_substance_use_scale_5_d { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-substance-use-scale-5-d]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-substance-use-scale-5-d :description "substance use scale d" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-d :term "no" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-d :term "yes-not-in-last-year" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-d :term "yes-in-last-year" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-d :term "missing-not-available" :variant -lang numeric "999"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-substance-use-scale-5-d :term "not-applicable" :variant -lang numeric "888"
}

proc createDict_pssd_sr_wsls { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-wsls]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-wsls :description "work and social life scale dictionary" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "not" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "minimally" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "slightly" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "mildy" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "moderately" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "severely" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "extremely" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "cannot" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "missing-not-available" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-wsls :term "not-applicable" :variant -lang numeric "999"
}

proc createDict_pssd_sr_apsd { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-apsd]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-apsd :description "antisocial process screening device dictionary" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-apsd :term "not-at-all" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-apsd :term "sometimes true" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-apsd :term "definitely true" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-apsd :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_sias { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-sias]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-sias :description "social interaction anxiety dictionary" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-sias :term "not-at-all" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-sias :term "slightly-characteristic-or-true" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-sias :term "moderately-characteristic-or-true" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-sias :term "very-characteristic-or-true" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-sias :term "extremely-characteristic-or-true" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-sias :term "missing-not-available" :variant -lang numeric "5"
}

proc createDict_pssd_sr_scale_10_a { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-10-a]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-10-a :description "self report scale 10" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-a :term "very-good" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-a :term "good" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-a :term "moderate" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-a :term "bad" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-a :term "very-bad" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-a :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_scale_10_b { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-10-b]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-10-b :description "self report scale 10" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-b :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-b :term "mild" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-b :term "moderate" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-b :term "severe" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-b :term "extreme-cannot" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-b :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_scale_10_c { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-10-c]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-10-c :description "self report scale 10" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-c :term "no-at-all" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-c :term "mildly" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-c :term "moderately" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-c :term "severely" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-c :term "extremely" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-10-c :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_scale_11_a { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-11-a]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-11-a :description "self report scale 10" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-a :term "0-3" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-a :term "3-6" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-a :term "6-9" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-a :term "9-12" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-a :term "12" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-a :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_scale_11_b { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-11-b]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-11-b :description "self report scale 10" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-b :term "almost-never" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-b :term "rarely" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-b :term "sometimes" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-b :term "often" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-b :term "missing-not-available" :variant -lang numeric "999"
}
proc createDict_pssd_sr_scale_11_c { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-11-c]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-11-c :description "self report scale 10" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-c :term "avoid-them" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-c :term "feel-nervous" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-c :term "accept-them" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-c :term "like-them" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-c :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_scale_11_f { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-11-f]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-11-f :description "Scale 11 list of terms" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-f :term "adequately" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-f :term "needs-help" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-f :term "unable" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-f :term "do-not-know" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-11-f :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_scale_13_5 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-13-5]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-13-5 :description "Scale 13, questions 5, 7, 8, and 11 list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-5 :term "not-during-the-past-month" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-5 :term "less-than-once-a-week" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-5 :term "once-or-twice-a-week" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-5 :term "3-or-more-times-a-week" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-5 :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_scale_13_6 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-13-6]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-13-6 :description "Scale 13, question 6 list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-6 :term "very-good" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-6 :term "fairly-good" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-6 :term "fairly-bad" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-6 :term "very-bad" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-6 :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_scale_13_9 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-13-9]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-13-9 :description "Scale 13, question 9 list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-9 :term "no-problem-at-all" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-9 :term "only-a-very-slight-problem" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-9 :term "some-what-of-a-problem" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-9 :term "a-very-big-problem" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-9 :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_scale_13_10 { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-scale-13-10]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-scale-13-10 :description "Scale 13, question 10 list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-10 :term "no-bedpartner-or-do-not-share-a-room" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-10 :term "partner-flatmate-in-other-room" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-10 :term "partner-in-same-room-not-same-bed" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-10 :term "partner-in-same-bed" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-scale-13-10 :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_dose_units { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.dose-units]] == "false" } {
		dictionary.create :name ${ns}.pssd.dose-units :description "medication does units of measure" :case-sensitive false :variant < :lang abbreviated-measure :description "abbreviated variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-units :term "gram" :variant -lang abbreviated-measure "g"
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-units :term "microgram" :variant -lang abbreviated-measure "ug"
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-units :term "micro-litre" :variant -lang abbreviated-measure "uL"
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-units :term "micron" :variant -lang abbreviated-measure "um"
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-units :term "milligram" :variant -lang abbreviated-measure "mg"
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-units :term "millilitre" :variant -lang abbreviated-measure "mL"
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-units :term "nanogram" :variant -lang abbreviated-measure "ng"
}

proc createDict_pssd_dose_timing { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.dose-timing]] == "false" } {
		dictionary.create :name ${ns}.pssd.dose-timing :description "medication dose timing unit" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-timing :term "per-day" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-timing :term "per-week" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-timing :term "per-month" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.dose-timing :term "per-year" :variant -lang numeric "4"

}

proc createDict_pssd_sr_ymrs_a { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-a]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-a :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-a :term "absent" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-a :term "mildly" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-a :term "definite" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-a :term "elevated" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-a :term "euphoric" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-a :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-a :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_ymrs_b { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-b]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-b :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-b :term "absent" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-b :term "subjectively-increased" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-b :term "animated" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-b :term "excessive" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-b :term "motor-excitement" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-b :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-b :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_ymrs_c { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-c]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-c :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-c :term "normal" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-c :term "mildly" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-c :term "definite" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-c :term "spontaneous" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-c :term "overt" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-c :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-c :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_ymrs_d { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-d]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-d :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-d :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-d :term "less-up-to-1-hour" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-d :term "less-more-than-1-hour" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-d :term "decreased" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-d :term "denies" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-d :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-d :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_ymrs_e { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-e]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-e :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-e :term "absent" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-e :term "subjectively-increased" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-e :term "irritable" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-e :term "frequently" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-e :term "hostile" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-e :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-e :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_ymrs_f { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-f]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-f :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-f :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-f :term "feels-talkative" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-f :term "increased" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-f :term "push" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-f :term "pressured" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-f :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-f :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_ymrs_g { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-g]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-g :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-g :term "absent" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-g :term "circumstantial" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-g :term "distractible" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-g :term "flight-of-ideas" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-g :term "incoherant" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-g :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-g :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_ymrs_h { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-h]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-h :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-h :term "normal" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-h :term "questionable" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-h :term "special-project" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-h :term "grandiose" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-h :term "delusions" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-h :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-h :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_ymrs_i { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-i]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-i :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-i :term "absent" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-i :term "sarcastic" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-i :term "demanding" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-i :term "threatening" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-i :term "assaultive" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-i :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-i :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_ymrs_j { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-j]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-j :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-j :term "appropriate" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-j :term "minimally" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-j :term "poorly" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-j :term "disheveled" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-j :term "completely" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-j :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-j :term "missing-not-available" :variant -lang numeric "999"
}
proc createDict_pssd_sr_ymrs_k { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-ymrs-k]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-ymrs-k :description "youth mental health rating scale" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-k :term "present-admits-illness" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-k :term "possibly-ill" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-k :term "admits-change" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-k :term "admits-possible-change" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-k :term "denies-change" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-ymrs-k :term "missing-not-available" :variant -lang numeric "999"
}

proc createDict_pssd_sr_student_status { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-student-status]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-student-status :description "Self report student type list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-student-status :term "part-time-secondary" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-student-status :term "full-time-secondary" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-student-status :term "part-time-tertiary" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-student-status :term "full-time-tertiary" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-student-status :term "discontinued-school-or-study-due-to-symptoms" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-student-status :term "full-time-primary" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-student-status :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-student-status :term "missing-not-available" :variant -lang numeric "999"

}

proc createDict_pssd_sr_vocational_status { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-vocational-status]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-vocational-status :description "Self report vocational status list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-vocational-status :term "part-time-employment" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-vocational-status :term "full-time-employment" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-vocational-status :term "volunteer-work" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-vocational-status :term "not-currently-working" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-vocational-status :term "leave-of-absence" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-vocational-status :term "house-duties" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-vocational-status :term "unemployed" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-vocational-status :term "retired" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-vocational-status :term "missing-not-available" :variant -lang numeric "999"

}

proc createDict_pssd_sr_occupational_status { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-occupational-status]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-occupational-status :description "Self report occupational status list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-occupational-status :term "student" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-occupational-status :term "employed" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-occupational-status :term "volunteer-work-not-working" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-occupational-status :term "unemployed" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-occupational-status :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-occupational-status :term "missing-not-available" :variant -lang numeric "999"

}

proc createDict_pssd_timing { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.timing]] == "false" } {
		dictionary.create :name ${ns}.pssd.timing :description "unit of time" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.timing :term "days" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.timing :term "weeks" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.timing :term "months" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.timing :term "years" :variant -lang numeric "4"

}

proc createDict_pssd_sr_marital_status { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-marital-status]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-marital-status :description "Self report marital status list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-marital-status :term "never-married" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-marital-status :term "married-de-facto" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-marital-status :term "separated" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-marital-status :term "widowed" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-marital-status :term "divorced" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-marital-status :term "missing-not-available" :variant -lang numeric "999"

}

proc createDict_pssd_sr_living_status { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-living-status]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-living-status :description "Self report marital status list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-living-status :term "home-alone-independent" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-living-status :term "independent-shared-accommodation" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-living-status :term "partially-supported" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-living-status :term "dependent" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-living-status :term "other" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-living-status :term "missing-not-available" :variant -lang numeric "999"

}

proc createDict_pssd_sr_tobacco_usage { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sr-tobacco-usage]] == "false" } {
		dictionary.create :name ${ns}.pssd.sr-tobacco-usage :description "tobacco usage dictionary" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-tobacco-usage :term "never" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-tobacco-usage :term "occasionally but stopped" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-tobacco-usage :term "occasionally continuing" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-tobacco-usage :term "regularly but stopped" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-tobacco-usage :term "regularly continuing" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.sr-tobacco-usage :term "missing-not-available" :variant -lang numeric "999"

}

proc createDict_pssd_secs_mins_hours { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.secs-mins-hours]] == "false" } {
		dictionary.create :name ${ns}.pssd.secs-mins-hours :description "unit of time" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.secs-mins-hours :term "seconds" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.secs-mins-hours :term "minutes" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.secs-mins-hours :term "hours" :variant -lang numeric "3"

}

proc createDict_pssd_child_adult { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.child-adult]] == "false" } {
		dictionary.create :name ${ns}.pssd.child-adult :description "subject is a child or adult" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.child-adult :term "child" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.child-adult :term "adult" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.child-adult :term "missing-not-available" :variant -lang numeric "999"

}

proc createDict_pssd_suicide_flag { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.suicide-flag]] == "false" } {
		dictionary.create :name ${ns}.pssd.suicide-flag :description "subject is a child or adult" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.suicide-flag :term "NIL" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.suicide-flag :term "not-worth-living" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.suicide-flag :term "suicide-ideation" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.suicide-flag :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.suicide-flag :term "missing-not-available" :variant -lang numeric "999"

}

#============================================================================#
proc createUpdatePSSDDicts { ns } {

	createDict_pssd_ap_ham_d_sections $ns
	createDict_pssd_ap_ham_d_scores_2 $ns
	createDict_pssd_ap_ham_d_scores_3 $ns
	createDict_pssd_ap_ham_d_scores_4 $ns
	createDict_pssd_ap_bprs_sections $ns
	createDict_pssd_ap_bprs_scores $ns
	createDict_pssd_ap_sds_scores $ns
	createDict_pssd_ap_sds_types $ns
	createDict_pssd_ap_sds_drug_class $ns
	createDict_pssd_sr_kessler_10 $ns
	createDict_pssd_sr_dass $ns
	createDict_pssd_sr_who_qol_1 $ns
	createDict_pssd_sr_who_qol_2 $ns
	createDict_pssd_sr_who_qol_3 $ns
	createDict_pssd_sr_substance_use_scale_4_last_3_months $ns
	createDict_pssd_sr_substance_use_scale_5_a $ns
	createDict_pssd_sr_substance_use_scale_5_b $ns
	createDict_pssd_sr_substance_use_scale_5_c $ns
	createDict_pssd_sr_substance_use_scale_5_d $ns
	createDict_pssd_sr_wsls $ns
	createDict_pssd_sr_sias $ns
	createDict_pssd_sr_scale_10_a $ns
	createDict_pssd_sr_scale_10_b $ns
	createDict_pssd_sr_scale_10_c $ns
	createDict_pssd_sr_scale_11_a $ns
	createDict_pssd_sr_scale_11_b $ns
	createDict_pssd_sr_scale_11_c $ns
	createDict_pssd_sr_scale_11_f $ns
	createDict_pssd_sr_scale_13_5 $ns
	createDict_pssd_sr_scale_13_6 $ns
	createDict_pssd_sr_scale_13_9 $ns
	createDict_pssd_sr_scale_13_10 $ns
	createDict_pssd_sr_apsd $ns
	createDict_pssd_dose_units $ns
	createDict_pssd_dose_timing $ns
	createDict_pssd_sr_ymrs_a $ns
	createDict_pssd_sr_ymrs_b $ns
	createDict_pssd_sr_ymrs_c $ns
	createDict_pssd_sr_ymrs_d $ns
	createDict_pssd_sr_ymrs_e $ns
	createDict_pssd_sr_ymrs_f $ns
	createDict_pssd_sr_ymrs_g $ns
	createDict_pssd_sr_ymrs_h $ns
	createDict_pssd_sr_ymrs_i $ns
	createDict_pssd_sr_ymrs_j $ns
	createDict_pssd_sr_ymrs_k $ns
	createDict_pssd_sr_student_status $ns
	createDict_pssd_sr_vocational_status $ns
	createDict_pssd_sr_occupational_status $ns
	createDict_pssd_sr_marital_status $ns
	createDict_pssd_sr_living_status $ns
	createDict_pssd_timing $ns
	createDict_pssd_sr_tobacco_usage $ns
	createDict_pssd_secs_mins_hours $ns
	createDict_pssd_child_adult $ns
	createDict_pssd_suicide_flag $ns
}

#============================================================================#
proc destroyPSSDDicts { ns } {

	set dicts [list $ns.pssd.ap-ham-d-sections \
				$ns.pssd.ap-ham-d-scores-2 \
				$ns.pssd.ap-ham-d-scores-3 \
				$ns.pssd.ap-ham-d-scores-4 \
				$ns.pssd.ap-bprs-sections \
				$ns.pssd.ap-bprs-scores \
				$ns.pssd.ap-sds-types \
				$ns.pssd.ap-sds-scores \
				$ns.pssd.ap-sds-drug-class \
				$ns.pssd.sr-kessler-10 \
				$ns.pssd.sr-dass \
				$ns.pssd.sr-who-qol-1 \
				$ns.pssd.sr-who-qol-2 \
				$ns.pssd.sr-who-qol-3 \
				$ns.pssd.sr-substance-use-scale-last-3-months \
				$ns.pssd.sr-substance-use-scale-5-a \
				$ns.pssd.sr-substance-use-scale-5-b \
				$ns.pssd.sr-substance-use-scale-5-c \
				$ns.pssd.sr-substance-use-scale-5-d \
				$ns.pssd.sr-wsls $ns.pssd.sr-sias \
				$ns.pssd.sr-scale-10-a \
				$ns.pssd.sr-scale-10-b \
				$ns.pssd.sr-scale-10-c \
				$ns.pssd.sr-scale-11-a \
				$ns.pssd.sr-scale-11-b \
				$ns.pssd.sr-scale-11-c \
				$ns.pssd.sr-scale-11-f \
				$ns.pssd.sr-scale-13-5\
				$ns.pssd.sr-scale-13-6\
				$ns.pssd.sr-scale-13-9\
				$ns.pssd.sr-scale-13-10\
				$ns.pssd.sr-apsd \
				$ns.pssd.dose-units \
				$ns.pssd.dose-timing \
				$ns.pssd.sr-ymrs-a \
				$ns.pssd.sr-ymrs-b \
				$ns.pssd.sr-ymrs-c \
				$ns.pssd.sr-ymrs-d \
				$ns.pssd.sr-ymrs-e \
				$ns.pssd.sr-ymrs-f \
				$ns.pssd.sr-ymrs-g \
				$ns.pssd.sr-ymrs-h \
				$ns.pssd.sr-ymrs-i \
				$ns.pssd.sr-ymrs-j \
				$ns.pssd.sr-ymrs-k \
				$ns.pssd.sr-student-status \
				$ns.pssd.sr-vocational-status \
				$ns.pssd.sr-occupational-status \
				$ns.pssd.sr-marital-status \
				$ns.pssd.sr-living-status \
				$ns.pssd.timing \
				$ns.pssd.secs-mins-hours \
				$ns.pssd.sr-tobacco-usage \
				$ns.pssd.child-adult \
				$ns.pssd.suicide-flag]
	foreach dict $dicts {
		if { [xvalue exists [dictionary.exists :name $dict]] == "true" } {
			dictionary.destroy :name $dict
		}
	}
}