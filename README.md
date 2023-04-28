# rw-epub-repo

Repo for generating epubs for stories and fan-fiction of Renegade Wing

## How to use this template repo

### Dependancy Installation

To build these epubs we are running [Pandoc](https://pandoc.org/index.html). Please refer to the installation process for your OS.

### Pick Your Template

In the `epub-templates/` directory you will find different kinds of template epubs to use for your story.

1. To start, copy the contents of the template you want to use into `src/` (but not the template folder itself).
2. You can now safely ignore the `epub-templates/` folder.

### Compiling Your Epub

#### XHTML Without Pandoc

Update the templates for your story. Add more chapters and links to the table of contents. etc etc.

Compile the epub by going into the bin folder and running `./bindbook.sh src bookname` from the terminal.

#### XHTML With Pandoc

#### Markdown With Pandoc

When making a epub with the markdown template:

1. **Copy** the contents of `epub-markdown-templates` to `src`.
2. Begin renaming and filling in content, adding new chapters as needed. All of the files are prefixed with a number to ensure they are imported and written to the epub in order.
3. Update the `001-titlepage.md` meta data. This file will take the story title and auto insert it to the cover and title pages.
4. Update names on the `003-authors-and-contributors.md`
5. For chapters:
    1. `# Chapter Template {#chapter-one role="doc-pagebreak"}` Titles need a # with the chapter name. So that they can be linked in the Table of Contents.
    2. In `004-toc.md` links to chapters look like: `[A Chapter](#chapter-one)`
6. Because there are lot of things that pandoc assumes for you, we are still using an epub `template.opf`. It is essentially an XML file and needs to be updated with title, author, contributors, date, etc.
7. Add any additional assets for your book in the assets folder.
8. When you are ready to bundle your epub, you can run the following command in your terminal/bash:

```bash
pandoc -f markdown+escaped_line_breaks -o YOUR_BOOK_NAME.epub -c styles/styles.css chapters/*.md --epub-metadata template.opf --template markdown-template.html
```
