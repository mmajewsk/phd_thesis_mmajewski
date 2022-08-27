(TeX-add-style-hook
 "Dissertate2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "12pt" "a4paper" "openany")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("amsmath" "centertags") ("titlesec" "tiny" "md" "sc") ("quotchap" "palatino") ("natbib" "super" "comma" "numbers") ("geometry" "lmargin=3.5cm" "rmargin=1.5cm" "height=10.0in" "a4paper") ("appendix" "titletoc") ("units" "tight" "nice") ("tocloft" "titles")))
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
    "bm"
    "upgreek"
    "setspace"
    "booktabs"
    "units"
    "verbatim"
    "afterpage"
    "url"
    "tocloft"
    "ragged2e")
   (TeX-add-symbols
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
    "pdTwoYear"))
 :latex)

