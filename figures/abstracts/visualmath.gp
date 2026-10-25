set terminal cairolatex pdf monochrome size 22cm,6.5cm font ",9"
set output "visualmath-plot.tex"
set datafile separator comma
set datafile columnheaders
unset key
unset grid
set border 3 linewidth 1.2 linecolor rgb "black"
set tics out nomirror scale .3
set format x "%.0f"
set format y "%.0f"
set multiplot layout 1,2
set lmargin at screen .18
set rmargin at screen .47
set bmargin at screen .23
set tmargin at screen .84
set xrange [0:34]
set yrange [.5:6.5]
set xtics 7
set ytics ("Input specifications" 6,"Preprocessing" 5,"Parameter values" 4,"Any rationale" 3,"Sensitivity" 2,"Alternatives" 1) scale 0
set xlabel "Number of studies" offset 0,-.4
plot "../../../figures/abstracts/review-counts.csv" using 2:(6-$0) with points pointtype 7 pointsize .8 linecolor rgb "black", \
 "" using 2:(6-$0):(sprintf("%.0f/28",$2)) with labels left offset .8,0 textcolor rgb "black"
set lmargin at screen .69
set rmargin at screen .975
set logscale x
set xrange [3:10000]
set yrange [65:76]
set xtics ("7" 7,"64" 64,"512" 512,"4096" 4096)
set ytics 5
set xlabel "Input feature count (log scale)" offset 0,-.4
set ylabel "Test accuracy (percent)" offset -1.5,0
plot "../../../figures/abstracts/feature-results.csv" every ::0::0 using 2:3 with points pointtype 7 pointsize .9 linecolor rgb "black", \
 "" every ::1::1 using 2:3 with points pointtype 5 pointsize .9 linecolor rgb "black", \
 "" every ::2::2 using 2:3 with points pointtype 9 pointsize .9 linecolor rgb "black", \
 "" every ::0::0 using 2:3:("Spatial: 71.2") with labels left offset .8,0 textcolor rgb "black", \
 "" every ::1::1 using 2:3:("Image: 69.8") with labels right offset -.8,-.6 textcolor rgb "black", \
 "" every ::2::2 using 2:3:("Image + spatial: 72.2") with labels right offset -.8,.7 textcolor rgb "black"
unset multiplot
set output
