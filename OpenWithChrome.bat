@echo off
SET ps2Path=C:\Users\mdevries\AppData\Local\Google\Chrome\Application\chrome.exe

rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with chrome"         /t REG_SZ /v "" /d "Open with chrome"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with chrome"         /t REG_EXPAND_SZ /v "Icon" /d "%ps2Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with chrome\command" /t REG_SZ /v "" /d "%ps2Path% \"%%1\"" /f

rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with chrome"         /t REG_SZ /v "" /d "Open with chrome"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with chrome"         /t REG_EXPAND_SZ /v "Icon" /d "%ps2Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with chrome\command" /t REG_SZ /v "" /d "%ps2Path% \"%%1\"" /f
pause