# ===========================================================================
# Method for the Youth Mental Health project.
# ===========================================================================
#
# If Method pre-exists, action = 0 (do nothing), 1 (replace), 2 (create new)
#
proc create_YouthMentalHealth_Method { ns { action 1 } } {

	# ExMethod metadata	
	set name "youth-mental-health"
	set desc "Youth Mental Health data"
	set namespace "/pssd/methods"
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
	set name4 "ymh-t1-weighted-mri-transform"
	set desc4 "Youth Mental Health T1 Structural MRI Transform"
	set type4 "ymh-t1-transform"
	#
	set name5 "ymh-t2-weighted-mri-transform"
	set desc5 "Youth Mental Health T2 functional MRI Transform"
	set type5 "ymh-t2-transform"
	#
	set name6 "ymh-dti-mri-transform"
	set desc6 "Youth Mental Health Diffusion Tensor Imaging MRI Transform"
	set type6 "ymh-dti-transform"
	#
	set name7 "MRI acquisition" 
	set desc7 "MRI acquisition of subject" 
	set type7 "Magnetic Resonance Imaging"
	#
#	set name8 "YMH FSL brain extract" 
#	set desc8 "Runs the FSL brain extract on DICOM T1 images" 
#	set type8 "Kepler workflow"
	#
	set margs ""
	# See if Method pre-exists
	set id [getMethodId $name]
	
	# Set arguments based on desired action	
	set margs [setMethodUpdateArgs $id $action]
	if { $margs == "quit" } {
		return
	}
	
	# Wipe out any pre-existing work flows
	asset.query :where transform:transform-definition has value and xpath(transform:transform-definition/name)='$name4' :action pipe :service -name asset.destroy
	asset.query :where transform:transform-definition has value and xpath(transform:transform-definition/name)='$name5' :action pipe :service -name asset.destroy
	asset.query :where transform:transform-definition has value and xpath(transform:transform-definition/name)='$name6' :action pipe :service -name asset.destroy
	
	#  Create the FSL brain extract transform definition
	set trfmT1  [xvalue uid/@asset [transform.definition.create :type kepler :name $name4 :description $desc4 :parameter -name pid -type string :in archive:///prod/fsl_extract.kar]]
	set trfmT2  [xvalue uid/@asset [transform.definition.create :type kepler :name $name5 :description $desc5 :parameter -name pid -type string :in archive:///prod/fsl_melodic.kar]]
	set trfmDTI [xvalue uid/@asset [transform.definition.create :type kepler :name $name6 :description $desc6 :parameter -name pid -type string :in archive:///prod/fsl_dti.kar]]
	
	#
	set args "${margs} \
		:namespace /pssd/methods \
		:name ${name} \
		:description ${desc} \
		:subject < \
			:project < \
				:public < \
					:metadata < \
						:definition -requirement mandatory ${ns}:pssd.subject.identifiers \
					> \
					:metadata < \
						:definition -requirement optional ${ns}:pssd.subject.initials \
					> \
					:metadata < \
						:definition -requirement mandatory ${ns}:pssd.subject \
						:value < \
							:type constant(animal) \
						> \
					> \
					:metadata < \
						:definition -requirement optional $ns:pssd.subject.gender \
					> \
					:metadata < \
						:definition -requirement mandatory ${ns}:pssd.animal.subject \
						:value < \
							:species constant(human) \
						> \
					> \
					:metadata < \
						:definition -requirement optional ${ns}:pssd.subject.date-of-birth \
					> \
					:metadata < \
						:definition -requirement optional ${ns}:pssd.subject.age-at-baseline \
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
						:definition -requirement optional ${ns}:pssd.patient-data-summary \
					> \
				> \
			> \
		> \
		:step < \
			:name ${name7} \
			:description ${desc7} \
			:study < \
				:type ${type7} \
				:dicom < \
					:modality MR \
				> \
			> \
		> \
		:step < \
			:name ${name1} \
			:description ${desc1} \
			:study < \
				:type ${type1} \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.date \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.data-entered \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.baseline-followup \
				> \
				:metadata < \
					:definition -group 02-Pyschiartrist-Screening -requirement optional ${ns}:pssd.psychiatrist-screening \
				> \
				:metadata < \
					:definition -group 03-Diagnostic-Information -requirement optional ${ns}:pssd.diagnostic-information \
					> \
				:metadata < \
					:definition -group 03-Diagnostic-Information -requirement optional ${ns}:pssd.diagnostic-ultra-high-risk \
				> \
				:metadata < \
					:definition -group 04-Staging-Model -requirement optional ${ns}:pssd.diagnostic-staging-model \
				> \
				:metadata < \
					:definition -group 05-Medical-History -requirement optional ${ns}:pssd.medical-history \
				> \
				:metadata < \
					:definition -group 06-Family-Medical-History -requirement optional ${ns}:pssd.family-medical-history \
				> \
				:metadata < \
					:definition -group 07-SOFAS -requirement optional ${ns}:pssd.sofas \
				> \
				:metadata < \
					:definition -group 08-Current-Treatments -requirement optional ${ns}:pssd.current-treatment \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.notes \
				> \
			> \
		> \
		:step < \
			:name ${name2} \
			:description ${desc2} \
			:study < \
				:type ${type2} \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.date \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.data-entered \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.baseline-followup \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.years-of-education \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.child-adult \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.research-psychologist \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.examiner \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.notes \
				> \
				:metadata < \
					:definition -group 02-Inclusion-Exclusion -requirement optional ${ns}:pssd.subject.date-of-birth \
				> \
				:metadata < \
					:definition -group 02-Inclusion-Exclusion -requirement optional $ns:pssd.subject.gender \
				> \
				:metadata < \
					:definition -group 02-Inclusion-Exclusion -requirement optional ${ns}:pssd.checked-self-report \
				> \
				:metadata < \
					:definition -group 02-Inclusion-Exclusion -requirement optional ${ns}:pssd.subject.handedness \
				> \
				:metadata < \
					:definition -group 02-Inclusion-Exclusion -requirement optional ${ns}:pssd.education.years \
				> \
				:metadata < \
					:definition -group 02-Inclusion-Exclusion -requirement optional ${ns}:pssd.substance.nicotine-caffeine \
				> \
				:metadata < \
					:definition -group 03-Clinical-History -requirement optional ${ns}:pssd.background-information \
				> \
				:metadata < \
					:definition -group 04-Hamilton-Depression-Rating-Scale -requirement optional ${ns}:pssd.ap-ham-d \
				> \
				:metadata < \
					:definition -group 05-Brief-Psychiatric-Rating-Scale -requirement optional ${ns}:pssd.ap-bprs \
				> \
				:metadata < \
					:definition -group 06-Young-Mania-Rating-Scale -requirement optional ${ns}:pssd.ap-ymrs \
				> \
				:metadata < \
					:definition -group 07-Social-Occupational-Functioning-Assessment-Scale -requirement optional ${ns}:pssd.ap-sofas \
				> \
				:metadata < \
					:definition -group 08-Clinical-Staging -requirement optional ${ns}:pssd.ap-staging-model \
				> \
				:metadata < \
					:definition -group 09-Severity-of-Dependence-Scale -requirement optional ${ns}:pssd.ap-sds \
				> \
				:metadata < \
					:definition -group 10-Neuropsychological-&-Social-Cognition-Checklist -requirement mandatory ${ns}:pssd.ap-np-sc-checklist \
					:value < \
						:total-duration < \
							:unit minutes \
						> \
					> \
				> \
				:metadata < \
					:definition -group 10-Neuropsychological-&-Social-Cognition-Checklist -requirement optional ${ns}:pssd.notes \
				> \
				:metadata < \
					:definition -group 11-Interview-Checklist -requirement mandatory ${ns}:pssd.ap-interview-checklist \
					:value < \
						:diagnosis-check false \
						:hamilton-depression-scale false \
						:brief-psychiatric-rating-scale false \
						:social-accupational-functioning-assessment-scale false \
						:severity-of-dependence-scale false \
					> \
				> \
				:metadata < \
					:definition -group 12-Imaging-and-Optional-Assessments-Checklist -requirement optional ${ns}:pssd.ap-other-checklist \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-intellectual-ability-and-general-knowledge \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-speed-of-information-processing \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-sustained-attention \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-working-memory \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-learning-and-memory-verbal \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-rey-auditory-verbal-learning-test \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-learning-and-memory-visual \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-executive-functioning \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-mood \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-cowat \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-wais-wms-subsets \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-rey-complex-figure-test \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.ap-sequences \
				> \
				:metadata < \
					:definition -group 13-Scoring -requirement optional ${ns}:pssd.notes \
				> \
			> \
		> \
		:step < \
			:name ${name3} \
			:description ${desc3} \
			:study < \
				:type ${type3} \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.date \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.data-entered \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.baseline-followup \
				> \
				:metadata < \
					:definition -group 01-Administration -requirement optional ${ns}:pssd.sr-time-to-complete \
					:value < \
						:unit hours \
					> \
				> \
				:metadata < \
					:definition -group 02-Demographics -requirement optional ${ns}:pssd.weight \
					:value < \
						:weight < \
							:unit kilograms \
						> \
					> \
				> \
				:metadata < \
					:definition -group 02-Demographics -requirement optional ${ns}:pssd.subject.height \
					:value < \
						:unit centimeters \
					> \
				> \
				:metadata < \
					:definition -group 02-Demographics -requirement optional ${ns}:pssd.subject.languages \
				> \
				:metadata < \
					:definition -group 02-Demographics -requirement optional ${ns}:pssd.subject.education \
				> \
				:metadata < \
					:definition -group 03-Disability -requirement optional ${ns}:pssd.subject.disability \
				> \
				:metadata < \
					:definition -group 04-Vocation-Status -requirement optional ${ns}:pssd.sr-vocation \
				> \
				:metadata < \
					:definition -group 05-Medical-Status -requirement optional ${ns}:pssd.general-practitioner \
				> \
				:metadata < \
					:definition -group 05-Medical-Status -requirement optional ${ns}:pssd.clinician \
				> \
				:metadata < \
					:definition -group 05-Medical-Status -requirement optional ${ns}:pssd.clinician \
				> \
				:metadata < \
					:definition -group 05-Medical-Status -requirement optional ${ns}:pssd.clinician \
				> \
				:metadata < \
					:definition -group 06-Medical-History -requirement optional ${ns}:pssd.sr-personal-medical-history \
				> \
				:metadata < \
					:definition -group 06-Medical-History -requirement optional ${ns}:pssd.sr-current-medication \
				> \
				:metadata < \
					:definition -group 07-Family-Medical-History -requirement optional ${ns}:pssd.sr-family-medical-history \
				> \
				:metadata < \
					:definition -group Scale-01 -requirement optional ${ns}:pssd.sr-kessler-10 \
				> \
				:metadata < \
					:definition -group Scale-02 -requirement optional ${ns}:pssd.sr-dass \
				> \
				:metadata < \
					:definition -group Scale-03 -requirement optional ${ns}:pssd.sr-who-qol \
				> \
				:metadata < \
					:definition -group Scale-04 -requirement optional ${ns}:pssd.sr-substance-use-scale-4-ever \
				> \
				:metadata < \
					:definition -group Scale-04 -requirement optional ${ns}:pssd.sr-substance-use-scale-4-last-3-months \
				> \
				:metadata < \
					:definition -group Scale-05 -requirement optional ${ns}:pssd.sr-substance-use-baseline-audit \
				> \
				:metadata < \
					:definition -group Scale-06 -requirement optional ${ns}:pssd.sr-substance-use-alcohol \
				> \
				:metadata < \
					:definition -group Scale-07 -requirement optional ${ns}:pssd.sr-wsls \
					:value < \
						:question-6 < \
							:unit days \
						> \
						:question-7 < \
							:unit days \
						> \
					> \
				> \
				:metadata < \
					:definition -group Scale-08 -requirement optional ${ns}:pssd.sr-apsd \
				> \
				:metadata < \
					:definition -group Scale-09 -requirement optional ${ns}:pssd.sr-sias \
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
					:value < \
						:question-4 < \
							:unit hours \
						> \
					> \
				> \
			> \
		> \
		:step < \
			:name ${name4} \
			:transform < \
				:definition -version 0 -id-type id $trfmT1 \
				:iterator < \
					:scope ex-method \
					:type citeable-id \
					:query \"model='om.pssd.study' and mf-dicom-study has value \" \
					:parameter pid \
				> \
			> \
		> \
		:step < \
			:name ${name5} \
			:transform < \
				:definition -version 0 -id-type id $trfmT2 \
				:iterator < \
					:scope ex-method \
					:type citeable-id \
					:query \"model='om.pssd.study' and mf-dicom-study has value \" \
					:parameter pid \
				> \
			> \
		> \
		:step < \
			:name ${name6} \
			:transform < \
				:definition -version 0 -id-type id $trfmDTI \
				:iterator < \
					:scope ex-method \
					:type citeable-id \
					:query \"model='om.pssd.study' and mf-dicom-study has value \" \
					:parameter pid \
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
 

#:step < \
#	:name ${name8} \
#	:transform < \
#		:definition -version 0 -id-type id $keplerExtract \
#		:iterator < \
#			:scope ex-method \
#			:type citeable-id \
#			:query \"model='om.pssd.study' and mf-dicom-study has value \" \
#			:parameter pid \
#		> \
#	> \
#> \
