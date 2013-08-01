#============================================================================#
# Register specific roles as available as 'role-members' when projects are   #
# created. Useful when changing teams all need access to lots of projects    #
# in e.g. a facility service capability
#
# Use
# om.pssd.role-member.regsitry.* to manipulate
#
#============================================================================#

proc registerMember { ns } {
	set roleMember ${ns}-user
	authorization.role.create :ifexists ignore :role $roleMember
        om.pssd.role-member-registry.add :role $roleMember
}