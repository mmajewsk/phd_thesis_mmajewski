(TeX-add-style-hook
 "dissertation"
 (lambda ()
   (setq TeX-command-extra-options
         "-shell-escape")
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("Dissertate" "School=Harvard")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("adjustbox" "export") ("cellspace" "column=0") ("footmisc" "symbol")))
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
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
    "frontmatter/personalize"
    "chapters/introduction"
    "chapters/chapter1"
    "chapters/chapter2"
    "chapters/chapter3"
    "chapters/chapter4"
    "chapters/chapter5"
    "chapters/chapter6"
    "chapters/chapter7"
    "chapters/conclusion"
    "Dissertate"
    "Dissertate10"
    "algpseudocode"
    "algorithm2e"
    "float"
    "subcaption"
    "graphicx"
    "wrapfig"
    "minted"
    "xurl"
    "microtype"
    "rotating"
    "enumitem"
    "adjustbox"
    "cellspace"
    "footmisc"
    "perpage")
   (TeX-add-symbols
    "mybibdoicolor")
   (LaTeX-add-bibliographies
    "references"))
 :latex)

