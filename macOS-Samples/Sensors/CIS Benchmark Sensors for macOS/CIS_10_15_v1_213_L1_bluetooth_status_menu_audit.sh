# CIS Apple macOS 10.15 v1 - 2.1.3 Show Bluetooth status in menu bar (Scored)
# Query Type: Bash
# Return Type: String
# Execution Context: User
# Author: matthewsa

BTMenu="$(defaults read com.apple.systemuiserver menuExtras | grep Bluetooth.menu)"

if [ $BTMenu == *"Bluetooth.menu"* ]; then
	echo "Compliant"
else
	echo "Non Compliant"
fi