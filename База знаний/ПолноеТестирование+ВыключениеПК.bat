Set base_dir="C:\Program Files\Штрих-М\Кассир v. 5\DB\"
echo %base_dir%

Set base_dir2="C:\Program Files (x86)\Штрих-М\Кассир v. 5\DB\"
echo %base_dir2%

PATH C:\Program Files\1cv82\8.2.19.106\bin;C:\Program Files\1cv82\8.2.19.130\bin;C:\Program Files\1cv8\8.3.6.2390\bin;C:\Program Files (x86)\1cv82\8.2.19.106\bin;C:\Program Files (x86)\1cv82\8.2.19.130\bin;C:\Program Files (x86)\1cv8\8.3.6.2390\bin; 



1cv8.exe CONFIG /F %base_dir% /IBCheckAndRepair -ReIndex -LogAndRefsIntegrity -RecalcTotals -IBCompression -Rebuild -BadRefCreate -BadDataCreate /Out c:\backup\%data%.log -NoTruncate

1cv8.exe CONFIG /F %base_dir2% /IBCheckAndRepair -ReIndex -LogAndRefsIntegrity -RecalcTotals -IBCompression -Rebuild -BadRefCreate -BadDataCreate /Out c:\backup\%data%.log -NoTruncate

SET PATH=C:\Windows;C:\windows\system32;C:\Windows\SysWow64;
shutdown /s /t 1200 /f 

 
 
