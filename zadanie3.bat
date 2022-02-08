@Echo Off

chcp 65001

For /F "Skip=1" %%i In ('WMIC Path Win32_LocalTime Get DayOfWeek') do Set /A DayOfWeek=%%i &GoTo Da 
:Da

if %DayOfWeek%==4 (set /p "hi=Нужен дополнительный акцепт, продолжить установку? Y/N: ") else ( exit /b )

if /i "%hi%"=="y" ( echo "Окей" ) else (if "%hi%"=="n" ( exit /b ) else echo "Меняй букву." &goto Da)