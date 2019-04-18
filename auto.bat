::复制hex文件
copy .\Software\IPMC-UCOS\Project\MDK\Output\IPMC.hex .\Software\HostComputer\doc\software\firmware\
::删除output文件
call .\Software\IPMC-UCOS\keilkill.bat
::压缩源代码
set zip="D:\WinRAR\Rar.exe"
%zip% a -k -r -s -m3 -ep1 .\Software\IPMC-UCOS.zip .\Software\IPMC-UCOS 
::复制源代码
copy ..\IPMC-UCOS.zip .\Software\HostComputer\doc\software\
::删除压缩包
del .\Software\IPMC-UCOS.zip

del .\Software\builds\IPMC-Platform\IPMC\IPMC.zip
%zip% a -k -r -s -m3 -ep1 .\Software\builds\IPMC-Platform\IPMC\IPMC.zip .\Software\builds\IPMC-Platform\IPMC\IPMC.exe
del .\Software\builds\IPMC-Platform\IPMC-Platform-Install-simple.zip
%zip% a -k -r -s -m3 -ep1 .\Software\builds\IPMC-Platform\IPMC-Platform-Install-simple.zip .\Software\builds\IPMC-Platform\IPMC-Platform-Install-simple