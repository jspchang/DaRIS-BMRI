#============================================================================#
# Register generic meta-data with specific PSSD objects                      #
# This is domain-specific, but not method-specific meta-data                 #
#============================================================================#
proc registerObjectMeta { ns } {
	# Generic Project governance information 
	set mtypeArgs ":mtype -requirement optional pssd-project-governance"
	
	# Generic Project governance information 
	set mtypeArgs "${mtypeArgs} :mtype -requirement optional pssd-project-research-category"
	
	# Generic Project owner 
	set mtypeArgs "${mtypeArgs} :mtype -requirement optional pssd-project-owner"

	# Services associated with the Project 
	set mtypeArgs "${mtypeArgs} :mtype -requirement optional pssd-related-services"

	# Publications associated with the Project 
	set mtypeArgs "${mtypeArgs} :mtype -requirement optional pssd-publications"

	# Allows user to set if project can be harvested by ANDS
	set mtypeArgs "${mtypeArgs} :mtype -requirement optional pssd-project-harvest"
	
	# Append to any pre-existing associations (e.g. set by pssd package)
	set args ":append true :type project ${mtypeArgs}"
	om.pssd.type.metadata.set $args	
}

