# resume-cwf
This project is just a LaTeX class for simple resumes. I've included an example use case, and the resulting output, as well.

## Files
- `resume-cwf.cls`: the actual LaTeX class file
- `test-resume.tex`: an example LaTeX file using the resume-cwf document class 
- `test-resume.pdf`: the resulting pdf file for the associated LaTeX example

## Usage
Simply put the `resume-cwf.cls` file in the same directory as your source LaTeX file, and it should work.

## Commands
- `\website`: Set your website, which will be displayed in the contact info header
- `\phone`: Set your phone number, which will be displayed in the contact info header
- `\address`: Set your (physical) address, which will be displayed in the contact info header
- `\email`: Set your email address, which will be displayed in the contact info header
- `\linkedin`: Set your LinkedIn, which will be displayed in the contact info header
- `\makeinfo`: Displays the contact info header; works like `\maketitle` normally
- `\shortlist`: Takes a variable number of arguments, and formats them into a list
	- e.g. `\shortlist{Relevant Coursework}{Statistics}{Multivariable Calculus}` becomes **Relevant Coursework:** Statistics, Multivariable Calculus

## Environments
- `rsection`: begins a new main section of the resume. Its argument will be capitalized and bolded.
- `*itemize`: works just like a normal itemize, excepts it suppresses the paragraph spacing beforehand

### Commands Within `rsection`
- `\from`: sets the beginning (or only) date for a subsection, which will be right aligned
- `\to`: sets the ending date for a subsection, which will be right aligned

### Environment Within `rsection`
- `rsubsection`: begins a new subsection of a resume section. Its first argument will be bolded, and its second argument will follow the first, with a comma in between.
