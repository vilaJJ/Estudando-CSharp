; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Hello World"
#define MyAppVersion "1.0"
#define MyAppPublisher "Mandevilla"
#define MyAppURL "https://mandevilla.dev/"
#define MyAppExeName "HelloWorldApp.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FD93E886-E8A1-4159-806B-8519F4865E4C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\NSYS-DEV-05\Desktop\Estudos\CSharp-Projetos\HelloWorldApp\HelloWorldApp\bin\Release\LICENSE.txt
InfoBeforeFile=C:\Users\NSYS-DEV-05\Desktop\Estudos\CSharp-Projetos\HelloWorldApp\HelloWorldApp\bin\Release\INIT.txt
InfoAfterFile=C:\Users\NSYS-DEV-05\Desktop\Estudos\CSharp-Projetos\HelloWorldApp\HelloWorldApp\bin\Release\END.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\NSYS-DEV-05\Desktop\Estudos\CSharp-Projetos\HelloWorldApp\Instalador\Output
OutputBaseFilename=HelloWorldInstaller
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\NSYS-DEV-05\Desktop\Estudos\CSharp-Projetos\HelloWorldApp\HelloWorldApp\bin\Release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

