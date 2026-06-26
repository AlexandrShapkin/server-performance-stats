#!/bin/bash
CPU_USAGE="$(top -bn1 | grep 'Cpu(s)' | awk '{print 100 - $8}')"
MEM_USAGE="$(free -m | awk '/Mem:/ { printf "Used: %.1f GB\nFree: %.1f GB\nUsage: %d%%%\n", $3/1024, $4/1024, $3/$4*100 }')"
DISK_USAGE="$(df -m / | sed -n '2 p' | awk '{printf "Used: %d GB\nFree: %d GB\nUsage: %d%%%", $3/1024, $4/1024, $3/$4*100}')"

printf "========== SERVER PERFORMANCE STATS ==========\n\n"

printf "CPU Usage: ${CPU_USAGE}%%\n\n"

printf "Memory Usage:\n${MEM_USAGE}\n\n"

printf "Disk Usage:\n${DISK_USAGE}\n"
