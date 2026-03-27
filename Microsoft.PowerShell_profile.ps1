Set-PSReadLineOption -EditMode Vi

Set-Alias vi nvim
Set-Alias vim nvim


function Invoke-Starship-TransientFunction
{
  &starship module character
}

Invoke-Expression (&starship init powershell)

Enable-TransientPrompt

Invoke-Expression (& { (zoxide init powershell | Out-String) })

mise activate pwsh | Out-String | Invoke-Expression

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

#f45873b3-b655-43a6-b217-97c00aa0db58 PowerToys CommandNotFound module

Import-Module -Name Microsoft.WinGet.CommandNotFound
#f45873b3-b655-43a6-b217-97c00aa0db58


. "$env:APPDATA\Zellij\zellij-tabula.plugin.ps1"
