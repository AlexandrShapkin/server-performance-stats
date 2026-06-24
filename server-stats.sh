#!/bin/bash
CPU_USAGE="$(top -bn1 | grep 'Cpu(s)' | awk '{print 100 - $8}')"

printf "========== SERVER PERFORMANCE STATS ==========\n\n"

printf "CPU Usage: ${CPU_USAGE}%%\n"