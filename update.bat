tasklist /FI "IMAGENAME eq monero-wallet-gui.exe" /FO CSV > search.log
FOR /F %%A IN (search.log) do if %%A == 資訊: goto process_off
:process_on
goto end
:process_off
start "C:\Program Files\Monero GUI Wallet\monero-wallet-gui.exe"
:end

del- search.log