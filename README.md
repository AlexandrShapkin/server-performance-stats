# Server Performance Stats

Solution for the Server Performance Stats project from roadmap.sh.

Project URL: <https://roadmap.sh/projects/server-stats>

## Overview

This project is a Bash script that analyzes basic server performance statistics on a Linux machine.

The script provides:

* Total CPU usage
* Total memory usage (used, free, and percentage)
* Total disk usage (used, free, and percentage)
* Top 5 processes by CPU usage
* Top 5 processes by memory usage

Additionally, it can be extended to display extra information such as:

* OS version
* System uptime
* Load average
* Logged-in users
* Failed login attempts

## Requirements

* Linux operating system
* Bash shell
* Standard Linux utilities:

  * `top`
  * `free`
  * `df`
  * `ps`
  * `awk`
  * `grep`

## Installation

Clone the repository:

```bash
git clone https://github.com/AlexandrShapkin/server-performance-stats.git
cd server-performance-stats
```

Make the script executable:

```bash
chmod +x server-stats.sh
```

## Usage

Run the script:

```bash
./server-stats.sh
```

## Example Output

```text
========== SERVER PERFORMANCE STATS ==========

CPU Usage: 12.5%

Memory Usage:
Used: 3.1 GB
Free: 4.9 GB
Usage: 38%

Disk Usage:
Used: 42 GB
Free: 58 GB
Usage: 42%

Top 5 Processes by CPU Usage:
PID    COMMAND    CPU%
1234   nginx      15.2
5678   node       10.8
...

Top 5 Processes by Memory Usage:
PID    COMMAND    MEM%
1234   java       8.7
5678   postgres   6.3
...
```
