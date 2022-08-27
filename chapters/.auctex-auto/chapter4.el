(TeX-add-style-hook
 "chapter4"
 (lambda ()
   (setq TeX-command-extra-options
         "-shell-escape")
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (LaTeX-add-labels
    "chap:ml-velo"
    "chap4:run12"
    "plot:lhc_schedule"
    "tab:velo_dimentionality"
    "plot:ped_r"
    "plot:ped_phi"
    "plot:part1-r-phi-pedestals"
    "plot:par1-pedestal-sensors"
    "plot:part1-pedestal-trend"
    "plot:part2-threshold-all"
    "plot:P2-threshold-all-zoom"
    "plot:P2-threshold-all-zoom-nohc"
    "plot:all-bad-r-0"
    "plot:all-bad-r-1"
    "plot:all-bad-r-2"
    "plot:all-bad-r-3"
    "plot:all-bad-phi-0"
    "plot:all-bad-phi-1"
    "plot:all-bad-phi-2"
    "plot:all-bad-phi-3"
    "plot:all-bad-phi"
    "plot:only_good_r"
    "plot:only_good_phi"
    "plot:only_good_all"
    "chap4:masks"
    "plot:p3-mask-time"
    "plot:p3-mask-time2"
    "plot:p3-other-outliers"
    "chap4:outlierness"
    "data-table"
    "eq:notation"
    "eq:basic-model"
    "eq:total-model"
    "listing:calina1"
    "listing:calina2"
    "plot:real-data"
    "plot:generated-data"
    "plot:generated-12"
    "plot:outlierness_data_example"
    "plot:gui"
    "chap4:dimred"
    "plot:PCA_pedestals_0"
    "plot:PCA_pedestals_1"
    "plot:pca_all_peda"
    "plot:PCA_pedestals_2"
    "plot:PCA_pedestals_3"
    "plot:pca_all_ped"
    "plot:PCA_pedestals_0_phi"
    "plot:PCA_pedestals_1_phi"
    "plot:pca_all_ped_phia"
    "plot:PCA_pedestals_2_phi"
    "plot:PCA_pedestals_3_phi"
    "plot:pca_all_ped_phib"
    "plot:PCA_selected"
    "plot:PCA_trend"
    "eq:thr_red_R"
    "eq:thr_red_phi"
    "plot:pca_progression_phi"
    "plot:pca_progression_r"
    "plot:nn_progression_r"
    "plot:nn_progression_phi"
    "plot:pca_all_r"
    "plot:pca_all_phi"
    "plot:nn_all_r"
    "plot:nn_all_phi"
    "chap4:wtte"
    "plot:wtte1-stdevs"
    "plot:wtte1-p-stdevs"
    "plot:wtte1-r-stdevs"
    "tab:network"
    "plot:wtte_loss"
    "plot:wtte_mse"
    "plot:wtte_training"
    "plot:wtte_realpred"
    "chap:ml-velo-pix"
    "sec:velopix-mask"
    "fig:dbscan_clusters"
    "fig:cluster_masks"
    "alg:two"
    "fig:sims"
    "fig:fin_clus"
    "sample-table"
    "fig:decay"
    "fig:progress"
    "sec:surrogates-study"
    "fig:sur_tot"
    "surrogate_func"
    "eq:surrogate"
    "fig:surrogate"
    "plot:sensor_surrogate_p1"
    "plot:sensor_surrogate_p2"
    "fig:binning"
    "tab:fluence_per_bin"
    "fig:boxplot"
    "plot:surr_s8_bins"
    "plot:corr_matrix"
    "fig:example_sur"
    "fig:surrogate_model_total"
    "plot:model_plotted"
    "plot:model_s8_pre"
    "plot:model_s8_post"
    "fig:surrogate_fluence"
    "plot:landau_example"
    "fig:mpv_vs_fluence"))
 :latex)
