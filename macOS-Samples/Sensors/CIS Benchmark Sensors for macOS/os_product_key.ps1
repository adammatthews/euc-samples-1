# Returns the value of the Windows Product Key
# Return Type: String
# Execution Context: System
# Query Type: Powershell


$key=(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey
write-output $key