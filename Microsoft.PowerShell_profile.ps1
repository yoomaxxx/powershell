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
