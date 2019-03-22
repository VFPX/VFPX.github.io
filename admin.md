---
layout: page
permalink: /admin/
---

## Administrator Notes

### Setting Up

- Clone the GitHub Pages repository at <a href="https://github.com/VFPX/VFPX.github.io" target="_blank">https://github.com/VFPX/VFPX.github.io</a> so you can edit the documentation for VFPX.

- Tell Git about the GitHub repository:

        git remote add origin https://github.com/VFPX/VFPX.github.io.git

### Adding a Project under VFPX

- Go to <a href="https://github.com/VFPX" target="_blank">https://github.com/VFPX</a>

- Click the green New button.

- Enter the repository name and description (in the case of a former CodePlex project, you can copy and paste the description from the CodePlex description).

- Turn on “Initialize this repository with a README”.

- Click Create Repository.

- Click the Settings icon for the repository, then choose Collaborators & Teams.

- Enter the GitHub user name of the project manager and click Add Collaborator.

- If this is one of the top six projects (only six projects can be pinned to the top), on the VFPX page, click “Customize pinned repositories” and in the dialog that appears, turn on the new repository and turn off another one. Then, in the pinned list, drag the new repository so it’s in the correct spot alphabetically.

- Edit projects.json in the _data folder and add an entry for the new project (in the case of a project migrated from CodePlex, edit the URL setting to the new repository), then commit and push.

- Create a new post about the project (see the  Creating a Post section).

### Adding a Separate Project

- Edit projects.json in the _data folder and add an entry for the new project, then commit and push.

- Create a new post about the project (see the  Creating a Post section).

### Creating a Post

- Create a new MD file in the _posts folder of your GitHub Pages repository. The file name should be YYYY-MM-DD-title.md, where YYYY-MM-DD is the date of the post and title should be a brief title with dashes in place of spaces.

- The content should start with this header:

        ---
        layout: post
        title:  "The title of the post"
        date:   YYYY-MM-DD HH:MM:SS -0500
        categories: vfpx update
        ---

    Use the appropriate GMT offset in place of -0500. You can use other keywords for categories.

- After the header, put in any content you wish.

- After editing the file, open it in Notepad++ and choose Convert to UTF-8 (Convert to UTF-8 Without BOM in older versions of Notepad++) from the Encoding menu; without this, the page won't appear correctly on GitHub.

- Add the file to the repository, commit, and push.