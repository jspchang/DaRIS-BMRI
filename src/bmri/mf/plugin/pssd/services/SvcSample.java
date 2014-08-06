package bmri.mf.plugin.pssd.services;

import arc.mf.plugin.*;
import arc.mf.plugin.dtype.*;
import arc.xml.*;

public class SvcSample extends PluginService {
	private Interface _defn;

	public SvcSample() {
		_defn = new Interface();
		_defn.add(new Interface.Element("id",CiteableIdType.DEFAULT,"The identity of the object.",1,1));
	}

	public String name() {
		return "bmri.pssd.service.sample";
	}

	public String description() {
		return "Sample service";
	}

	public Interface definition() {
		return _defn;
	}

	public Access access() {
		return ACCESS_MODIFY;
	}

	public void execute(XmlDoc.Element args, Inputs in, Outputs out, XmlWriter w) throws Throwable {

		String id =args.value("id");
		XmlDocMaker dm = new XmlDocMaker("args");	
		dm.add("id",id);
		XmlDoc.Element r = executor().execute("om.pssd.object.describe",dm.root());
		w.add(r.element("object"));
	}
	
}
