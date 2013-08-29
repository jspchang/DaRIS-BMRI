# ===========================================================================
# Method for the Youth Mental Health project.
# ===========================================================================
#
# If Method pre-exists, action = 0 (do nothing), 1 (replace), 2 (create new)
#
proc create_YouthMentalHealth_Method { ns { action 1 } } {
	# ExMethod metadata	
	set name "youth-mental-health"
	set description "Youth Mental Health data"
	#
	set name1 "ymh-psychiatrist-protocol"
	set desc1 "Youth Mental Health Study Psychiatrist Protocol (Green Form)"
	set type1 "ymh-psychiatrist-protocol"
	#
	set name2 "ymh-assessment-protocol"
	set desc2 "Youth Mental Health Study Assessment Protocol"
	set type2 "ymh-assessment-protocol"
	#
	set name3 "ymh-self-report"
	set desc3 "Youth Mental Health Study Self-report"
	set type3 "ymh-self-report"
	#
	set margs ""
	# See if Method pre-exists
	set id [getMethodId $name]
	
	# Set arguments based on desired action	
	set margs [setMethodUpdateArgs $id $action]
	if { $margs == "quit" } {
		return
	}
	#
	set args "${margs} \
		:namespace pssd/methods \
		:name ${name} \
		:description ${description} \
		:subject < \
			:project < \
				:public < \
					:metadata < \
						:definition -requirement mandatory ${ns}:pssd.subject.identifiers \
					> \
					:metadata < \
						:definition -requirement mandatory ${ns}:pssd.subject \
						:value < \
							:type constant(animal) \
						> \
					> \
					:metadata < \
						:definition -requirement mandatory $ns:pssd.subject.gender \
					> \
					:metadata < \
						:definition -requirement mandatory ${ns}:pssd.animal.subject \
						:value < \
							:species constant(human) \
						> \
					> \
					:metadata < \
						:definition -requirement mandatory ${ns}:pssd.subject.date-of-birth \
					> \
					:metadata < \
						:definition -requirement mandatory ${ns}:pssd.subject.age-at-baseline \
					> \
					:metadata < \
						:definition -requirement optional ${ns}:pssd.subject.handedness \
					> \
					:metadata < \
						:definition -requirement optional ${ns}:pssd.subject.languages \
					> \
					:metadata < \
						:definition -requirement optional ${ns}:pssd.referral-date \
					> \
					:metadata < \
						:definition -requirement optional ${ns}:pssd.referring-clinician \
					> \
					:metadata < \
						:definition -requirement mandatory ${ns}:pssd.patient-data-summary \
					> \
				> \
			> \
		> \
		:step < \
			:name ${name1} \
			:description ${desc1} \
			:study < \
				:type ${type1} \
				:metadata < \
					:definition -group Administration -requirement optional ${ns}:pssd.date \
				> \
				:metadata < \
					:definition -group Pyschiartrist-screening -requirement optional ${ns}:pssd.psychiatrist-screening \
				> \
				:metadata < \
					:definition -group Diagnostic-Information -requirement optional ${ns}:pssd.diagnostic-information \
					> \
				:metadata < \
					:definition -group Diagnostic-Information -requirement optional ${ns}:pssd.diagnostic-ultra-high-risk \
				> \
				:metadata < \
					:definition -group Tests-Assessments -requirement optional ${ns}:pssd.diagnostic-staging-model \
				> \
				:metadata < \
					:definition -group Medical-History -requirement optional ${ns}:pssd.medical-history \
				> \
				:metadata < \
					:definition -group Medical-History -requirement optional ${ns}:pssd.family-medical-history \
				> \
				:metadata < \
					:definition -group Tests-Assessments -requirement optional ${ns}:pssd.sofas \
				> \
				:metadata < \
					:definition -group Current-Treatments -requirement optional ${ns}:pssd.current-treatment \
				> \
				:metadata < \
					:definition -group Administration -requirement optional ${ns}:pssd.additional-gf-notes \
				> \
			> \
		> \
		:step < \
			:name ${name2} \
			:description ${desc2} \
			:study < \
				:type ${type2} \
				:metadata < \
					:definition -group Administration -requirement optional ${ns}:pssd.date \
				> \
				:metadata < \
					:definition -group Administration -requirement optional ${ns}:pssd.research-psychologist \
				> \
				:metadata < \
					:definition -group Inclusion-Exclusion -requirement optional ${ns}:pssd.checked-self-report \
				> \
				:metadata < \
					:definition -group Inclusion-Exclusion -requirement optional ${ns}:pssd.education.years \
				> \
				:metadata < \
					:definition -group Inclusion-Exclusion -requirement optional ${ns}:pssd.substance.nicotine-caffeine \
				> \
				:metadata < \
					:definition -group Inclusion-Exclusion -requirement optional ${ns}:pssd.inclusion-exclusion \
				> \
				:metadata < \
					:definition -group Inclusion-Exclusion -requirement optional ${ns}:pssd.background-information \
				> \
				:metadata < \
					:definition -group Staging -requirement optional ${ns}:pssd.ap-staging-model \
				> \
				:metadata < \
					:definition -group Hamilton-Depression-Rating-Scale -requirement optional ${ns}:pssd.ap-ham-d \
				> \
				:metadata < \
					:definition -group Brief-Psychiatric-Rating-Scale -requirement optional ${ns}:pssd.ap-bprs \
					:value < \
						:sections somatic-concern \
						:sections anxiety \
						:sections depression \
						:sections suicidality \
						:sections guilt \
						:sections hostility \
						:sections elated-mood \
						:sections grandiosity \
						:sections suspiciousness \
						:sections hallucinations \
						:sections unusual-thought-content \
						:sections bizarre-behaviour \
						:sections self-neglect \
						:sections disorientation \
						:sections conceptual-disorganisation \
						:sections blunted-effect \
						:sections emotional-withdrawal \
						:sections motor-retardation \
						:sections tension \
						:sections uncoopoerativeness \
						:sections excitement \
						:sections distractibility \
						:sections motor-hyperactivity \
						:sections mannerisms-and-posturing \
					> \
				> \
				:metadata < \
					:definition -group Young-Mania-Rating-Scale -requirement optional ${ns}:pssd.ap-ymrs \
				> \
				:metadata < \
					:definition -group Social-Occupational-Functioning-Assessment-Scale -requirement optional ${ns}:pssd.ap-sofas \
				> \
				:metadata < \
					:definition -group Severity-of-Dependence-Scale -requirement optional ${ns}:pssd.ap-sds \
				> \
				:metadata < \
					:definition -group Check-Lists -requirement mandatory ${ns}:pssd.ap-interview-checklist \
					:value < \
						:diagnosis-check false \
						:hamilton-depression-scale false \
						:brief-psychiatric-rating-scale false \
						:social-accupational-functioning-assessment-scale false \
						:severity-of-dependence-scale false \
					> \
				> \
				:metadata < \
					:definition -group Raw-Z-Scores -requirement optional ${ns}:pssd.ap-wtar-raw-zscores \
				> \
				:metadata < \
					:definition -group Raw-Z-Scores -requirement optional ${ns}:pssd.ap-wais-wms-scores \
				> \
				:metadata < \
					:definition -group Raw-Z-Scores -requirement optional ${ns}:pssd.ap-ravlt-scores \
				> \
				:metadata < \
					:definition -group Raw-Z-Scores -requirement optional ${ns}:pssd.ap-rcft-scores \
				> \
				:metadata < \
					:definition -group Raw-Z-Scores -requirement optional ${ns}:pssd.ap-tmt-scores \
				> \
				:metadata < \
					:definition -group Raw-Z-Scores -requirement optional ${ns}:pssd.ap-dass-scores \
				> \
				:metadata < \
					:definition -group Raw-Z-Scores -requirement optional ${ns}:pssd.ap-cowat-scores \
				> \
				:metadata < \
					:definition -group Check-Lists -requirement mandatory ${ns}:pssd.ap-tests-checklist \
					:value < \
						:weschler-test-of-adult-reading false \
						:logical-memory false \
						:rey-auditory-visual-learning-test false \
						:information-test false \
						:rey-complex-figures-test false \
						:controlled-oral-word-association-test false \
						:rey-auditory-visual-learning-test-3-minute-delay false \
						:mental-control-wms-3 false \
						:trail-making-test false \
						:logical-memory-25-35-minute-delay false \
						:rey-auditory-visual-learning-test-20-minute-delay-recognition false \
					> \
				> \
				:metadata < \
					:definition -group Check-Lists -requirement mandatory ${ns}:pssd.ap-cantab-checklist \
					:value < \
						:motor-screening-task false \
						:spatial-span false \
						:reaction-time false \
						:stop-signal false \
						:rapid-visual-information-processing false \
						:intra-extra-dimensional-set-shifting false \
						:paired-associate-learning false \
					> \
				> \
				:metadata < \
					:definition -group Check-Lists -requirement mandatory ${ns}:pssd.ap-other-checklist \
					:value < \
						:blood false \
						:urine-saliva false \
						:mri false \
					> \
				> \
			> \
		> \
		:step < \
			:name ${name3} \
			:description ${desc3} \
			:study < \
				:type ${type3} \
				:metadata < \
					:definition -group Administration -requirement optional ${ns}:pssd.date \
				> \
				:metadata < \
					:definition -group Administration -requirement optional ${ns}:pssd.sr-time-to-complete \
				> \
				:metadata < \
					:definition -group Demographics -requirement optional ${ns}:pssd.weight \
				> \
				:metadata < \
					:definition -group Demographics -requirement optional ${ns}:pssd.subject.height \
				> \
				:metadata < \
					:definition -group Demographics -requirement optional ${ns}:pssd.subject.education \
				> \
				:metadata < \
					:definition -group Vocation -requirement optional ${ns}:pssd.sr-vocation \
				> \
				:metadata < \
					:definition -group Medical-Status -requirement optional ${ns}:pssd.general-practitioner \
				> \
				:metadata < \
					:definition -group Medical-Status -requirement optional ${ns}:pssd.clinician \
				> \
				:metadata < \
					:definition -group Medical-Status -requirement optional ${ns}:pssd.clinician \
				> \
				:metadata < \
					:definition -group Medical-Status -requirement optional ${ns}:pssd.clinician \
				> \
				:metadata < \
					:definition -group Medical-History -requirement optional ${ns}:pssd.sr-personal-medical-history \
				> \
				:metadata < \
					:definition -group Medical-History -requirement optional ${ns}:pssd.sr-current-medication \
				> \
				:metadata < \
					:definition -group Medical-History -requirement optional ${ns}:pssd.sr-family-medical-history \
				> \
				:metadata < \
					:definition -group Scale-1 -requirement optional ${ns}:pssd.sr-kessler-10 \
				> \
				:metadata < \
					:definition -group Scale-2 -requirement optional ${ns}:pssd.sr-dass \
				> \
				:metadata < \
					:definition -group Scale-3 -requirement optional ${ns}:pssd.sr-who-qol \
				> \
				:metadata < \
					:definition -group Scale-4 -requirement optional ${ns}:pssd.sr-substance-use-scale-4-ever \
				> \
				:metadata < \
					:definition -group Scale-4 -requirement optional ${ns}:pssd.sr-substance-use-scale-4-last-3-months \
				> \
				:metadata < \
					:definition -group Scale-5 -requirement optional ${ns}:pssd.sr-substance-use-baseline-audit \
				> \
				:metadata < \
					:definition -group Scale-6 -requirement optional ${ns}:pssd.sr-substance-use-alcohol \
				> \
				:metadata < \
					:definition -group Scale-7 -requirement optional ${ns}:pssd.sr-wsls \
				> \
				:metadata < \
					:definition -group Scale-8 -requirement optional ${ns}:pssd.sr-apsd \
				> \
				:metadata < \
					:definition -group Scale-9 -requirement optional ${ns}:pssd.sr-sias \
				> \
				:metadata < \
					:definition -group Scale-10 -requirement optional ${ns}:pssd.sr-scale-10 \
				> \
				:metadata < \
					:definition -group Scale-11 -requirement optional ${ns}:pssd.sr-scale-11-part-a \
				> \
				:metadata < \
					:definition -group Scale-11 -requirement optional ${ns}:pssd.sr-scale-11-part-b \
				> \
				:metadata < \
					:definition -group Scale-11 -requirement optional ${ns}:pssd.sr-scale-11-part-c \
				> \
				:metadata < \
					:definition -group Scale-11 -requirement optional ${ns}:pssd.sr-scale-11-part-d \
				> \
				:metadata < \
					:definition -group Scale-11 -requirement optional ${ns}:pssd.sr-scale-11-part-e \
				> \
				:metadata < \
					:definition -group Scale-11 -requirement optional ${ns}:pssd.sr-scale-11-part-f \
				> \
				:metadata < \
					:definition -group Scale-11 -requirement optional ${ns}:pssd.sr-scale-11-part-g \
				> \
				:metadata < \
					:definition -group Scale-12 -requirement optional ${ns}:pssd.sr-scale-12 \
				> \
				:metadata < \
					:definition -group Scale-13 -requirement optional ${ns}:pssd.sr-scale-13 \
				> \
			> \
		>"
# Create/update the Method
	set id2 [xvalue id [om.pssd.method.for.subject.update $args] ]
	if { $id2 == "" } {
		# An existng Method was updated
		return $id
	} else {
		# A new Method was created
		return $id2
	}
}