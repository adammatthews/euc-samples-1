# CIS Apple macOS 10.15 v1 - 1.4 Enable app update installs (Scored) - Remediation
# Query Type: Bash
# Execution Context: System
# Timeout: 30
# Author: matthewsa

defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool true && sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool true