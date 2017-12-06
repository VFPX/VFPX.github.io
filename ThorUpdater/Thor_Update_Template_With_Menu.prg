lparameters toUpdateObject
local lcAppName, ;
	lcAppID, ;
	lcRepositoryURL, ;
	lcDownloadsURL, ;
	lcVersionFileURL, ;
	lcZIPFileURL, ;
	lcRegisterWithThor

* Set the project settings; edit these for your specific project.

lcAppName       = 'My Project'
	&& the name of the project
lcAppID         = 'MyProject'
	&& similar to lcAppName but must be URL-friendly (no spaces or other
	&& illegal URL characters)
lcRepositoryURL = 'https://github.com/VFPX/MyProject'
	&& the URL for the project's repository

* If the version file and zip file are in the ThorUpdater folder of the
* master branch of a GitHub repository, these don't need to be edited.
* Otherwise, set lcVersionFileURL and lcZIPFileURL to the correct URLs.

lcDownloadsURL   = strtran(lcRepositoryURL, 'github.com', ;
	'raw.githubusercontent.com') + '/master/ThorUpdater/'
lcVersionFileURL = lcDownloadsURL + lcAppID + 'Version.txt'
	&& the URL for the file containing code to get the available version number
lcZIPFileURL     = lcDownloadsURL + lcAppID + '.zip'
	&& the URL for the zip file containing the project

* This is code to execute after the project has been installed by Thor for the
* first time. This code registers the project with Thor so it appears in the
* Thor menu. Edit the Code property with the name of your app file if necessary.
* Edit this if you want to display a different message (such as replacing
* "Components" with "Apps" if you set Component to No as discussed below.
* Note: Thor replaces ##InstallFolder## with the installation path for the project.

text to lcRegisterWithThor noshow textmerge
	messagebox('From the Thor menu, choose "More -> Open Folder -> Components" to see the folder where <<lcAppName>> was installed', 0, '<<lcAppName>> Installed', 5000)

* Create the tool under Thor Tools.

	loThorInfo = Execscript (_Screen.cThorDispatcher, 'Thor Register=')
	with loThorInfo

* Required properties.

		.PRGName    = 'Thor_Tool_<<lcAppID>>'
		.FolderName = '##InstallFolder##'
		.Prompt     = '<<lcAppName>>'

* Optional properties.

		.Description = '<<lcAppName>>'

* These are used to group and sort tools when they are displayed in menus or the Thor form.

		.Category        = 'Applications'
		.CanRunAtStartUp = .F.

* This is the code to execute when the tool is selected.

		.Code = "do ('##InstallFolder##<<lcAppID>>.app')"

* Register the tool with Thor.

		llRegister = .Register()
	endwith
endtext

* Set the properties of the passed updater object. You likely won't need to edit this code.

with toUpdateObject
	.ApplicationName      = lcAppName
	.Component            = 'Yes'
		&& Set this to Yes if you want the project to be a Thor Component or No
		&& if you want it to be Thor App
	.VersionLocalFilename = lcAppID + 'VersionFile.txt'
	.RegisterWithThor     = lcRegisterWithThor
	.VersionFileURL       = lcVersionFileURL
	.SourceFileUrl        = lcZIPFileURL
	.Link                 = lcRepositoryURL
	.LinkPrompt           = lcAppName + ' Home Page'
	.Notes                = GetNotes()
endwith
return toUpdateObject

* Get the notes for the project. Edit this code as necessary.

procedure GetNotes
local lcNotes
text to lcNotes noshow
My Project

Project Manager: My Name

This is a VFPX project that does ...
endtext
return lcNotes
