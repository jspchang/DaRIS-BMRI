package bmri.mf.plugin.pssd;

import java.util.Collection;
import java.util.Vector;

import bmri.mf.plugin.pssd.services.SvcObjectMetaSet;
import bmri.mf.plugin.pssd.services.SvcSample;
import bmri.mf.plugin.pssd.services.SvcUserCreate;




import arc.mf.plugin.ConfigurationResolver;
import arc.mf.plugin.PluginModule;
import arc.mf.plugin.PluginService;

public class PSSDPluginModule implements PluginModule {

	private Collection<PluginService> _services = null;

	public String description() {

		return "BMRI PSSD Plugin Module.";
	}

	@Override
	public void initialize(ConfigurationResolver config) throws Throwable {

		_services = new Vector<PluginService>();
		_services.add(new SvcSample());
		_services.add(new SvcObjectMetaSet());
		_services.add(new SvcUserCreate());

	}

	protected void registerSystemEvents() throws Throwable {

	}

	public boolean isCompatible(ConfigurationResolver config) throws Throwable {

		return false;
	}

	public void shutdown(ConfigurationResolver config) throws Throwable {

	
	}

	protected void unregisterSystemEvents() throws Throwable {

	
	}

	public String vendor() {

		return "Brain and Mind Research Institute, the University of Sydney.";
	}

	public String version() {

		return "1.0";
	}

	public Collection<PluginService> services() {

		return _services;
	}

}