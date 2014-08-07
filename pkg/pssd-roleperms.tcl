proc setRolePerms { ns } {
	
# Documemt Type access (this style translates $ns)
    set pssd_doc_perms [list \
	[list document ${ns}:pssd.additional-gf-notes ACCESS] \
	[list document ${ns}:pssd.additional-gf-notes PUBLISH] \
	[list document ${ns}:pssd.anaesthetic ACCESS] \
	[list document ${ns}:pssd.anaesthetic PUBLISH] \
	[list document ${ns}:pssd.animal.genetics ACCESS] \
	[list document ${ns}:pssd.animal.genetics PUBLISH] \
	[list document ${ns}:pssd.animal.kill ACCESS] \
	[list document ${ns}:pssd.animal.kill PUBLISH] \
	[list document ${ns}:pssd.animal.modified-genetics ACCESS] \
	[list document ${ns}:pssd.animal.modified-genetics PUBLISH] \
	[list document ${ns}:pssd.animal.subject ACCESS] \
	[list document ${ns}:pssd.animal.subject PUBLISH] \
	[list document ${ns}:pssd.ap-bprs ACCESS] \
	[list document ${ns}:pssd.ap-bprs PUBLISH] \
	[list document ${ns}:pssd.ap-cowat ACCESS] \
	[list document ${ns}:pssd.ap-cowat PUBLISH] \
	[list document ${ns}:pssd.ap-executive-functioning ACCESS] \
	[list document ${ns}:pssd.ap-executive-functioning PUBLISH] \
	[list document ${ns}:pssd.ap-ham-d ACCESS] \
	[list document ${ns}:pssd.ap-ham-d PUBLISH] \
	[list document ${ns}:pssd.ap-intellectual-ability-and-general-knowledge ACCESS] \
	[list document ${ns}:pssd.ap-intellectual-ability-and-general-knowledge PUBLISH] \
	[list document ${ns}:pssd.ap-interview-checklist ACCESS] \
	[list document ${ns}:pssd.ap-interview-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-learning-and-memory-verbal ACCESS] \
	[list document ${ns}:pssd.ap-learning-and-memory-verbal PUBLISH] \
	[list document ${ns}:pssd.ap-learning-and-memory-visual ACCESS] \
	[list document ${ns}:pssd.ap-learning-and-memory-visual PUBLISH] \
	[list document ${ns}:pssd.ap-mood ACCESS] \
	[list document ${ns}:pssd.ap-mood PUBLISH] \
	[list document ${ns}:pssd.ap-np-sc-checklist ACCESS] \
	[list document ${ns}:pssd.ap-np-sc-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-other-checklist ACCESS] \
	[list document ${ns}:pssd.ap-other-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-rey-auditory-verbal-learning-test ACCESS] \
	[list document ${ns}:pssd.ap-rey-auditory-verbal-learning-test PUBLISH] \
	[list document ${ns}:pssd.ap-rey-complex-figure-test ACCESS] \
	[list document ${ns}:pssd.ap-rey-complex-figure-test PUBLISH] \
	[list document ${ns}:pssd.ap-sds ACCESS] \
	[list document ${ns}:pssd.ap-sds PUBLISH] \
	[list document ${ns}:pssd.ap-sequences ACCESS] \
	[list document ${ns}:pssd.ap-sequences PUBLISH] \
	[list document ${ns}:pssd.ap-sofas ACCESS] \
	[list document ${ns}:pssd.ap-sofas PUBLISH] \
	[list document ${ns}:pssd.ap-speed-of-information-processing ACCESS] \
	[list document ${ns}:pssd.ap-speed-of-information-processing PUBLISH] \
	[list document ${ns}:pssd.ap-staging-model ACCESS] \
	[list document ${ns}:pssd.ap-staging-model PUBLISH] \
	[list document ${ns}:pssd.ap-sustained-attention ACCESS] \
	[list document ${ns}:pssd.ap-sustained-attention PUBLISH] \
	[list document ${ns}:pssd.ap-wais-wms-subsets ACCESS] \
	[list document ${ns}:pssd.ap-wais-wms-subsets PUBLISH] \
	[list document ${ns}:pssd.ap-working-memory ACCESS] \
	[list document ${ns}:pssd.ap-working-memory PUBLISH] \
	[list document ${ns}:pssd.ap-ymrs ACCESS] \
	[list document ${ns}:pssd.ap-ymrs PUBLISH] \
	[list document ${ns}:pssd.background-information ACCESS] \
	[list document ${ns}:pssd.background-information PUBLISH] \
	[list document ${ns}:pssd.baseline-followup ACCESS] \
	[list document ${ns}:pssd.baseline-followup PUBLISH] \
	[list document ${ns}:pssd.checked-self-report ACCESS] \
	[list document ${ns}:pssd.checked-self-report PUBLISH] \
	[list document ${ns}:pssd.child-adult ACCESS] \
	[list document ${ns}:pssd.child-adult PUBLISH] \
	[list document ${ns}:pssd.clinician ACCESS] \
	[list document ${ns}:pssd.clinician PUBLISH] \
	[list document ${ns}:pssd.current-treatment ACCESS] \
	[list document ${ns}:pssd.current-treatment PUBLISH] \
	[list document ${ns}:pssd.data-entered ACCESS] \
	[list document ${ns}:pssd.data-entered PUBLISH] \
	[list document ${ns}:pssd.date ACCESS] \
	[list document ${ns}:pssd.date PUBLISH] \
	[list document ${ns}:pssd.date-received ACCESS] \
	[list document ${ns}:pssd.date-received PUBLISH] \
	[list document ${ns}:pssd.diagnostic-information ACCESS] \
	[list document ${ns}:pssd.diagnostic-information PUBLISH] \
	[list document ${ns}:pssd.diagnostic-staging-model ACCESS] \
	[list document ${ns}:pssd.diagnostic-staging-model PUBLISH] \
	[list document ${ns}:pssd.diagnostic-ultra-high-risk ACCESS] \
	[list document ${ns}:pssd.diagnostic-ultra-high-risk PUBLISH] \
	[list document ${ns}:pssd.education.years ACCESS] \
	[list document ${ns}:pssd.education.years PUBLISH] \
	[list document ${ns}:pssd.examiner ACCESS] \
	[list document ${ns}:pssd.examiner PUBLISH] \
	[list document ${ns}:pssd.family-medical-history ACCESS] \
	[list document ${ns}:pssd.family-medical-history PUBLISH] \
	[list document ${ns}:pssd.general-practitioner ACCESS] \
	[list document ${ns}:pssd.general-practitioner PUBLISH] \
	[list document ${ns}:pssd.human.identity ACCESS] \
	[list document ${ns}:pssd.human.identity PUBLISH] \
	[list document ${ns}:pssd.inclusion-exclusion ACCESS] \
	[list document ${ns}:pssd.inclusion-exclusion PUBLISH] \
	[list document ${ns}:pssd.medical-history ACCESS] \
	[list document ${ns}:pssd.medical-history PUBLISH] \
	[list document ${ns}:pssd.notes ACCESS] \
	[list document ${ns}:pssd.notes PUBLISH] \
	[list document ${ns}:pssd.patient-data-summary ACCESS] \
	[list document ${ns}:pssd.patient-data-summary PUBLISH] \
	[list document ${ns}:pssd.psychiatrist ACCESS] \
	[list document ${ns}:pssd.psychiatrist PUBLISH] \
	[list document ${ns}:pssd.psychiatrist-screening ACCESS] \
	[list document ${ns}:pssd.psychiatrist-screening PUBLISH] \
	[list document ${ns}:pssd.recovery ACCESS] \
	[list document ${ns}:pssd.recovery PUBLISH] \
	[list document ${ns}:pssd.referral-date ACCESS] \
	[list document ${ns}:pssd.referral-date PUBLISH] \
	[list document ${ns}:pssd.referring-clinician ACCESS] \
	[list document ${ns}:pssd.referring-clinician PUBLISH] \
	[list document ${ns}:pssd.research-psychologist ACCESS] \
	[list document ${ns}:pssd.research-psychologist PUBLISH] \
	[list document ${ns}:pssd.sofas ACCESS] \
	[list document ${ns}:pssd.sofas PUBLISH] \
	[list document ${ns}:pssd.sr-apsd ACCESS] \
	[list document ${ns}:pssd.sr-apsd PUBLISH] \
	[list document ${ns}:pssd.sr-current-medication ACCESS] \
	[list document ${ns}:pssd.sr-current-medication PUBLISH] \
	[list document ${ns}:pssd.sr-dass ACCESS] \
	[list document ${ns}:pssd.sr-dass PUBLISH] \
	[list document ${ns}:pssd.sr-family-medical-history ACCESS] \
	[list document ${ns}:pssd.sr-family-medical-history PUBLISH] \
	[list document ${ns}:pssd.sr-kessler-10 ACCESS] \
	[list document ${ns}:pssd.sr-kessler-10 PUBLISH] \
	[list document ${ns}:pssd.sr-personal-medical-history ACCESS] \
	[list document ${ns}:pssd.sr-personal-medical-history PUBLISH] \
	[list document ${ns}:pssd.sr-scale-10 ACCESS] \
	[list document ${ns}:pssd.sr-scale-10 PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-a ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-a PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-b ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-b PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-c ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-c PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-d ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-d PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-e ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-e PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-f ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-f PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-g ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-g PUBLISH] \
	[list document ${ns}:pssd.sr-scale-12 ACCESS] \
	[list document ${ns}:pssd.sr-scale-12 PUBLISH] \
	[list document ${ns}:pssd.sr-scale-13 ACCESS] \
	[list document ${ns}:pssd.sr-scale-13 PUBLISH] \
	[list document ${ns}:pssd.sr-sias ACCESS] \
	[list document ${ns}:pssd.sr-sias PUBLISH] \
	[list document ${ns}:pssd.sr-substance-use-alcohol ACCESS] \
	[list document ${ns}:pssd.sr-substance-use-alcohol PUBLISH] \
	[list document ${ns}:pssd.sr-substance-use-baseline-audit ACCESS] \
	[list document ${ns}:pssd.sr-substance-use-baseline-audit PUBLISH] \
	[list document ${ns}:pssd.sr-substance-use-scale-4-ever ACCESS] \
	[list document ${ns}:pssd.sr-substance-use-scale-4-ever PUBLISH] \
	[list document ${ns}:pssd.sr-substance-use-scale-4-last-3-months ACCESS] \
	[list document ${ns}:pssd.sr-substance-use-scale-4-last-3-months PUBLISH] \
	[list document ${ns}:pssd.sr-time-to-complete ACCESS] \
	[list document ${ns}:pssd.sr-time-to-complete PUBLISH] \
	[list document ${ns}:pssd.sr-vocation ACCESS] \
	[list document ${ns}:pssd.sr-vocation PUBLISH] \
	[list document ${ns}:pssd.sr-who-qol ACCESS] \
	[list document ${ns}:pssd.sr-who-qol PUBLISH] \
	[list document ${ns}:pssd.sr-wsls ACCESS] \
	[list document ${ns}:pssd.sr-wsls PUBLISH] \
	[list document ${ns}:pssd.subject ACCESS] \
	[list document ${ns}:pssd.subject PUBLISH] \
	[list document ${ns}:pssd.subject.age-at-baseline ACCESS] \
	[list document ${ns}:pssd.subject.age-at-baseline PUBLISH] \
	[list document ${ns}:pssd.subject.date-of-birth ACCESS] \
	[list document ${ns}:pssd.subject.date-of-birth PUBLISH] \
	[list document ${ns}:pssd.subject.disability ACCESS] \
	[list document ${ns}:pssd.subject.disability PUBLISH] \
	[list document ${ns}:pssd.subject.education ACCESS] \
	[list document ${ns}:pssd.subject.education PUBLISH] \
	[list document ${ns}:pssd.subject.gender ACCESS] \
	[list document ${ns}:pssd.subject.gender PUBLISH] \
	[list document ${ns}:pssd.subject.handedness ACCESS] \
	[list document ${ns}:pssd.subject.handedness PUBLISH] \
	[list document ${ns}:pssd.subject.height ACCESS] \
	[list document ${ns}:pssd.subject.height PUBLISH] \
	[list document ${ns}:pssd.subject.identifiers ACCESS] \
	[list document ${ns}:pssd.subject.identifiers PUBLISH] \
	[list document ${ns}:pssd.subject.initials ACCESS] \
	[list document ${ns}:pssd.subject.initials PUBLISH] \
	[list document ${ns}:pssd.subject.languages ACCESS] \
	[list document ${ns}:pssd.subject.languages PUBLISH] \
	[list document ${ns}:pssd.substance.nicotine-caffeine ACCESS] \
	[list document ${ns}:pssd.substance.nicotine-caffeine PUBLISH] \
	[list document ${ns}:pssd.weight ACCESS] \
	[list document ${ns}:pssd.weight PUBLISH] \
	[list document ${ns}:pssd.years-of-education ACCESS] \
	[list document ${ns}:pssd.years-of-education PUBLISH]] \

# Service access
	set pssd_svc_perms	[list [list service ${ns}.pssd.* ACCESS] \
						[list service ${ns}.pssd.* MODIFY] \
						[list service server.database.describe ACCESS]]


# Role for user of this package; grant this to your users.
	set domain_model_user_role        $ns.pssd.model.user
	createRole     $domain_model_user_role
	grantRolePerms $domain_model_user_role $pssd_doc_perms
	grantRolePerms $domain_model_user_role $pssd_svc_perms
 
# Grant end users the right to access the  document namespace
	actor.grant :name  $domain_model_user_role :type role :perm < :resource -type document:namespace $ns :access ACCESS >

# DICOM server permissions 
# This is the role to grant your DICOM proxy users
	set domain_dicom_ingest_role      $ns.pssd.dicom-ingest
	createRole     $domain_dicom_ingest_role

# DOcument Types
# Grant DICOM users the right to access the  document namespace
	actor.grant :name  $domain_dicom_ingest_role :type role :perm < :resource -type document:namespace $ns :access ACCESS >

# Set the permissions that allow the <ns>.pssd.subject.meta.set service to be called
# and used by the DICOM server framework
	set dicom_ingest_doc_perms [list \
	[list document ${ns}:pssd.additional-gf-notes ACCESS] \
	[list document ${ns}:pssd.additional-gf-notes PUBLISH] \
	[list document ${ns}:pssd.anaesthetic ACCESS] \
	[list document ${ns}:pssd.anaesthetic PUBLISH] \
	[list document ${ns}:pssd.animal.genetics ACCESS] \
	[list document ${ns}:pssd.animal.genetics PUBLISH] \
	[list document ${ns}:pssd.animal.kill ACCESS] \
	[list document ${ns}:pssd.animal.kill PUBLISH] \
	[list document ${ns}:pssd.animal.modified-genetics ACCESS] \
	[list document ${ns}:pssd.animal.modified-genetics PUBLISH] \
	[list document ${ns}:pssd.animal.subject ACCESS] \
	[list document ${ns}:pssd.animal.subject PUBLISH] \
	[list document ${ns}:pssd.ap-bprs ACCESS] \
	[list document ${ns}:pssd.ap-bprs PUBLISH] \
	[list document ${ns}:pssd.ap-cowat ACCESS] \
	[list document ${ns}:pssd.ap-cowat PUBLISH] \
	[list document ${ns}:pssd.ap-executive-functioning ACCESS] \
	[list document ${ns}:pssd.ap-executive-functioning PUBLISH] \
	[list document ${ns}:pssd.ap-ham-d ACCESS] \
	[list document ${ns}:pssd.ap-ham-d PUBLISH] \
	[list document ${ns}:pssd.ap-intellectual-ability-and-general-knowledge ACCESS] \
	[list document ${ns}:pssd.ap-intellectual-ability-and-general-knowledge PUBLISH] \
	[list document ${ns}:pssd.ap-interview-checklist ACCESS] \
	[list document ${ns}:pssd.ap-interview-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-learning-and-memory-verbal ACCESS] \
	[list document ${ns}:pssd.ap-learning-and-memory-verbal PUBLISH] \
	[list document ${ns}:pssd.ap-learning-and-memory-visual ACCESS] \
	[list document ${ns}:pssd.ap-learning-and-memory-visual PUBLISH] \
	[list document ${ns}:pssd.ap-mood ACCESS] \
	[list document ${ns}:pssd.ap-mood PUBLISH] \
	[list document ${ns}:pssd.ap-np-sc-checklist ACCESS] \
	[list document ${ns}:pssd.ap-np-sc-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-other-checklist ACCESS] \
	[list document ${ns}:pssd.ap-other-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-rey-auditory-verbal-learning-test ACCESS] \
	[list document ${ns}:pssd.ap-rey-auditory-verbal-learning-test PUBLISH] \
	[list document ${ns}:pssd.ap-rey-complex-figure-test ACCESS] \
	[list document ${ns}:pssd.ap-rey-complex-figure-test PUBLISH] \
	[list document ${ns}:pssd.ap-sds ACCESS] \
	[list document ${ns}:pssd.ap-sds PUBLISH] \
	[list document ${ns}:pssd.ap-sequences ACCESS] \
	[list document ${ns}:pssd.ap-sequences PUBLISH] \
	[list document ${ns}:pssd.ap-sofas ACCESS] \
	[list document ${ns}:pssd.ap-sofas PUBLISH] \
	[list document ${ns}:pssd.ap-speed-of-information-processing ACCESS] \
	[list document ${ns}:pssd.ap-speed-of-information-processing PUBLISH] \
	[list document ${ns}:pssd.ap-staging-model ACCESS] \
	[list document ${ns}:pssd.ap-staging-model PUBLISH] \
	[list document ${ns}:pssd.ap-sustained-attention ACCESS] \
	[list document ${ns}:pssd.ap-sustained-attention PUBLISH] \
	[list document ${ns}:pssd.ap-wais-wms-subsets ACCESS] \
	[list document ${ns}:pssd.ap-wais-wms-subsets PUBLISH] \
	[list document ${ns}:pssd.ap-working-memory ACCESS] \
	[list document ${ns}:pssd.ap-working-memory PUBLISH] \
	[list document ${ns}:pssd.ap-ymrs ACCESS] \
	[list document ${ns}:pssd.ap-ymrs PUBLISH] \
	[list document ${ns}:pssd.background-information ACCESS] \
	[list document ${ns}:pssd.background-information PUBLISH] \
	[list document ${ns}:pssd.baseline-followup ACCESS] \
	[list document ${ns}:pssd.baseline-followup PUBLISH] \
	[list document ${ns}:pssd.checked-self-report ACCESS] \
	[list document ${ns}:pssd.checked-self-report PUBLISH] \
	[list document ${ns}:pssd.child-adult ACCESS] \
	[list document ${ns}:pssd.child-adult PUBLISH] \
	[list document ${ns}:pssd.clinician ACCESS] \
	[list document ${ns}:pssd.clinician PUBLISH] \
	[list document ${ns}:pssd.current-treatment ACCESS] \
	[list document ${ns}:pssd.current-treatment PUBLISH] \
	[list document ${ns}:pssd.data-entered ACCESS] \
	[list document ${ns}:pssd.data-entered PUBLISH] \
	[list document ${ns}:pssd.date ACCESS] \
	[list document ${ns}:pssd.date PUBLISH] \
	[list document ${ns}:pssd.date-received ACCESS] \
	[list document ${ns}:pssd.date-received PUBLISH] \
	[list document ${ns}:pssd.diagnostic-information ACCESS] \
	[list document ${ns}:pssd.diagnostic-information PUBLISH] \
	[list document ${ns}:pssd.diagnostic-staging-model ACCESS] \
	[list document ${ns}:pssd.diagnostic-staging-model PUBLISH] \
	[list document ${ns}:pssd.diagnostic-ultra-high-risk ACCESS] \
	[list document ${ns}:pssd.diagnostic-ultra-high-risk PUBLISH] \
	[list document ${ns}:pssd.education.years ACCESS] \
	[list document ${ns}:pssd.education.years PUBLISH] \
	[list document ${ns}:pssd.examiner ACCESS] \
	[list document ${ns}:pssd.examiner PUBLISH] \
	[list document ${ns}:pssd.family-medical-history ACCESS] \
	[list document ${ns}:pssd.family-medical-history PUBLISH] \
	[list document ${ns}:pssd.general-practitioner ACCESS] \
	[list document ${ns}:pssd.general-practitioner PUBLISH] \
	[list document ${ns}:pssd.human.identity ACCESS] \
	[list document ${ns}:pssd.human.identity PUBLISH] \
	[list document ${ns}:pssd.inclusion-exclusion ACCESS] \
	[list document ${ns}:pssd.inclusion-exclusion PUBLISH] \
	[list document ${ns}:pssd.medical-history ACCESS] \
	[list document ${ns}:pssd.medical-history PUBLISH] \
	[list document ${ns}:pssd.notes ACCESS] \
	[list document ${ns}:pssd.notes PUBLISH] \
	[list document ${ns}:pssd.patient-data-summary ACCESS] \
	[list document ${ns}:pssd.patient-data-summary PUBLISH] \
	[list document ${ns}:pssd.psychiatrist ACCESS] \
	[list document ${ns}:pssd.psychiatrist PUBLISH] \
	[list document ${ns}:pssd.psychiatrist-screening ACCESS] \
	[list document ${ns}:pssd.psychiatrist-screening PUBLISH] \
	[list document ${ns}:pssd.recovery ACCESS] \
	[list document ${ns}:pssd.recovery PUBLISH] \
	[list document ${ns}:pssd.referral-date ACCESS] \
	[list document ${ns}:pssd.referral-date PUBLISH] \
	[list document ${ns}:pssd.referring-clinician ACCESS] \
	[list document ${ns}:pssd.referring-clinician PUBLISH] \
	[list document ${ns}:pssd.research-psychologist ACCESS] \
	[list document ${ns}:pssd.research-psychologist PUBLISH] \
	[list document ${ns}:pssd.sofas ACCESS] \
	[list document ${ns}:pssd.sofas PUBLISH] \
	[list document ${ns}:pssd.sr-apsd ACCESS] \
	[list document ${ns}:pssd.sr-apsd PUBLISH] \
	[list document ${ns}:pssd.sr-current-medication ACCESS] \
	[list document ${ns}:pssd.sr-current-medication PUBLISH] \
	[list document ${ns}:pssd.sr-dass ACCESS] \
	[list document ${ns}:pssd.sr-dass PUBLISH] \
	[list document ${ns}:pssd.sr-family-medical-history ACCESS] \
	[list document ${ns}:pssd.sr-family-medical-history PUBLISH] \
	[list document ${ns}:pssd.sr-kessler-10 ACCESS] \
	[list document ${ns}:pssd.sr-kessler-10 PUBLISH] \
	[list document ${ns}:pssd.sr-personal-medical-history ACCESS] \
	[list document ${ns}:pssd.sr-personal-medical-history PUBLISH] \
	[list document ${ns}:pssd.sr-scale-10 ACCESS] \
	[list document ${ns}:pssd.sr-scale-10 PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-a ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-a PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-b ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-b PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-c ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-c PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-d ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-d PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-e ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-e PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-f ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-f PUBLISH] \
	[list document ${ns}:pssd.sr-scale-11-part-g ACCESS] \
	[list document ${ns}:pssd.sr-scale-11-part-g PUBLISH] \
	[list document ${ns}:pssd.sr-scale-12 ACCESS] \
	[list document ${ns}:pssd.sr-scale-12 PUBLISH] \
	[list document ${ns}:pssd.sr-scale-13 ACCESS] \
	[list document ${ns}:pssd.sr-scale-13 PUBLISH] \
	[list document ${ns}:pssd.sr-sias ACCESS] \
	[list document ${ns}:pssd.sr-sias PUBLISH] \
	[list document ${ns}:pssd.sr-substance-use-alcohol ACCESS] \
	[list document ${ns}:pssd.sr-substance-use-alcohol PUBLISH] \
	[list document ${ns}:pssd.sr-substance-use-baseline-audit ACCESS] \
	[list document ${ns}:pssd.sr-substance-use-baseline-audit PUBLISH] \
	[list document ${ns}:pssd.sr-substance-use-scale-4-ever ACCESS] \
	[list document ${ns}:pssd.sr-substance-use-scale-4-ever PUBLISH] \
	[list document ${ns}:pssd.sr-substance-use-scale-4-last-3-months ACCESS] \
	[list document ${ns}:pssd.sr-substance-use-scale-4-last-3-months PUBLISH] \
	[list document ${ns}:pssd.sr-time-to-complete ACCESS] \
	[list document ${ns}:pssd.sr-time-to-complete PUBLISH] \
	[list document ${ns}:pssd.sr-vocation ACCESS] \
	[list document ${ns}:pssd.sr-vocation PUBLISH] \
	[list document ${ns}:pssd.sr-who-qol ACCESS] \
	[list document ${ns}:pssd.sr-who-qol PUBLISH] \
	[list document ${ns}:pssd.sr-wsls ACCESS] \
	[list document ${ns}:pssd.sr-wsls PUBLISH] \
	[list document ${ns}:pssd.subject ACCESS] \
	[list document ${ns}:pssd.subject PUBLISH] \
	[list document ${ns}:pssd.subject.age-at-baseline ACCESS] \
	[list document ${ns}:pssd.subject.age-at-baseline PUBLISH] \
	[list document ${ns}:pssd.subject.date-of-birth ACCESS] \
	[list document ${ns}:pssd.subject.date-of-birth PUBLISH] \
	[list document ${ns}:pssd.subject.disability ACCESS] \
	[list document ${ns}:pssd.subject.disability PUBLISH] \
	[list document ${ns}:pssd.subject.education ACCESS] \
	[list document ${ns}:pssd.subject.education PUBLISH] \
	[list document ${ns}:pssd.subject.gender ACCESS] \
	[list document ${ns}:pssd.subject.gender PUBLISH] \
	[list document ${ns}:pssd.subject.handedness ACCESS] \
	[list document ${ns}:pssd.subject.handedness PUBLISH] \
	[list document ${ns}:pssd.subject.height ACCESS] \
	[list document ${ns}:pssd.subject.height PUBLISH] \
	[list document ${ns}:pssd.subject.identifiers ACCESS] \
	[list document ${ns}:pssd.subject.identifiers PUBLISH] \
	[list document ${ns}:pssd.subject.initials ACCESS] \
	[list document ${ns}:pssd.subject.initials PUBLISH] \
	[list document ${ns}:pssd.subject.languages ACCESS] \
	[list document ${ns}:pssd.subject.languages PUBLISH] \
	[list document ${ns}:pssd.substance.nicotine-caffeine ACCESS] \
	[list document ${ns}:pssd.substance.nicotine-caffeine PUBLISH] \
	[list document ${ns}:pssd.weight ACCESS] \
	[list document ${ns}:pssd.weight PUBLISH] \
	[list document ${ns}:pssd.years-of-education ACCESS] \
	[list document ${ns}:pssd.years-of-education PUBLISH]] \

# Grant permissions to dicom role
	grantRolePerms $domain_dicom_ingest_role $dicom_ingest_doc_perms

# Service that allows the DICOM server to set domain-specific meta-data
set dicom_ingest_service_perms [list [list service ${ns}.pssd.object.meta.set MODIFY]]
#
# Grant this role to the DICOM server proxy user
grantRolePerms $domain_dicom_ingest_role $dicom_ingest_service_perms

##########################################################################
# These specialized services grant roles to other roles and users
# They need to have system-administrator role to do this
grantRole plugin:service ${ns}.pssd.user.create system-administrator

}
