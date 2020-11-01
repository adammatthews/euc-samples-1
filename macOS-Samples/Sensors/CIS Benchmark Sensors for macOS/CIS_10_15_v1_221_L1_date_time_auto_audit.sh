# CIS Apple macOS 10.15 v1 - 2.1.3 Show Bluetooth status in menu bar (Scored)
# Query Type: Bash
# Return Type: String
# Execution Context: System

NetworkTime="$(sudo /usr/sbin/systemsetup -getusingnetworktime | awk '{ print $3 }')"

if [ $NetworkTime == "On" ]; then
	echo "Compliant"
else
	echo "Non Compliant"
fi