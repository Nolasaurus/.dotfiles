# Aliases
Set-Alias ll "Get-ChildItem -Force | Format-Wide -Property Name"
Set-Alias la "Get-ChildItem -Force"
Set-Alias gh "Get-History | Select-String"
Set-Alias g "git"
Set-Alias gs "git status"
Set-Alias gb "git branch"
Set-Alias -Name 'npp' -Value 'C:\Program Files\Notepad++\notepad++.exe'

# IP addresses
Set-Alias ip "curl http://icanhazip.com"
Set-Alias localip "hostname"

# Interactive shell settings
$HISTSIZE = 4096
$HISTFILESIZE = 2000
# Check the window size after each command (PowerShell does this automatically)

# `prompt`: PS's command prompt definition function.
# `$pwd`: Alias for `Get-Location`, shows current dir.
# `Get-Date`: Retrieves current time.
# ``n`: PS's newline character.
# `PS >`: User-defined prompt text.
function prompt {
    $time = Get-Date -Format "HH:mm"
    "$pwd`n$time PS > "
}

function ... { Set-Location ../.. }
function .... { Set-Location ../../.. }
function ..... { Set-Location ../../../.. }


# Compute file hashes - useful for checking successful downloads 
function md5    { Get-FileHash -Algorithm MD5 $args }
function sha1   { Get-FileHash -Algorithm SHA1 $args }
function sha256 { Get-FileHash -Algorithm SHA256 $args }

# Quick shortcut to start notepad
function n      { notepad $args }

function bye {
    `Get-History -Count 1KB |Export-CSV ~\PowerShell\history.csv`
    exit
}


function unzip ($file) {
    Write-Output("Extracting", $file, "to", $pwd)
    $fullFile = Get-ChildItem -Path $pwd -Filter .\cove.zip | ForEach-Object { $_.FullName }
    Expand-Archive -Path $fullFile -DestinationPath $pwd
}