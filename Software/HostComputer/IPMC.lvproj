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
		<Item Name="sub VI" Type="Folder">
			<Item Name="调整采样率.vi" Type="VI" URL="../sub VI/调整采样率.vi"/>
			<Item Name="解析协议.vi" Type="VI" URL="../sub VI/解析协议.vi"/>
			<Item Name="浮点转字节数组.vi" Type="VI" URL="../sub VI/浮点转字节数组.vi"/>
			<Item Name="单精度浮点拆分.vi" Type="VI" URL="../sub VI/单精度浮点拆分.vi"/>
			<Item Name="自动搜寻串口.vi" Type="VI" URL="../sub VI/自动搜寻串口.vi"/>
			<Item Name="运行时菜单.rtm" Type="Document" URL="../Sub VI/运行时菜单.rtm"/>
			<Item Name="检查更新.vi" Type="VI" URL="../sub VI/检查更新.vi"/>
			<Item Name="下载文件.vi" Type="VI" URL="../sub VI/下载文件.vi"/>
			<Item Name="删除解压替换.vi" Type="VI" URL="../sub VI/删除解压替换.vi"/>
			<Item Name="读取本地版本号.vi" Type="VI" URL="../sub VI/读取本地版本号.vi"/>
			<Item Name="写入新版本号.vi" Type="VI" URL="../sub VI/写入新版本号.vi"/>
			<Item Name="调用main.vi" Type="VI" URL="../sub VI/调用main.vi"/>
			<Item Name="清除波形.vi" Type="VI" URL="../sub VI/清除波形.vi"/>
			<Item Name="XY图数据提取.vi" Type="VI" URL="../sub VI/XY图数据提取.vi"/>
			<Item Name="开关变量转字符串.vi" Type="VI" URL="../sub VI/开关变量转字符串.vi"/>
		</Item>
		<Item Name="ctrl" Type="Folder">
			<Item Name="XYGraph.ctl" Type="VI" URL="../ctrl/XYGraph.ctl"/>
			<Item Name="led.ctl" Type="VI" URL="../Ctrl/led.ctl"/>
			<Item Name="wave.ctl" Type="VI" URL="../ctrl/wave.ctl"/>
		</Item>
		<Item Name="doc" Type="Folder">
			<Item Name="hardware" Type="Folder">
				<Item Name="project" Type="Folder">
					<Item Name="IPMC_MACP.PcbDoc" Type="Document" URL="../doc/hardware/project/IPMC_MACP.PcbDoc"/>
					<Item Name="IPMC_MACP.SchDoc" Type="Document" URL="../doc/hardware/project/IPMC_MACP.SchDoc"/>
				</Item>
				<Item Name="bom.xlsx" Type="Document" URL="../doc/hardware/bom.xlsx"/>
				<Item Name="bottomlayer.pdf" Type="Document" URL="../doc/hardware/bottomlayer.pdf"/>
				<Item Name="schematic.pdf" Type="Document" URL="../doc/hardware/schematic.pdf"/>
				<Item Name="toplayer.pdf" Type="Document" URL="../doc/hardware/toplayer.pdf"/>
			</Item>
			<Item Name="software" Type="Folder">
				<Item Name="firmware" Type="Folder">
					<Item Name="IPMC.hex" Type="Document" URL="../doc/software/firmware/IPMC.hex"/>
				</Item>
				<Item Name="IPMC-UCOS.zip" Type="Document" URL="../doc/software/IPMC-UCOS.zip"/>
			</Item>
			<Item Name="description.rtf" Type="Document" URL="../doc/description.rtf"/>
			<Item Name="protocol.xlsx" Type="Document" URL="../doc/protocol.xlsx"/>
			<Item Name="license.rtf" Type="Document" URL="../doc/license.rtf"/>
			<Item Name="manual.html" Type="Document" URL="../doc/manual.html"/>
			<Item Name="sourcecode.html" Type="Document" URL="../doc/sourcecode.html"/>
		</Item>
		<Item Name="driver" Type="Folder">
			<Item Name="CH341SER.EXE" Type="Document" URL="../driver/CH341SER.EXE"/>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="launch.vi" Type="VI" URL="../launch.vi"/>
		<Item Name="version.ini" Type="Document" URL="../version.ini"/>
		<Item Name="launch.manifest" Type="Document" URL="../launch.manifest"/>
		<Item Name="download.exe" Type="Document" URL="../download.exe"/>
		<Item Name="ipmc.ico" Type="Document" URL="../ipmc.ico"/>
		<Item Name="nuaa.ico" Type="Document" URL="../nuaa.ico"/>
		<Item Name="stm32isp.exe" Type="Document" URL="../stm32isp.exe"/>
		<Item Name="auto.bat" Type="Document" URL="../../../auto.bat"/>
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
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
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
				<Property Name="Bld_supportedLanguage[0]" Type="Str">ChineseS</Property>
				<Property Name="Bld_supportedLanguage[1]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">2</Property>
				<Property Name="Bld_version.build" Type="Int">55</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">launch.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/IPMC-Platform/launch/launch.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/IPMC-Platform/launch/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{4CD79B02-4340-4354-BF04-52A64F78ABFD}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{3424160E-1FEC-4C45-BB60-747883E86E5A}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{07BB0590-5CF3-4A1E-810F-AF6E52436A8C}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{D7EA14BC-4568-4CD2-B93A-F770C03A7755}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{D95AECCE-33AC-4EFE-BE7D-A3CF45355D9C}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{BBE64BA5-3306-4C56-9E0B-F260C4D86ED5}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{B753BF63-1A93-4456-A9EC-5343B90A2417}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{10990856-AF25-48CB-807B-CC9871A38835}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{D3FE5E4F-59E3-4627-8BE7-6A6FA2CA2493}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{C8770077-2FF9-40DA-804B-AA45FF810BBD}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{FA919967-ECFF-4D00-9712-314D4394B999}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{ABA87EB2-73D6-44E2-B0F5-2CA3A632CE57}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{FD34AA82-461D-449D-ADCD-502F3C50709D}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{290FB2DF-2E1E-41D5-92B1-0B36787DF89A}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{AC94B92A-21C3-4460-86A3-417F5DB07316}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{A133D482-64C6-45A3-BE3D-3A228B3E7B46}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{925E5FBB-5708-4DF1-8A9A-53813CAFD6F7}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{E8F81E3B-67EC-43DA-8F7F-9CB5438CD7E6}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{66BCDEE8-7845-4BE0-ACEB-59852BCCE945}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{FECFCD65-4AF1-4EAC-953D-9D7427F89F18}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{21431413-94A7-4B02-B336-99F4302F5502}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{F0C04AAC-954C-4936-8EC3-6DAA8CCA2FF0}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{9FAEFC0B-D117-4476-A049-24C826B6D909}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{D1625978-7A37-4179-9F94-CB3AD8BF2DC6}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{5F1728AC-61EF-4A7E-A2FD-2E00B352008E}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{8C202F0A-B6F2-4551-B4F1-7183FC1A9D18}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{CE4D55BA-CE35-4E99-8BD3-C16E57A61784}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{318C32E7-7B66-4034-87AB-D1EC17F893C5}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{EF2EDC5E-431C-493B-9670-AD2F32D64C90}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{C392EE2A-8B3A-4BD3-91FF-DFB19700A3D8}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{811A957A-B048-4B16-8A2B-4F6C6905D84D}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">Launch</Property>
				<Property Name="Exe_actXServerName" Type="Str">Launch</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str">{F237908A-3A37-4B13-85AB-15FAC127BD3D}</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/我的电脑/ipmc.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{80754595-C333-4917-9886-B7F99D03CB83}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/launch.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/我的电脑/version.ini</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">NUAA</Property>
				<Property Name="TgtF_fileDescription" Type="Str">launch</Property>
				<Property Name="TgtF_internalName" Type="Str">launch</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2018 INHOWE</Property>
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
				<Property Name="Bld_version.build" Type="Int">107</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">IPMC.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/IPMC-Platform/NI_AB_PROJECTNAME/IPMC.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/IPMC-Platform/NI_AB_PROJECTNAME/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{58E3025E-69E4-4408-A126-64B47B668261}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{DB31582A-96B5-4170-B247-8DC6F51EC88D}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{D4B69078-02F3-42FE-A626-FA8A0AA72B31}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{7C27960C-61F7-400D-AF5F-A619A6C5D513}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{BECD844D-3896-4B94-AB40-5CA9573D94BF}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{74CA7676-9887-46A0-AC4F-FC4668AE93ED}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{5614017E-18D4-474E-A13B-29E314EAFCAC}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{1CF454FC-BC9B-4563-B065-81ED96CC1FE4}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{B087C411-01A2-45AC-ACCA-02CA46255551}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{5B254C66-E84E-4C42-8A55-1DFDE96C01C3}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{7B697EB5-2ADA-491F-A74D-6D159F064797}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{F8CE816F-EF17-49C9-B9C0-FD5783EA04B3}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{46F39D86-FA26-4FEB-A8EF-DC0AF9EC3C51}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{EC6CD93C-0C61-4150-B576-F8DA759319DD}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{8AFA69BE-D85C-47CF-9383-C289963A96A4}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{F858987D-B5BD-462B-9C2C-FB68068D90BB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{8AE50B11-B2E9-43EE-9923-357EEE360C25}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{EFCEB791-F05D-4984-B0A4-D0106A010C57}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{3F37BF55-8B05-4B2E-A72B-5E67E8F05A36}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{DD448968-A123-4847-8E23-9D6DFB454335}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{0B05FCF5-6DB0-4C96-98EE-7D113E15BB19}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{A0E35690-B97D-466B-A647-AFA4F751FC7D}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{66C2E79A-95FB-4FEB-B406-EF8F38E5ED13}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{577C892C-DCA7-4606-AE48-A03DA8F7E06F}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{4AEBC77F-7046-4402-940E-8C6036F5C10B}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{0C376560-4FD6-44B2-872C-1EB2A8CD49E5}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{D2741CCF-216F-4D4B-89B7-2444A9C40AC0}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{11485474-1D5E-4356-B631-91247656EB86}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{27556827-89A4-4C8F-AD76-B7E73566FCA5}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{62F74D4D-2238-4EE7-AD74-A1350F48D0E2}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{CE638372-0386-434C-A0C2-8185C9CA8470}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">IPMC</Property>
				<Property Name="Exe_actXServerName" Type="Str">IPMC</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str">{6E0AB8FC-F1E0-4EAE-BCAD-4D0B2D8A905B}</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/我的电脑/ipmc.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{9BA693A3-6A05-4680-A592-F21F4ADFD558}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NUAA</Property>
				<Property Name="TgtF_fileDescription" Type="Str">IPMC</Property>
				<Property Name="TgtF_internalName" Type="Str">IPMC</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2018 INHOWE</Property>
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
				<Property Name="Destination[1].name" Type="Str">doc</Property>
				<Property Name="Destination[1].parent" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Destination[1].tag" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].name" Type="Str">driver</Property>
				<Property Name="Destination[2].parent" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Destination[2].tag" Type="Str">{78D6F01E-4F38-47EB-9201-2AC065BE959D}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="Destination[3].name" Type="Str">hardware</Property>
				<Property Name="Destination[3].parent" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Destination[3].tag" Type="Str">{16ACF6BA-D1EB-4941-9708-157584ABA1C3}</Property>
				<Property Name="Destination[3].type" Type="Str">userFolder</Property>
				<Property Name="Destination[4].name" Type="Str">project</Property>
				<Property Name="Destination[4].parent" Type="Str">{16ACF6BA-D1EB-4941-9708-157584ABA1C3}</Property>
				<Property Name="Destination[4].tag" Type="Str">{AA5FD9CA-1929-4908-9D65-89CF82AE7501}</Property>
				<Property Name="Destination[4].type" Type="Str">userFolder</Property>
				<Property Name="Destination[5].name" Type="Str">software</Property>
				<Property Name="Destination[5].parent" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Destination[5].tag" Type="Str">{229767C4-C097-4665-AB42-F2343BC18550}</Property>
				<Property Name="Destination[5].type" Type="Str">userFolder</Property>
				<Property Name="Destination[6].name" Type="Str">firmware</Property>
				<Property Name="Destination[6].parent" Type="Str">{229767C4-C097-4665-AB42-F2343BC18550}</Property>
				<Property Name="Destination[6].tag" Type="Str">{1ECC0A96-C0D4-4D9B-9E1F-792A4E0775D3}</Property>
				<Property Name="Destination[6].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
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
				<Property Name="INST_includeError" Type="Bool">false</Property>
				<Property Name="INST_language" Type="Int">2052</Property>
				<Property Name="INST_productName" Type="Str">IPMC-Platform</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.71</Property>
				<Property Name="INST_readmeID" Type="Ref">/我的电脑/doc/description.rtf</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">17008011</Property>
				<Property Name="MSI_arpCompany" Type="Str">IBSS NUAA</Property>
				<Property Name="MSI_arpContact" Type="Str">江苏省南京市秦淮区御道街29号</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.nuaa.edu.cn</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{3DFD03DB-F3DC-4BBB-8E97-B3AA8FABD93B}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_licenseID" Type="Ref">/我的电脑/doc/license.rtf</Property>
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
				<Property Name="Source[0].File[0].attributes" Type="Int">516</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">IPMC.exe</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{73F965B0-56CD-4AB9-A0FB-D2E9DD2086B4}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">IPMC</Property>
				<Property Name="Source[0].tag" Type="Ref">/我的电脑/程序生成规范/IPMC</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[1].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[1].File[0].name" Type="Str">launch.exe</Property>
				<Property Name="Source[1].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[1].File[0].Shortcut[0].name" Type="Str">IPMC-Platform</Property>
				<Property Name="Source[1].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[1].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[1].File[0].tag" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="Source[1].FileCount" Type="Int">1</Property>
				<Property Name="Source[1].name" Type="Str">launch</Property>
				<Property Name="Source[1].tag" Type="Ref">/我的电脑/程序生成规范/launch</Property>
				<Property Name="Source[1].type" Type="Str">EXE</Property>
				<Property Name="Source[10].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[10].name" Type="Str">ipmc.ico</Property>
				<Property Name="Source[10].tag" Type="Ref">/我的电脑/ipmc.ico</Property>
				<Property Name="Source[10].type" Type="Str">File</Property>
				<Property Name="Source[11].dest" Type="Str">{16ACF6BA-D1EB-4941-9708-157584ABA1C3}</Property>
				<Property Name="Source[11].name" Type="Str">bom.xlsx</Property>
				<Property Name="Source[11].tag" Type="Ref">/我的电脑/doc/hardware/bom.xlsx</Property>
				<Property Name="Source[11].type" Type="Str">File</Property>
				<Property Name="Source[12].dest" Type="Str">{16ACF6BA-D1EB-4941-9708-157584ABA1C3}</Property>
				<Property Name="Source[12].name" Type="Str">bottomlayer.pdf</Property>
				<Property Name="Source[12].tag" Type="Ref">/我的电脑/doc/hardware/bottomlayer.pdf</Property>
				<Property Name="Source[12].type" Type="Str">File</Property>
				<Property Name="Source[13].dest" Type="Str">{16ACF6BA-D1EB-4941-9708-157584ABA1C3}</Property>
				<Property Name="Source[13].name" Type="Str">schematic.pdf</Property>
				<Property Name="Source[13].tag" Type="Ref">/我的电脑/doc/hardware/schematic.pdf</Property>
				<Property Name="Source[13].type" Type="Str">File</Property>
				<Property Name="Source[14].dest" Type="Str">{16ACF6BA-D1EB-4941-9708-157584ABA1C3}</Property>
				<Property Name="Source[14].name" Type="Str">toplayer.pdf</Property>
				<Property Name="Source[14].tag" Type="Ref">/我的电脑/doc/hardware/toplayer.pdf</Property>
				<Property Name="Source[14].type" Type="Str">File</Property>
				<Property Name="Source[15].dest" Type="Str">{AA5FD9CA-1929-4908-9D65-89CF82AE7501}</Property>
				<Property Name="Source[15].name" Type="Str">IPMC_MACP.PcbDoc</Property>
				<Property Name="Source[15].tag" Type="Ref">/我的电脑/doc/hardware/project/IPMC_MACP.PcbDoc</Property>
				<Property Name="Source[15].type" Type="Str">File</Property>
				<Property Name="Source[16].dest" Type="Str">{AA5FD9CA-1929-4908-9D65-89CF82AE7501}</Property>
				<Property Name="Source[16].name" Type="Str">IPMC_MACP.SchDoc</Property>
				<Property Name="Source[16].tag" Type="Ref">/我的电脑/doc/hardware/project/IPMC_MACP.SchDoc</Property>
				<Property Name="Source[16].type" Type="Str">File</Property>
				<Property Name="Source[17].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[17].name" Type="Str">stm32isp.exe</Property>
				<Property Name="Source[17].tag" Type="Ref">/我的电脑/stm32isp.exe</Property>
				<Property Name="Source[17].type" Type="Str">File</Property>
				<Property Name="Source[18].attributes" Type="Int">1</Property>
				<Property Name="Source[18].dest" Type="Str">{1ECC0A96-C0D4-4D9B-9E1F-792A4E0775D3}</Property>
				<Property Name="Source[18].name" Type="Str">IPMC.hex</Property>
				<Property Name="Source[18].tag" Type="Ref">/我的电脑/doc/software/firmware/IPMC.hex</Property>
				<Property Name="Source[18].type" Type="Str">File</Property>
				<Property Name="Source[19].dest" Type="Str">{229767C4-C097-4665-AB42-F2343BC18550}</Property>
				<Property Name="Source[19].name" Type="Str">IPMC-UCOS.zip</Property>
				<Property Name="Source[19].tag" Type="Ref">/我的电脑/doc/software/IPMC-UCOS.zip</Property>
				<Property Name="Source[19].type" Type="Str">File</Property>
				<Property Name="Source[2].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[2].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[2].File[0].name" Type="Str">launch.exe</Property>
				<Property Name="Source[2].File[0].tag" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="Source[2].name" Type="Str">version.ini</Property>
				<Property Name="Source[2].tag" Type="Ref">/我的电脑/version.ini</Property>
				<Property Name="Source[2].type" Type="Str">File</Property>
				<Property Name="Source[2].unlock" Type="Bool">true</Property>
				<Property Name="Source[20].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[20].name" Type="Str">sourcecode.html</Property>
				<Property Name="Source[20].tag" Type="Ref">/我的电脑/doc/sourcecode.html</Property>
				<Property Name="Source[20].type" Type="Str">File</Property>
				<Property Name="Source[3].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[3].name" Type="Str">download.exe</Property>
				<Property Name="Source[3].tag" Type="Ref">/我的电脑/download.exe</Property>
				<Property Name="Source[3].type" Type="Str">File</Property>
				<Property Name="Source[4].attributes" Type="Int">1</Property>
				<Property Name="Source[4].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[4].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[4].File[0].name" Type="Str">launch.exe</Property>
				<Property Name="Source[4].File[0].tag" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="Source[4].name" Type="Str">description.rtf</Property>
				<Property Name="Source[4].tag" Type="Ref">/我的电脑/doc/description.rtf</Property>
				<Property Name="Source[4].type" Type="Str">File</Property>
				<Property Name="Source[5].attributes" Type="Int">1</Property>
				<Property Name="Source[5].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[5].name" Type="Str">protocol.xlsx</Property>
				<Property Name="Source[5].tag" Type="Ref">/我的电脑/doc/protocol.xlsx</Property>
				<Property Name="Source[5].type" Type="Str">File</Property>
				<Property Name="Source[6].attributes" Type="Int">1</Property>
				<Property Name="Source[6].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[6].name" Type="Str">license.rtf</Property>
				<Property Name="Source[6].tag" Type="Ref">/我的电脑/doc/license.rtf</Property>
				<Property Name="Source[6].type" Type="Str">File</Property>
				<Property Name="Source[7].attributes" Type="Int">1</Property>
				<Property Name="Source[7].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[7].name" Type="Str">manual.html</Property>
				<Property Name="Source[7].tag" Type="Ref">/我的电脑/doc/manual.html</Property>
				<Property Name="Source[7].type" Type="Str">File</Property>
				<Property Name="Source[8].dest" Type="Str">{78D6F01E-4F38-47EB-9201-2AC065BE959D}</Property>
				<Property Name="Source[8].name" Type="Str">CH341SER.EXE</Property>
				<Property Name="Source[8].runEXE" Type="Bool">true</Property>
				<Property Name="Source[8].tag" Type="Ref">/我的电脑/driver/CH341SER.EXE</Property>
				<Property Name="Source[8].type" Type="Str">File</Property>
				<Property Name="Source[9].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[9].name" Type="Str">nuaa.ico</Property>
				<Property Name="Source[9].tag" Type="Ref">/我的电脑/nuaa.ico</Property>
				<Property Name="Source[9].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">21</Property>
			</Item>
			<Item Name="IPMC-Platform-Install-simple" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">IPMC-Platform</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">doc</Property>
				<Property Name="Destination[1].parent" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Destination[1].tag" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].name" Type="Str">driver</Property>
				<Property Name="Destination[2].parent" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Destination[2].tag" Type="Str">{78D6F01E-4F38-47EB-9201-2AC065BE959D}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="Destination[3].name" Type="Str">hardware</Property>
				<Property Name="Destination[3].parent" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Destination[3].tag" Type="Str">{8757CE4D-FAF1-45FC-98AC-515F3C8B27CA}</Property>
				<Property Name="Destination[3].type" Type="Str">userFolder</Property>
				<Property Name="Destination[4].name" Type="Str">project</Property>
				<Property Name="Destination[4].parent" Type="Str">{8757CE4D-FAF1-45FC-98AC-515F3C8B27CA}</Property>
				<Property Name="Destination[4].tag" Type="Str">{BC753057-8C70-412F-8D24-9731FE87E67B}</Property>
				<Property Name="Destination[4].type" Type="Str">userFolder</Property>
				<Property Name="Destination[5].name" Type="Str">software</Property>
				<Property Name="Destination[5].parent" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Destination[5].tag" Type="Str">{D90334F0-A5C8-422A-A153-DB16E9DEAEFB}</Property>
				<Property Name="Destination[5].type" Type="Str">userFolder</Property>
				<Property Name="Destination[6].name" Type="Str">firmware</Property>
				<Property Name="Destination[6].parent" Type="Str">{D90334F0-A5C8-422A-A153-DB16E9DEAEFB}</Property>
				<Property Name="Destination[6].tag" Type="Str">{81B071A1-E011-4D00-A814-CC6B48C3B64B}</Property>
				<Property Name="Destination[6].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/IPMC-Platform/IPMC-Platform-Install-simple</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">IPMC-Platform-Install-simple</Property>
				<Property Name="INST_defaultDir" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="INST_includeError" Type="Bool">false</Property>
				<Property Name="INST_language" Type="Int">2052</Property>
				<Property Name="INST_productName" Type="Str">IPMC-Platform</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.95</Property>
				<Property Name="INST_readmeID" Type="Ref">/我的电脑/doc/description.rtf</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">17008011</Property>
				<Property Name="MSI_arpCompany" Type="Str">IBSS NUAA</Property>
				<Property Name="MSI_arpContact" Type="Str">江苏省南京市秦淮区御道街29号</Property>
				<Property Name="MSI_arpURL" Type="Str">http://www.nuaa.edu.cn</Property>
				<Property Name="MSI_distID" Type="Str">{737D738F-1934-4CCA-9D7A-AC414AC6127C}</Property>
				<Property Name="MSI_licenseID" Type="Ref">/我的电脑/doc/license.rtf</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{F4933773-3E58-47CA-A2F7-B04E31497C8D}</Property>
				<Property Name="MSI_windowMessage" Type="Str">1、IPMC.exe  为主体程序，安装好运行环境后可以单独运行
2、launch.exe  为更新检测程序，完成IPMC.exe的自动更新
3、GitHub连接太慢时不建议运行launch.exe</Property>
				<Property Name="MSI_windowTitle" Type="Str">IPMC-Platform</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[0].File[0].attributes" Type="Int">516</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">IPMC.exe</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{73F965B0-56CD-4AB9-A0FB-D2E9DD2086B4}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">IPMC</Property>
				<Property Name="Source[0].tag" Type="Ref">/我的电脑/程序生成规范/IPMC</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[1].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[1].File[0].name" Type="Str">launch.exe</Property>
				<Property Name="Source[1].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[1].File[0].Shortcut[0].name" Type="Str">IPMC-Platform</Property>
				<Property Name="Source[1].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[1].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[1].File[0].tag" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="Source[1].FileCount" Type="Int">1</Property>
				<Property Name="Source[1].name" Type="Str">launch</Property>
				<Property Name="Source[1].tag" Type="Ref">/我的电脑/程序生成规范/launch</Property>
				<Property Name="Source[1].type" Type="Str">EXE</Property>
				<Property Name="Source[10].dest" Type="Str">{78D6F01E-4F38-47EB-9201-2AC065BE959D}</Property>
				<Property Name="Source[10].name" Type="Str">CH341SER.EXE</Property>
				<Property Name="Source[10].tag" Type="Ref">/我的电脑/driver/CH341SER.EXE</Property>
				<Property Name="Source[10].type" Type="Str">File</Property>
				<Property Name="Source[11].dest" Type="Str">{8757CE4D-FAF1-45FC-98AC-515F3C8B27CA}</Property>
				<Property Name="Source[11].name" Type="Str">bom.xlsx</Property>
				<Property Name="Source[11].tag" Type="Ref">/我的电脑/doc/hardware/bom.xlsx</Property>
				<Property Name="Source[11].type" Type="Str">File</Property>
				<Property Name="Source[12].dest" Type="Str">{8757CE4D-FAF1-45FC-98AC-515F3C8B27CA}</Property>
				<Property Name="Source[12].name" Type="Str">bottomlayer.pdf</Property>
				<Property Name="Source[12].tag" Type="Ref">/我的电脑/doc/hardware/bottomlayer.pdf</Property>
				<Property Name="Source[12].type" Type="Str">File</Property>
				<Property Name="Source[13].dest" Type="Str">{8757CE4D-FAF1-45FC-98AC-515F3C8B27CA}</Property>
				<Property Name="Source[13].name" Type="Str">schematic.pdf</Property>
				<Property Name="Source[13].tag" Type="Ref">/我的电脑/doc/hardware/schematic.pdf</Property>
				<Property Name="Source[13].type" Type="Str">File</Property>
				<Property Name="Source[14].dest" Type="Str">{8757CE4D-FAF1-45FC-98AC-515F3C8B27CA}</Property>
				<Property Name="Source[14].name" Type="Str">toplayer.pdf</Property>
				<Property Name="Source[14].tag" Type="Ref">/我的电脑/doc/hardware/toplayer.pdf</Property>
				<Property Name="Source[14].type" Type="Str">File</Property>
				<Property Name="Source[15].dest" Type="Str">{BC753057-8C70-412F-8D24-9731FE87E67B}</Property>
				<Property Name="Source[15].name" Type="Str">IPMC_MACP.PcbDoc</Property>
				<Property Name="Source[15].tag" Type="Ref">/我的电脑/doc/hardware/project/IPMC_MACP.PcbDoc</Property>
				<Property Name="Source[15].type" Type="Str">File</Property>
				<Property Name="Source[16].dest" Type="Str">{BC753057-8C70-412F-8D24-9731FE87E67B}</Property>
				<Property Name="Source[16].name" Type="Str">IPMC_MACP.SchDoc</Property>
				<Property Name="Source[16].tag" Type="Ref">/我的电脑/doc/hardware/project/IPMC_MACP.SchDoc</Property>
				<Property Name="Source[16].type" Type="Str">File</Property>
				<Property Name="Source[17].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[17].name" Type="Str">stm32isp.exe</Property>
				<Property Name="Source[17].tag" Type="Ref">/我的电脑/stm32isp.exe</Property>
				<Property Name="Source[17].type" Type="Str">File</Property>
				<Property Name="Source[18].attributes" Type="Int">1</Property>
				<Property Name="Source[18].dest" Type="Str">{81B071A1-E011-4D00-A814-CC6B48C3B64B}</Property>
				<Property Name="Source[18].name" Type="Str">IPMC.hex</Property>
				<Property Name="Source[18].tag" Type="Ref">/我的电脑/doc/software/firmware/IPMC.hex</Property>
				<Property Name="Source[18].type" Type="Str">File</Property>
				<Property Name="Source[19].dest" Type="Str">{D90334F0-A5C8-422A-A153-DB16E9DEAEFB}</Property>
				<Property Name="Source[19].name" Type="Str">IPMC-UCOS.zip</Property>
				<Property Name="Source[19].tag" Type="Ref">/我的电脑/doc/software/IPMC-UCOS.zip</Property>
				<Property Name="Source[19].type" Type="Str">File</Property>
				<Property Name="Source[2].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[2].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[2].File[0].name" Type="Str">launch.exe</Property>
				<Property Name="Source[2].File[0].tag" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="Source[2].name" Type="Str">version.ini</Property>
				<Property Name="Source[2].tag" Type="Ref">/我的电脑/version.ini</Property>
				<Property Name="Source[2].type" Type="Str">File</Property>
				<Property Name="Source[2].unlock" Type="Bool">true</Property>
				<Property Name="Source[20].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[20].name" Type="Str">sourcecode.html</Property>
				<Property Name="Source[20].tag" Type="Ref">/我的电脑/doc/sourcecode.html</Property>
				<Property Name="Source[20].type" Type="Str">File</Property>
				<Property Name="Source[3].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[3].name" Type="Str">download.exe</Property>
				<Property Name="Source[3].tag" Type="Ref">/我的电脑/download.exe</Property>
				<Property Name="Source[3].type" Type="Str">File</Property>
				<Property Name="Source[4].attributes" Type="Int">1</Property>
				<Property Name="Source[4].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[4].File[0].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[4].File[0].name" Type="Str">launch.exe</Property>
				<Property Name="Source[4].File[0].tag" Type="Str">{2C86AE60-F264-48A1-BB6F-718E2296279C}</Property>
				<Property Name="Source[4].name" Type="Str">description.rtf</Property>
				<Property Name="Source[4].tag" Type="Ref">/我的电脑/doc/description.rtf</Property>
				<Property Name="Source[4].type" Type="Str">File</Property>
				<Property Name="Source[5].attributes" Type="Int">1</Property>
				<Property Name="Source[5].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[5].name" Type="Str">protocol.xlsx</Property>
				<Property Name="Source[5].tag" Type="Ref">/我的电脑/doc/protocol.xlsx</Property>
				<Property Name="Source[5].type" Type="Str">File</Property>
				<Property Name="Source[6].attributes" Type="Int">1</Property>
				<Property Name="Source[6].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[6].name" Type="Str">license.rtf</Property>
				<Property Name="Source[6].tag" Type="Ref">/我的电脑/doc/license.rtf</Property>
				<Property Name="Source[6].type" Type="Str">File</Property>
				<Property Name="Source[7].dest" Type="Str">{CE0576DD-B701-42E7-A50A-A76C026185CB}</Property>
				<Property Name="Source[7].name" Type="Str">manual.html</Property>
				<Property Name="Source[7].tag" Type="Ref">/我的电脑/doc/manual.html</Property>
				<Property Name="Source[7].type" Type="Str">File</Property>
				<Property Name="Source[8].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[8].name" Type="Str">nuaa.ico</Property>
				<Property Name="Source[8].tag" Type="Ref">/我的电脑/nuaa.ico</Property>
				<Property Name="Source[8].type" Type="Str">File</Property>
				<Property Name="Source[9].dest" Type="Str">{BAAA530A-532E-4D52-86A1-7A340E9FD0F2}</Property>
				<Property Name="Source[9].name" Type="Str">ipmc.ico</Property>
				<Property Name="Source[9].tag" Type="Ref">/我的电脑/ipmc.ico</Property>
				<Property Name="Source[9].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">21</Property>
			</Item>
		</Item>
	</Item>
</Project>
