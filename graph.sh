# Script can be use to generate graphs based on 
# BIG-IP statistics (.rrd files)

# Possible $1 values:
# pkts_in
# pkts_out
# bytes_in
# bytes_out
# connections
# current_connections

# $2 .rrd filename
# $3 date - format: 24-12-15
# $4 date - format: 24-12-15

rrdtool graph $1_$2_$3_$4.png \
DEF:$1=$2:$1:MAX LINE2:$1#FF0000 \
--start $(date -j -f "%d-%m-%y-%H-%M-%S" $3-00-00-00 +%s) --end $(date -j -f "%d-%m-%y-%H-%M-%S" $4-00-00-00 +%s) -t $1