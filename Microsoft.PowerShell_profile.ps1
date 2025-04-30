oh-my-posh init pwsh --config "$env:C:\Users\yt\wow.omp.json" | Invoke-Expression
# Remove the default ls alias
if (Test-Path Alias:ls) {
    Remove-Item -Path Alias:ls -Force
}

# Define a function that calls eza.exe with default arguments
function Invoke-Eza {
    eza.exe --icons -a @args
}

# Set ls alias to a custom function
Set-Alias -Name ls -Value Invoke-Eza

$env:EZA_CONFIG_DIR = "$env:USERPROFILE\.config\eza"