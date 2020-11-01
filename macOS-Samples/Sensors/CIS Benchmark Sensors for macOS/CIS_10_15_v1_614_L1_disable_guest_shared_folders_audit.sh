# CIS Apple macOS 10.15 v1 - 6.1.4 Disable "Allow guests to connect to shared folders" (Scored)
# Query Type: Bash
# Return Type: String
# Execution Context: System


#For AFP
GuestAccessAFP="$( defaults read /Library/Preferences/com.apple.AppleFileServer | grep -i guest )"
# For SMB
GuestAccessSMB="$( defaults read /Library/Preferences/SystemConfiguration/com.apple.smb.server | grep -i guest )"

if [ $GuestAccessAFP == *"guestAccess = 0;"* ] && [ $GuestAccessSMB == *"AllowGuestAccess = 0;"* ]; then
	echo "Compliant"
else
	echo "Non Compliant"
fi