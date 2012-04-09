#!/bin/sh
memtotal=$(perl -ane'print $F[1] if /^MemTotal:/' /proc/meminfo)
memused=$(perl -ane'print $F[1] if /^Active:/' /proc/meminfo)
echo $(($memtotal - $memused))
