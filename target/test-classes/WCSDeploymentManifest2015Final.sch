<?xml version="1.0" encoding="UTF-8"?>
<iso:schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:iso="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" schemaVersion="ISO19757-3">
    <iso:pattern id="required-fields-check">
        <iso:rule context="CameraTrapDeployment">
            <iso:assert
                test="string-length(normalize-space(ProjectId)) &gt; 0">A camera deployment must have a project Id</iso:assert>
            <iso:assert
                test="string-length(normalize-space(ProjectName)) &gt; 0">A camera deployment must have a project name</iso:assert>
            <iso:assert
                test="string-length(normalize-space(ProjectLatitude)) &gt; 0">A camera deployment must have a project latitude</iso:assert>
            <iso:assert
                test="string-length(normalize-space(ProjectLongitude)) &gt; 0">A camera deployment must have a project longitude</iso:assert>
            <iso:assert
                test="string-length(normalize-space(CountryCode)) &gt; 0">A camera deployment must have a country code</iso:assert>
            <iso:assert
                test="string-length(normalize-space(CameraDeploymentID)) &gt; 0">A camera deployment must have a camera deployment id</iso:assert>
            <iso:assert
                test="string-length(normalize-space(CameraSiteName)) &gt; 0">A camera deployment must have a camera site name</iso:assert>
            <iso:assert
                test="string-length(normalize-space(CameraDeploymentBeginDate)) &gt; 0">A camera deployment must have a Camera deployment begin date</iso:assert>
            <iso:assert
                test="string-length(normalize-space(CameraDeploymentEndDate)) &gt; 0">A camera deployment must have a camera deployment end date</iso:assert>
            <iso:assert 
                test="string-length(normalize-space(CameraFailureDetails)) &gt; 0">A camera deployment must have camera failure details</iso:assert>
            <iso:assert 
                test="string-length(normalize-space(ActualLatitude)) &gt; 0">A camera deployment must have an actual latitude</iso:assert>
            <iso:assert 
                test="string-length(normalize-space(ActualLongitude)) &gt; 0">A camera deployment must have an actual Longitude</iso:assert>
            <iso:assert
                test="string-length(normalize-space(Bait)) &gt; 0">A camera deployment must have a bait</iso:assert>
            <iso:assert
                test="string-length(normalize-space(Feature)) &gt; 0">A camera deployment must have a feature</iso:assert>
            <iso:assert
                test="string-length(normalize-space(AccessConstraints)) &gt; 0">A camera deployment must have Access Constraints</iso:assert>
            <iso:assert
                test="string-length(normalize-space(CameraID)) &gt; 0">A camera deployment must have a camera Id</iso:assert>       
        </iso:rule>
    </iso:pattern>
    
    <iso:pattern id="required-fields-check-Owner">
        <iso:rule context="CameraTrapDeployment/ProjectOwners/ProjectOwner">
            <iso:assert
                test="string-length(normalize-space(.)) &gt; 0">A camera deployment must have a project owner</iso:assert>  
        </iso:rule>
    </iso:pattern>
    
    <iso:pattern id="required-fields-check-Owneremail">
        <iso:rule context="CameraTrapDeployment/ProjectOwners/ProjectOwnerEmail">
            <iso:assert
                test="string-length(normalize-space(.)) &gt; 0">A camera deployment must have a project owner email</iso:assert>          
        </iso:rule>
    </iso:pattern>
    
    <iso:pattern id="check-for-valid-publish-date">
        <iso:rule context="CameraTrapDeployment/PublishDate">
            <iso:assert test="if ((string-length(normalize-space(.)) &gt; 0) and not(string(.)castable as xs:date)) then false() else true()">Publish Date must be a valid date.</iso:assert>
        </iso:rule>
    </iso:pattern>
    
    <iso:pattern id="check-for-subproject-design-only">
        <iso:rule context="CameraTrapDeployment">
            <iso:assert test="if ((string-length(normalize-space(SubProjectDesign)) &gt; 0) and ((string-length(normalize-space(SubProjectName))= 0) or (string-length(normalize-space(SubProjectId))= 0))) then false() else true()" >If Sub-Project Design exists, sub-project id and name are required.</iso:assert>
        </iso:rule>
    </iso:pattern>
    
    <iso:pattern id="check-for-subproject-id-only">
        <iso:rule context="CameraTrapDeployment">
            <iso:assert test="if ((string-length(normalize-space(SubProjectId)) &gt; 0) and ((string-length(normalize-space(SubProjectName))= 0))) then false() else true()" >If Sub-Project Id exists, sub-project name is required. </iso:assert>
        </iso:rule>
    </iso:pattern>
    
    <iso:pattern id="check-for-subproject-name-only">
        <iso:rule context="CameraTrapDeployment">
            <iso:assert test="if ((string-length(normalize-space(SubProjectName)) &gt; 0) and ((string-length(normalize-space(SubProjectId))= 0))) then false() else true()" >If Sub-Project Name exists, sub-project Id is required.</iso:assert>
        </iso:rule>
    </iso:pattern>
    
    <iso:pattern id="check-for-plot-treatment-only">
        <iso:rule context="CameraTrapDeployment">
            <iso:assert test="if ((string-length(normalize-space(PlotTreatment)) &gt; 0) and ((string-length(normalize-space(PlotName))= 0) )) then false() else true()" >If Plot Treatment exists, Plot name is required.</iso:assert>
        </iso:rule>
    </iso:pattern>
    
    <iso:pattern id="check-for-valid-deployment-dates">
        <iso:rule context="CameraTrapDeployment/CameraDeploymentBeginDate">
            <iso:assert test="if ((string-length(normalize-space(.)) &gt; 0) and not(string(.)castable as xs:date)) then false() else true()">Camera Deployment Begin Date must be a valid date.</iso:assert>
        </iso:rule>
        <iso:rule context="CameraTrapDeployment/CameraDeploymentEndDate">
            <iso:assert test="if ((string-length(normalize-space(.)) &gt; 0) and not(string(.)castable as xs:date)) then false() else true()">Camera Deployment End Date must be a valid date.</iso:assert>
        </iso:rule>
    </iso:pattern>
    
    <iso:pattern id="check-for-valid-proposed-deployment-dates">
        <iso:rule context="CameraTrapDeployment/ProposedCameraDeploymentBeginDate">
            <iso:assert test="if ((string-length(normalize-space(.)) &gt; 0) and not(string(.)castable as xs:date)) then false() else true()">Proposed Camera Deployment Begin Date must be a valid date.</iso:assert>
        </iso:rule>
        <iso:rule context="CameraTrapDeployment/ProposedCameraDeploymentEndDate">
            <iso:assert test="if ((string-length(normalize-space(.)) &gt; 0) and not(string(.)castable as xs:date)) then false() else true()">Proposed Camera Deployment End Date must be a valid date.</iso:assert>
        </iso:rule>
    </iso:pattern>
    
    <pattern id="image-sequence-begin-date-valid-date-check">
        <rule context="CameraTrapDeployment/ImageSequence/ImageSequenceBeginTime">
            <let name="originalBeginDate" value="."/>
            <let name="begindate" value="substring-before($originalBeginDate,' ')"/>
            <let name="begintime" value="substring-after($originalBeginDate,' ')"/>
            <let name="begindateTime" value="concat($begindate,'T',$begintime)"/>
            <iso:assert test="if ((normalize-space($begintime) != 'None') and not(string($begindateTime)castable as xs:dateTime)) then false() else true()">Image Sequence Begin Date must be a valid date time format.</iso:assert>
        </rule>
    </pattern>
    
    <pattern id="image-sequence-begin-date-valid-date-check-None">
        <rule context="CameraTrapDeployment/ImageSequence/ImageSequenceBeginTime">
            <let name="originalBeginDate" value="."/>
            <let name="begindate" value="substring-before($originalBeginDate,' ')"/>
            <let name="begintime" value="substring-after($originalBeginDate,' ')"/>
            <let name="begindateTime" value="concat($begindate,'T',$begintime)"/>
            <iso:assert test="if (((normalize-space($begintime)) = 'None') and not(string($begindate)castable as xs:date)) then false() else true()">Image Sequence Begin Date must be a valid date format.</iso:assert>
        </rule>
    </pattern>
    
    <pattern id="image-sequence-end-date-valid-date-check">
        <rule context="CameraTrapDeployment/ImageSequence/ImageSequenceEndTime">
            <let name="originalEndDate" value="."/>
            <let name="enddate" value="substring-before($originalEndDate,' ')"/>
            <let name="endtime" value="substring-after($originalEndDate,' ')"/>
            <let name="enddateTime" value="concat($enddate,'T',$endtime)"/>
            <iso:assert test="if ((normalize-space($endtime) != 'None') and not(string($enddateTime)castable as xs:dateTime)) then false() else true()">Image Sequence End Date must be a valid date time format.</iso:assert>
        </rule>
    </pattern>
    
    <pattern id="image-sequence-end-date-valid-date-check-None">
        <rule context="CameraTrapDeployment/ImageSequence/ImageSequenceBeginTime">
            <let name="originalEndDate" value="."/>
            <let name="enddate" value="substring-before($originalEndDate,' ')"/>
            <let name="endtime" value="substring-after($originalEndDate,' ')"/>
            <let name="enddateTime" value="concat($enddate,'T',$endtime)"/>
            <iso:assert test="if (((normalize-space($endtime)) = 'None') and not(string($enddate)castable as xs:date)) then false() else true()">Image Sequence Begin Date must be a valid date format.</iso:assert>
        </rule>
    </pattern>
    
    <iso:pattern id="image-sequence-required-fields-check">
        <iso:rule context="CameraTrapDeployment/ImageSequence">
            <iso:assert
                test="string-length(normalize-space(ImageSequenceId)) &gt; 0">An image sequence must have an Id</iso:assert>
            <iso:assert
                test="string-length(normalize-space(ImageSequenceBeginTime)) &gt; 0">An image sequence must have a begin time</iso:assert>
            <iso:assert
                test="string-length(normalize-space(ImageSequenceEndTime)) &gt; 0">An image sequence must have an end time</iso:assert>
        </iso:rule>
    </iso:pattern>
    <iso:pattern id="researcher-identifications-required-fields-check">
        <iso:rule context="CameraTrapDeployment/ImageSequence/ResearcherIdentifications/Identification">
            <iso:assert
                test="string-length(normalize-space(IUCNId)) &gt; 0">A identification must have an IUCNId</iso:assert>
            <iso:assert
                test="string-length(normalize-space(SpeciesScientificName)) &gt; 0">An identification must have a scientific name</iso:assert>
        </iso:rule>
    </iso:pattern>
    <iso:pattern id="image-required-fields-check">
        <iso:rule context="CameraTrapDeployment/ImageSequence/Image">
            <iso:assert
                test="string-length(normalize-space(ImageId)) &gt; 0">An image must have an Id</iso:assert>
            <iso:assert
                test="string-length(normalize-space(ImageFileName)) &gt; 0">An image must have a file name</iso:assert>
            <iso:assert
                test="string-length(normalize-space(ImageOrder)) &gt; 0">An image must have an image order</iso:assert>
        </iso:rule>
    </iso:pattern>
    <iso:pattern id="image-identification-required-fields-check">
        <iso:rule context="CameraTrapDeployment/ImageSequence/Image/Identifications/Identification">
            <iso:assert
                test="string-length(normalize-space(IUCNId)) &gt; 0">A identification must have an IUCNId</iso:assert>
            <iso:assert
                test="string-length(normalize-space(SpeciesScientificName)) &gt; 0">An identification must have a scientific name</iso:assert>
        </iso:rule>
    </iso:pattern>
</iso:schema>