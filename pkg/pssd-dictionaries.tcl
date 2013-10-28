#=============================================================================
proc createDict_pssd_anti_convulsant_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.anti-convulsant-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.anti-convulsant-types :description "dictionary type for anti-convulsant medications" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-convulsant-types :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-convulsant-types :term "topamax" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-convulsant-types :term "lyrica" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-convulsant-types :term "other" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-convulsant-types :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-convulsant-types :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_stimulant_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.stimulant-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.stimulant-types :description "dictionary type for stimulant medications" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.stimulant-types :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.stimulant-types :term "methylphenidate" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.stimulant-types :term "dexamphetamine" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.stimulant-types :term "concerta" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.stimulant-types :term "straterra" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.stimulant-types :term "other" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.stimulant-types :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.stimulant-types :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_benzodiazepine_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.benzodiazepine-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.benzodiazepine-types :description "dictionary type for benzodiaepine medications" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.benzodiazepine-types :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.benzodiazepine-types :term "alprazolam" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.benzodiazepine-types :term "diazepam" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.benzodiazepine-types :term "nitrazepam" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.benzodiazepine-types :term "oxazepam" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.benzodiazepine-types :term "temazepam" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.benzodiazepine-types :term "other" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.benzodiazepine-types :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.benzodiazepine-types :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_anti_psychotic_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.anti-psychotic-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.anti-psychotic-types :description "dictionary type for anti-psychotic medications" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "amisulrpide" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "aripripazole" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "clozapine" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "haloperidol" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "olanzapine" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "quetiapine" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "risperidone" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "ziprasadone" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "other" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-psychotic-types :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_mood_stabiliser_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.mood-stabiliser-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.mood-stabiliser-types :description "dictionary type for mood-stabilser medications" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.mood-stabiliser-types :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.mood-stabiliser-types :term "lamotrigine" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.mood-stabiliser-types :term "levetiracetam" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.mood-stabiliser-types :term "lithium" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.mood-stabiliser-types :term "sodium-valproate" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.mood-stabiliser-types :term "valproic-acid" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.mood-stabiliser-types :term "other" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.mood-stabiliser-types :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.mood-stabiliser-types :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_other_adjunctive_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.other-adjunctive-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.other-adjunctive-types :description "dictionary type for other-adjunctive treatments" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.other-adjunctive-types :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.other-adjunctive-types :term "fish-oil" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.other-adjunctive-types :term "vitamins" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.other-adjunctive-types :term "folate" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.other-adjunctive-types :term "b12" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.other-adjunctive-types :term "other" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.other-adjunctive-types :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.other-adjunctive-types :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_sedative_hypnotic_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sedative-hypnotic-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.sedative-hypnotic-types :description "dictionary type for sedative and hypnotic medications" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.sedative-hypnotic-types :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.sedative-hypnotic-types :term "promothazine" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.sedative-hypnotic-types :term "zolpidem" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.sedative-hypnotic-types :term "zopiclone" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.sedative-hypnotic-types :term "other" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.sedative-hypnotic-types :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.sedative-hypnotic-types :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_anti_depressant_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.anti-depressant-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.anti-depressant-types :description "dictionary type for anti-depressant medications" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "none" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "citalopram" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "fluoxetine" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "paroxetine" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "sertraline" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "escitalopram" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "venlafaxine" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "amitriptyline" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "clomipramine" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "imipramine" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "mirtazapine" :variant -lang numeric "10"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "moclobemide" :variant -lang numeric "11"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "phenelzine" :variant -lang numeric "12"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "tranylcypromine" :variant -lang numeric "13"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "reboxetine" :variant -lang numeric "14"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "fluvoxamine" :variant -lang numeric "15"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "duloxetine" :variant -lang numeric "17"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "aripiprazole" :variant -lang numeric "18"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "fluvoxamine" :variant -lang numeric "19"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "agomelatine" :variant -lang numeric "20"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "other" :variant -lang numeric "16"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.anti-depressant-types :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_relative_medical_condition { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.relative-medical-condition]] == "false" } {
		dictionary.create :name ${ns}.pssd.relative-medical-condition :description "dictionary for medical conditions fro a subjects relative" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "depression" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "anxiety" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "bipolar-disorder" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "schizophrenia" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "alcholhol-substance-use" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "pyschiatric-hospitalisation" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "electro-convulsive-therapy" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "Suicide" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "dementia" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "other" :variant -lang numeric "10"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "missing-not-available" :variant -lang numeric "999"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-medical-condition :term "not-applicable" :variant -lang numeric "888"
}

#=============================================================================
proc createDict_pssd_relative_type { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.relative-type]] == "false" } {
		dictionary.create :name ${ns}.pssd.relative-type :description "dictionary for types of subjects relatives" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "father" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "mother" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "sibling" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "uncle/aunt" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "grandparent" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "cousin" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_relative_degree { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.relative-degree]] == "false" } {
		dictionary.create :name ${ns}.pssd.relative-degree :description "dictionary for types of subjects relative degree" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "first" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "second" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.relative-type :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_staging_model { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.staging-model]] == "false" } {
		dictionary.create :name ${ns}.pssd.staging-model :description "diagnosis and clinical tagging model values" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "stage-0" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "stage-1a" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "stage-1b" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "stage-2" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "stage-3" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "stage-3a" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "stage-3b" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "stage-3c" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "stage-4" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "control" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.staging-model :term "missing-unavailable" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_diagnostic_diagnosis { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.diagnostic-diagnosis]] == "false" } {
		dictionary.create :name ${ns}.pssd.diagnostic-diagnosis :description "standard list of psychological diagnosis" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "major-depression" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "bipolar-disorder" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "anxiety" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "first-episode-psychosis" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "schizophrenia" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "schizophreniform" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "schizoaffective" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "brief-psychotic-disorder" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "attention-deficit-disorder" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "personality" :variant -lang numeric "10"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "alcohol-abuse" :variant -lang numeric "11"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "eating-disorder" :variant -lang numeric "12"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "behavioural" :variant -lang numeric "13"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "uncler-still-assessing" :variant -lang numeric "14"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "other" :variant -lang numeric "15"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnostic-diagnosis :term "control" :variant -lang numeric "16"
}

#=============================================================================
proc createDict_pssd_uhr_symptoms { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.uhr-symptoms]] == "false" } {
		dictionary.create :name ${ns}.pssd.uhr-symptoms :description "standard, no, yes, missing response set" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.uhr-symptoms :term "decline-in-social-functioning" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.uhr-symptoms :term "decline-occupational-vocational-funtioning" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.uhr-symptoms :term "decline-in-cognition" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.uhr-symptoms :term "patient-shows-mood-disturbance" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.uhr-symptoms :term "patient-shows-subthreshold-psychotic-symptoms" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.uhr-symptoms :term "patient-shows-drug-and-alchole-use" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.uhr-symptoms :term "patient-has-a-family-history-of-psychiatric-disorder" :variant -lang numeric "7"
}

#=============================================================================

proc createDict_pssd_standard_no_yes { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.standard-no-yes]] == "false" } {
		dictionary.create :name ${ns}.pssd.standard-no-yes :description "standard no, yes, not applicable, missing response set" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.standard-no-yes :term "no" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.standard-no-yes :term "yes" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.standard-no-yes :term "not applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.standard-no-yes :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_substance_use_no_yes { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.substance-use-no-yes]] == "false" } {
		dictionary.create :name ${ns}.pssd.substance-use-no-yes :description "true false response set for diagnostic information collected from the psychiatrists assessment green form " :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.substance-use-no-yes :term "no" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.substance-use-no-yes :term "yes" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.substance-use-no-yes :term "past" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.substance-use-no-yes :term "not applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.substance-use-no-yes :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_psychiatric_episodes { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.psychiatric-episodes]] == "false" } {
		dictionary.create :name ${ns}.pssd.psychiatric-episodes :description "number of psychiatric episodes" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.psychiatric-episodes :term "0" :variant -lang numeric "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.psychiatric-episodes :term "1" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.psychiatric-episodes :term "2-3" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.psychiatric-episodes :term "4-or-more" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.psychiatric-episodes :term "several" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.psychiatric-episodes :term "not-applicable" :variant -lang numeric "888"
	dictionary.entry.add  :dictionary ${ns}.pssd.psychiatric-episodes :term "missing-not-available" :variant -lang numeric "999"
}


#=============================================================================
proc createDict_pssd_subject_gender { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.subject.gender]] == "false" } {
		dictionary.create :name ${ns}.pssd.subject.gender :description "Gender" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.gender :term "male" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.gender :term "female" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.gender :term "missing-not-available" :variant -lang numeric "999"
}

#=============================================================================
proc createDict_pssd_animal_species { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.animal.species]] == "false" } {
		dictionary.create :name ${ns}.pssd.animal.species :description "animal species" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "human" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "baboon" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "cat" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "guineapig" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "marmoset" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "mouse" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "monkey" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "pig" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "rat" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "rabbit" :variant -lang numeric "10"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.species :term "sheep" :variant -lang numeric "11"

}


#=============================================================================
proc createDict_funding_organization { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.funding.organization]] == "false" } {
		dictionary.create :name ${ns}.funding.organization :description "organizations that supply funding" :case-sensitive true :variant < :lang abbreviation :description "abbreviated variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.funding.organization :term "Australian Research Council" :variant -lang abbreviation "ARC"
	dictionary.entry.add  :dictionary ${ns}.funding.organization :term "National Health and Medical Research Council" :variant -lang abbreviation "NHMRC"
	dictionary.entry.add  :dictionary ${ns}.funding.organization :term "National Imaging Facility" :variant -lang abbreviation "NIF"
	dictionary.entry.add  :dictionary ${ns}.funding.organization :term "Other funding entity"	:variant -lang abbreviation "other"
	dictionary.entry.add  :dictionary ${ns}.funding.organization :term "The University of Sydney" :variant -lang abbreviation "UoS"
}


proc createDict_pssd_subject_pathology { ns } {

	if { [xvalue exists [dictionary.exists :name $ns.pssd.subject.pathology]] == "false" } {
		dictionary.create :name $ns.pssd.subject.pathology :description "Disease pathologies for Subjects" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Alzheimer's Disease" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Experimental Autoimmune Encephalomyelitis (EAE)" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Epilepsy" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Freidrich Ataxia" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Huntington's Disease" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Multiple Sclerosis" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Motor Neuron" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Obesity" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Optic Neuritis" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Parkinson's Disease" :variant -lang numeric "10"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Stroke" :variant -lang numeric "11"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Other" :variant -lang numeric "12"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "Chronic Pain" :variant -lang numeric "13"
	dictionary.entry.add  :dictionary ${ns}.pssd.subject.pathology :term "None" :variant -lang numeric "14"
}


proc createDict_pssd_animal_strains { ns } {

	if { [xvalue exists [dictionary.exists :name $ns.pssd.animal.strains]] == "false" } {
		dictionary.create :name $ns.pssd.animal.strains :description "Genetic strains of animals" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.strains :term "C57Black" "Mouse strain" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.strains :term "129" "Mouse strain" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.strains :term "BALB/C" "Mouse strain" :variant -lang numeric "3"

}


#=============================================================================
proc createDict_pssd_animal_genes { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.animal.genes]] == "false" } {
		dictionary.create :name ${ns}.pssd.animal.genes :description "Standard animal gene names" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.genes :term "Leukemic Inhibitory Factor (LIF)" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.animal.genes :term "Ciliary Neurotropic Factor (CNTF)" :variant -lang numeric "2"

}

#=============================================================================
proc createDict_PET_tracers { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.PET.tracer]] == "false" } {
		dictionary.create :name ${ns}.PET.tracer :description "Standard PET imaging tacers" :case-sensitive true :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.PET.tracer :term "11C-PIB" "Pittsburgh Compound B" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.PET.tracer :term "18F-FDG" "18F-2-fluoro-deoxy-D-glucose" :variant -lang numeric "2"

}

#=============================================================================
proc createDict_pssd_languages { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.languages]] == "false" } {
		dictionary.create :name ${ns}.pssd.languages :description "standard language list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "english" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "chinese-cantonese-mandarin-taiwanese" :variant -lang numeric "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "korean" :variant -lang numeric "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "turkish" :variant -lang numeric "4"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "greek" :variant -lang numeric "5"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "hindi" :variant -lang numeric "6"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "polish" :variant -lang numeric "7"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "cantonese" :variant -lang numeric "8"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "taiwanese" :variant -lang numeric "9"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "farsi" :variant -lang numeric "10"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "spanish" :variant -lang numeric "11"
	dictionary.entry.add  :dictionary ${ns}.pssd.languages :term "other" :variant -lang numeric "12"

}

#=============================================================================
proc createDict_pssd_language_type { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.language-type]] == "false" } {
		dictionary.create :name ${ns}.pssd.language-type :description "standard language type list" :case-sensitive false :variant < :lang numeric :description "numeric variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.language-type :term "first" :variant -lang numeric "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.language-type :term "second" :variant -lang numeric "2"
}

#=============================================================================
proc createDict_pssd_am_pm { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.am-pm]] == "false" } {
		dictionary.create :name ${ns}.pssd.am-pm :description "am and pm list" :case-sensitive false :variant < :lang other :description "am pm variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.am-pm :term "am" :variant -lang other "am"
	dictionary.entry.add  :dictionary ${ns}.pssd.am-pm :term "pm" :variant -lang other "pm"
}

#=============================================================================
proc createDict_pssd_major_medical_condition_yes_no { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.major-medical-condition-yes-no]] == "false" } {
		dictionary.create :name ${ns}.pssd.major-medical-condition-yes-no :description "major medical condition yes no list" :case-sensitive false :variant < :lang other :description "am pm variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.major-medical-condition-yes-no :term "no" :variant -lang other "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.major-medical-condition-yes-no :term "yes" :variant -lang other "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.major-medical-condition-yes-no :term "questionable" :variant -lang other "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.major-medical-condition-yes-no :term "missing-not-available" :variant -lang other "999"
}

#=============================================================================
proc createDict_pssd_child_abuse_yes_no { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.child-abuse-yes-no]] == "false" } {
		dictionary.create :name ${ns}.pssd.child-abuse-yes-no :description "child abuse yes no list" :case-sensitive false :variant < :lang other :description "am pm variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.child-abuse-yes-no :term "no" :variant -lang other "0"
	dictionary.entry.add  :dictionary ${ns}.pssd.child-abuse-yes-no :term "yes" :variant -lang other "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.child-abuse-yes-no :term "possible" :variant -lang other "2"
	dictionary.entry.add  :dictionary ${ns}.pssd.child-abuse-yes-no :term "not-asked" :variant -lang other "3"
	dictionary.entry.add  :dictionary ${ns}.pssd.child-abuse-yes-no :term "missing-not-available" :variant -lang other "999"
}

#=============================================================================
proc createDict_pssd_diagnosis_type { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.diagnosis-type]] == "false" } {
		dictionary.create :name ${ns}.pssd.diagnosis-type :description "diagnosis type list" :case-sensitive false :variant < :lang other :description "am pm variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnosis-type :term "primary" :variant -lang other "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.diagnosis-type :term "secondary" :variant -lang other "2"
}

#=============================================================================
proc createDict_pssd_nicotine_caffeine { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.nicotine-caffeine]] == "false" } {
		dictionary.create :name ${ns}.pssd.nicotine-caffeine :description "caffeine nicotine list" :case-sensitive false :variant < :lang other :description "am pm variant" > \
	}
	dictionary.entry.add  :dictionary ${ns}.pssd.nicotine-caffeine :term "nicotine" :variant -lang other "1"
	dictionary.entry.add  :dictionary ${ns}.pssd.nicotine-caffeine :term "caffeine" :variant -lang other "2"
}

#============================================================================#
proc createUpdatePSSDDicts { ns } {
	
	createDict_pssd_anti_convulsant_types $ns
	createDict_pssd_stimulant_types $ns
	createDict_pssd_benzodiazepine_types $ns
	createDict_pssd_anti_psychotic_types $ns
	createDict_pssd_mood_stabiliser_types $ns
	createDict_pssd_other_adjunctive_types $ns
	createDict_pssd_sedative_hypnotic_types $ns
	createDict_pssd_anti_depressant_types $ns
	createDict_pssd_relative_medical_condition $ns
	createDict_pssd_relative_type $ns
	createDict_pssd_relative_degree $ns
	createDict_pssd_staging_model $ns
	createDict_pssd_diagnostic_diagnosis $ns
	createDict_pssd_uhr_symptoms $ns
	createDict_pssd_standard_no_yes $ns
	createDict_pssd_substance_use_no_yes $ns
	createDict_pssd_psychiatric_episodes $ns
	createDict_pssd_subject_gender $ns
	createDict_pssd_animal_species $ns
	createDict_funding_organization $ns
	createDict_pssd_subject_pathology $ns
	createDict_pssd_animal_strains $ns
	createDict_pssd_animal_genes $ns
	createDict_pssd_languages $ns
	createDict_pssd_language_type $ns
	createDict_PET_tracers $ns
	createDict_pssd_am_pm $ns
	createDict_pssd_major_medical_condition_yes_no $ns
	createDict_pssd_child_abuse_yes_no $ns
	createDict_pssd_diagnosis_type $ns
	createDict_pssd_nicotine_caffeine $ns

}

#============================================================================#
proc destroyPSSDDicts { ns } {

	set dicts [list $ns.pssd.anti-convulsant-types \
			$ns.pssd.stimulant-types \
			$ns.pssd.benzodiazepine-types \
			$ns.pssd.anti-psychotic-types \
			$ns.pssd.mood-stabiliser-types \
			$ns.pssd.other-adjunctive-types \
			$ns.pssd.sedative-hypnotic-types \
			$ns.pssd.anti-depressant-types \
			$ns.pssd.relative-medical-condition \
			$ns.pssd.relative-type \
			$ns.pssd.relative-degree \
			$ns.pssd.staging-model \
			$ns.pssd.diagnostic-diagnosis \
			$ns.pssd.uhr-symptoms \
			$ns.pssd.standard-no-yes \
			$ns.pssd.substance-use-yes-no \
			$ns.pssd.psychiatric-episodes \
			$ns.pssd.subject.gender \
			$ns.pssd.animal.species \
			$ns.funding.organization \
			$ns.PET.tracer \
			$ns.pssd.subject.pathology \
			$ns.pssd.animal.strains $ns.pssd.animal.genes \
			$ns.pssd.languages \
			$ns.pssd.language-type \
			$ns.pssd.am-pm \
			$ns.pssd.major-medical-condition-yes-no \
			$ns.pssd.child-abuse-yes-no \
			$ns.pssd.diagnosis-type \
			$ns.pssd.nicotine-caffeine]
	foreach dict $dicts {
		if { [xvalue exists [dictionary.exists :name $dict]] == "true" } {
			dictionary.destroy :name $dict
		}
	}
}

