(TeX-add-style-hook
 "chapter6"
 (lambda ()
   (setq TeX-command-extra-options
         "-shell-escape")
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (LaTeX-add-labels
    "sec:neu_dec"
    "fig:lartpc-scheme"
    "fig:lartpc-grids"
    "fig:neutrino-energy"
    "plot:beta_m"
    "plot:beta_p"
    "plot:beta_decays"
    "plot:cross_neu"
    "plot:cross_anti"
    "plot:neutrino_cross_section"
    "sec:QE"
    "plot:ccqe_p"
    "plot:ccqe_m"
    "plot:CCQE"
    "sec:DIS"
    "fig:deep-inelastic"
    "sec:RES"))
 :latex)

