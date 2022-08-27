(TeX-add-style-hook
 "fakeother"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "12pt" "a4paper" "openany")))
   (TeX-run-style-hooks
    "latex2e"
    "book"
    "bk12"))
 :latex)

