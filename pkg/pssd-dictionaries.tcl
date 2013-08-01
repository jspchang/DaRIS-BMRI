#=============================================================================
proc createDict_pssd_anti_convulsant_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.anti-convulsant-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.anti-convulsant-types :description "dictionary type for anti-convulsant medications" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.anti-convulsant-types "none"
	addDictionaryEntry  ${ns}.pssd.anti-convulsant-types "topamax"
	addDictionaryEntry  ${ns}.pssd.anti-convulsant-types "lyrica"
	addDictionaryEntry  ${ns}.pssd.anti-convulsant-types "other"
	addDictionaryEntry  ${ns}.pssd.anti-convulsant-types "n-a"
	addDictionaryEntry  ${ns}.pssd.anti-convulsant-types "missing"
}

#=============================================================================
proc createDict_pssd_stimulant_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.stimulant-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.stimulant-types :description "dictionary type for stimulant medications" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.stimulant-types "none"
	addDictionaryEntry  ${ns}.pssd.stimulant-types "methylphenidate"
	addDictionaryEntry  ${ns}.pssd.stimulant-types "dexamphetamine"
	addDictionaryEntry  ${ns}.pssd.stimulant-types "concerta"
	addDictionaryEntry  ${ns}.pssd.stimulant-types "straterra"
	addDictionaryEntry  ${ns}.pssd.stimulant-types "other"
	addDictionaryEntry  ${ns}.pssd.stimulant-types "n-a"
	addDictionaryEntry  ${ns}.pssd.stimulant-types "missing"
}

#=============================================================================
proc createDict_pssd_benzodiazepine_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.benzodiazepine-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.benzodiazepine-types :description "dictionary type for benzodiaepine medications" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.benzodiazepine-types "none"
	addDictionaryEntry  ${ns}.pssd.benzodiazepine-types "alprazolam"
	addDictionaryEntry  ${ns}.pssd.benzodiazepine-types "diazepam"
	addDictionaryEntry  ${ns}.pssd.benzodiazepine-types "nitrazepam"
	addDictionaryEntry  ${ns}.pssd.benzodiazepine-types "oxazepam"
	addDictionaryEntry  ${ns}.pssd.benzodiazepine-types "temazepam"
	addDictionaryEntry  ${ns}.pssd.benzodiazepine-types "other"
	addDictionaryEntry  ${ns}.pssd.benzodiazepine-types "n-a"
	addDictionaryEntry  ${ns}.pssd.benzodiazepine-types "missing"
}

#=============================================================================
proc createDict_pssd_anti_psychotic_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.anti-psychotic-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.anti-psychotic-types :description "dictionary type for anti-psychotic medications" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "none"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "amisulrpide"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "aripripazole"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "clozapine"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "haloperidol"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "olanzapine"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "quetiapine"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "risperidone"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "ziprasadone"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "other"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "n-a"
	addDictionaryEntry  ${ns}.pssd.anti-psychotic-types "missing"
}

#=============================================================================
proc createDict_pssd_mood_stabiliser_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.mood-stabiliser-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.mood-stabiliser-types :description "dictionary type for mood-stabilser medications" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.mood-stabiliser-types "none"
	addDictionaryEntry  ${ns}.pssd.mood-stabiliser-types "lamotrigine"
	addDictionaryEntry  ${ns}.pssd.mood-stabiliser-types "levetiracetam"
	addDictionaryEntry  ${ns}.pssd.mood-stabiliser-types "lithium"
	addDictionaryEntry  ${ns}.pssd.mood-stabiliser-types "sodium-valproate"
	addDictionaryEntry  ${ns}.pssd.mood-stabiliser-types "valproic-acid"
	addDictionaryEntry  ${ns}.pssd.mood-stabiliser-types "other"
	addDictionaryEntry  ${ns}.pssd.mood-stabiliser-types "n-a"
	addDictionaryEntry  ${ns}.pssd.mood-stabiliser-types "missing"
}

#=============================================================================
proc createDict_pssd_other_adjunctive_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.other-adjunctive-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.other-adjunctive-types :description "dictionary type for other-adjunctive treatments" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.other-adjunctive-types "none"
	addDictionaryEntry  ${ns}.pssd.other-adjunctive-types "fish-oil"
	addDictionaryEntry  ${ns}.pssd.other-adjunctive-types "vitamins"
	addDictionaryEntry  ${ns}.pssd.other-adjunctive-types "folate"
	addDictionaryEntry  ${ns}.pssd.other-adjunctive-types "b12"
	addDictionaryEntry  ${ns}.pssd.other-adjunctive-types "other"
	addDictionaryEntry  ${ns}.pssd.other-adjunctive-types "n-a"
	addDictionaryEntry  ${ns}.pssd.other-adjunctive-types "missing"
}

#=============================================================================
proc createDict_pssd_sedative_hypnotic_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.sedative-hypnotic-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.sedative-hypnotic-types :description "dictionary type for sedative and hypnotic medications" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.sedative-hypnotic-types "none"
	addDictionaryEntry  ${ns}.pssd.sedative-hypnotic-types "promothazine"
	addDictionaryEntry  ${ns}.pssd.sedative-hypnotic-types "zolpidem"
	addDictionaryEntry  ${ns}.pssd.sedative-hypnotic-types "zopiclone"
	addDictionaryEntry  ${ns}.pssd.sedative-hypnotic-types "other"
	addDictionaryEntry  ${ns}.pssd.sedative-hypnotic-types "n-a"
	addDictionaryEntry  ${ns}.pssd.sedative-hypnotic-types "missing"
}

#=============================================================================
proc createDict_pssd_anti_depressant_types { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.anti-depressant-types]] == "false" } {
		dictionary.create :name ${ns}.pssd.anti-depressant-types :description "dictionary type for anti-depressant medications" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "none"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "citalopram"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "fluoxetine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "paroxetine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "sertraline"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "escitalopram"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "venlafaxine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "amitriptyline"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "clomipramine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "imipramine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "mirtazapine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "moclobemide"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "phenelzine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "tranylcypromine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "reboxetine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "fluvoxamine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "duloxetine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "aripiprazole"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "fluvoxamine"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "other"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "n-a"
	addDictionaryEntry  ${ns}.pssd.anti-depressant-types "missing"
}

#=============================================================================
proc createDict_pssd_relative_medical_condition { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.relative-medical-condition]] == "false" } {
		dictionary.create :name ${ns}.pssd.relative-medical-condition :description "dictionary for medical conditions fro a subjects relative" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "depression"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "anxiety"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "bipolar-disorder"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "schizophrenia"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "alcholhol-substance-use"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "pyschiatric-hospitalisation"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "electro-convulsive-therapy"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "Suicide"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "dementia"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "other"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "missing"
	addDictionaryEntry  ${ns}.pssd.relative-medical-condition "not-applicable"
}

#=============================================================================
proc createDict_pssd_relative_type { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.relative-type]] == "false" } {
		dictionary.create :name ${ns}.pssd.relative-type :description "dictionary for types of subjects relatives" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.relative-type "father"
	addDictionaryEntry  ${ns}.pssd.relative-type "mother"
	addDictionaryEntry  ${ns}.pssd.relative-type "sibling"
	addDictionaryEntry  ${ns}.pssd.relative-type "uncle/aunt"
	addDictionaryEntry  ${ns}.pssd.relative-type "grandparent"
	addDictionaryEntry  ${ns}.pssd.relative-type "cousin"
	addDictionaryEntry  ${ns}.pssd.relative-type "not-applicable"
	addDictionaryEntry  ${ns}.pssd.relative-type "missing"
}

#=============================================================================
proc createDict_pssd_diagnostic_staging_model { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.diagnostic-staging-model]] == "false" } {
		dictionary.create :name ${ns}.pssd.diagnostic-staging-model :description "diagnosis and clinical tagging model values" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "stage-0"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "stage-1a"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "stage-1b"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "stage-2"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "stage-3"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "stage-3a"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "stage-3b"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "stage-3c"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "stage-4"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "control"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "not-applicable"
	addDictionaryEntry  ${ns}.pssd.diagnostic-staging-model "missing"
}

#=============================================================================
proc createDict_pssd_diagnostic_diagnosis { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.diagnostic-diagnosis]] == "false" } {
		dictionary.create :name ${ns}.pssd.diagnostic-diagnosis :description "standard list of psychological diagnosis" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "major-depression"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "bipolar-disorder"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "anxiety"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "first-episode-psychosis"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "schizophrenia"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "schizophreniform"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "schizoaffective"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "brief-psychotic-disorder"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "attention-deficit-disorder"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "personality"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "alcohol-abuse"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "eating-disorder"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "behavioural"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "uncler-still-assessing"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "other"
	addDictionaryEntry  ${ns}.pssd.diagnostic-diagnosis "control"
}

#=============================================================================
proc createDict_pssd_uhr_symptoms { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.uhr-symptoms]] == "false" } {
		dictionary.create :name ${ns}.pssd.uhr-symptoms :description "standard, no, yes, missing response set" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.uhr-symptoms "decline-in-social-functioning"
	addDictionaryEntry  ${ns}.pssd.uhr-symptoms "decline-occupational-vocational-funtioning"
	addDictionaryEntry  ${ns}.pssd.uhr-symptoms "decline-in-cognition"
	addDictionaryEntry  ${ns}.pssd.uhr-symptoms "patient-shows-mood-disturbance"
	addDictionaryEntry  ${ns}.pssd.uhr-symptoms "patient-shows-subthreshold-psychotic-symptoms"
	addDictionaryEntry  ${ns}.pssd.uhr-symptoms "patient-shows-drug-and-alchole-use"
	addDictionaryEntry  ${ns}.pssd.uhr-symptoms "patient-has-a-family-history-of-psychiatric-disorder"
}

#=============================================================================
proc createDict_pssd_standard_no_yes_missing { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.standard-no-yes-missing]] == "false" } {
		dictionary.create :name ${ns}.pssd.standard-no-yes-missing :description "standard, no, yes, missing response set" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.standard-no-yes-missing "no"
	addDictionaryEntry  ${ns}.pssd.standard-no-yes-missing "yes"
	addDictionaryEntry  ${ns}.pssd.standard-no-yes-missing "missing"
}
#=============================================================================
proc createDict_pssd_standard_no_yes { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.standard-no-yes]] == "false" } {
		dictionary.create :name ${ns}.pssd.standard-no-yes :description "standard no, yes, not applicable, missing response set" :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.standard-no-yes "no"
	addDictionaryEntry  ${ns}.pssd.standard-no-yes "yes"
	addDictionaryEntry  ${ns}.pssd.standard-no-yes "not applicable"
	addDictionaryEntry  ${ns}.pssd.standard-no-yes "missing"
}

#=============================================================================
proc createDict_pssd_substance_use_no_yes { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.substance-use-no-yes]] == "false" } {
		dictionary.create :name ${ns}.pssd.substance-use-no-yes :description "true false response set for diagnostic information collected from the psychiatrists assessment green form " :case-sensitive true \
	}
	addDictionaryEntry  ${ns}.pssd.substance-use-no-yes "no"
	addDictionaryEntry  ${ns}.pssd.substance-use-no-yes "yes"
	addDictionaryEntry  ${ns}.pssd.substance-use-no-yes "past"
	addDictionaryEntry  ${ns}.pssd.substance-use-no-yes "not applicable"
	addDictionaryEntry  ${ns}.pssd.substance-use-no-yes "missing"
}

#=============================================================================
proc createDict_pssd_psychiatric_episodes { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.psychiatric-episodes]] == "false" } {
		dictionary.create :name ${ns}.pssd.psychiatric-episodes :description "number of psychiatric episodes" :case-sensitive true
	}
	addDictionaryEntry  ${ns}.pssd.psychiatric-episodes 0
	addDictionaryEntry  ${ns}.pssd.psychiatric-episodes 1
	addDictionaryEntry  ${ns}.pssd.psychiatric-episodes 2-3
	addDictionaryEntry  ${ns}.pssd.psychiatric-episodes 4-or-more
	addDictionaryEntry  ${ns}.pssd.psychiatric-episodes several
	addDictionaryEntry  ${ns}.pssd.psychiatric-episodes not-applicable
	addDictionaryEntry  ${ns}.pssd.psychiatric-episodes missing
}


#=============================================================================
proc createDict_pssd_subject_gender { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.subject.gender]] == "false" } {
		dictionary.create :name ${ns}.pssd.subject.gender :description "Gender" :case-sensitive true
	}
	addDictionaryEntry  ${ns}.pssd.subject.gender "male"
	addDictionaryEntry  ${ns}.pssd.subject.gender "female"
	addDictionaryEntry  ${ns}.pssd.subject.gender "missing"
}

#=============================================================================
proc createDict_pssd_animal_species { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.animal.species]] == "false" } {
		dictionary.create :name ${ns}.pssd.animal.species :description "animal species" :case-sensitive true
	}
	addDictionaryEntry  ${ns}.pssd.animal.species "human"
	addDictionaryEntry  ${ns}.pssd.animal.species "baboon"
	addDictionaryEntry  ${ns}.pssd.animal.species "cat"
	addDictionaryEntry  ${ns}.pssd.animal.species "guineapig"
	addDictionaryEntry  ${ns}.pssd.animal.species "marmoset"
	addDictionaryEntry  ${ns}.pssd.animal.species "mouse"
	addDictionaryEntry  ${ns}.pssd.animal.species "monkey"
	addDictionaryEntry  ${ns}.pssd.animal.species "pig"
	addDictionaryEntry  ${ns}.pssd.animal.species "rat"
	addDictionaryEntry  ${ns}.pssd.animal.species "rabbit"
	addDictionaryEntry  ${ns}.pssd.animal.species "sheep"

}


#=============================================================================
proc createDict_funding_organization { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.funding.organization]] == "false" } {
		dictionary.create :name ${ns}.funding.organization :description "organizations that supply funding" :case-sensitive true
	}
	addDictionaryEntry  ${ns}.funding.organization "Australian Research Council"
	addDictionaryEntry  ${ns}.funding.organization "National Health and Medical Research Council"
	addDictionaryEntry  ${ns}.funding.organization "National Imaging Facility"
	addDictionaryEntry  ${ns}.funding.organization "Other funding entity"							
	addDictionaryEntry  ${ns}.funding.organization "The University of Sydney"
	addDictionaryEntry  ${ns}.funding.organization "Other funding entity"							
}


proc createDict_pssd_subject_pathology { ns } {

	if { [xvalue exists [dictionary.exists :name $ns.pssd.subject.pathology]] == "false" } {
		dictionary.create :name $ns.pssd.subject.pathology :description "Disease pathologies for Subjects" :case-sensitive true
	}
	addDictionaryEntry  $ns.pssd.subject.pathology "Alzheimer's Disease"
	addDictionaryEntry  $ns.pssd.subject.pathology "Experimental Autoimmune Encephalomyelitis (EAE)"
	addDictionaryEntry  $ns.pssd.subject.pathology "Epilepsy"
	addDictionaryEntry  $ns.pssd.subject.pathology "Freidrich Ataxia"
	addDictionaryEntry  $ns.pssd.subject.pathology "Huntington's Disease"
	addDictionaryEntry  $ns.pssd.subject.pathology "Multiple Sclerosis"
	addDictionaryEntry  $ns.pssd.subject.pathology "Motor Neuron"
	addDictionaryEntry  $ns.pssd.subject.pathology "Obesity"
	addDictionaryEntry  $ns.pssd.subject.pathology "Optic Neuritis"
	addDictionaryEntry  $ns.pssd.subject.pathology "Parkinson's Disease"
	addDictionaryEntry  $ns.pssd.subject.pathology "Stroke"
	addDictionaryEntry  $ns.pssd.subject.pathology "Other"
	addDictionaryEntry  $ns.pssd.subject.pathology "Chronic Pain"
	addDictionaryEntry  $ns.pssd.subject.pathology "None"
}


proc createDict_pssd_animal_strains { ns } {

	if { [xvalue exists [dictionary.exists :name $ns.pssd.animal.strains]] == "false" } {
		dictionary.create :name $ns.pssd.animal.strains :description "Genetic strains of animals" :case-sensitive true
	}
	addDictionaryEntry  $ns.pssd.animal.strains "C57Black" "Mouse strain"
	addDictionaryEntry  $ns.pssd.animal.strains "129" "Mouse strain"
	addDictionaryEntry  $ns.pssd.animal.strains "BALB/C" "Mouse strain"

}


#=============================================================================
proc createDict_pssd_animal_genes { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.pssd.animal.genes]] == "false" } {
		dictionary.create :name ${ns}.pssd.animal.genes :description "Standard animal gene names" :case-sensitive true
	}
	addDictionaryEntry  ${ns}.pssd.animal.genes "Leukemic Inhibitory Factor (LIF)"
	addDictionaryEntry  ${ns}.pssd.animal.genes "Ciliary Neurotropic Factor (CNTF)"

}

#=============================================================================
proc createDict_PET_tracers { ns } {

	if { [xvalue exists [dictionary.exists :name ${ns}.PET.tracer]] == "false" } {
		dictionary.create :name ${ns}.PET.tracer :description "Standard PET imaging tacers" :case-sensitive true
	}
	addDictionaryEntry  ${ns}.PET.tracer "11C-PIB" "Pittsburgh Compound B"
	addDictionaryEntry  ${ns}.PET.tracer "18F-FDG" "18F-2-fluoro-deoxy-D-glucose"

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
	createDict_pssd_diagnostic_staging_model $ns
	createDict_pssd_diagnostic_diagnosis $ns
	createDict_pssd_uhr_symptoms $ns
	createDict_pssd_standard_no_yes_missing $ns
	createDict_pssd_standard_no_yes $ns
	createDict_pssd_substance_use_no_yes $ns
	createDict_pssd_psychiatric_episodes $ns
	createDict_pssd_subject_gender $ns
	createDict_pssd_animal_species $ns
	createDict_funding_organization $ns
	createDict_pssd_subject_pathology $ns
	createDict_pssd_animal_strains $ns
	createDict_pssd_animal_genes $ns
	createDict_PET_tracers $ns

}

#============================================================================#
proc destroyPSSDDicts { ns } {

	set dicts [list $ns.pssd.anti-convulsant-types $ns.pssd.stimulant-types $ns.pssd.benzodiazepine-types \
			$ns.pssd.anti-psychotic-types $ns.pssd.mood-stabiliser-types $ns.pssd.other-adjunctive-types \
			$ns.pssd.sedative-hypnotic-types $ns.pssd.anti-depressant-types $ns.pssd.relative-medical-condition \
			$ns.pssd.relative-type $ns.pssd.diagnostic-staging-model $ns.pssd.diagnostic-diagnosis \
			$ns.pssd.uhr-symptoms $ns.pssd.standard-no-yes-missing $ns.pssd.standard-no-yes \
			$ns.pss.substance-use-yes-no $ns.pssd.psychiatric-episodes $ns.pssd.subject.gender \
			$ns.pssd.animal.species $ns.funding.organization $ns.PET.tracer \
			$ns.pssd.subject.pathology $ns.pssd.animal.strains $ns.pssd.animal.genes]
	foreach dict $dicts {
		if { [xvalue exists [dictionary.exists :name $dict]] == "true" } {
			dictionary.destroy :name $dict
		}
	}
}

