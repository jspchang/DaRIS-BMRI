# This file isn't currently used by the package
# Please ignore

proc createDocType_pssd_project { ns } {
        asset.doc.type.update \
	    :create true :type ${ns}:pssd.project \
                :label "Project" \
                :description "Document type for  project" \
                :definition \
                < \
                	:element -name facility-id -min-occurs 0 -max-occurs infinity -type string -index true < \
                        :description "Facility ID of the project allocated by some other authority" \
                        :attribute -name type -type enumeration -min-occurs 0  < \
                            :restriction -base enumeration < \
                                :value "Brain and Mind research Institute" \
                                :value "Other" \
                            > \
						> \
					> \
				> \
}
