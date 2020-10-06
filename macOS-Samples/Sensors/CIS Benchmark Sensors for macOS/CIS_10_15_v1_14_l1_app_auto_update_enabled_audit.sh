# CIS Apple macOS 10.15 v1 - 1.4 Enable app update installs (Scored) - Audit
# Query Type: Bash
# Return Type: String
# Execution Context: User
# Author: matthewsa@vmware.com

AutoUpdate="$(defaults read /Library/Preferences/com.apple.commerce AutoUpdate)"
if [[ $AutoUpdate == 1 ]]; then
	echo "Compliant"
else
	echo "Non Compliant"
fi