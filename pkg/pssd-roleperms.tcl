proc setRolePerms { ns } {
	
# Documemt Type access (this style translates $ns)
    set pssd_doc_perms [list \
    [list document ${ns}:pssd.subject ACCESS] \
	[list document ${ns}:pssd.subject PUBLISH] \
	[list document ${ns}:pssd.identity ACCESS] \
	[list document ${ns}:pssd.identity PUBLISH] \
	[list document ${ns}:pssd.human.identity ACCESS] \
	[list document ${ns}:pssd.human.identity PUBLISH] \
	[list document ${ns}:pssd.animal.subject ACCESS] \
	[list document ${ns}:pssd.animal.subject PUBLISH] \
	[list document ${ns}:pssd.project ACCESS] \
	[list document ${ns}:pssd.project PUBLISH] \
	[list document ${ns}:pssd.subject.identifiers ACCESS] \
	[list document ${ns}:pssd.subject.identifiers PUBLISH] \
	[list document ${ns}:pssd.subject.gender ACCESS] \
	[list document ${ns}:pssd.subject.gender PUBLISH] \
	[list document ${ns}:pssd.subject.handedness ACCESS] \
	[list document ${ns}:pssd.subject.handedness PUBLISH] \
	[list document ${ns}:pssd.subject.height ACCESS] \
	[list document ${ns}:pssd.subject.height PUBLISH] \
	[list document ${ns}:pssd.subject.date-of-birth ACCESS] \
	[list document ${ns}:pssd.subject.date-of-birth PUBLISH] \
	[list document ${ns}:pssd.subject.age-at-baseline ACCESS] \
	[list document ${ns}:pssd.subject.age-at-baseline PUBLISH] \
	[list document ${ns}:pssd.referral-date ACCESS] \
	[list document ${ns}:pssd.referral-date PUBLISH] \
	[list document ${ns}:pssd.patient-data-summary ACCESS] \
	[list document ${ns}:pssd.patient-data-summary PUBLISH] \
	[list document ${ns}:pssd.referring-clinician ACCESS] \
	[list document ${ns}:pssd.referring-clinician PUBLISH] \
	[list document ${ns}:pssd.psychiatrist ACCESS] \
	[list document ${ns}:pssd.psychiatrist PUBLISH] \
	[list document ${ns}:pssd.research-psychologist ACCESS] \
	[list document ${ns}:pssd.research-psychologist PUBLISH] \
	[list document ${ns}:pssd.ap-sofas ACCESS] \
	[list document ${ns}:pssd.ap-sofas PUBLISH] \
	[list document ${ns}:pssd.ap-staging-model ACCESS] \
	[list document ${ns}:pssd.ap-staging-model PUBLISH] \
	[list document ${ns}:pssd.ap-ham-d ACCESS] \
	[list document ${ns}:pssd.ap-ham-d PUBLISH] \
	[list document ${ns}:pssd.ap-bprs ACCESS] \
	[list document ${ns}:pssd.ap-bprs PUBLISH] \
	[list document ${ns}:pssd.ap-ymrs ACCESS] \
	[list document ${ns}:pssd.ap-ymrs PUBLISH] \
	[list document ${ns}:pssd.ap-sds ACCESS] \
	[list document ${ns}:pssd.ap-sds PUBLISH] \
	[list document ${ns}:pssd.ap-interview-checklist ACCESS] \
	[list document ${ns}:pssd.ap-interview-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-tests-checklist ACCESS] \
	[list document ${ns}:pssd.ap-tests-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-cantab-checklist ACCESS] \
	[list document ${ns}:pssd.ap-cantab-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-other-checklist ACCESS] \
	[list document ${ns}:pssd.ap-other-checklist PUBLISH] \
	[list document ${ns}:pssd.ap-wtar-raw-zscores ACCESS] \
	[list document ${ns}:pssd.ap-wtar-raw-zscores PUBLISH] \
	[list document ${ns}:pssd.ap-wais-wms-scores ACCESS] \
	[list document ${ns}:pssd.ap-wais-wms-scores PUBLISH] \
	[list document ${ns}:pssd.ap-ravlt-scores ACCESS] \
	[list document ${ns}:pssd.ap-ravlt-scores PUBLISH] \
	[list document ${ns}:pssd.ap-rcft-scores ACCESS] \
	[list document ${ns}:pssd.ap-rcft-scores PUBLISH] \
	[list document ${ns}:pssd.ap-tmt-scores ACCESS] \
	[list document ${ns}:pssd.ap-tmt-scores PUBLISH] \
	[list document ${ns}:pssd.ap-dass-scores ACCESS] \
	[list document ${ns}:pssd.ap-dass-scores PUBLISH] \
	[list document ${ns}:pssd.ap-cowat-scores ACCESS] \
	[list document ${ns}:pssd.ap-cowat-scores PUBLISH] \
	[list document ${ns}:pssd.date ACCESS] \
	[list document ${ns}:pssd.date PUBLISH] \
	[list document ${ns}:pssd.psychiatrist-screening ACCESS] \
	[list document ${ns}:pssd.psychiatrist-screening PUBLISH] \
	[list document ${ns}:pssd.diagnostic-information ACCESS] \
	[list document ${ns}:pssd.diagnostic-information PUBLISH] \
	[list document ${ns}:pssd.diagnostic-ultra-high-risk ACCESS] \
	[list document ${ns}:pssd.diagnostic-ultra-high-risk PUBLISH] \
	[list document ${ns}:pssd.diagnostic-staging-model ACCESS] \
	[list document ${ns}:pssd.diagnostic-staging-model PUBLISH] \
	[list document ${ns}:pssd.medical-history ACCESS] \
	[list document ${ns}:pssd.medical-history PUBLISH] \
	[list document ${ns}:pssd.family-medical-history ACCESS] \
	[list document ${ns}:pssd.family-medical-history PUBLISH] \
	[list document ${ns}:pssd.sofas ACCESS] \
	[list document ${ns}:pssd.sofas PUBLISH] \
	[list document ${ns}:pssd.current-treatment ACCESS] \
	[list document ${ns}:pssd.current-treatment PUBLISH] \
	[list document ${ns}:pssd.additional-gf-notes ACCESS] \
	[list document ${ns}:pssd.additional-gf-notes PUBLISH] \
	[list document ${ns}:pssd.substance.nicotine-caffeine ACCESS] \
	[list document ${ns}:pssd.substance.nicotine-caffeine PUBLISH] \
	[list document ${ns}:pssd.checked-self-report ACCESS] \
	[list document ${ns}:pssd.checked-self-report PUBLISH] \
	[list document ${ns}:pssd.inclusion-criteria ACCESS] \
	[list document ${ns}:pssd.inclusion-criteria PUBLISH] \
	[list document ${ns}:pssd.education.years ACCESS] \
	[list document ${ns}:pssd.education.years PUBLISH] \
	[list document ${ns}:pssd.background-information ACCESS] \
	[list document ${ns}:pssd.background-information PUBLISH]] \

# Service access
   set pssd_svc_perms  [list [list service ${ns}.pssd.* ACCESS] \
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
    set dicom_ingest_doc_perms [list [list document ${ns}:pssd.subject ACCESS] \
	[list document ${ns}:pssd.subject PUBLISH] \
	[list document ${ns}:pssd.identity ACCESS] \
	[list document ${ns}:pssd.identity PUBLISH] \
	[list document ${ns}:pssd.human.identity ACCESS] \
	[list document ${ns}:pssd.human.identity PUBLISH] \
	[list document ${ns}:pssd.animal.subject ACCESS] \
	[list document ${ns}:pssd.animal.subject PUBLISH]] \


			     
# Grant permissions to dicom role
   grantRolePerms $domain_dicom_ingest_role $dicom_ingest_doc_perms

# Service that allows the DICOM server to set domain-specific meta-data
#set dicom_ingest_service_perms [list [list service ${ns}.pssd.object.meta.set MODIFY]]
#
# Grant this role to the DICOM server proxy user
#grantRolePerms $domain_dicom_ingest_role $dicom_ingest_service_perms
}