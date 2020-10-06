# CIS Apple macOS 10.15 v1 - 2.1.1 Turn off Bluetooth, if no paired devices exist (Scored)
# Query Type: Bash
# Return Type: String
# Execution Context: User
# Author: matthewsa

ControllerPowerState="$(defaults read /Library/Preferences/com.apple.Bluetooth ControllerPowerState)"

if [ ${ControllerPowerState} != 0 ] ; then
	Paired="$(system_profiler SPBluetoothDataType | grep 'Paired: Yes' )"
	if [[ $Paired == *"Paired: Yes"* ]]; then
		echo "Compliant - Paired Devices"
	else
		echo "Non Compliant - No Paired Devices"
	fi
else
	if [ ${ControllerPowerState} = 0 ] ; then
		echo "Compliant - No Paired Devices"
	fi
fi