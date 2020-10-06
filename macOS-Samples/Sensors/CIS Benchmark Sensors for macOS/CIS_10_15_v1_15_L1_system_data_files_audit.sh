# CIS Apple macOS 10.15 v1 - 1.5 Enable system data files and security update installs (Scored)
# Query Type: Bash
# Return Type: String
# Execution Context: User
# Author: matthewsa@vmware.com

ConfigDataInstall="$(defaults read /Library/Preferences/com.apple.SoftwareUpdate | egrep '(ConfigDataInstall)' | awk '{ print $3 }' | sed 's/;//g')"
CriticalUpdateInstall="$(defaults read /Library/Preferences/com.apple.SoftwareUpdate | egrep '(CriticalUpdateInstall)' | awk '{ print $3 }' | sed 's/;//g')"

if [ ${ConfigDataInstall} == 1 ] && [ ${CriticalUpdateInstall} == 1 ]; then
	echo "Compliant"
else
	echo "Non Compliant"
fi