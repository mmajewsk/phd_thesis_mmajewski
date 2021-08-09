(TeX-add-style-hook
 "harvard-thesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "12pt" "oneside" "letterpaper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("amsmath" "centertags") ("titlesec" "tiny" "md" "sc") ("quotchap" "palatino") ("natbib" "super" "comma" "numbers") ("geometry" "width=5.75in" "letterpaper") ("appendix" "titletoc") ("units" "tight" "nice") ("tocloft" "titles") ("caption" "labelfont={bf,sf,footnotesize,singlespacing}" "								textfont={sf,footnotesize,singlespacing}" "								justification={justified,RaggedRight}" "								singlelinecheck=false" "								margin=0pt" "								figurewithin=chapter" "								tablewithin=chapter")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "amsmath"
    "amssymb"
    "book"
    "bk12"
    "color"
    "hyperref"
    "titlesec"
    "titling"
    "quotchap"
    "kvoptions"
    "graphicx"
    "lettrine"
    "natbib"
    "geometry"
    "fancyhdr"
    "appendix"
    "setspace"
    "booktabs"
    "units"
    "verbatim"
    "url"
    "tocloft"
    "ragged2e"
    "mathspec"
    "caption")
   (TeX-add-symbols
    '("newthought" 1)
    "degreeyear"
    "degreemonth"
    "degree"
    "advisor"
    "department"
    "field"
    "university"
    "universitycity"
    "universitystate"
    "programname"
    "pdOneName"
    "pdOneSchool"
    "pdOneYear"
    "pdTwoName"
    "pdTwoSchool"
    "pdTwoYear")
   (LaTeX-add-lengths
    "mybibindent"))
 :latex)

