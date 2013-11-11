# Supply arguments with 
#  package.install :arg -name <arg name> <value>
#
# Arguments:
#     studyTypes - If set to false, does not add the mnc-pssd Study type definitions.
#                  Defaults to true.
#           model - Set to false to not make any changes to the object model such as what meta-data
#                   are registered with the data model.  Defaults to true.
#
# ============================================================================
# Include the utils.tcl functions
# ============================================================================
source utils.tcl

# This string is used to propagate
#  1. A namespace for document types. E.g. nig:pssd.project
#  2. A prefix for dictionaries E.g. nig.funding.organization (as there is no namespace for dictionaries)
#  3. The authentication domain your users log in to (must pre-exist)
#
# template would be replaced by, e.g. nig or mnc or bmrf etc. It should be meaningful to your department

set tns bmri

#============================================================================
# Create dictionaries
#
# Note: it is created first because services may, when being reloaded, 
#       instantiate classes which specify dictionaries
#============================================================================
source pssd-dictionaries.tcl
createUpdatePSSDDicts $tns

source pssd-dictionaries-bmri-ymh.tcl
createUpdatePSSDDicts $tns

#============================================================================
# Add our Study Types. The command-line arguments allows you to choose to
# not add our study types, so other sites can fully define their own.
#
# Really just a dictionary, but we keep it logically separate
#============================================================================
set addStudyTypes 1
if { [info exists studyTypes ] } {
    if { $studyTypes == "false" } {
	set addStudyTypes 0
    }
}
if { $addStudyTypes == 1 } {
   source pssd-studytypes.tcl
   create_PSSD_StudyTypes
}

# ============================================================================
# Install plugins
# ============================================================================
set plugin_label      [string toupper PACKAGE_$package]
set plugin_namespace  mflux/plugins
set plugin_zip        ${tns}-pssd-plugin.zip
set plugin_jar        ${tns}-pssd-plugin.jar
set module_class      ${tns}.mf.plugin.pssd.PSSDPluginModule
loadPlugin $plugin_namespace $plugin_zip $plugin_jar $module_class $plugin_label
srefresh

#
# ============================================================================
# Domain access configuration
# ============================================================================
#source pssd-domain-config.tcl
#grantDomainPerms $tns

# ============================================================================
# Create PSSD object namespaces
# ============================================================================
# This function tramples on variable 'ns'... ergo 'tns'
source pssd-namespaces.tcl

#=============================================================================
# Create document types in own namespace
#=============================================================================
if { [xvalue exists [asset.doc.namespace.exists :namespace ${tns}]] == "false" } {
	asset.doc.namespace.create :namespace ${tns}
	puts "creating namespace $tns"
} 
source pssd-doctypes-core.tcl
createPSSDCoreDocTypes $tns

source pssd-doctypes-generic.tcl
createDocTypesGeneric $tns

source pssd-doctypes-bmri-ymh.tcl
create-PSSD-bmri-ymh-DocTypes $tns

source pssd-doctypes-bmri-clinical-tests.tcl
createPSSD-bmri-clinical-tests-DocTypes $tns

source pssd-doctypes-bmri-self-report.tcl
createPSSD-bmri-self-report $tns

#=============================================================================
# Create methods
#=============================================================================

source pssd-method-YouthMentalHealth.tcl
create_YouthMentalHealth_Method $tns 1

#=============================================================================
# Register doc types with the data model
#=============================================================================

set addModel 1
if { [info exists model] } {
    if { $model == "false" } {
	set addModel 0
    }
}
if { $addModel == 1 } {
   source pssd-register-doctypes.tcl
   registerObjectMeta $tns
}

#=============================================================================
# Register role-members
#=============================================================================
source pssd-register-rolemembers.tcl
registerMember $tns

#=============================================================================
# Set up roles & permissions
#=============================================================================
source pssd-roleperms.tcl
setRolePerms $tns

#=============================================================================
# Install ymh-tags-trigger.tcl script as trigger
#=============================================================================
source ymh-tags-trigger-install.tcl