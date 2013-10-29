# ============================================================================
# Include the util functions
# ============================================================================
source utils.tcl

# ============================================================================
# Uninstall Plugins
# ============================================================================
set plugin_label      [string toupper PACKAGE_$package]
set plugin_namespace  mflux/plugins
set plugin_jar        bmri-pssd-plugin.jar
set plugin_path       $plugin_namespace/$plugin_jar
set module_class      bmri.mf.plugin.pssd.PSSDPluginModule
unloadPlugin $plugin_path $module_class

#=============================================================================
# Uninstall ymh-tags-trigger.tcl trigger script
#=============================================================================
source ymh-tags-trigger-uninstall.tcl