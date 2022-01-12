#define MyAppName "Cantara"
#define MyAppOutputName "cantara"
#define MyAppVersion "2.0 RC"
#define MyAppPublisher "Jan Martin Reckel"
#define MyAppURL "https://github.com/reckel-jm/cantara"
#define MyAppExeName "cantara.exe"
#define MyInstallerSuffix "_setup_win64"
#define ReleaseDir "release\"

[Setup]
AppName=Cantara
AppVersion=2.0 RC
DefaultDirName={pf}\{#MyAppName}
Compression=lzma2/ultra64
InternalCompressLevel=ultra
SolidCompression=yes
CompressionThreads=2
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
OutputBaseFilename={#MyAppOutputName}{#MyAppVersion}{#MyInstallerSuffix}


[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"

[Files]
Source: "{#ReleaseDir}cantara.exe"; DestDir: "{app}"; DestName: "{#MyAppExeName}"; Flags: ignoreversion;
Source: "{#ReleaseDir}languages\*.mo"; DestDir: "{app}\languages"; Flags: ignoreversion;
Source: "{#ReleaseDir}Cantara.ico"; DestDir: "{app}"; DestName: "Cantara.ico"; Flags: ignoreversion;

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Comment: "Cantara"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Comment: "Cantara"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent