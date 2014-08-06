package bmri.mf.plugin.pssd.services;

import java.util.Collection;

import arc.mf.plugin.PluginService;
import arc.mf.plugin.PluginService.Interface;
import arc.mf.plugin.dtype.CiteableIdType;
import arc.mf.plugin.dtype.EnumType;
import arc.mf.plugin.dtype.StringType;
import arc.mf.plugin.dtype.BooleanType;
import arc.xml.XmlDoc;
import arc.xml.XmlDocMaker;
import arc.xml.XmlWriter;
import arc.xml.XmlDoc.Element;

public class SvcProjectTag extends PluginService {

	private Interface _defn;

	public SvcProjectTag()  {

		_defn = new Interface();
		_defn.add(new Interface.Element("id",CiteableIdType.DEFAULT,"The citable ID of the Project.",1,1));
		_defn.add(new Interface.Element("name", StringType.DEFAULT, "The tag name.", 1, Integer.MAX_VALUE));
		_defn.add(new Interface.Element("if-exists", StringType.DEFAULT, "The behaviour if the tag entry already exists; 'ignore' (Default), 'replace' or 'error'", 0, 1));
	}

	public Access access() {
		return ACCESS_MODIFY;
	}

	public Interface definition() {
		return _defn;
	}

	public String description() {
		return "Creates a project-based tag dictionary to be used on datasets.";
	}

	public String name() {
		return "bmri.pssd.project.dataset.tag";
	}

	public void execute(Element args, Inputs inputs, Outputs outputs, XmlWriter w) throws Throwable {
		// Inputs
		XmlDoc.Element authority = args.element("authority");
		String id = args.value("id");
		Collection<XmlDoc.Element> names = args.elements("name");
		String ifExists = args.stringValue("if-exists", "ignore");
		
		// Validate
		nig.mf.pssd.plugin.util.PSSDUtil.isValidProject(executor(), id, true);
		
		// Set
		for (XmlDoc.Element name : names) {
			XmlDocMaker dm = new XmlDocMaker("args");
			dm.add("project", id);
			dm.add("type", "dataset");
			dm.add("if-exists", ifExists);
			dm.push("tag");
			dm.add("name", name);
			dm.pop();
			
			executor().execute("om.pssd.object.tag.dictionary.entry.add", dm.root());
		}
	}
}
