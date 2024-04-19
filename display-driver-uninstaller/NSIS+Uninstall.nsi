; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Display Driver Uninstaller"
!define PRODUCT_VERSION "18.0.7.6"
!define PRODUCT_PUBLISHER "Wagnardsoft"
!define PRODUCT_WEB_SITE "https://www.wagnardsoft.com"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\Display Driver Uninstaller.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "Display Driver Uninstaller\Resources\DDU.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "Licence.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\Display Driver Uninstaller.exe"
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\Readme.txt"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6_setup.exe"
InstallDir "$PROGRAMFILES\Display Driver Uninstaller"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Display Driver Uninstaller.exe"
  CreateDirectory "$SMPROGRAMS\Display Driver Uninstaller"
  CreateShortCut "$SMPROGRAMS\Display Driver Uninstaller\Display Driver Uninstaller.lnk" "$INSTDIR\Display Driver Uninstaller.exe"
  CreateShortCut "$DESKTOP\Display Driver Uninstaller.lnk" "$INSTDIR\Display Driver Uninstaller.exe"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Display Driver Uninstaller.pdb"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Issues and solutions.txt"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Licence.txt"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Readme.txt"
  SetOutPath "$INSTDIR\Settings\AMD"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\AMD\classroot.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\AMD\clsidleftover.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\AMD\driverfiles.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\AMD\driverfilesKMAFD.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\AMD\driverfilesKMPFD.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\AMD\driverfilesKMPFD.cfg.bak"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\AMD\interface.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\AMD\packages.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\AMD\services.cfg"
  SetOutPath "$INSTDIR\Settings\INTEL"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\INTEL\classroot.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\INTEL\clsidleftover.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\INTEL\driverfiles.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\INTEL\interface.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\INTEL\packages.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\INTEL\services.cfg"
  SetOutPath "$INSTDIR\Settings\Languages"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Arabic.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Bulgarian.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Chinese (Simplified).xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Chinese (Traditional).xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Czech.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Danish.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Dutch.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\English.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Finnish.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\French.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\German.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Greek.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Hebrew.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Hungarian.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Italian.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Japanese.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Korean.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Latvian.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Macedonian (Latin).xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Persian.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Polish.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Portuguese.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\PortugueseBrazil.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Russian.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Serbian (Cyrilic).xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Serbian (Latin).xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Slovak.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Slovenian.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Spanish (Spain).xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Spanish.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Swedish.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Thai.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Turkish.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\Ukrainian.xml"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\Languages\_For translators - ReadMe.txt"
  SetOutPath "$INSTDIR\Settings\NVIDIA"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\classroot.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\clsidleftover.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\clsidleftoverGFE.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\clsidleftoverNVB.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\driverfiles.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\gfedriverfiles.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\gfedriverfiles.cfg.bak"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\gfeservice.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\interface.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\interfaceGFE.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\nvbdriverfiles.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\nvbservice.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\packages.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\NVIDIA\services.cfg"
  SetOutPath "$INSTDIR\Settings\REALTEK"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\REALTEK\classroot.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\REALTEK\clsidleftover.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\REALTEK\driverfiles.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\REALTEK\packages.cfg"
  File "..\..\..\..\..\..\Desktop\DDU\DDU v18.0.7.6\Settings\REALTEK\services.cfg"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\Display Driver Uninstaller\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Display Driver Uninstaller\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\Display Driver Uninstaller.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Display Driver Uninstaller.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\Settings\REALTEK\services.cfg"
  Delete "$INSTDIR\Settings\REALTEK\packages.cfg"
  Delete "$INSTDIR\Settings\REALTEK\driverfiles.cfg"
  Delete "$INSTDIR\Settings\REALTEK\clsidleftover.cfg"
  Delete "$INSTDIR\Settings\REALTEK\classroot.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\services.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\packages.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\nvbservice.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\nvbdriverfiles.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\interfaceGFE.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\interface.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\gfeservice.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\gfedriverfiles.cfg.bak"
  Delete "$INSTDIR\Settings\NVIDIA\gfedriverfiles.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\driverfiles.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\clsidleftoverGFE.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\clsidleftoverNVB.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\clsidleftover.cfg"
  Delete "$INSTDIR\Settings\NVIDIA\classroot.cfg"
  Delete "$INSTDIR\Settings\Languages\_For translators - ReadMe.txt"
  Delete "$INSTDIR\Settings\Languages\Ukrainian.xml"
  Delete "$INSTDIR\Settings\Languages\Turkish.xml"
  Delete "$INSTDIR\Settings\Languages\Thai.xml"
  Delete "$INSTDIR\Settings\Languages\Swedish.xml"
  Delete "$INSTDIR\Settings\Languages\Spanish.xml"
  Delete "$INSTDIR\Settings\Languages\Spanish (Spain).xml"
  Delete "$INSTDIR\Settings\Languages\Slovenian.xml"
  Delete "$INSTDIR\Settings\Languages\Slovak.xml"
  Delete "$INSTDIR\Settings\Languages\Serbian (Latin).xml"
  Delete "$INSTDIR\Settings\Languages\Serbian (Cyrilic).xml"
  Delete "$INSTDIR\Settings\Languages\Russian.xml"
  Delete "$INSTDIR\Settings\Languages\PortugueseBrazil.xml"
  Delete "$INSTDIR\Settings\Languages\Portuguese.xml"
  Delete "$INSTDIR\Settings\Languages\Polish.xml"
  Delete "$INSTDIR\Settings\Languages\Persian.xml"
  Delete "$INSTDIR\Settings\Languages\Macedonian (Latin).xml"
  Delete "$INSTDIR\Settings\Languages\Latvian.xml"
  Delete "$INSTDIR\Settings\Languages\Korean.xml"
  Delete "$INSTDIR\Settings\Languages\Japanese.xml"
  Delete "$INSTDIR\Settings\Languages\Italian.xml"
  Delete "$INSTDIR\Settings\Languages\Hungarian.xml"
  Delete "$INSTDIR\Settings\Languages\Hebrew.xml"
  Delete "$INSTDIR\Settings\Languages\Greek.xml"
  Delete "$INSTDIR\Settings\Languages\German.xml"
  Delete "$INSTDIR\Settings\Languages\French.xml"
  Delete "$INSTDIR\Settings\Languages\Finnish.xml"
  Delete "$INSTDIR\Settings\Languages\English.xml"
  Delete "$INSTDIR\Settings\Languages\Dutch.xml"
  Delete "$INSTDIR\Settings\Languages\Danish.xml"
  Delete "$INSTDIR\Settings\Languages\Czech.xml"
  Delete "$INSTDIR\Settings\Languages\Chinese (Traditional).xml"
  Delete "$INSTDIR\Settings\Languages\Chinese (Simplified).xml"
  Delete "$INSTDIR\Settings\Languages\Bulgarian.xml"
  Delete "$INSTDIR\Settings\Languages\Arabic.xml"
  Delete "$INSTDIR\Settings\INTEL\services.cfg"
  Delete "$INSTDIR\Settings\INTEL\packages.cfg"
  Delete "$INSTDIR\Settings\INTEL\interface.cfg"
  Delete "$INSTDIR\Settings\INTEL\driverfiles.cfg"
  Delete "$INSTDIR\Settings\INTEL\clsidleftover.cfg"
  Delete "$INSTDIR\Settings\INTEL\classroot.cfg"
  Delete "$INSTDIR\Settings\AMD\services.cfg"
  Delete "$INSTDIR\Settings\AMD\packages.cfg"
  Delete "$INSTDIR\Settings\AMD\interface.cfg"
  Delete "$INSTDIR\Settings\AMD\driverfilesKMPFD.cfg.bak"
  Delete "$INSTDIR\Settings\AMD\driverfilesKMPFD.cfg"
  Delete "$INSTDIR\Settings\AMD\driverfilesKMAFD.cfg"
  Delete "$INSTDIR\Settings\AMD\driverfiles.cfg"
  Delete "$INSTDIR\Settings\AMD\clsidleftover.cfg"
  Delete "$INSTDIR\Settings\AMD\classroot.cfg"
  Delete "$INSTDIR\Readme.txt"
  Delete "$INSTDIR\Licence.txt"
  Delete "$INSTDIR\Issues and solutions.txt"
  Delete "$INSTDIR\Display Driver Uninstaller.pdb"
  Delete "$INSTDIR\Display Driver Uninstaller.exe"

  Delete "$SMPROGRAMS\Display Driver Uninstaller\Uninstall.lnk"
  Delete "$SMPROGRAMS\Display Driver Uninstaller\Website.lnk"
  Delete "$DESKTOP\Display Driver Uninstaller.lnk"
  Delete "$SMPROGRAMS\Display Driver Uninstaller\Display Driver Uninstaller.lnk"

  RMDir "$SMPROGRAMS\Display Driver Uninstaller"
  RMDir "$INSTDIR\Settings\REALTEK"
  RMDir "$INSTDIR\Settings\NVIDIA"
  RMDir "$INSTDIR\Settings\Languages"
  RMDir "$INSTDIR\Settings\INTEL"
  RMDir "$INSTDIR\Settings\AMD"
  RMDir "$INSTDIR\Settings"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd