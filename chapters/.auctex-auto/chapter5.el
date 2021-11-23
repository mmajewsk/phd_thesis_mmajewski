(TeX-add-style-hook
 "chapter5"
 (lambda ()
   (LaTeX-add-labels
    "fig:storck_diagram"
    "tab:storck_filesfield"
    "sec:deduplication"
    "tab:workspace-api"
    "tab:file-api"
    "fig:storck-dockers"
    "fig:storck-gitlab"
    "fig:storck-web-interface"
    "tab:storck_client"))
 :latex)

