##
## This a trigger script to be installed for /pssd namespace. It should be 
## triggered after the creation of an asset. If the asset is a dicom
## dataset and it belongs the given YMH project, it will try to apply a 
## appropriate YMH tag to the asset.
##


##############################################################################
##############################################################################
##                                                                          ##
## PROCEDURES                                                               ##
##                                                                          ##
##############################################################################
##############################################################################

##
##  Procedure: get_dicom_element_value
##  Description: get the value of the given tag in the DICOM dataset/series. This is for the tags with single value.
##  Arguments: 
##      asset_id  - the asset id of the DICOM dataset/series.
##      tag          - the DICOM tag in the format of ggggeeee, e.g. 00100020
##  Returns:
##      the value of the specified tag.
##
proc get_dicom_element_value { asset_id tag } {
    return [xvalue de\[@tag='${tag}'\]/value [dicom.metadata.get :id ${asset_id}]]
}

##
##  Procedure: get_image_in_acquisition
##  Description: get the value of image in acquisition (0020,1002).
##  Arguments: 
##      asset_id  - the asset id of the DICOM dataset/series.
##  Returns:
##      the value of image in acquisition.
##
proc get_image_in_acquisition { asset_id } {
    return [ get_dicom_element_value ${asset_id} "00201002" ]
}

##
##  Procedure: get_number_of_temporal_positions
##  Description: get the number of temporal positions (0020,0105).
##  Arguments: 
##      asset_id  - the asset id of the DICOM dataset/series.
##  Returns:
##      the number of temporal positions.
##
proc get_number_of_temporal_positions { asset_id } {
    return [ get_dicom_element_value ${asset_id} "00200105" ]
}

##
##  Procedure: string_equals
##  Description: compares two strings by removing all the spaces and ignoring the cases.
##  Arguments: 
##      str1
##      str2
##  Returns:
##
##
proc string_equals { str1 str2 } {
    return [expr { [string toupper [string map {" " ""} ${str1}]] == [string toupper [string map {" " ""} ${str2}]] }]
}

##
##  Procedure: tag_dicom_dataset
##  Description: tag a dicom dataset.
##  Arguments: 
##      dataset_cid  - the citeable id of the dicom dataset.
##
proc tag_dicom_dataset { asset_id dataset_cid } {
    set protocol [xvalue asset/meta/mf-dicom-series/protocol [asset.get :cid ${dataset_cid}]]
    set description [xvalue asset/meta/mf-dicom-series/description [asset.get :cid ${dataset_cid}]]
    set size [xvalue asset/meta/mf-dicom-series/size [asset.get :cid ${dataset_cid}]]
    set image_in_acquisition         [get_image_in_acquisition ${asset_id}]
    set number_of_temporal_positions [get_number_of_temporal_positions ${asset_id}]
    
    if { [string_equals ${protocol} "YOUTH MENTAL HEALTH 8CH"] && [string_equals ${description} "DTI 77 direction 2mm"] && ${image_in_acquisition} == 4235 } {
        om.pssd.object.tag.add :cid ${dataset_cid} :tag < :name "youth-mental-health-dti-mri" >
    } elseif { [string_equals ${protocol} "YOUTH MENTAL HEALTH 8CH"] && [string_equals ${description} "3D T1 0.9mm isotropic"] && ${image_in_acquisition} == 196 } {
        om.pssd.object.tag.add :cid ${dataset_cid} :tag < :name "youth-mental-health-t1-mri" >
    } elseif { [string_equals ${protocol} "YOUTH MENTAL HEALTH 8CH"] && [string_equals ${description} "fMRI 64 Resting State"] && ${number_of_temporal_positions} == 140 && ${image_in_acquisition} == 39 } {
        om.pssd.object.tag.add :cid ${dataset_cid} :tag < :name "youth-mental-health-t2-mri" >
    }
}

##############################################################################
##############################################################################
##                                                                          ##
## SETTINGS                                                                 ##
##                                                                          ##
##############################################################################
##############################################################################

##
## NOTE: you need to substitude the YMH_PROJECT_CID to the id of your YMH prject.
##
set YMH_PROJECT_CID 1069.2.4

##############################################################################
##############################################################################
##                                                                          ##
## MAIN                                                                     ##
##                                                                          ##
##############################################################################
##############################################################################

set asset [asset.get :id ${id}]
set type [xvalue asset/type ${asset}]
set cid [xvalue asset/cid ${asset}]
if { $type != "dicom/series" } {
    #puts "asset ${id} is not a dicom/series."
    return
}
if { $cid == "" } {
    #puts "asset ${id} has no cid, not a valid pssd dataset."
    return
}
if { [string first $YMH_PROJECT_CID $cid] != 0 } {
    #puts "asset ${id} does not belong to the given ymh project ${YMH_PROJECT_CID}."
    return
}
tag_dicom_dataset $id $cid
