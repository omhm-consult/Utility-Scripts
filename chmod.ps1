$path = $args[0]
#Reset to remove explict permissions
icacls.exe $path /reset
#Give current user explicit read-permission
icacls.exe $path /GRANT:R "$($env:USERNAME):(R)"
#Disable inheritance and remove inherited permissions
icacls.exe $path /inheritance:r
