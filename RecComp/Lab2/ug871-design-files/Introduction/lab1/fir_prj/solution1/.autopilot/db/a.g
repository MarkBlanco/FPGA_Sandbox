#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /afs/ece.cmu.edu/usr/markb1/Documents/fpga_sandbox/RecComp/Lab2/ug871-design-files/Introduction/lab1/fir_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
