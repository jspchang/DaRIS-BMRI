set scriptNamespace     system/triggers
set script              ymh-tags-trigger-install.tcl
set scriptPath          ${scriptNamespace}/${script}
set namespace           pssd
set label               [string toupper PACKAGE_$package]

## create or update the script asset
if { [xvalue exists [ asset.exists :id path=${scriptPath} ]] == "false" } {
    # if the script asset does not exist, create...
	asset.create :namespace -create yes ${scriptNamespace} \
	             :name ${script} \
	             :url archive:///${script} \
	             :label PUBLISHED :label -create yes ${label}
} else {
    # if the script asset exists, update it
	asset.set :id path=${scriptPath} :url archive:///${script}
}

## destroy the trigger if it already exists
foreach tid [xvalues namespace/trigger/@id [asset.trigger.on.list :namespace ${namespace}]] {
 	if { [xvalue namespace/trigger\[@id='${tid}'\]/script [asset.trigger.on.describe :namespace ${namespace}]] == $scriptPath } {
  		asset.trigger.destroy :namespace $namespace :tid ${tid}
   	}
}

## create the trigger
asset.trigger.post.create :namespace ${namespace} :event create :script -type ref ${scriptNamespace}/${script}
