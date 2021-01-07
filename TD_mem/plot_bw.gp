filename=ARG1
delta=ARG2
cpu_name=ARG3

set term png size 1900,1000 noenhanced font "Terminal,10"

set grid

set auto x

set key left top

set title cpu_name." bandwidth (in GiB/s) for a Load benchmark on a single array"

set xlabel "Benchmark variants"
set ylabel "Bandwidth in Bytes Per Cycle (higher is better)"

set style data histogram
set style fill solid border -1
set boxwidth 0.9

set xtic rotate by -45 scale 0

set multiplot layout 2, 2 rowsfirst

stats filename."_L1.dat" using 2 name "st"
set yrange [0:st_max + delta]

set title "L1 cache"
plot filename."_L1.dat" u 2:xtic(1) t cpu_name

set title "L2 cache"
plot filename."_L2.dat" u 2:xtic(1) t cpu_name

set title "L3 cache"
plot filename."_L3.dat" u 2:xtic(1) t cpu_name

set title "DRAM"
plot filename."_DRAM.dat" u 2:xtic(1) t cpu_name

unset multiplot
