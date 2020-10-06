# CIS Apple macOS 10.15 v1 - 1.5 Enable macOS update installs (Scored)
# Query Type: Bash
# Return Type: Integer
# Execution Context: User
# Author: matthewsa

AutomaticallyInstallMacOSUpdates="$(defaults read /Library/Preferences/com.apple.SoftwareUpdate AutomaticallyInstallMacOSUpdates)"

if [[ $AutomaticallyInstallMacOSUpdates == 1 ]]; then
	echo "Compliant"
else
	echo "Non Compliant"
fi