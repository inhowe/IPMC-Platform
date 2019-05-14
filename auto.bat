echo STEP_1
::::为测控平台准备下位机固件和源代码压缩包
::复制hex文件
copy .\Software\IPMC-UCOS\Project\MDK\Output\IPMC.hex .\Software\HostComputer\doc\software\firmware\
::删除output文件
call .\Software\IPMC-UCOS\keilkill.bat
::压缩下位机源代码
set zip="D:\WinRAR\Rar.exe"
%zip% a -k -r -s -m3 -ep1 .\Software\IPMC-UCOS.zip .\Software\IPMC-UCOS 
::复制下位机源代码到上位机
copy ..\IPMC-UCOS.zip .\Software\HostComputer\doc\software\
::删除下位机源代码压缩包
del .\Software\IPMC-UCOS.zip

echo STEP_2
::::重新压缩IPMC.zip用于发布
del .\Software\builds\IPMC-Platform\IPMC\IPMC.zip
%zip% a -k -r -s -m3 -ep1 .\Software\builds\IPMC-Platform\IPMC\IPMC.zip .\Software\builds\IPMC-Platform\IPMC\IPMC.exe
del .\Software\builds\IPMC-Platform\IPMC-Platform-Install-simple.zip
%zip% a -k -r -s -m3 -ep1 .\Software\builds\IPMC-Platform\IPMC-Platform-Install-simple.zip .\Software\builds\IPMC-Platform\IPMC-Platform-Install-simple

echo STEP_3
::::git代码
git checkout dev
git status
git add .
git commit -m "auto commit"