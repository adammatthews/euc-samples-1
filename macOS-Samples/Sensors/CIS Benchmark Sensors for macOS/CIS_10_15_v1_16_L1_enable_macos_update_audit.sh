# CIS Apple macOS 10.15 v1 - 1.6 Enable macOS update installs (Scored)
# Query Type: Bash
# Return Type: String
# Execution Context: User

AutomaticallyInstallMacOSUpdates="$(defaults read /Library/Preferences/com.apple.SoftwareUpdate AutomaticallyInstallMacOSUpdates)"

if [ $AutomaticallyInstallMacOSUpdates == 1 ]; then
	echo "Compliant"
else
	echo "Non Compliant"
fi