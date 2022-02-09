@Echo Off

For /F "Skip=1" %%i In ('WMIC Path Win32_LocalTime Get DayOfWeek') do Set /A DayOfWeek=%%i &GoTo Da 
:Da

if %DayOfWeek% == 3 ( set /p "hi=Nuzhen dopolnitelnii akcept, prodolzhit ustanovku? Y/N: ") else ( exit ) 

if /i "%hi%" == "y" ( echo "Ok, povtorim!" &goto Da) else (if /i "%hi%"=="n" ( exit ) else echo "Meniai bukvu!." &goto Da)