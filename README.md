# OhMyPosh-WoW-Theme
## Introduction
**Perfect display effect**
![image](https://github.com/user-attachments/assets/e96f04ad-9520-4523-a713-fba60b34bc8c)

## Highlight
- Lighten the display color of system information (memory).
- Fun and concise, displaying only useful information.

## Theme
### Windows Terminal
- Virtual environment not activated, non-root permissions
![image](https://github.com/user-attachments/assets/608cabdc-96ab-423d-8696-16e1965134f2)
- Virtual environment activated, non-root permissions
![image](https://github.com/user-attachments/assets/419b89b4-87ad-4f0c-b161-3de67e81c4dd)
- Virtual environment not activated, root permissions (The two arrows represent root permissions)
![image](https://github.com/user-attachments/assets/afab38e0-4bc2-44d2-913c-e2330f802039)
- Virtual environment activated, root permissions (The Python icon turns dark purple)
![image](https://github.com/user-attachments/assets/14690c75-6d6b-4dc3-8c22-15b721e3a96e)

### VS Code
Perfectly adapted to the VS Code terminal.
![image](https://github.com/user-attachments/assets/7d3b1dea-8693-4b57-9693-e7eb791ba683)

## installation
**Tools used:**
- [eza](https://github.com/eza-community/eza?tab=readme-ov-file)
- [Oh My Posh](https://github.com/JanDeDobbeleer/oh-my-posh)

**Font:**
- [Nerd Fonts](https://www.nerdfonts.com/)

- ### Windows Terminal installation
The Windows 10 system does not come with a built-in Terminal, but you can install Windows Terminal from the Microsoft Store.

- ### Font installation
Download and install MesloLGM Nerd Font and CaskaydiaCove Nerd Font [Font Download](https://www.nerdfonts.com/).

- ### OhMyPosh installation
Open Git Bash or PowerShell in Windows Terminal and execute the following command:
```winget install JanDeDobbeleer.OhMyPosh```

**For Git Bash:**
Add the following commands to the .bash_profile (~/wow.omp.json is the path of your theme file)
```eval "$(oh-my-posh --init --shell bash --config ~/wow.omp.json)" ```

**For PowerShell:**
Execute the following command in PowerShell to open or create a configuration file
```notepad $PROFILE```
Add the following command to the your configuration file (~/wow.omp.json is the path of your theme file)
```oh-my-posh init pwsh --config "$env:C:\Users\yt\wow.omp.json" | Invoke-Expression```

- ### eza installation
For windows, run the command:
```winget install eza-community.eza```
See [installation instructions](https://github.com/eza-community/eza?tab=readme-ov-file) for other OS.

**Replace the original ls command (Git Bash)**
Add the following command to the .bash_profile
```
alias ls='eza --icons -a'
export EZA_CONFIG_DIR="C:/Users/yt/.config/eza"
```
**Replace the original ls command (PowerShell)**
Run the command:
```notepad $PROFILE```
Add the following command to the your configuration file (~/wow.omp.json is the path of your theme file)
```
if (Test-Path Alias:ls) {
    Remove-Item -Path Alias:ls -Force
}
function Invoke-Eza {
    eza.exe --icons -a @args
}
Set-Alias -Name ls -Value Invoke-Eza
$env:EZA_CONFIG_DIR = "$env:USERPROFILE\.config\eza"```
```
- ### VS Code Setting
For the VS Code terminal, please use the CaskaydiaCove Nerd Font instead of other Nerd Fonts. In my tests, using other Nerd Fonts may cause issues with missing icons or layout misalignment in the VS Code terminal, possibly due to VS Code's renderer.

## Common bug fixes
### Font garbling or missing icons
Please install and set up [Nerd Fonts](https://www.nerdfonts.com/). For VS Code terminal, please use CaskaydiaCove Nerd Font.

### The custom theme displays correctly in Windows Terminal, but the layout is misaligned in the VS Code terminal.
Disable automatic activation of Conda virtual environments.
Add the following command to the .condarc file:
```
auto_activate_base: false
```

### Git Bash experiences screen flickering when pressing backspace in Windows Terminal.
Add the line set bell-style none to ~/.inputrc (create the file if it doesn't exist).

### Font background turns black after deleting text in PowerShell
![image](https://github.com/user-attachments/assets/f14232cc-47a3-452d-b144-6364d8978869)
Use this command to update PSReadline to solve the problem.
```Update-Module PSReadline```

