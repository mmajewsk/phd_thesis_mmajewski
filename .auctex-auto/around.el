(TeX-add-style-hook
 "around"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "12pt" "a4paper" "openany")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("amsmath" "centertags") ("titlesec" "tiny" "md" "sc") ("quotchap" "palatino") ("natbib" "super" "comma" "numbers") ("geometry" "lmargin=3.5cm" "rmargin=1.5cm" "height=10.0in" "a4paper") ("appendix" "titletoc") ("units" "tight" "nice") ("tocloft" "titles") ("caption" "labelfont={sf,bf,small}" "textfont={sf,small}" "justification=RaggedRight" "margin=0pt" "figurewithin=section" "tablewithin=section")))
   (TeX-run-style-hooks
    "latex2e"
    "frontmatter/abstract"
    "frontmatter/dedication"
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
    "bm"
    "upgreek"
    "setspace"
    "booktabs"
    "units"
    "verbatim"
    "afterpage"
    "url"
    "tocloft"
    "ragged2e"
    "mathspec"
    "xltxtra"
    "xunicode"
    "caption")
   (TeX-add-symbols
    '("newthought" 1)
    "blankpage"
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

