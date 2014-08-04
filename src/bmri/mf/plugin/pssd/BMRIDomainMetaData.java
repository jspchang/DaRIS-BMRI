package bmri.mf.plugin.pssd;

import arc.xml.*;
import nig.iio.metadata.DomainMetaData;
import nig.mf.Executor;
import nig.util.DateUtil;

import java.util.Collection;
import java.util.Date;
import java.text.SimpleDateFormat;

/**
 * Supply the BMRI domain-specific  project, subject and study meta-data to the DICOM server or Bruker client.
 * The framework is Data Model driven so that only the meta-data that could be attached is attached
 * 
 * The only reason we have functions for each object type is for clarity and because some
 * objects are handled slightly differently to others (add/merge/replace).  But the in reality,
 * the framework could hand in the object type and the test on object type be done internally
 * to this class. It does not matter much which way you do it.
 * 
 * The superclass, DomainMetaData sits in commons. In this way, specific packages like nig-pssd
 * can make use of the infrastructure but implement their own fully self-contained domain-specific
 * meta-data handler.
 * 
 * @author nebk
 *
 */
public class BMRIDomainMetaData extends DomainMetaData {

    private static final String IDENTITY_DOCTYPE = "bmri:pssd.subject.identifiers";
    private static final String GENDER_DOCTYPE = "bmri:pssd.subject.gender";
    private static final String DOB_DOCTYPE = "bmri:pssd.subject.date-of-birth";
    private static final String DATE_FORMAT = "dd-MMM-yyyy";


	// Constructor
	public BMRIDomainMetaData () {
		//
	}



	/**
	 * 
	 * @param executor
	 * @param metaType SHould hold children elements "dicom" and/or "bruker" (but their children are irrelevant). This
	 * gives the context for which document types we are interested in.
	 * @param id
	 * @param objectType "project", "subject", "study"
	 * @param currentMeta The contents of xpath("asset/meta") after retrieval by asset.get
	 * @throws Throwable
	 */
	protected void removeElements (Executor executor, XmlDoc.Element metaType, String id, String objectType, XmlDoc.Element currentMeta) throws Throwable {
		XmlDoc.Element dicom = metaType.element("dicom");
		if (dicom!=null) {
			removeElementsDicom (executor, id, objectType, currentMeta);
		} 

		// Bruker not handled
		XmlDoc.Element bruker = metaType.element("bruker");
		if (bruker!=null) {
		}
	}




	/**
	 * Update the meta-data on the  project object.  This function must
	 * do the actual update with the appropriate service (e.g. om.pssd.project.update).
	 * This function over-rides the default implementation.
	 * 
	 * @param id The citeable ID of the object to update
	 * @param meta The DICOM Study Metadata or Bruker identifier metadata. This class must understand the structure of this object
	 *      it's up to you what you put in it.  This class is invoked by the servuce nig.pssd.subject.meta.set and so its interface 
	 *      determines the structure
	 * @param privacyType The element to find the meta-data in the object description
	 * 					   For SUbjects and RSubjects should be one of "public", "private", "identity" 
	 *                     For other object types, should be "meta"
	 * @param docType the document type to write meta-data for.  The values must be mapped from the Study MetaData
	 * @param currentMeta  The meta-data that are attached to the asset (:foredit false)
	 * @throws Throwable
	 */
	protected void addTranslatedProjectDocument (Executor executor, String id, XmlDoc.Element meta, 
			String privacyType, String docType, XmlDoc.Element currentMeta) throws Throwable {
		if (meta==null) return;
		return;
	}

	/**
	 * Update the meta-data on the  subject object. This function must
	 * do the actual update with the appropriate service (e.g. om.pssd.subject.update).
	 * This function over-rides the default implementation.
	 * 
	 * @param id The citeable ID of the object to update
	 * @param meta The DICOM Study Metadata or Bruker identifier metadata 
	 * @param privacyType The element to find the meta-data in the object description
	 * 					   For SUbjects and RSubjects should be one of "public", "private", "identity" (RSubjects)
	 *                     For other object types, should be "meta"
	 * @param docType the document type to write meta-data for.  The values must be mapped from the Study MetaData
	 * @param currentMeta  The meta-data that are attached to the asset (:foredit false)
	 * @throws Throwable
	 */
	protected void addTranslatedSubjectDocument (Executor executor, String id, XmlDoc.Element meta, String privacyType, 
			String docType, XmlDoc.Element currentMeta) throws Throwable {
		if (meta==null) return;

		XmlDocMaker dm = null;
		if (docType.equals(IDENTITY_DOCTYPE)) {
			if (checkDocTypeExists(executor, IDENTITY_DOCTYPE)) {
				dm = new XmlDocMaker("args");
				dm.add("id", id);
				dm.push(privacyType);
				boolean doIt = addIdentityOuter (meta, currentMeta, dm);
				if (!doIt) dm = null;
			}
		} else if (docType.equals(GENDER_DOCTYPE)) {
			if (checkDocTypeExists(executor, GENDER_DOCTYPE)) {
				dm = new XmlDocMaker("args");
				dm.add("id", id);
				dm.push(privacyType);
				boolean doIt = addGenderOuter (meta, currentMeta, dm);
				if (!doIt) dm = null;
			}
		} else if (docType.equals(DOB_DOCTYPE)) {
			if (checkDocTypeExists(executor, DOB_DOCTYPE)) {
				dm = new XmlDocMaker("args");
				dm.add("id", id);
				dm.push(privacyType);
				boolean doIt = addDOBOuter (meta, currentMeta, dm);
				if (!doIt) dm = null;
			}
		}

		// Update the SUbject
		if (dm!=null) {
		    dm.add("allow-incomplete-meta", true);
                    updateSubject(executor, dm);
		}

	}


	/**
	 * Update the meta-data on the study object.  This function must
	 * do the actual update with the appropriate service (e.g. om.pssd.project.update).
	 * This function over-rides the default implementation.
	 * 
	 * @param id The citeable ID of the object to update
	 * @param meta The DICOM Study Metadata or Bruker identifier metadata 
	 * @param privacyType The element to find the meta-data in the object description
	 * 					   For SUbjects and RSubjects should be one of "public", "private", "identity" 
	 *                     For other object types, should be "meta"
	 * @param docType the document type to write meta-data for.  The values must be mapped from the Study MetaData
	 * @param ns An addition namespace to be set on the meta-data being updated.  Its purpose is for
	 *       Method namespaces like cid_step that must be set on the Method specified Study meta-data
	 * @param currentMeta  The meta-data that are attached to the asset (:foredit false)
	 * @throws Throwable
	 */
	protected void addTranslatedStudyDocument (Executor executor, String id, XmlDoc.Element meta, 
			String privacyType, String docType, String ns, XmlDoc.Element currentMeta) throws Throwable {
		if (meta==null) return;
		return;
	}



	private boolean addIdentityOuter (XmlDoc.Element meta,  XmlDoc.Element currentMeta,  XmlDocMaker dm) throws Throwable {
	    // DICOM
	    return addIdentityDICOM (meta.element("dicom"), currentMeta, dm);

	    // BRuker not handled
	}



	private boolean addGenderOuter (XmlDoc.Element meta,  XmlDoc.Element currentMeta,  XmlDocMaker dm) throws Throwable {

	    // DICOM
		XmlDoc.Element dicom = meta.element("dicom");
		Boolean set = false;
		if (dicom!=null) {
			XmlDoc.Element subject = dicom.element("subject");
			if (subject!=null) {
				String gender = subject.value("sex");
				set = addGender (gender, currentMeta, dm);
			}
		}

		// Bruker not handled
		XmlDoc.Element bruker = meta.element("bruker");
		//
		return set;
	}



	private boolean addDOBOuter (XmlDoc.Element meta,  XmlDoc.Element currentMeta,  XmlDocMaker dm) throws Throwable {

		XmlDoc.Element dicom = meta.element("dicom");
		Boolean set = false;
		if (dicom!=null) {
			XmlDoc.Element subject = dicom.element("subject");
			if (subject!=null) {

				// Extract values from container
				Date dob = subject.element("dob")!=null ? subject.dateValue("dob") : null;
				String dobString = null;
				if (dob != null) {
					SimpleDateFormat df = new SimpleDateFormat(DATE_FORMAT);
					dobString = df.format(dob).toString();
				}
				set = addDOB  (dobString, currentMeta, dm);
			}
		}
		//
		XmlDoc.Element bruker = meta.element("bruker");
		if (bruker!=null) {
		}
		//
		return set;
	}




	/**
	 * Function to add the Subject ID (DICOM element (0010,0020)) to
	 * the SUbject meta-data if it does not already exist
	 * not already exist
	 * 
	 * @param executor
	 * @param currentMeta
	 * @param cid
	 * @throws Throwable
	 */	
	private boolean addIdentityDICOM (XmlDoc.Element sm,  XmlDoc.Element currentMeta,  XmlDocMaker dm) throws Throwable {
		if (sm==null) return false;

		// Extract DICOM meta data.  The BMRI stores the identifier in the patient last name
		String fullName = sm.value("subject/name");
		if (fullName ==null) return false;

		// Fish out last name
		String[] parts = fullName.split(" ");
		int n = parts.length;
		String lastName = parts[n-1];
		// Add/merge the identity if needed.
		return addMergeIdentity (currentMeta, lastName, dm);
	}




	private boolean addMergeIdentity (XmlDoc.Element currentMeta,  String subjectID, XmlDocMaker dm) throws Throwable {


		if (subjectID==null) return false;

		// See if this specific identity already exists on the object
		if (currentMeta!=null) {
			Collection<XmlDoc.Element> identities =  currentMeta.elements(IDENTITY_DOCTYPE);
                        if (identities!=null) {
			    for (XmlDoc.Element identity : identities) {
				String id  = identity.value("subject-project-id");
				// Already have this one
				if(id!=null && id.equals(subjectID)) return false;
			    }
			}
		}

		// Add this identity
		dm.push(IDENTITY_DOCTYPE);
		dm.add("subject-project-id", subjectID);		
		dm.pop();

		dm.pop();      // "public" or "private" pop
		dm.add("action", "add");
		return true;
	}


	
	private boolean addGender  (String gender, XmlDoc.Element currentMeta,  XmlDocMaker dm) throws Throwable {

                if (gender==null) return false;

		// Get current meta-data for appropriate DocType
		if (currentMeta!=null) {
			XmlDoc.Element subjectMeta = currentMeta.element(GENDER_DOCTYPE);

			// We assume that if the element is already set on the object that it is correct
			if (subjectMeta!=null) {
				String currGender = subjectMeta.value("gender");
				if (currGender!=null) return false;
			}
		}

		// Add gender
		dm.push(GENDER_DOCTYPE);
		if (gender.equals("male")) {
		    dm.add("gender", "male");
		} else if (gender.equals("female")) {
		    dm.add("gender", "female");
	        } else {
          	    dm.add("gender", "missing-not-available");
          	}
		dm.pop();

		// Merge these details
		dm.pop();      // "public" or "private" pop
		dm.add("action", "add");	
		return true;
	}




	private boolean addDOB (String dob, XmlDoc.Element currentMeta,  XmlDocMaker dm) throws Throwable {
                if (dob==null) return false;

		// Get current meta-data for appropriate DocType
		if (currentMeta!=null) {
			XmlDoc.Element subjectMeta = currentMeta.element(DOB_DOCTYPE);

			// We assume that if the element is already set on the object that it is correct
			if (subjectMeta!=null) {
			    String currDOB = subjectMeta.value("date-of-birth");
			    if (currDOB != null) return false;
			}
		}

		// Add DOB
		dm.push(DOB_DOCTYPE);
		dm.add("date-of-birth", dob);
		dm.pop();

		// Merge these details
		dm.pop();      // "public" or "private" pop
		dm.add("action", "add");	
		return true;
	}





	/**
	 * Remove the mapped elements for when we are considering DICOM meta-data.  
	 * 
	 * @param executor
	 * @param id
	 * @param objectType
	 * @param currentMeta
	 * @throws Throwable
	 */
	private void removeElementsDicom (Executor executor, String id, String objectType, XmlDoc.Element currentMeta) throws Throwable {
		XmlDocMaker dm = new XmlDocMaker("args");
		dm.add("cid", id);
		//
		boolean some = false;
		if (objectType.equals(DomainMetaData.PROJECT_TYPE)) {
		    //
		} else if (objectType.equals(DomainMetaData.SUBJECT_TYPE)) {
			if (prepareRemovedMetaData (dm, currentMeta, IDENTITY_DOCTYPE, new String[]{"subject-project-id"})) some = true;
			if (prepareRemovedMetaData (dm, currentMeta, GENDER_DOCTYPE, new String[]{"gender"})) some = true;
			if (prepareRemovedMetaData (dm, currentMeta, DOB_DOCTYPE, new String[]{"date-of-birth"})) some = true;
		} else if (objectType.equals(DomainMetaData.STUDY_TYPE)) {
		    //
		}
		//
		if (some) {
			executor.execute("asset.set", dm);
		}
	}
}
