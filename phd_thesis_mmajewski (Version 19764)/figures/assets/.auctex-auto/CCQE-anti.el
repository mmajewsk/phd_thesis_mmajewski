(TeX-add-style-hook
 "CCQE-anti"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("standalone" "crop" "tikz" "border=10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("tikz-feynman" "compat=1.1.0")))
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "tikz-feynman"))
 :latex)

