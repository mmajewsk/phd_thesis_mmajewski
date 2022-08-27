(TeX-add-style-hook
 "style"
 (lambda ()
   (TeX-run-style-hooks
    "frontmatter/personalize"
    "frontmatter/abstract"
    "frontmatter/dedication"
    "frontmatter/thanks"
    "frontmatter/authorcontribution")
   (TeX-add-symbols
    "copyrightpage"
    "abstractpage"
    "dedicationpage"
    "acknowledgments"
    "authorcontribution"))
 :latex)

