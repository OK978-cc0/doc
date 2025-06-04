$chromePath = "C:\Users\tt\Desktop\dist\test.exe"
$shortcutPath = "$env:C:\Users\tt\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Google Chrome.lnk"

Remove-Item "$env:APPDATA\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Google Chrome.lnk" -ErrorAction SilentlyContinue
Remove-Item "C:\Users\tt\Desktop\chrome.lnk" -ErrorAction SilentlyContinue
Remove-Item "C:\Users\Public\Desktop\chrome.lnk" -ErrorAction SilentlyContinue

$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $chromePath
$shortcut.IconLocation = "$chromePath, 0"
$shortcut.Save()

$desktopShortcut = "$env:C:\Users\tt\Desktop\Google Chrome.lnk"
$desktop = $shell.CreateShortcut($desktopShortcut)
$desktop.TargetPath = $chromePath
$desktop.IconLocation = "$chromePath, 0"
$desktop.Save()
