::复制hex文件
copy ..\IPMC-UCOS\Project\MDK\Output\IPMC.hex .\doc\software\firmware\
::删除output文件
call ..\IPMC-UCOS\keilkill.bat
::压缩源代码
set zip="D:\WinRAR\Rar.exe"
%zip% a -k -r -s -m3 -ep1 ..\IPMC-UCOS.zip ..\IPMC-UCOS 
::复制源代码
copy ..\IPMC-UCOS.zip .\doc\software\
::删除压缩包
del ..\IPMC-UCOS.zip