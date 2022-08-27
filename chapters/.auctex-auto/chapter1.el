(TeX-add-style-hook
 "chapter1"
 (lambda ()
   (LaTeX-add-labels
    "fig:standard_model"
    "fig:unitary_triangle"
    "plot:plot_triangle_a"
    "plot:plot_triangle_b"
    "plot:both_triangles"
    "fig:bkll"))
 :latex)

