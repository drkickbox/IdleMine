if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
taskkill /F /im t-rex.exe
"C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" -profile2
"C:\Program Files\trexminer\t-rex.exe" -a ethash -o stratum+tcp://us1.ethermine.org:4444 -u 0x742289060475750D1f76DbbC86C9646245031B33 -w desktop
exit