set scriptNamespace     system/triggers
set script              ymh-tags-trigger.tcl
set scriptPath          ${scriptNamespace}/${script}
set namespace           pssd

## destroy the trigger if it already exists
foreach tid [xvalues namespace/trigger/@id [asset.trigger.on.list :namespace ${namespace}]] {
 	if { [xvalue namespace/trigger\[@id='${tid}'\]/script [asset.trigger.on.describe :namespace ${namespace}]] == $scriptPath } {
  		asset.trigger.destroy :namespace $namespace :tid ${tid}
   	}
}

## destroy the script asset
if { [xvalue exists [asset.exists :id path=${scriptPath}]] == "true" } {
	asset.destroy :id path=${scriptPath}
}