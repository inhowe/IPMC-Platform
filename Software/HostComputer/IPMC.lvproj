<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Property Name="CCSymbols" Type="Str"></Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Sub VI" Type="Folder">
			<Item Name="浮点转字节数组.vi" Type="VI" URL="../Sub VI/浮点转字节数组.vi"/>
			<Item Name="自动搜寻串口.vi" Type="VI" URL="../Sub VI/自动搜寻串口.vi"/>
			<Item Name="运行时菜单.rtm" Type="Document" URL="../Sub VI/运行时菜单.rtm"/>
			<Item Name="检查更新.vi" Type="VI" URL="../Sub VI/检查更新.vi"/>
			<Item Name="下载文件.vi" Type="VI" URL="../Sub VI/下载文件.vi"/>
			<Item Name="删除解压替换.vi" Type="VI" URL="../Sub VI/删除解压替换.vi"/>
			<Item Name="读取本地版本号.vi" Type="VI" URL="../Sub VI/读取本地版本号.vi"/>
			<Item Name="写入新版本号.vi" Type="VI" URL="../Sub VI/写入新版本号.vi"/>
			<Item Name="调用main.vi" Type="VI" URL="../Sub VI/调用main.vi"/>
		</Item>
		<Item Name="other" Type="Folder">
			<Item Name="CH341SER.EXE" Type="Document" URL="../other/CH341SER.EXE"/>
			<Item Name="NUAA圆角.ico" Type="Document" URL="../other/NUAA圆角.ico"/>
			<Item Name="download.exe" Type="Document" URL="../download.exe"/>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="launch.vi" Type="VI" URL="../launch.vi"/>
		<Item Name="version.ini" Type="Document" URL="../version.ini"/>
		<Item Name="protocol.xlsx" Type="Document" URL="../protocol.xlsx"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="LabVIEWHTTPClient.lvlib" Type="Library" URL="/&lt;vilib&gt;/httpClient/LabVIEWHTTPClient.lvlib"/>
				<Item Name="Path To Command Line String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Path To Command Line String.vi"/>
				<Item Name="PathToUNIXPathString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/CFURL.llb/PathToUNIXPathString.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="AB_Generate_Error_Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/AB_Generate_Error_Cluster.vi"/>
				<Item Name="GetTargetBuildSpecs (project reference).vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/GetTargetBuildSpecs (project reference).vi"/>
				<Item Name="AB_Relative_Path_Type.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/AB_Relative_Path_Type.ctl"/>
				<Item Name="AB_RW_Convert_Path_to_Absolute.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Convert_Path_to_Absolute.vi"/>
				<Item Name="Compare Two Paths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Compare Two Paths.vi"/>
				<Item Name="AB_RW_Convert_Path_to_Relative.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Convert_Path_to_Relative.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Is Name Multiplatform.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Is Name Multiplatform.vi"/>
				<Item Name="AB_RW_Project_PropBag_Action.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Project_PropBag_Action.ctl"/>
				<Item Name="AB_RW_Convert_Path_Tags.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Convert_Path_Tags.vi"/>
				<Item Name="AB_RW_Project_Build_Data.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Project_Build_Data.ctl"/>
				<Item Name="AB_RW_Project_Build_Info.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/RW_Project/AB_RW_Project_Build_Info.vi"/>
				<Item Name="IB_Relative_Path_Type.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_Relative_Path_Type.ctl"/>
				<Item Name="IB_RW_Convert_Path_to_Relative.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_RW_Convert_Path_to_Relative.vi"/>
				<Item Name="IB_RW_Project_PropBag_Action.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_RW_Project_PropBag_Action.ctl"/>
				<Item Name="IB_RW_Project_Installer_Data.ctl" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_RW_Project_Installer_Data.ctl"/>
				<Item Name="IB_RW_Project_Installer.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/IB_RW_Project/IB_RW_Project_Installer.vi"/>
				<Item Name="NI_App_Builder_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/AppBuilder/AB_API_Simple/NI_App_Builder_API.lvlib"/>
				<Item Name="Python Integration Toolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/Enthought/Python Integration Toolkit/Python Integration Toolkit.lvlib"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="Is Path and Not Empty.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Is Path and Not Empty.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="NI_Unzip.lvlib" Type="Library" URL="/&lt;vilib&gt;/zip/NI_Unzip.lvlib"/>
				<Item Name="Create Directory Recursive.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Create Directory Recursive.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
			</Item>
			<Item Name="provcom_StringGlobals.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_StringGlobals.vi"/>
			<Item Name="mxLvErrorHandler.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvErrorHandler.vi"/>
			<Item Name="mxLvDebugDisplayCaller.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvDebugDisplayCaller.vi"/>
			<Item Name="ItemRef.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/ItemRef.ctl"/>
			<Item Name="mxLvGetRefProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetRefProperty.vi"/>
			<Item Name="mxLvGetPathProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetPathProperty.vi"/>
			<Item Name="mxLvGetStringProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetStringProperty.vi"/>
			<Item Name="mxLvGetProjectRef.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetProjectRef.vi"/>
			<Item Name="mxLvGetProjectPath.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetProjectPath.vi"/>
			<Item Name="mxLvSetRefProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetRefProperty.vi"/>
			<Item Name="mxLvNIIM.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvNIIM.ctl"/>
			<Item Name="mxLvGetNIIM.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetNIIM.vi"/>
			<Item Name="mxLvGetTarget.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetTarget.vi"/>
			<Item Name="provcom_Utility_IsEmptyOrWhiteSpace.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_Utility_IsEmptyOrWhiteSpace.vi"/>
			<Item Name="provcom_GetTargetOS.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_GetTargetOS.vi"/>
			<Item Name="provcom_CheckForInvalidCharacters.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_CheckForInvalidCharacters.vi"/>
			<Item Name="AB_UI_Change_Path_from_Label.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Builds/AppBuilder/AB_UI_Change_Path_from_Label.vi"/>
			<Item Name="mxLvSetPathProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetPathProperty.vi"/>
			<Item Name="mxLvSetStringProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetStringProperty.vi"/>
			<Item Name="mxLvSetIntProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetIntProperty.vi"/>
			<Item Name="mxLvGetIntProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetIntProperty.vi"/>
			<Item Name="mxLvGetBooleanProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetBooleanProperty.vi"/>
			<Item Name="mxLvSetBooleanProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetBooleanProperty.vi"/>
			<Item Name="mxLvDeleteProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvDeleteProperty.vi"/>
			<Item Name="CDK_sTypeDef_ProductVersion.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Builds/Installer/CDK_sTypeDef_ProductVersion.ctl"/>
			<Item Name="CDK_Utility_GetSetStringVersion.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Builds/Installer/CDK_Utility_GetSetStringVersion.vi"/>
			<Item Name="CDK_sTypeDef_Languages.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Builds/Installer/CDK_sTypeDef_Languages.ctl"/>
			<Item Name="mxLvGetItem.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetItem.vi"/>
			<Item Name="mxLvProvider.mxx" Type="Document" URL="/&lt;resource&gt;/Framework/Providers/mxLvProvider.mxx"/>
			<Item Name="运行时菜单.rtm" Type="Document" URL="../运行时菜单.rtm"/>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="launch" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{80494243-3B6B-4844-82D1-E2AEF5F21D5C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{0974CF05-CC8C-4ED2-BC95-866CCA59DD60}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{355D0486-CB30-42D1-B7A0-B3F93CF03403}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">launch</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/IPMC-Platform/launch</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{B714A26D-D1F7-43E2-8329-EBC11EF6A241}</Property>
				<Property Name="Bld_version.build" Type="Int">30</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">launch.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/IPMC-Platform/launch/launch.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/IPMC-Platform/launch/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{2059218F-1C5B-4F2D-B378-70588B5AD0DF}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{14818313-8122-44D5-972C-1B2EDA0788BA}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{8CCB5A13-8970-40E2-A3D4-1D6D4737F7FA}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{C71117F7-D194-4110-9755-50B103B67784}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{1EF9F97D-651A-419A-AF3A-C20FFF1B85F4}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{1F0B2D4C-8AA0-412A-B208-516D1E74F640}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{C71806C8-1376-45D0-9A17-16218C6E7D91}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{70299639-631C-48C6-8093-CCDC5233F482}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{18A52C9F-E477-4673-BCA2-A587B080ECED}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{0EE3D026-4914-41A0-809B-420E7B971942}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{708DCB44-9343-4B0E-8C0D-94BACD2D4BC8}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{0DCEBB8D-1DC7-43F1-8BFB-9037C550A123}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{90A7A27A-86D7-484C-A9DD-022AEC135849}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{660F3D5B-C23E-4806-847F-C5B5EEC5565A}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{97342C8A-4AFE-47BC-91E9-E359ACBCC3E0}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{EEBD8C2C-4DC6-4A8E-B3F9-E4692A9821A5}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{3DC97E22-C515-4F0B-B943-C5E05DBAC147}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{C149323E-CD18-4679-9F44-BA77766D431D}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{0555657B-B55B-4882-9E83-76DD760D5764}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{0E43C65B-6456-4E49-8CE0-F813EEF26974}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{C739B149-4DA1-4426-B23C-311BD94C3DE8}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{6D119D41-BF64-4F93-BFE5-B2522C3DE2A3}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{9036DB48-E732-45C3-858F-B1ABEBFE9BFB}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{85BE74CF-018F-4DE2-B6A8-A55B0B9E980B}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{8100615F-E83F-4605-AF81-DF16DE722561}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{8EADA9E7-66C4-43FC-88D4-9AF62595126D}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{4A8480AE-0050-4314-ACA6-3191848798F9}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{C38AFE95-EE46-4787-B70B-BE3AC4D25D87}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{A9D7F1AE-0FAA-43E0-9347-8367DCEFCBEA}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{CE6A0523-DC66-4D39-B582-07E45BF93D6E}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{39C23340-86A8-46E7-8B5E-2140755DEEBA}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">Launch</Property>
				<Property Name="Exe_actXServerName" Type="Str">Launch</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str">{97630F66-0F7A-42E0-BAF1-266584CEE9E0}</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/我的电脑/other/NUAA圆角.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{2DA2DA2A-491A-490D-B74A-398E3E01E33C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/launch.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/我的电脑/version.ini</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_fileDescription" Type="Str">launch</Property>
				<Property Name="TgtF_internalName" Type="Str">launch</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2018 </Property>
				<Property Name="TgtF_productName" Type="Str">launch</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">launch.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="IPMC" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{54AC76FB-7C25-4CE4-8D76-A831663ECE08}</Property>
				<Property Name="App_INI_GUID" Type="Str">{EFB09FDC-E10E-4E9F-9278-572498702AD5}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{12C72E5B-8003-4BA0-9E72-BD8C2ECEEEE2}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">IPMC</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/IPMC-Platform/NI_AB_PROJECTNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{15733E37-27AE-4D5C-8A95-1C8AEC33A56F}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">ChineseS</Property>
				<Property Name="Bld_supportedLanguage[1]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">2</Property>
				<Property Name="Bld_version.build" Type="Int">29</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">IPMC.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/IPMC-Platform/NI_AB_PROJECTNAME/IPMC.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/IPMC-Platform/NI_AB_PROJECTNAME/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{87CE259B-5224-4E4E-93BD-FBB9F6A5E0B2}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{B8C7DE6A-FF17-4983-A13B-32F0F7CC67DB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{E9643DA1-A374-430C-A988-2546F724F435}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{0D829C85-AFBC-48AE-9C1D-6F82A5D92199}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{96C694C1-E73B-4AF7-AEEB-77BF63CED6DE}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{CBDC329E-2B44-4B1E-A6F1-5222562FD5EF}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{49C7A08D-538D-40AB-9FEC-374BEB24CAA2}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{A2EFF8A6-936B-48C8-B3E2-B13EADD9C80E}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{D60CD76F-AC08-474A-A9E3-D80EF9BD228D}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{246C8845-1487-4595-ACBC-558A85539EFB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{B5D236BF-9A38-45AB-8FDE-191DA07E473E}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{C41BB76B-F7DF-4521-94A5-72222387A36F}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{9AF07DAD-C81D-432F-8B81-298856F3ED77}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{78F96430-4E39-40C3-9C26-8539BA1E4E81}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{BC1CC44F-AA64-4D37-BFA2-B79D4EFE1374}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{1B1A2496-E3D7-4645-8C68-05E5686A4EDD}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{4B0F4F24-4759-4C55-B5E7-AF03F74DD6CD}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{8A7EC88C-6B40-4449-8682-238D6DBC0874}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{957EF5DD-509E-45A3-B87B-9E19DB3A7B94}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{F7DFECFF-D3CF-461F-A892-AFEDB8854EA8}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{81935F04-135E-4927-ADFF-65474EB0B9FF}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{104D4F50-2607-40B6-B119-EBD6BDA0ADCF}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{3D87B4A7-3516-4400-9E13-6F355BC0D3BC}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{97EA0B8F-3AAD-491B-8654-A98F8D0BA7E1}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{F623B656-B19A-45D2-A1BB-91CFB7B67424}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{294A2182-9C21-47DA-8816-07921150F740}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{D911470F-1FB8-4451-9066-EC00106F601E}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{EEC5E769-BBA2-43E9-BB2F-E08C7D41E9FA}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{47603E52-0435-4058-B0BC-D4BE1F792D51}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{1D8A3A44-8B68-4ECE-AB0B-CC367C5D91DD}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{FCD238E8-190E-4108-8369-F4586DB4E027}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">IPMC</Property>
				<Property Name="Exe_actXServerName" Type="Str">IPMC</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str">{6E0AB8FC-F1E0-4EAE-BCAD-4D0B2D8A905B}</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/我的电脑/other/NUAA圆角.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{2DA2DA2A-491A-490D-B74A-398E3E01E33C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NUAA</Property>
				<Property Name="TgtF_fileDescription" Type="Str">IPMC</Property>
				<Property Name="TgtF_internalName" Type="Str">IPMC</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2018 </Property>
				<Property Name="TgtF_productName" Type="Str">IPMC</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{73F965B0-56CD-4AB9-A0FB-D2E9DD2086B4}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">IPMC.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="IPMC-Platform-Install" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">IPMC-Platform</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{74AAFC3E-50DD-40A4-9DD7-155E87481F63}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-VISA运行引擎 17.5</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[1].productID" Type="Str">{F8C28DE1-1E13-4D22-AC1B-A09B86F991EC}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI LabVIEW运行引擎 2017 f2</Property>
				<Property Name="DistPart[1].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[0].productName" Type="Str">NI LabVIEW运行引擎 2017非英语语言支持</Property>
				<Property Name="DistPart[1].SoftDep[0].upgradeCode" Type="Str">{182AE811-85B6-4238-B67E-F19497CC186B}</Property>
				<Property Name="DistPart[1].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[1].productName" Type="Str">NI ActiveX容器</Property>
				<Property Name="DistPart[1].SoftDep[1].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[1].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[10].productName" Type="Str">NI mDNS Responder 14.0</Property>
				<Property Name="DistPart[1].SoftDep[10].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[1].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[11].productName" Type="Str">NI Deployment Framework 2017</Property>
				<Property Name="DistPart[1].SoftDep[11].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[1].SoftDep[12].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[12].productName" Type="Str">NI错误报告 2017</Property>
				<Property Name="DistPart[1].SoftDep[12].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[1].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[2].productName" Type="Str">数学核心库</Property>
				<Property Name="DistPart[1].SoftDep[2].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[1].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[3].productName" Type="Str">NI Logos 5.9</Property>
				<Property Name="DistPart[1].SoftDep[3].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[1].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[4].productName" Type="Str">NI TDM Streaming 17.0</Property>
				<Property Name="DistPart[1].SoftDep[4].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[1].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[5].productName" Type="Str">NI LabVIEW Web服务器 2017</Property>
				<Property Name="DistPart[1].SoftDep[5].upgradeCode" Type="Str">{0960380B-EA86-4E0C-8B57-14CD8CCF2C15}</Property>
				<Property Name="DistPart[1].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[6].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2017</Property>
				<Property Name="DistPart[1].SoftDep[6].upgradeCode" Type="Str">{4F261250-2C38-488D-A9EC-9D1EFCC24D4B}</Property>
				<Property Name="DistPart[1].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[7].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[1].SoftDep[7].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[1].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[8].productName" Type="Str">NI VC2010MSMs</Property>
				<Property Name="DistPart[1].SoftDep[8].upgradeCode" Type="Str">{EFBA6F9E-F934-4BD7-AC51-60CCA480489C}</Property>
				<Property Name="DistPart[1].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[9].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[1].SoftDep[9].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[1].SoftDepCount" Type="Int">13</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{620DBAE1-B159-4204-8186-0813C8A6434C}</Property>
				<Property Name="DistPartCount" Type="Int">2</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/IPMC-Platform/IPMC-Platform-Install</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">IPMC-Platform-Install</Property>
				<Property Name="INST_defaultDir" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="INST_language" Type="Int">2052</Property>
				<Property Name="INST_productName" Type="Str">IPMC-Platform</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.16</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">17008011</Property>
				<Property Name="MSI_arpCompany" Type="Str">NUAA</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{3DFD03DB-F3DC-4BBB-8E97-B3AA8FABD93B}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{58DE01B1-85E2-4587-8731-826340020405}</Property>
				<Property Name="MSI_windowMessage" Type="Str">1、IPMC.exe  为主体程序，可以单独运行
2、launch.exe  为更新检测程序，完成IPMC.exe的自动更新
3、GitHub连接太慢时不建议运行launch.exe</Property>
				<Property Name="MSI_windowTitle" Type="Str">IPMC-Platform</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">IPMC.exe</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{73F965B0-56CD-4AB9-A0FB-D2E9DD2086B4}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">IPMC</Property>
				<Property Name="Source[0].tag" Type="Ref">/我的电脑/程序生成规范/IPMC</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[1].name" Type="Str">protocol.xlsx</Property>
				<Property Name="Source[1].tag" Type="Ref">/我的电脑/protocol.xlsx</Property>
				<Property Name="Source[1].type" Type="Str">File</Property>
				<Property Name="Source[2].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[2].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[2].File[0].name" Type="Str">launch.exe</Property>
				<Property Name="Source[2].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[2].File[0].Shortcut[0].name" Type="Str">launch</Property>
				<Property Name="Source[2].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[2].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[2].File[0].tag" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="Source[2].FileCount" Type="Int">1</Property>
				<Property Name="Source[2].name" Type="Str">launch</Property>
				<Property Name="Source[2].tag" Type="Ref">/我的电脑/程序生成规范/launch</Property>
				<Property Name="Source[2].type" Type="Str">EXE</Property>
				<Property Name="Source[3].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[3].name" Type="Str">CH341SER.EXE</Property>
				<Property Name="Source[3].runEXE" Type="Bool">true</Property>
				<Property Name="Source[3].tag" Type="Ref">/我的电脑/other/CH341SER.EXE</Property>
				<Property Name="Source[3].type" Type="Str">File</Property>
				<Property Name="Source[4].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[4].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[4].File[0].name" Type="Str">launch.exe</Property>
				<Property Name="Source[4].File[0].tag" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="Source[4].name" Type="Str">NUAA圆角.ico</Property>
				<Property Name="Source[4].tag" Type="Ref">/我的电脑/other/NUAA圆角.ico</Property>
				<Property Name="Source[4].type" Type="Str">File</Property>
				<Property Name="Source[5].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[5].name" Type="Str">version.ini</Property>
				<Property Name="Source[5].tag" Type="Ref">/我的电脑/version.ini</Property>
				<Property Name="Source[5].type" Type="Str">File</Property>
				<Property Name="Source[6].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[6].name" Type="Str">download.exe</Property>
				<Property Name="Source[6].tag" Type="Ref">/我的电脑/other/download.exe</Property>
				<Property Name="Source[6].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">7</Property>
			</Item>
		</Item>
	</Item>
</Project>
