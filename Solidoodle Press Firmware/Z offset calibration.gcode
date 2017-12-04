M140 S100 ;set bed to 100
M104 S250 ;set extruder to 250
M109 S250 ;wait for extruder to heat to 250
M190 S100 ;wait for bed to heat to 100
G21 ;set mm units
G90 ;use absolute coordinates
G92 E0 ;reset extruder distance
M82 ;use absolute extruder coordinates
G28 X0 Y0 ;home x and y
G29 ;probe bed

G1 E5 F200 ;purge hotend
G1 E4

G92 E0

G1 Z0.35
G92 Z0.5

G1 F1000

;;;;; -0.5 ;;;;;
G92 E0
G1 X50 Y125 Z1
G1 E1
G92 E0
G1 X50 Y75 E1.8
G1 E0

G92 E0
G1 X51.263 Y67.299
G1 E2.50000
G1 X51.353 Y67.537 E2.50867
G1 X51.406 Y67.788 E2.51736
G1 X51.420 Y68.132 E2.52908
G1 X51.385 Y68.441 E2.53967
G1 X51.266 Y68.801 E2.55256
G1 X51.098 Y69.058 E2.56301
G1 X50.884 Y69.260 E2.57302
G1 X50.860 Y69.408 E2.57810
G1 X49.430 Y69.073
G1 X49.255 Y69.361 E2.59014
G1 X49.209 Y69.336 E2.59200
G1 X49.591 Y71.071 E2.65537
G1 X51.544 Y71.071 E2.72505
G1 X51.544 Y71.775 E2.75016
G1 X49.029 Y71.775 E2.83987
G1 X48.423 Y68.870 E2.94574
G1 X49.073 Y68.778 E2.96914
G1 X49.167 Y68.876 E2.97398
G1 X49.380 Y69.040 E2.98358
G1 X49.129 Y69.225
G1 X49.299 Y69.386
G1 X49.429 Y69.092 E2.99504
G1 X49.706 Y69.187 E3.00549
G1 X49.847 Y69.215 E3.01062
G1 X50.137 Y69.218 E3.02096
G1 X50.287 Y69.193 E3.02639
G1 X50.565 Y69.080 E3.03709
G1 X50.690 Y68.991 E3.04255
G1 X50.834 Y68.846 E3.04985
G1 X50.968 Y68.618 E3.05928
G1 X51.014 Y68.483 E3.06436
G1 X51.067 Y68.166 E3.07581
G1 X51.055 Y67.776 E3.08975
G1 X50.975 Y67.458 E3.10146
G1 X50.834 Y67.208 E3.11168
G1 X50.648 Y67.021 E3.12108
G1 X50.381 Y66.863 E3.13215
G1 X50.064 Y66.782 E3.14382
G1 X49.912 Y66.775 E3.14925
G1 X49.608 Y66.818 E3.16021
G1 X49.323 Y66.953 E3.17146
G1 X49.087 Y67.160 E3.18265
G1 X48.987 Y67.290 E3.18850
G1 X48.904 Y67.438 E3.19457
G1 X48.812 Y67.672 E3.20352
G1 X48.247 Y67.598 E3.22382
G1 X48.422 Y67.126 E3.24180
G1 X48.592 Y66.852 E3.25328
G1 X48.796 Y66.630 E3.26403
G1 X49.039 Y66.452 E3.27480
G1 X49.329 Y66.321 E3.28615
G1 X49.644 Y66.247 E3.29767
G1 X49.806 Y66.230 E3.30349
G1 X50.183 Y66.235 E3.31694
G1 X50.510 Y66.294 E3.32881
G1 X50.807 Y66.408 E3.34014
G1 X51.072 Y66.575 E3.35132
G1 X51.295 Y66.788 E3.36232
G1 X51.542 Y67.133 E3.37745
G1 X51.674 Y67.427 E3.38896
G1 X51.750 Y67.732 E3.40016
G1 X51.772 Y68.149 E3.41506
G1 X51.732 Y68.511 E3.42804
G1 X51.644 Y68.813 E3.43928
G1 X51.576 Y68.962 E3.44510
G1 X51.408 Y69.220 E3.45611
G1 X51.302 Y69.340 E3.46180
G1 X51.075 Y69.533 E3.47243
G1 X50.830 Y69.668 E3.48239
G1 X50.557 Y69.750 E3.49257
G1 X50.277 Y69.775 E3.50261
G1 X50.008 Y69.739 E3.51228
G1 X49.772 Y69.649 E3.52130
G1 X49.351 Y69.415 E3.53847
G1 X49.564 Y69.205
G1 E1.03847
G92 E0


;;;;; -0.4 ;;;;;
G92 E0
G1 X60 Y125 Z0.9
G1 E1.8
G92 E0
G1 X60 Y75 E1.8
G1 E0

G92 E0
G1 X60.825 Y70.506
G1 E2.50000
G1 X60.861 Y70.542 E2.50182
G1 X60.592 Y71.341 E2.53186
G1 X60.690 Y71.438 E2.53678
G1 E0.03678
G92 E0
G1 X60.808 Y68.274
G1 E2.50000
G1 X60.808 Y66.483 E2.56092
G1 X60.456 Y68.044
G1 X60.456 Y70.309 E2.64169
G1 X60.069 Y70.429 E2.65613
G1 X58.431 Y68.044 E2.75933
G1 X60.396 Y68.044 E2.82942
G1 X60.856 Y68.044
G1 X61.160 Y68.044
G1 X61.160 Y71.737 E2.96113
G1 X60.502 Y71.737 E2.98459
G1 X58.071 Y68.196 E3.13778
G1 X58.071 Y67.494 E3.16281
G1 X60.456 Y67.494 E3.24786
G1 X60.456 Y66.263 E3.29176
G1 X61.160 Y66.263 E3.31687
G1 X61.160 Y67.494 E3.36077
G1 X61.929 Y67.494 E3.38821
G1 X61.929 Y68.044 E3.40783
G1 X61.220 Y68.044 E3.43312
G1 X60.760 Y68.044
G1 E0.93312
G92 E0


;;;;; -0.3 ;;;;;
G92 E0
G1 X70 Y125 Z0.8
G1 E1.8
G92 E0
G1 X70 Y75 E1.8
G1 E0

G92 E0
G1 X71.109 Y66.982
G1 E2.50000
G1 X71.278 Y67.303 E2.51233
G1 X71.362 Y67.605 E2.52301
G1 X71.381 Y67.954 E2.53489
G1 X71.325 Y68.305 E2.54698
G1 X71.096 Y70.128
G1 X71.151 Y70.406 E2.55664
G1 X71.126 Y70.702 E2.56671
G1 X71.055 Y70.905 E2.57404
G1 X70.915 Y71.144 E2.58347
G1 X71.154 Y71.346
G1 X70.883 Y71.576 E2.59614
G1 X70.619 Y71.709 E2.60670
G1 X70.465 Y71.757 E2.61245
G1 X70.307 Y71.790 E2.61821
G1 X69.997 Y71.813 E2.62931
G1 X69.791 Y71.803 E2.63666
G1 X69.474 Y71.743 E2.64816
G1 X69.188 Y71.629 E2.65914
G1 X69.063 Y71.557 E2.66429
G1 X68.851 Y71.385 E2.67401
G1 X68.763 Y71.285 E2.67878
G1 X68.623 Y71.059 E2.68824
G1 X68.459 Y70.630 E2.70464
G1 X69.148 Y70.526 E2.72948
G1 X69.251 Y70.776 E2.73911
G1 X69.327 Y70.903 E2.74440
G1 X69.423 Y71.018 E2.74973
G1 X69.634 Y71.176 E2.75915
G1 X69.757 Y71.227 E2.76390
G1 X70.002 Y71.264 E2.77271
G1 X70.204 Y71.243 E2.77997
G1 X70.418 Y71.156 E2.78822
G1 X70.605 Y70.996 E2.79698
G1 X70.677 Y70.896 E2.80139
G1 X70.775 Y70.655 E2.81066
G1 X70.796 Y70.524 E2.81541
G1 X70.798 Y70.310 E2.82304
G1 X70.747 Y70.039 E2.83286
G1 X70.618 Y69.795 E2.84270
G1 X70.437 Y69.584 E2.85265
G1 X70.634 Y69.354 E2.86344
G1 X70.964 Y69.563 E2.87736
G1 X71.191 Y69.750 E2.88785
G1 X71.348 Y69.945 E2.89676
G1 X71.453 Y70.164 E2.90544
G1 X71.483 Y70.272 E2.90944
G1 X71.506 Y70.503 E2.91772
G1 X71.471 Y70.788 E2.92795
G1 X71.387 Y71.015 E2.93659
G1 X71.193 Y71.301 E2.94890
G1 X70.811 Y71.255
G1 X70.341 Y69.545
G1 X70.173 Y69.480 E2.95533
G1 X69.962 Y69.428 E2.96307
G1 X69.900 Y68.892 E2.98234
G1 X70.485 Y69.260 E3.00700
G1 X70.368 Y69.492 E3.01624
G1 X70.233 Y69.401
G1 X70.867 Y69.015
G1 X70.709 Y68.806 E3.02559
G1 X70.918 Y68.490 E3.03913
G1 X71.008 Y68.204 E3.04982
G1 X71.033 Y67.912 E3.06028
G1 X70.996 Y67.565 E3.07274
G1 X70.900 Y67.296 E3.08290
G1 X70.770 Y67.099 E3.09132
G1 X70.564 Y66.907 E3.10136
G1 X70.437 Y66.834 E3.10659
G1 X70.300 Y66.778 E3.11188
G1 X70.002 Y66.736 E3.12260
G1 X69.726 Y66.774 E3.13255
G1 X69.585 Y66.831 E3.13796
G1 X69.455 Y66.908 E3.14337
G1 X69.240 Y67.115 E3.15400
G1 X69.086 Y67.383 E3.16504
G1 X68.998 Y67.634 E3.17451
G1 X68.277 Y67.545 E3.20044
G1 X68.470 Y67.054 E3.21927
G1 X68.648 Y66.786 E3.23074
G1 X68.744 Y66.677 E3.23592
G1 X68.975 Y66.480 E3.24678
G1 X69.216 Y66.341 E3.25670
G1 X69.364 Y66.283 E3.26236
G1 X69.667 Y66.209 E3.27348
G1 X69.979 Y66.187 E3.28462
G1 X70.342 Y66.217 E3.29764
G1 X70.654 Y66.301 E3.30916
G1 X70.944 Y66.443 E3.32066
G1 X71.082 Y66.538 E3.32664
G1 X71.322 Y66.759 E3.33826
G1 X71.513 Y67.012 E3.34957
G1 X71.636 Y67.264 E3.35958
G1 X71.730 Y67.680 E3.37480
G1 X71.729 Y67.988 E3.38577
G1 X71.676 Y68.253 E3.39545
G1 X71.584 Y68.467 E3.40375
G1 X71.517 Y68.571 E3.40817
G1 X71.356 Y68.752 E3.41679
G1 X71.164 Y68.890 E3.42522
G1 X70.923 Y68.994 E3.43460
G1 X70.856 Y68.754
G1 E0.93460
G92 E0


;;;;; -0.2 ;;;;;
G92 E0
G1 X80 Y125 Z0.7
G1 E1.8
G92 E0
G1 X80 Y75 E1.8
G1 E0

G92 E0
G1 X78.638 Y66.577
G1 E2.50000
G1 X81.517 Y66.577 E2.59792
G1 E0.09792
G92 E0
G1 X81.325 Y69.813
G1 E2.50000
G1 X81.372 Y70.120 E2.51055
G1 X81.381 Y70.367 E2.51897
G1 X81.365 Y70.539 E2.52485
G1 X81.320 Y70.723 E2.53129
G1 X81.189 Y70.984 E2.54122
G1 X81.112 Y71.088 E2.54562
G1 X80.930 Y71.266 E2.55429
G1 X81.044 Y71.568
G1 X80.776 Y71.683 E2.56471
G1 X80.447 Y71.755 E2.57672
G1 X80.008 Y71.773 E2.59237
G1 X79.676 Y71.733 E2.60431
G1 X79.362 Y71.641 E2.61598
G1 X79.092 Y71.502 E2.62682
G1 X78.880 Y71.335 E2.63643
G1 X78.787 Y71.234 E2.64134
G1 X78.641 Y71.009 E2.65090
G1 X78.523 Y70.717 E2.66214
G1 X78.438 Y70.392 E2.67412
G1 X79.143 Y70.323 E2.69938
G1 X79.189 Y70.527 E2.70684
G1 X79.295 Y70.786 E2.71683
G1 X79.470 Y71.004 E2.72680
G1 X79.583 Y71.089 E2.73185
G1 X79.710 Y71.154 E2.73692
G1 X79.967 Y71.217 E2.74639
G1 X80.098 Y71.226 E2.75104
G1 X80.394 Y71.187 E2.76171
G1 X80.526 Y71.138 E2.76671
G1 X80.752 Y70.981 E2.77655
G1 X80.921 Y70.750 E2.78676
G1 X81.010 Y70.482 E2.79682
G1 X81.029 Y70.144 E2.80891
G1 X80.980 Y69.846 E2.81966
G1 X80.926 Y69.693 E2.82547
G1 X80.768 Y69.397 E2.83743
G1 X80.448 Y69.015 E2.85521
G1 X79.395 Y67.974 E2.90802
G1 X78.898 Y67.422 E2.93452
G1 X78.644 Y67.073 E2.94989
G1 X78.542 Y66.897 E2.95717
G1 X78.381 Y66.519 E2.97181
G1 X78.292 Y66.225 E2.98277
G1 X81.737 Y66.225 E3.10562
G1 X81.737 Y66.929 E3.13073
G1 X79.322 Y66.929 E3.21687
G1 X79.637 Y67.424 E3.23781
G1 X79.870 Y67.703 E3.25075
G1 X80.868 Y68.638 E3.29955
G1 X81.204 Y69.004 E3.31728
G1 X81.489 Y69.433 E3.33564
G1 X81.633 Y69.751 E3.34810
G1 X81.711 Y70.053 E3.35922
G1 X81.736 Y70.370 E3.37055
G1 X81.724 Y70.572 E3.37778
G1 X81.661 Y70.842 E3.38769
G1 X81.550 Y71.078 E3.39696
G1 X81.469 Y71.198 E3.40213
G1 X81.263 Y71.415 E3.41281
G1 X81.095 Y71.536 E3.42020
G1 X80.799 Y71.410
G1 E0.92020
G92 E0


;;;;; -0.1 ;;;;;
G92 E0
G1 X90 Y125 Z0.6
G1 E1.8
G92 E0
G1 X90 Y75 E1.8
G1 E0

G92 E0
G1 X90.731 Y66.445
G1 E2.50000
G1 X90.731 Y71.389 E2.66816
G1 X90.776 Y71.555 E2.67404
G1 X90.465 Y71.631
G1 X90.242 Y71.287 E2.68868
G1 X89.959 Y70.986 E2.70342
G1 X89.590 Y70.690 E2.72028
G1 X89.366 Y70.540 E2.72989
G1 X88.917 Y70.302 E2.74802
G1 X88.917 Y69.632 E2.77191
G1 X89.302 Y69.860 E2.78785
G1 X89.670 Y70.126 E2.80404
G1 X90.379 Y70.811 E2.83920
G1 X90.379 Y66.225 E3.00278
G1 X91.083 Y66.225 E3.02789
G1 X91.083 Y71.775 E3.22585
G1 X90.535 Y71.775 E3.24540
G1 X90.491 Y71.685 E3.24895
G1 X90.662 Y71.283
G1 E0.74895
G92 E0


;;;;; 0 ;;;;;
G92 E0
G1 X100 Y135 Z0.5
G1 E1.8
G92 E0
G1 X100 Y65 E2.5
G1 E0


;;;;; 0.1 ;;;;;
G92 E0
G1 X110 Y125 Z0.4
G1 E2.5
G92 E0
G1 X110 Y75 E1.8
G1 E0

G92 E0
G1 X110.731 Y66.445
G1 E2.50000
G1 X110.731 Y71.389 E2.66816
G1 X110.776 Y71.555 E2.67404
G1 X110.465 Y71.631
G1 X110.242 Y71.287 E2.68868
G1 X109.959 Y70.986 E2.70342
G1 X109.590 Y70.690 E2.72028
G1 X109.366 Y70.540 E2.72989
G1 X108.917 Y70.302 E2.74802
G1 X108.917 Y69.632 E2.77191
G1 X109.302 Y69.860 E2.78785
G1 X109.670 Y70.126 E2.80404
G1 X110.379 Y70.811 E2.83920
G1 X110.379 Y66.225 E3.00278
G1 X111.083 Y66.225 E3.02789
G1 X111.083 Y71.775 E3.22585
G1 X110.535 Y71.775 E3.24540
G1 X110.491 Y71.685 E3.24895
G1 X110.662 Y71.283
G1 E0.74895
G92 E0


;;;;; 0.2 ;;;;;
G92 E0
G1 X120 Y125 Z0.3
G1 E1.8
G92 E0
G1 X120 Y75 E1.8
G1 E0

G92 E0
G1 X118.638 Y66.577
G1 E2.50000
G1 X121.517 Y66.577 E2.59792
G1 E0.09792
G92 E0
G1 X121.325 Y69.813
G1 E2.50000
G1 X121.372 Y70.120 E2.51055
G1 X121.381 Y70.367 E2.51897
G1 X121.365 Y70.539 E2.52485
G1 X121.320 Y70.723 E2.53129
G1 X121.189 Y70.984 E2.54122
G1 X121.112 Y71.088 E2.54562
G1 X120.930 Y71.266 E2.55429
G1 X121.044 Y71.568
G1 X120.776 Y71.683 E2.56471
G1 X120.447 Y71.755 E2.57672
G1 X120.008 Y71.773 E2.59237
G1 X119.676 Y71.733 E2.60431
G1 X119.362 Y71.641 E2.61598
G1 X119.092 Y71.502 E2.62682
G1 X118.880 Y71.335 E2.63643
G1 X118.787 Y71.234 E2.64134
G1 X118.641 Y71.009 E2.65090
G1 X118.523 Y70.717 E2.66214
G1 X118.438 Y70.392 E2.67412
G1 X119.143 Y70.323 E2.69938
G1 X119.189 Y70.527 E2.70684
G1 X119.295 Y70.786 E2.71683
G1 X119.470 Y71.004 E2.72680
G1 X119.583 Y71.089 E2.73185
G1 X119.710 Y71.154 E2.73692
G1 X119.967 Y71.217 E2.74639
G1 X120.098 Y71.226 E2.75104
G1 X120.394 Y71.187 E2.76171
G1 X120.526 Y71.138 E2.76671
G1 X120.752 Y70.981 E2.77655
G1 X120.921 Y70.750 E2.78676
G1 X121.010 Y70.482 E2.79682
G1 X121.029 Y70.144 E2.80891
G1 X120.980 Y69.846 E2.81966
G1 X120.926 Y69.693 E2.82547
G1 X120.768 Y69.397 E2.83743
G1 X120.448 Y69.015 E2.85521
G1 X119.395 Y67.974 E2.90802
G1 X118.898 Y67.422 E2.93452
G1 X118.644 Y67.073 E2.94989
G1 X118.542 Y66.897 E2.95717
G1 X118.381 Y66.519 E2.97181
G1 X118.292 Y66.225 E2.98277
G1 X121.737 Y66.225 E3.10562
G1 X121.737 Y66.929 E3.13073
G1 X119.322 Y66.929 E3.21687
G1 X119.637 Y67.424 E3.23781
G1 X119.870 Y67.703 E3.25075
G1 X120.868 Y68.638 E3.29955
G1 X121.204 Y69.004 E3.31728
G1 X121.489 Y69.433 E3.33564
G1 X121.633 Y69.751 E3.34810
G1 X121.711 Y70.053 E3.35922
G1 X121.736 Y70.370 E3.37055
G1 X121.724 Y70.572 E3.37778
G1 X121.661 Y70.842 E3.38769
G1 X121.550 Y71.078 E3.39696
G1 X121.469 Y71.198 E3.40213
G1 X121.263 Y71.415 E3.41281
G1 X121.095 Y71.536 E3.42020
G1 X120.799 Y71.410
G1 E0.92020
G92 E0


;;;;; 0.3 ;;;;;
G92 E0
G1 X130 Y125 Z0.2
G1 E1.8
G92 E0
G1 X130 Y75 E1.8
G1 E0

G92 E0
G1 X131.109 Y66.982
G1 E2.50000
G1 X131.278 Y67.303 E2.51233
G1 X131.362 Y67.605 E2.52301
G1 X131.381 Y67.954 E2.53489
G1 X131.325 Y68.305 E2.54698
G1 X131.096 Y70.128
G1 X131.151 Y70.406 E2.55664
G1 X131.126 Y70.701 E2.56671
G1 X131.055 Y70.905 E2.57404
G1 X130.915 Y71.144 E2.58347
G1 X131.154 Y71.346
G1 X130.883 Y71.576 E2.59614
G1 X130.619 Y71.709 E2.60670
G1 X130.465 Y71.757 E2.61245
G1 X130.307 Y71.790 E2.61821
G1 X129.997 Y71.813 E2.62931
G1 X129.791 Y71.803 E2.63665
G1 X129.474 Y71.743 E2.64816
G1 X129.188 Y71.629 E2.65914
G1 X129.063 Y71.557 E2.66429
G1 X128.851 Y71.385 E2.67401
G1 X128.763 Y71.285 E2.67878
G1 X128.623 Y71.059 E2.68824
G1 X128.459 Y70.630 E2.70464
G1 X129.148 Y70.527 E2.72948
G1 X129.251 Y70.776 E2.73911
G1 X129.327 Y70.903 E2.74440
G1 X129.423 Y71.018 E2.74973
G1 X129.634 Y71.176 E2.75915
G1 X129.757 Y71.227 E2.76390
G1 X130.002 Y71.264 E2.77271
G1 X130.204 Y71.243 E2.77997
G1 X130.418 Y71.156 E2.78822
G1 X130.605 Y70.996 E2.79698
G1 X130.677 Y70.896 E2.80139
G1 X130.775 Y70.655 E2.81066
G1 X130.796 Y70.524 E2.81541
G1 X130.798 Y70.310 E2.82304
G1 X130.747 Y70.039 E2.83286
G1 X130.618 Y69.795 E2.84270
G1 X130.437 Y69.584 E2.85264
G1 X130.634 Y69.354 E2.86344
G1 X130.964 Y69.563 E2.87736
G1 X131.191 Y69.750 E2.88785
G1 X131.348 Y69.945 E2.89676
G1 X131.453 Y70.164 E2.90544
G1 X131.483 Y70.272 E2.90944
G1 X131.506 Y70.503 E2.91772
G1 X131.471 Y70.788 E2.92795
G1 X131.387 Y71.015 E2.93659
G1 X131.193 Y71.301 E2.94889
G1 X130.811 Y71.255
G1 X130.341 Y69.545
G1 X130.173 Y69.480 E2.95533
G1 X129.962 Y69.428 E2.96306
G1 X129.900 Y68.892 E2.98234
G1 X130.485 Y69.260 E3.00699
G1 X130.368 Y69.492 E3.01624
G1 X130.233 Y69.401
G1 X130.867 Y69.015
G1 X130.708 Y68.806 E3.02558
G1 X130.918 Y68.490 E3.03913
G1 X131.008 Y68.204 E3.04982
G1 X131.033 Y67.912 E3.06028
G1 X130.996 Y67.565 E3.07273
G1 X130.900 Y67.296 E3.08289
G1 X130.770 Y67.099 E3.09132
G1 X130.564 Y66.907 E3.10136
G1 X130.437 Y66.834 E3.10658
G1 X130.300 Y66.778 E3.11187
G1 X130.002 Y66.736 E3.12260
G1 X129.726 Y66.774 E3.13254
G1 X129.585 Y66.831 E3.13796
G1 X129.455 Y66.908 E3.14337
G1 X129.240 Y67.115 E3.15399
G1 X129.086 Y67.383 E3.16503
G1 X128.998 Y67.634 E3.17451
G1 X128.277 Y67.545 E3.20043
G1 X128.470 Y67.054 E3.21926
G1 X128.648 Y66.786 E3.23073
G1 X128.744 Y66.677 E3.23592
G1 X128.975 Y66.480 E3.24677
G1 X129.216 Y66.341 E3.25670
G1 X129.364 Y66.283 E3.26236
G1 X129.667 Y66.209 E3.27347
G1 X129.979 Y66.187 E3.28461
G1 X130.342 Y66.217 E3.29763
G1 X130.654 Y66.301 E3.30915
G1 X130.944 Y66.443 E3.32066
G1 X131.082 Y66.538 E3.32664
G1 X131.322 Y66.759 E3.33826
G1 X131.513 Y67.012 E3.34957
G1 X131.636 Y67.264 E3.35958
G1 X131.730 Y67.680 E3.37479
G1 X131.729 Y67.988 E3.38577
G1 X131.676 Y68.253 E3.39544
G1 X131.584 Y68.467 E3.40375
G1 X131.517 Y68.571 E3.40817
G1 X131.356 Y68.752 E3.41679
G1 X131.164 Y68.890 E3.42521
G1 X130.923 Y68.994 E3.43460
G1 X130.856 Y68.753
G1 E0.93460
G92 E0


;;;;; 0.4 ;;;;;
G92 E0
G1 X140 Y125 Z0.1
G1 E1.8
G92 E0
G1 X140 Y75 E1.8
G1 E0

G92 E0
G1 X140.821 Y70.728
G1 E2.50000
G1 X140.861 Y70.768 E2.50202
G1 X140.592 Y71.341 E2.52460
G1 X140.690 Y71.438 E2.52951
G1 X140.808 Y70.429
G1 X140.808 Y66.483 E2.66373
G1 X140.456 Y68.044
G1 X140.456 Y70.309 E2.74450
G1 X140.069 Y70.429 E2.75895
G1 X138.431 Y68.044 E2.86214
G1 X140.396 Y68.044 E2.93224
G1 X140.856 Y68.044
G1 X141.160 Y68.044
G1 X141.160 Y71.737 E3.06394
G1 X140.502 Y71.737 E3.08740
G1 X138.071 Y68.196 E3.24059
G1 X138.071 Y67.494 E3.26562
G1 X140.456 Y67.494 E3.35068
G1 X140.456 Y66.263 E3.39458
G1 X141.160 Y66.263 E3.41968
G1 X141.160 Y67.494 E3.46359
G1 X141.929 Y67.494 E3.49102
G1 X141.929 Y68.044 E3.51064
G1 X141.220 Y68.044 E3.53594
G1 X140.760 Y68.044
G1 E1.03594
G92 E0


;;;;; 0.5 ;;;;;
G92 E0
G1 X150 Y125 Z0
G1 E1.8
G92 E0
G1 X150 Y75 E1.8

G92 E0
G1 X151.264 Y67.299
G1 E2.50000
G1 X151.353 Y67.537 E2.50867
G1 X151.406 Y67.788 E2.51736
G1 X151.420 Y68.132 E2.52908
G1 X151.385 Y68.441 E2.53967
G1 X151.266 Y68.801 E2.55256
G1 X151.098 Y69.058 E2.56301
G1 X150.884 Y69.260 E2.57302
G1 X150.860 Y69.408 E2.57810
G1 X149.430 Y69.073
G1 X149.254 Y69.361 E2.59014
G1 X149.209 Y69.336 E2.59199
G1 X149.591 Y71.071 E2.65537
G1 X151.544 Y71.071 E2.72504
G1 X151.544 Y71.775 E2.75015
G1 X149.029 Y71.775 E2.83986
G1 X148.423 Y68.870 E2.94573
G1 X149.073 Y68.778 E2.96913
G1 X149.167 Y68.876 E2.97397
G1 X149.380 Y69.040 E2.98356
G1 X149.129 Y69.225
G1 X149.299 Y69.386
G1 X149.429 Y69.092 E2.99502
G1 X149.706 Y69.187 E3.00547
G1 X149.847 Y69.215 E3.01060
G1 X150.137 Y69.218 E3.02094
G1 X150.287 Y69.193 E3.02637
G1 X150.565 Y69.080 E3.03707
G1 X150.690 Y68.991 E3.04253
G1 X150.834 Y68.846 E3.04983
G1 X150.968 Y68.618 E3.05926
G1 X151.014 Y68.483 E3.06434
G1 X151.067 Y68.166 E3.07579
G1 X151.055 Y67.776 E3.08973
G1 X150.975 Y67.458 E3.10144
G1 X150.834 Y67.208 E3.11166
G1 X150.648 Y67.021 E3.12106
G1 X150.381 Y66.863 E3.13213
G1 X150.064 Y66.782 E3.14380
G1 X149.912 Y66.775 E3.14923
G1 X149.608 Y66.818 E3.16019
G1 X149.323 Y66.953 E3.17144
G1 X149.087 Y67.160 E3.18263
G1 X148.987 Y67.290 E3.18848
G1 X148.904 Y67.438 E3.19455
G1 X148.812 Y67.672 E3.20350
G1 X148.247 Y67.598 E3.22380
G1 X148.422 Y67.126 E3.24178
G1 X148.592 Y66.852 E3.25326
G1 X148.796 Y66.630 E3.26401
G1 X149.039 Y66.452 E3.27478
G1 X149.329 Y66.321 E3.28613
G1 X149.644 Y66.247 E3.29765
G1 X149.806 Y66.230 E3.30347
G1 X150.183 Y66.235 E3.31692
G1 X150.510 Y66.294 E3.32879
G1 X150.807 Y66.408 E3.34012
G1 X151.072 Y66.575 E3.35130
G1 X151.295 Y66.788 E3.36230
G1 X151.542 Y67.133 E3.37743
G1 X151.674 Y67.427 E3.38894
G1 X151.750 Y67.732 E3.40014
G1 X151.772 Y68.149 E3.41504
G1 X151.732 Y68.511 E3.42802
G1 X151.644 Y68.813 E3.43927
G1 X151.576 Y68.962 E3.44508
G1 X151.408 Y69.220 E3.45609
G1 X151.302 Y69.340 E3.46178
G1 X151.075 Y69.533 E3.47241
G1 X150.830 Y69.668 E3.48237
G1 X150.557 Y69.750 E3.49255
G1 X150.277 Y69.775 E3.50259
G1 X150.008 Y69.739 E3.51226
G1 X149.772 Y69.649 E3.52128
G1 X149.351 Y69.415 E3.53845
G1 X149.564 Y69.205
G1 E1.03845
G92 E0

G1 E0 Z10
G28 X0 Y0