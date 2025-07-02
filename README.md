# Template: R Workshop Reader

This repository is a template for R-specific workshop readers for the UC Davis
DataLab. The template uses [Quarto][] to render the reader.

To get started:

1. Create a new repo on GitHub from this template
   ([instructions][gh-templates]).

2. In the repo (on GitHub):
    * Navigate to `Settings -> Pages`. Set GitHub Pages to deploy from branch
      `main` and directory `docs/`.
    * Navigate to the front page and click the gear icon next to "About". Add a
      short description, check "Use your GitHub Pages website", and add
      relevant topic tags (such as `ucdavis`, `ucdavis-datalab`, `workshop`,
      `teaching-materials`, and `data-science`).

3. Copy the repo your local machine with `git clone`.

4. Edit the following files (replace all-caps text with your workshop's
   metadata):
    * `README.md` (this file)
    * `_quarto.yml`
    * `index.qmd`
    * `chapters/assessment.qmd` (delete if there is no assessment)

5. Delete these instructions from `README.md`. The instructions end at the
   horizontal rule (`-----`) below.

6. Follow the steps in [Contributing](#contributing) to save and upload your
   changes.

[gh-templates]: https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template

-----

# Workshop: WORKSHOP_TITLE

_[UC Davis DataLab][datalab]_  
_maptimeDavis Fall 2025_  
_Author(s): Michele Tobias_  
_Maintainer: Michele Tobias <<mmtobias@ucdavis.edu>>_

The reader for this workshop is [here][reader].

In this workshop, participants will learn how to use several options for composing maps in R.

[datalab]: https://datalab.ucdavis.edu/
[reader]: https://ucdavisdatalab.github.io/workshop_maps_in_R/


## Contributing

> [!IMPORTANT]
> Before you contribute, make sure to take a look at the
> [workshop reader style guide][style] in the [DataLab Handbook][handbook].

[style]: https://github.com/datalab-dev/handbook/tree/main/workshops
[handbook]: https://github.com/datalab-dev/handbook

The workshop reader is written in Markdown and rendered with [Quarto][]. To
modify the reader:

1.  If it's your first time contributing, start with [Setup](#setup).

2.  Talk to the reader's maintainer about your intended changes. The
    maintainer might ask you to consult existing issues, make pull requests,
    tag your commits with versions, etc.

3.  Run `git pull` to make sure you have the latest changes.

3.  Edit an existing chapter file or create a new one. Chapter files are in the
    `chapters/` directory and are Quarto Markdown files (`.qmd`). Chapter files
    should:

    * Follow the file naming scheme `##_title-of-chapter.qmd` (for numbered
      chapters) or `title-of-chapter.qmd` (for unnumbered chapters).
    * Begin with a first-level header (like `# This`). This will be the title
      of your chapter. Subsequent section headers should be second-level
      headers (like `## This`) or below.

    Put any supporting resources in `data/` or `images/`. Store large files (>
    1 MB), such as data sets, on Google Drive, Box, or other cloud storage
    rather than GitHub.

4.  Run `quarto render` to render the reader (the files in `docs/`). This can
    be time-consuming; if you're not done editing and just want a quick
    preview, you can use `quarto preview` instead.

5.  When you're finished editing, run `git add` on:

    * Any `.qmd` files you added or edited in `chapters/`
    * Any image files you added or edited in `images/`
    * The entire `_freeze/` directory
    * Any other files you added or edited

    Then run `git commit` to save the files and `git push` to upload them to
    GitHub.

The reader is hosted by GitHub Pages as a live, public website. The files for
the website are stored in `docs/` on branch `main`. To update the website:

1.  Run `quarto render` to render the reader (the files in `docs/`).

2.  Run `git add docs/`, then `git commit` and `git push`.

Then the website will update automatically after a few minutes.


## Setup

The reader is rendered with [Quarto][]. Make sure it's installed before
rendering the reader.

[Quarto]: https://quarto.org/

The reader might also depend on specific R packages. If the maintainer has
opted to use [renv][], open R in this repo and run `renv::restore()` to install
them. If not, you'll have to use trial-and-error to determine which packages to
install.

[renv]: https://rstudio.github.io/renv/


([back to top](#))
