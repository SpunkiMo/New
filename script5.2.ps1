$login="mydomain\user"   #�� �������� ����� �������� ������� ���������� � ������ ����� � ����������� ������
$pass="userpass"
$server="nameserver"
taskkill /S $server /U $login /P $pass /IM OscarTestApp         
SCHTASKS /Run /S $server /U $login /P $pass /I /TN "OscarTestApp"  