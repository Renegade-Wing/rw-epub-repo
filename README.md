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

#### XHTML

update the templates for your store. add more chapters and links to the table of contents. etc etc.

compile the epub by going into the bin folder and running `./bindbook.sh src bookname` from the terminal.

#### Markdown