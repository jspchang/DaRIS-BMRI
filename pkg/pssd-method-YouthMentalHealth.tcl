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
					:definition -requirement optional ${ns}:pssd.subject.identifiers \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.date \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.psychiatrist-screening \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.diagnostic-information \
					> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.diagnostic-ultra-high-risk \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.diagnostic-staging-model \
					:value < \
						:diagnosis-clinical-staging-model missing \
					> \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.medical-history \
					:value < \
						:major-medical-conditions missing \
					> \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.family-medical-history \
					:value < \
						:relative-degree missing \
					> \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sofas \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.current-treatment \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.additional-gf-notes \
				> \
			> \
		> \
		:step < \
			:name ${name2} \
			:description ${desc2} \
			:study < \
				:type ${type2} \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.subject.identifiers \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.date \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.research-psychologist \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.subject.date-of-birth \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.subject.gender \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.checked-self-report \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.subject.handedness \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.education.years \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.substance.nicotine-caffeine \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.inclusion-criteria \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.background-information \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-staging-model \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-ham-d \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-bprs \
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
					:definition -requirement optional ${ns}:pssd.ap-sofas \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-sds \
					:value < \
						:drug-use-class primary \
					> \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-sds \
					:value < \
						:drug-use-class secondary \
					> \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-sds \
					:value < \
						:drug-use-class tertiary \
					> \
				> \
				:metadata < \
					:definition -requirement mandatory ${ns}:pssd.ap-interview-checklist \
					:value < \
						:diagnosis-check false \
						:hamilton-depression-scale false \
						:brief-psychiatric-rating-scale false \
						:social-accupational-functioning-assessment-scale false \
						:severity-of-dependence-scale false \
					> \
				> \
				:metadata < \
					:definition -requirement mandatory ${ns}:pssd.ap-tests-checklist \
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
					:definition -requirement mandatory ${ns}:pssd.ap-cantab-checklist \
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
					:definition -requirement mandatory ${ns}:pssd.ap-other-checklist \
					:value < \
						:blood false \
						:urine-saliva false \
						:mri false \
					> \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-wtar-raw-zscores \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-wais-wms-scores \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-ravlt-scores \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-rcft-scores \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-tmt-scores \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-dass-scores \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.ap-cowat-scores \
				> \
			> \
		> \
		:step < \
			:name ${name3} \
			:description ${desc3} \
			:study < \
				:type ${type3} \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.subject.identifiers \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.date \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-time-to-complete \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.subject.weight \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.subject.height \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.subject.education \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-vocation \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.general-practitioner \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.clinician \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-personal-medical-history \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-current-medication \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-family-medical-history \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-kessler-10 \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-dass \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-who-qol \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-substance-use-scale-4-ever \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-substance-use-scale-4-last-3-months \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-substance-use-baseline-audit \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-substance-use-alcohol \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-wsls \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-apsd \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-sias \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-10 \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-11-part-a \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-11-part-b \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-11-part-c \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-11-part-d \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-11-part-e \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-11-part-f \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-11-part-g \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-12 \
				> \
				:metadata < \
					:definition -requirement optional ${ns}:pssd.sr-scale-13 \
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