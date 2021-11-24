(TeX-add-style-hook
 "dissertation"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("Dissertate" "School=Harvard")))
   (TeX-run-style-hooks
    "latex2e"
    "frontmatter/personalize"
    "chapters/introduction"
    "chapters/chapter1"
    "chapters/chapter2"
    "chapters/chapter3"
    "chapters/conclusion"
    "chapters/appendixA"
    "endmatter/colophon"
    "Dissertate"
    "Dissertate10")
   (LaTeX-add-bibliographies
    "references"))
 :latex)

