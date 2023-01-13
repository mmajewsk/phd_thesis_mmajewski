(TeX-add-style-hook
 "chapter7"
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
    "chap:rl-lartpc"
    "tab:sim_probs"
    "fig:lartpc-data-example"
    "plot:lartpc-example-source-zoom"
    "plot:lartpc-example-target-zoom"
    "plot:lartpc-example-zoom"
    "sec:rl_action"
    "eq:reward"
    "listing:rl_example"
    "listing:rl_observables"
    "fig:lartpc-visual"
    "fig:rl_loss"
    "fig:rl_reward"
    "fig:rl_learning"
    "fig:settings"
    "fig:rl_inp_out"
    "fig:rl_net"
    "tab:rl_conv_params"
    "tab:rl_params"))
 :latex)

