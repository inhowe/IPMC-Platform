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
			<Item Name="调整采样率.vi" Type="VI" URL="../Sub VI/调整采样率.vi"/>
			<Item Name="解析协议.vi" Type="VI" URL="../Sub VI/解析协议.vi"/>
			<Item Name="浮点转字节数组.vi" Type="VI" URL="../Sub VI/浮点转字节数组.vi"/>
			<Item Name="单精度浮点拆分.vi" Type="VI" URL="../Sub VI/单精度浮点拆分.vi"/>
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
		<Item Name="Ctrl" Type="Folder">
			<Item Name="XYGraph.ctl" Type="VI" URL="../Ctrl/XYGraph.ctl"/>
			<Item Name="led.ctl" Type="VI" URL="../Ctrl/led.ctl"/>
			<Item Name="wave.ctl" Type="VI" URL="../Ctrl/wave.ctl"/>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="launch.vi" Type="VI" URL="../launch.vi"/>
		<Item Name="version.ini" Type="Document" URL="../version.ini"/>
		<Item Name="protocol.xlsx" Type="Document" URL="../protocol.xlsx"/>
		<Item Name="launch.manifest" Type="Document" URL="../launch.manifest"/>
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
				<Property Name="Bld_version.build" Type="Int">48</Property>
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
				<Property Name="Bld_version.build" Type="Int">80</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">IPMC.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/IPMC-Platform/NI_AB_PROJECTNAME/IPMC.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/IPMC-Platform/NI_AB_PROJECTNAME/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{5DF58730-A3A8-410C-BA11-ECBA29A276AC}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{5400220A-C0D3-45CE-9F97-BB74CE866CD7}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{885ED0A9-B108-4EA9-898C-BDCEE4458948}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{F0F08304-1D0A-419C-B335-47A74209D450}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{3946F745-C3EB-445C-BB37-65AA9278C061}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{7CAE3430-6745-4A1A-A8CF-A6CE85FC5EBB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{2D7AE6CA-D843-4A38-A5EE-29297BE2217B}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{2BA57A43-E1E0-45CF-886B-A28CF26DC0DF}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{B927EBCD-FB14-4981-AAE0-BEDFF297F699}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{BF6D8800-C89E-4F5C-989F-D1FF413FAA76}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{29D61ED2-4E56-4E08-BD3F-96DCADAB85D0}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{A759C64F-FABC-4152-A08B-ADE74162509C}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{DB893646-9BA0-46AE-993F-90C25B56AD58}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{035EB3E1-00BF-4383-BDDD-8D63BAB4E279}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{62011E96-6F96-41A2-85D3-163F60035B09}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{CF48B8C2-C00E-4FE7-84EA-281631A0241A}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{219EBAAF-C6EF-43E5-AE99-DD6C856D2EE0}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{941A5942-909C-4884-9400-147502B35C91}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{96548604-96A6-433C-8758-AB3366297C50}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{203C874E-8BD7-4DC6-AC21-44D610A90DB7}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{9EFF3A13-E2B9-43A9-8FC2-6CD05E3A6D72}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{65FCC7E9-77A7-4463-8134-AB1197CA23BC}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{9B4468AF-28E4-4D94-92D2-826C5C7F802D}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{4EFCEA72-0D39-4E64-92EF-A8A8BD74FE8F}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{BD91343E-BBFA-4DD1-87FF-A77C585F0456}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{D3801071-7BBD-4F9F-A0AE-F2A54CB3459D}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{F701BBB2-BF2D-48FE-A698-0CFF6854F5CC}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{BC45FF57-2FA9-47B9-91E8-0DFE119F04C2}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{1B767258-E735-4826-9FAC-C0287908DE15}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{B89A4F48-7043-471A-82C5-4D328C27B6F5}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{34078862-1F61-4B14-9E0A-B033C278B2DB}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">IPMC</Property>
				<Property Name="Exe_actXServerName" Type="Str">IPMC</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str">{6E0AB8FC-F1E0-4EAE-BCAD-4D0B2D8A905B}</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/我的电脑/other/NUAA圆角.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{510867DD-FF37-4F38-87D2-ED2E1542E0B8}</Property>
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
				<Property Name="DistPart[1].productID" Type="Str">{DA546982-6C74-4630-BC46-B7B8CB4D6A6F}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI LabVIEW运行引擎 2017 SP1 f1</Property>
				<Property Name="DistPart[1].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[0].productName" Type="Str">NI LabVIEW运行引擎 2017 SP1非英语语言支持</Property>
				<Property Name="DistPart[1].SoftDep[0].upgradeCode" Type="Str">{182AE811-85B6-4238-B67E-F19497CC186B}</Property>
				<Property Name="DistPart[1].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[1].productName" Type="Str">NI ActiveX容器</Property>
				<Property Name="DistPart[1].SoftDep[1].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[1].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[10].productName" Type="Str">NI mDNS Responder 17.0</Property>
				<Property Name="DistPart[1].SoftDep[10].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[1].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[11].productName" Type="Str">NI Deployment Framework 2018</Property>
				<Property Name="DistPart[1].SoftDep[11].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[1].SoftDep[12].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[12].productName" Type="Str">NI错误报告 2018</Property>
				<Property Name="DistPart[1].SoftDep[12].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[1].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[2].productName" Type="Str">数学核心库</Property>
				<Property Name="DistPart[1].SoftDep[2].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[1].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[3].productName" Type="Str">NI Logos 18.0</Property>
				<Property Name="DistPart[1].SoftDep[3].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[1].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[4].productName" Type="Str">NI TDM Streaming 18.0</Property>
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
				<Property Name="INST_productVersion" Type="Str">1.0.60</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">17008011</Property>
				<Property Name="MSI_arpCompany" Type="Str">NUAA IBSS</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{3DFD03DB-F3DC-4BBB-8E97-B3AA8FABD93B}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_licenseID" Type="Ref">/我的电脑/description.rtf</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{58DE01B1-85E2-4587-8731-826340020405}</Property>
				<Property Name="MSI_windowMessage" Type="Str">1、IPMC.exe  为主体程序，安装好运行环境后可以单独运行
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
			<Item Name="IPMC-Platform-Install-simple" Type="Installer">
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
				<Property Name="DistPart[1].productID" Type="Str">{DA546982-6C74-4630-BC46-B7B8CB4D6A6F}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI LabVIEW运行引擎 2017 SP1 f1</Property>
				<Property Name="DistPart[1].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[0].productName" Type="Str">NI LabVIEW运行引擎 2017 SP1非英语语言支持</Property>
				<Property Name="DistPart[1].SoftDep[0].upgradeCode" Type="Str">{182AE811-85B6-4238-B67E-F19497CC186B}</Property>
				<Property Name="DistPart[1].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[1].productName" Type="Str">NI ActiveX容器</Property>
				<Property Name="DistPart[1].SoftDep[1].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[1].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[10].productName" Type="Str">NI mDNS Responder 17.0</Property>
				<Property Name="DistPart[1].SoftDep[10].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[1].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[11].productName" Type="Str">NI Deployment Framework 2018</Property>
				<Property Name="DistPart[1].SoftDep[11].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[1].SoftDep[12].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[12].productName" Type="Str">NI错误报告 2018</Property>
				<Property Name="DistPart[1].SoftDep[12].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[1].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[2].productName" Type="Str">数学核心库</Property>
				<Property Name="DistPart[1].SoftDep[2].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[1].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[3].productName" Type="Str">NI Logos 18.0</Property>
				<Property Name="DistPart[1].SoftDep[3].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[1].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[4].productName" Type="Str">NI TDM Streaming 18.0</Property>
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
				<Property Name="INST_buildLocation" Type="Path">../builds/IPMC-Platform/IPMC-Platform-Install-simple</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">IPMC-Platform-Install-simple</Property>
				<Property Name="INST_defaultDir" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="INST_language" Type="Int">2052</Property>
				<Property Name="INST_productName" Type="Str">IPMC-Platform</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.60</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">17008011</Property>
				<Property Name="MSI_arpCompany" Type="Str">NUAA IBSS</Property>
				<Property Name="MSI_distID" Type="Str">{0053CC14-934C-4832-9F01-8E8CFB9D8F69}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_licenseID" Type="Ref">/我的电脑/description.rtf</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{CB524A89-12A7-40DE-9D65-D4F24B8CFF74}</Property>
				<Property Name="MSI_windowMessage" Type="Str">1、IPMC.exe  为主体程序，安装好运行环境后可以单独运行
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
