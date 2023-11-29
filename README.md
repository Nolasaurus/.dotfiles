
###### .dotfiles

# Install
1. Clone dotfiles repo
2. Execute install script
3. Source the bash config / install 


## Bash
### Using SSH 
(requires an SSH key in [Github > Settings > Profile > SSH and GPG keys](https://github.com/settings/keys)):

   ```bash
   git clone git@github.com:Nolasaurus/.dotfiles
   bash ~/.dotfiles/install.sh
   source ~/.bashrc
   ```

    
### Using HTTPS:
   ```bash
   git clone https://github.com/Nolasaurus/.dotfiles
   bash ~/.dotfiles/install.sh
   source ~/.bashrc
   ```

## PowerShell
```powershell
git clone https://github.com/Nolasaurus/.dotfiles
& ".\.dotfiles\powershell\install.ps1"
. $PROFILE
```
