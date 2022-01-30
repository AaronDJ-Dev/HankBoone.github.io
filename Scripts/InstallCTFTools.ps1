<# Make CTFTools Folder #>
mkdir "C:\Users\$([Environment]::UserName)\Documents\CTFTools\"
CLEAR

<# Make Installers Folder #>
mkdir "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\"
CLEAR

<# Make VMs Folder #>
mkdir "C:\Users\$([Environment]::UserName)\Documents\CTFTools\VMs\"
CLEAR

<# Download VMWare Kali VM #>
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'Kali VMWare','Downloading VMWare Kali VM',[system.windows.forms.tooltipicon]::None)
$source = 'https://kali.download/virtual-images/kali-2021.4a/kali-linux-2021.4a-vmware-amd64.7z'
$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\VMs\kali-linux-2021.4a-vmware-amd64.7z"
Start-BitsTransfer -Source $source -Destination $destination
CLEAR

<# Download Burp Suite Windows #>
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'Burp Suite','Downloading Burp Suite Windows Version',[system.windows.forms.tooltipicon]::None)
$source = 'https://github.com/HankBoone/HankBoone.github.io/tree/main/Installers/burpsuite_community_windows-x64_v2021_12_1.exe'
$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\burpsuite_community_windows-x64_v2021_12_1.exe"
Start-BitsTransfer -Source $source -Destination $destination
CLEAR

<# Download Metasploit Windows #>
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'Metasploit','Downloading Metasploit Windows Version',[system.windows.forms.tooltipicon]::None)
$source = 'https://github.com/HankBoone/HankBoone.github.io/tree/main/Installers/metasploitframework-latest.msi'
$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\metasploitframework-latest.msi"
Start-BitsTransfer -Source $source -Destination $destination
CLEAR

<# Download Wireshark Windows #>
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'Wireshark','Downloading Wireshark Windows Edition',[system.windows.forms.tooltipicon]::None)
$source = 'https://github.com/HankBoone/HankBoone.github.io/tree/main/Installers/Wireshark-win64-3.6.1.exe'
$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\Wireshark-win64-3.6.1.exe"
Start-BitsTransfer -Source $source -Destination $destination
CLEAR

<# Download NMAP Windows #>
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')nmap-7.92-setup.exe
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'Nmap','Downloading Nmap Windows Edition',[system.windows.forms.tooltipicon]::None)
$source = 'https://github.com/HankBoone/HankBoone.github.io/tree/main/Installers/nmap-7.92-setup.exe'
$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\nmap-7.92-setup.exe"
Start-BitsTransfer -Source $source -Destination $destination
CLEAR
