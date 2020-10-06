# CIS Apple macOS 10.15 v1 - 2.1.4 Show Bluetooth status in menu bar (Scored) - Remediation
# Query Type: Bash
# Execution Context: User
# Timeout: 30
# Author: matthewsa

defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"
killall -KILL SystemUIServer