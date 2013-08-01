#============================================================================#
# Register generic meta-data with specific PSSD objects                      #
# This is domain-specific, but not method-specific meta-data                 #
#============================================================================#
proc registerObjectMeta { ns } {
	# Basic project info
	set mtypeArgs ":mtype -requirement optional ${ns}:pssd.project"
	
	# Generic Project owner 
	set mtypeArgs "${mtypeArgs} :mtype -requirement optional pssd-project-owner"
	
	# Append to any pre-existing associations (e.g. set by pssd package)
	set args ":append true :type project ${mtypeArgs}"
	om.pssd.type.metadata.set $args	
}

