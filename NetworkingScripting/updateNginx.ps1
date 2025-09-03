(Get-Content "C:\tools\nginx-1.29.0\conf\nginx.conf") `
   -replace 'server_name\s+localhost;', 'server_name 0.0.0.0;' `
   | Set-Content "C:\tools\nginx-1.29.0\conf\nginx.conf"
cd C:\tools\nginx-x.x.x
nginx -s reload 

# Add New Rule to Firewall To apply nginx 
New-NetFirewallRule -DisplayName "Nginx HTTP" -Direction Inbound -LocalPort 80 -Protocol TCP -Action Allow
