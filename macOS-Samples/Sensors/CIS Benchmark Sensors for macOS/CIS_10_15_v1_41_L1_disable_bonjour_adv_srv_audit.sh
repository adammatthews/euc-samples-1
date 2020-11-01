# CIS Apple macOS 10.15 v1 - 4.1 Disable Bonjour advertising service (Scored)
# Query Type: Bash
# Return Type: String
# Execution Context: System


GuestAccess="$( defaults read /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements)"
if [[ $GuestAccess == 1 ]]; then
	echo "Compliant - GuestAccess"
else
	echo "Non Compliant - $GuestAccess"
fi