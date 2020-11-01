# CIS Apple macOS 10.15 v1 - 2.2.2 Ensure time set is within appropriate limits (Scored)
# Query Type: Bash
# Return Type: String
# Execution Context: System

#NOTE: If time is out on machine, not sure how we will accept this sensors output. 

TimeServer="$(/usr/sbin/systemsetup -getnetworktimeserver | awk '{ print $4 }')"

Drift="$(sntp $TimeServer | grep +/- )"
Left="$(sntp $TimeServer | grep +/- | awk '{ print $4 }' | sed 's/+//g'| sed 's/-//g')" # the + Figure 
Right="$(sntp $TimeServer | grep +/- | awk '{ print $6 }')" # the - figire 

LeftComp="$(echo "$Left>270" | bc)"
RightComp="$(echo "$Right>270" | bc)"

if [ $LeftComp == 0 ] && [ $RightComp == 0 ]; then
	echo "Compliant"
else
	echo "Non Compliant - $TimeServer"
fi