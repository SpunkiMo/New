@Echo Off

chcp 65001

For /F "Skip=1" %%i In ('WMIC Path Win32_LocalTime Get DayOfWeek') do Set /A DayOfWeek=%%i &GoTo Da 
:Da

if %DayOfWeek% == 2 ( set /p "hi=Нужен дополнительный акцепт, продолжить установку? Y/N: ") else ( exit ) 

if /i "%hi%" == "y" ( echo "Окей, повторим!" &goto Da) else (if "%hi%"=="n" ( exit ) else echo "Меняй букву." &goto Da)