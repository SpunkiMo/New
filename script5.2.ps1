$login="mydomain\user"   #ѕо хорошему нужно отдельно вынести переменные в другое место и засикретить пароль
$pass="userpass"
$server="nameserver"
taskkill /S $server /U $login /P $pass /IM OscarTestApp         
SCHTASKS /Run /S $server /U $login /P $pass /I /TN "OscarTestApp"  