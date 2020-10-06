# CIS Apple macOS 10.15 v1 - 2.2.2 Ensure time set is within appropriate limits (Scored) - Remediation
# Query Type: Bash
# Execution Context: System
# Timeout: 30
# Author: matthewsa


TimeServer="$(sudo systemsetup -getnetworktimeserver | awk '{ print $4 }')"
sudo ntpdate -sv $TimeServer