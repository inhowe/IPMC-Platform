<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
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
			<Item Name="调整采样率.vi" Type="VI" URL="../Sub VI/调整采样率.vi"/>
			<Item Name="解析协议.vi" Type="VI" URL="../Sub VI/解析协议.vi"/>
			<Item Name="浮点转字节数组.vi" Type="VI" URL="../Sub VI/浮点转字节数组.vi"/>
			<Item Name="自动搜寻串口.vi" Type="VI" URL="../Sub VI/自动搜寻串口.vi"/>
			<Item Name="运行时菜单.rtm" Type="Document" URL="../Sub VI/运行时菜单.rtm"/>
			<Item Name="检查更新.vi" Type="VI" URL="../Sub VI/检查更新.vi"/>
			<Item Name="下载文件.vi" Type="VI" URL="../Sub VI/下载文件.vi"/>
			<Item Name="删除解压替换.vi" Type="VI" URL="../Sub VI/删除解压替换.vi"/>
			<Item Name="读取本地版本号.vi" Type="VI" URL="../Sub VI/读取本地版本号.vi"/>
			<Item Name="写入新版本号.vi" Type="VI" URL="../Sub VI/写入新版本号.vi"/>
			<Item Name="调用main.vi" Type="VI" URL="../Sub VI/调用main.vi"/>
			<Item Name="清除波形.vi" Type="VI" URL="../Sub VI/清除波形.vi"/>
			<Item Name="XY图数据提取.vi" Type="VI" URL="../Sub VI/XY图数据提取.vi"/>
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
		<Item Name="launch.manifest" Type="Document" URL="../launch.manifest"/>
		<Item Name="NUAA.bmp" Type="Document" URL="../../../../照片/NUAA.bmp"/>
		<Item Name="description.rtf" Type="Document" URL="../description.rtf"/>
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
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
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
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="NI_Unzip.lvlib" Type="Library" URL="/&lt;vilib&gt;/zip/NI_Unzip.lvlib"/>
				<Item Name="Create Directory Recursive.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Create Directory Recursive.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
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
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="launch" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{80494243-3B6B-4844-82D1-E2AEF5F21D5C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{0974CF05-CC8C-4ED2-BC95-866CCA59DD60}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.manifest" Type="Ref">/我的电脑/launch.manifest</Property>
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
				<Property Name="Bld_version.build" Type="Int">44</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">launch.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/IPMC-Platform/launch/launch.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/IPMC-Platform/launch/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{BC1B028B-332C-4FD3-999C-0D82D3ED1FCB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{CE47D73D-9BDC-4FA6-94CC-2F1D6D60F419}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{DED259B6-448E-4801-A8D0-588A560BCED8}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{549956AD-8F05-4025-83C7-AB0989A9D74C}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{3D96A636-073C-4FFC-ADFF-3881606148FB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{6006CAFA-8285-47E5-9C1E-431F5CB22A61}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{4CF43AA7-71C6-421D-A1C9-7985ADFA09E5}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{0AA7407E-6275-4C69-9204-E8D67FD7493E}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{00C4E394-C1A9-4276-937F-7F81D79BBD68}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{1493A297-A245-493D-B0E7-77C983BD3674}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{3600CB00-C49F-4437-B1A4-1E63072A2209}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{580BF91F-0C19-4D72-96CA-0B8D98688994}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{02565E2B-4CEE-4BE8-A578-9F1F2FFE2606}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{5F288D15-25D5-452A-A301-3EF405DFF940}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{A931C335-E7C0-4E52-A9AF-86A11C344BFC}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{FB69DEA6-8A32-4C25-BAA5-C66379AA5B40}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{4B0D86FE-B034-420D-97F1-038A81567299}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{4B26F738-1C55-4A8B-A2B8-681E16BA3BB9}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{31B23458-98FF-4F51-AB3B-5AE3D636D087}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{2C967F47-C491-4F24-9AF4-7952E6DF91A2}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{500B67BD-5A4D-46D6-B924-EE7CB3601C11}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{B9B07105-DDD2-44C4-AD43-3E0FC9787B54}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{16382BF4-DEBB-4E27-9F06-90456A55BB1E}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{F56D4907-CB55-4283-9CD9-A75CC15C16F5}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{AC953CD7-50E3-4950-9023-E5778875FC02}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{E8B6146A-E376-45B8-A3FA-C93F8F1D64E4}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{CECD07EF-AB2F-4D36-98DA-C08E52119B06}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{40FDE035-3F39-4B73-9241-563F68C6BFCD}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{3B9487AF-A9BF-447D-B2D1-33F83E76CEDF}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{595A9367-E9D2-4AD0-B24D-7BDF432E36FD}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{EF68FB22-14A0-403C-A45D-F93045713259}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">Launch</Property>
				<Property Name="Exe_actXServerName" Type="Str">Launch</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str">{97630F66-0F7A-42E0-BAF1-266584CEE9E0}</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/我的电脑/other/NUAA圆角.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{554D800E-C1A6-4CEA-9AFE-874E33B168A2}</Property>
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
				<Property Name="Bld_version.build" Type="Int">62</Property>
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
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/IPMC-Platform/IPMC-Platform-Install</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">IPMC-Platform-Install</Property>
				<Property Name="INST_defaultDir" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="INST_language" Type="Int">2052</Property>
				<Property Name="INST_productName" Type="Str">IPMC-Platform</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.43</Property>
				<Property Name="INST_requireLVDevSys" Type="Bool">true</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">18008011</Property>
				<Property Name="MSI_arpCompany" Type="Str">NUAA</Property>
				<Property Name="MSI_distID" Type="Str">{3DFD03DB-F3DC-4BBB-8E97-B3AA8FABD93B}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_licenseID" Type="Ref">/我的电脑/description.rtf</Property>
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
				<Property Name="Source[2].File[0].Shortcut[0].name" Type="Str">IPMC-Platform</Property>
				<Property Name="Source[2].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[2].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[2].File[0].tag" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="Source[2].FileCount" Type="Int">1</Property>
				<Property Name="Source[2].name" Type="Str">launch</Property>
				<Property Name="Source[2].tag" Type="Ref">/我的电脑/程序生成规范/launch</Property>
				<Property Name="Source[2].type" Type="Str">EXE</Property>
				<Property Name="Source[3].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[3].name" Type="Str">CH341SER.EXE</Property>
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
