---
layout: page
permalink: /migrating/
---

## Migrating a Project from CodePlex to GitHub

There are several steps you must perform to migrate a project from CodePlex to GitHub. Fortunately, they aren't very complicated.

## 1. Install Git

Note: this step is only required if you are going to use the "complete way" to upload code to GitHub (discussed later).

If you haven't already, install <a href="https://git-scm.com/download/win" target="_blank">Git</a> on your system.

You may also wish to install <a href="https://tortoisegit.org/" target="_blank">Tortoise Git</a>, which provides a visual interface for Git.

Another tool you may find useful is the <a href="https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc" target="_blank">OctoTree</a> extension for Chrome, which provides an easy-to-navigate code tree for GitHub repositories.

## 2. Create a GitHub Account

If you haven't already, create a GitHub account on the <a href="https://github.com/" target="_blank">GitHub home page</a>.

## 3. Get the Source Code

If you have the latest version of the source code on your system, use it. Otherwise, download the latest release from CodePlex and unzip it into a new folder.

## 4. Migrate the Wiki Page

* Go to the VFPX home page on CodePlex and sign in.

* Click the Download Wiki link to download the entire VFPX Wiki content as a file named WikiFiles.zip (be patient; it'll take a few moments as it's over 100 MB in size).

    ![](/images/DownloadWiki.png)

* Unzip the file into a new folder. You may get some errors when you open the ZIP file because of some misnamed files; you can ignore those.

* In the folder, you'll find an MD file named for your project, such as FRXTabs.md for the FRXTabs project. There may also be image files using the project name, such as FRXTabs_home.png. Copy just these files to the project folder.

* Rename the MD file to README.md. Note that if you use the "fast way" for uploading source code (discussed later), the case is important: "README" must be in uppercase and "md" must be in lowercase. If you don't use the correct case, you'll end up with duplicate readme files since you'll let GitHub create one when you create the repository. If you use the "complete way" (also discussed below), the case is unimportant.

Once you've uploaded your project to GitHub, the content of this file, which contains text in Markdown format, appears automatically on your GitHub repository page.

Edit README.md. You can use a text editor such as Notepad but we recommend a Markdown editor such as Rick Strahl's <a href="https://markdownmonster.west-wind.com/" target="_blank">Markdown Monster</a>. The content likely needs some editing. Here are some issues we've found:

* Some images aren't named correctly in the Markdown. For example, this is what the FRXTabs Wiki page looks like:

    ![](/images/BadImages.png)
    
    Here's what the Markdown looks like:
    
    ![](/images/BadImageReference.png)
        
    Notice the "home" image, which should be FRXTabs_home.png, is referenced as FRXTabs_38209. Also notice FRXTabs_38236, which is supposed to be the image for the green line; there is no image file for that at all. You can either correct these errors or simply delete the image reference if they aren't important (don't forget to delete the image files you no longer need).

* As you can see in the Markdown image above, links to CodePlex users, such as the "Project Manager" link, are links to CodePlex pages. You should change this to an email address (using "mailto:YourEmailAddress") or GitHub user ("https:&#47;/github.com/YourUserName").

* Most projects have a link to the latest release of the project. You can remove that since it isn't needed.

* Some projects, such as GoFish, have several Wiki pages. They may be converted to MD files or they may be HTML files. Either way, edit those files as well and correct the links between the files as necessary.

Some other suggestions for the content of the README.md file:

* If a project manager isn't specified, you may wish to add it so others know who you are and how to contact you.

* It could list the release history and acknowledge contributors to the project. This information will be lost once CodePlex shuts down so preserving it here is important. It could be as simple as a filtered list of the content at <a href="https://vfpx.codeplex.com/wikipage/history" target="_blank">https://vfpx.codeplex.com/wikipage/history</a> or it could be more detailed.

## 5. Create a GitHub Repository

Your project can either be a repository under the GitHub VFPX organization or it can be a completely separate repository. The advantage of being under VFPX is that projects are automatically listed on the VFPX site, <a href="https://github.com/VFPX" target="_blank">https://github.com/VFPX</a>. However, all projects are listed on the VFPX projects list, <a href="https://vfpx.github.io/projects" target="_blank">https://vfpx.github.io/projects</a>, so this isn't necessarily a big advantage. The advantage of having the project in a separate repository is that you have full control over that repository, including who has push access.

### Creating a Repository Under VFPX

Email [VFPX project admin](mailto:projects@vfpx.org) and ask us to create a repository under VFPX for your project. We'll need to know your GitHub user name so we can give you permissions to the repository. We'll create the repository and let you know when it's ready.

### Creating a Separate Repository

Create a GitHub repository and email [VFPX project admin](mailto:projects@vfpx.org) with the URL for the project so we can edit the project list with the new location. If you're going the use the "fast way" to upload the source (discussed below), be sure to turn on the "Initialize this repository with a README" setting.

![](/images/CreateRepo.png)

## 6. Upload the Source Code

You have a choice about how to upload the source to GitHub:

* The fast way: just uploading the ZIP file containing the source code and the migrated Wiki content (README.md, images, and any other files). The downside of this approach is that there's no version control so it's more difficult for other people to collaborate on the project.

* The complete way: a repository with full version control.

### The Fast Way

* Click the Upload Files link to go to the Upload page.

    ![](/images/UploadFiles.png)

* Drag the ZIP file containing the project source code and the README.md along with any images and other MD or HTML files to the place indicated on the page.

    ![](/images/DragFiles.png)

* Click the Commit Changes button.

### The Complete Way

First, unzip the source code ZIP file on your system if you downloaded it from CodePlex.

Next, if you haven't already, create text equivalents of your VFP binary files (PJX, VCX, FRX, etc.). There are several tools available to do this, including <a href="http://github.com/FoxBin2Prg" target="_blank">FoxBin2PRG</a>.

Since files on GitHub typically have lowercase names, you may wish to rename your files to follow that standard (not a requirement, just a suggestion). <a href="http://www.bulkrenameutility.co.uk/Main_Intro.php" target="_blank">Bulk Renamer</a> can help with that.

![](/images/RenamingFiles.png)

It is important to set Case (4) to Lower,  Extension (11) to Lower, turn on Subfolders in Filters (12), and select all the files and folders except README.md before clicking the Rename button.

If you installed Tortoise Git:

* Clone the new GitHub repository for the folder: right-click the parent folder in Windows Explorer and choose Git Clone… from the shortcut menu. You may need to Manage Repositories if you have not set one up in Tortoise before to enter the GitHub Remote URL. Otherwise enter the URL for the Github repository. Adjust the local Directory as you see fit.

* Copy the files from your local project, or from the ZIP file or SVN repository you downloaded from CodePlex into the new project folder. Overwrite or edit the README.md file as needed.

* Add all necessary files to the repository, including README.md and other related files: right-click the folder, choose Tortoise Git, then Add from the shortcut menu, and select the desired files.

* Commit the new files: right-click and choose Git Commit -> "master" from the shortcut menu, enter a message in the Commit dialog (such as "Initial commit"), and click the Commit button.

* Push to the GitHub repository: right-click and choose Git Sync, and click Push.

If you don't use Tortoise Git:

* Open a command window and CD to the source folder.

* Create a Git repository for the folder containing the source:

        git init

* Add all necessary files to the repository, including README.md and other related files:

        git add .
    
    to add all files to the repository or:
    
        git add FileName
    
    to add a file named FileName and repeat for the rest of the files.

* Commit the new files:

        git commit -m "Message"
    
    where "Message" is the commit message.

* Tell Git about the GitHub repository:

        git remote add origin https://github.com/RepositoryName.git
        
    where "RepositoryName" is the name of the repository, such as "VFPX/FRXTabs".

* Push to the GitHub repository:

        git push -u origin master

## 7. Update CodePlex

Edit the project's Wiki page on CodePlex and add a comment that the project has moved to GitHub, including a link to the project's GitHub repository; something like this using Wiki markup:

    !! Note: this project has moved to GitHub: [url:https://github.com/RepositoryName]