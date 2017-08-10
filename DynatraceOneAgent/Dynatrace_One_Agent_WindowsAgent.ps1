Invoke-WebRequest -Uri https://github.com/sysgain/IOT-ChefCookbooks/blob/master/DynatraceOneAgent/Dynatrace-OneAgent-Windows-1.123.225.exe -OutFile c:/users/Dynatrace-OneAgent-Windows-1.123.225.exe
c:/users/Dynatrace-OneAgent-Windows-1.123.225.exe /qn
Start-Sleep -s 60
Restart-Service -SERVICENAME "Dynatrace OneAgent"