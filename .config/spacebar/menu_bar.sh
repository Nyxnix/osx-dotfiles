# compile smctemp binary with sudo so it goes to /usr/local/bin
# https://github.com/narugit/smctemp
echo "CPU Temp: $(/usr/local/bin/smctemp -c) | CPU Usage: $(top -l 1 | grep -E "^CPU" | awk '{print $3}' | tr -d '%') | RAM: $(top -l 1 | grep -E "^PhysMem" | awk '{print $6}' | cut -d"M" -f1) / $(top -l 1 | grep -E "^PhysMem" | awk '{print $2}' | cut -d"M" -f1)"

