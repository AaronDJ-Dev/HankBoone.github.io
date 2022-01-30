<# Make CTFTools Folder #>
mkdir "C:\Users\$([Environment]::UserName)\Documents\CTFTools\"
Clear-Host

<# Make Installers Folder #>
mkdir "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\"
Clear-Host

<# Make VMs Folder #>
mkdir "C:\Users\$([Environment]::UserName)\Documents\CTFTools\VMs\"
Clear-Host

     $title = "ChaosWraith CTF Tools Downloader"
     $message = "Please select resources for download!"
     $A = New-Object System.Management.Automation.Host.ChoiceDescription "&All", "All"
     $B = New-Object System.Management.Automation.Host.ChoiceDescription "&Kali VMWare", "Download Kali VMWare"
     $C = New-Object System.Management.Automation.Host.ChoiceDescription "&Burp Suite", "Download Burp Suite"
     $D = New-Object System.Management.Automation.Host.ChoiceDescription "&Metasploit", "Download Metasploit"
     $E = New-Object System.Management.Automation.Host.ChoiceDescription "&Wireshark", "Download Wireshark"
     $F = New-Object System.Management.Automation.Host.ChoiceDescription "&Nmap", "Download Nmap"
     $options = [System.Management.Automation.Host.ChoiceDescription[]]($A, $B, $C, $D, $E, $F)
     $download=$host.ui.PromptForChoice($title, $message, $options, 0)



     switch ($download)
		 {
             0 {
				$message = "Kali VMWare Downloaded!"
                 <# Download VMWare Kali VM #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Kali VMWare','Downloading VMWare Kali VM',[system.windows.forms.tooltipicon]::None)
				$source = 'https://kali.download/virtual-images/kali-2021.4a/kali-linux-2021.4a-vmware-amd64.7z'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\VMs\kali-linux-2021.4a-vmware-amd64.7z"
				Start-BitsTransfer -Source $source -Destination $destination -Description "Downloading Kali VMWare" -DisplayName "Kali VMWare"
                Write-Output $message
				Clear-Host

                $message = "Burp Suite Downloaded!"
				<# Download Burp Suite Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Burp Suite','Downloading Burp Suite Windows Version',[system.windows.forms.tooltipicon]::None)
				$source = 'https://raw.githubusercontent.com/HankBoone/HankBoone.github.io/main/Installers/burpsuite_community_windows-x64_v2021_12_1.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\burpsuite_community_windows-x64_v2021_12_1.exe"
				Invoke-WebRequest -Uri $source -OutFile $destination
                Write-Output $message

                $message = "Metasploit Downloaded!"
				<# Download Metasploit Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Metasploit','Downloading Metasploit Windows Version',[system.windows.forms.tooltipicon]::None)
				$source = 'https://raw.githubusercontent.com/HankBoone/HankBoone.github.io/main/Installers/metasploitframework-latest.msi'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\metasploitframework-latest.msi"
				Invoke-WebRequest -Uri $source -OutFile $destination
                Write-Output $message
				Clear-Host

                $message = "Wireshark Downloaded!"
				<# Download Wireshark Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Wireshark','Downloading Wireshark Windows Edition',[system.windows.forms.tooltipicon]::None)
				$source = 'https://raw.githubusercontent.com/HankBoone/HankBoone.github.io/main/Installers/Wireshark-win64-3.6.1.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\Wireshark-win64-3.6.1.exe"
				Invoke-WebRequest -Uri $source -OutFile $destination
                Write-Output $message
				Clear-Host

                $message = "Nmap Downloaded!"
				<# Download NMAP Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Nmap','Downloading Nmap Windows Edition',[system.windows.forms.tooltipicon]::None)
				$source = 'https://raw.githubusercontent.com/HankBoone/HankBoone.github.io/main/Installers/nmap-7.92-setup.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\nmap-7.92-setup.exe"
				Invoke-WebRequest -Uri $source -OutFile $destination
				Clear-Host
                Write-Output $message
				Invoke-Item "C:\Users\$([Environment]::UserName)\Documents\CTFTools"
            }
             1 {
                $message = "Kali VMWare Downloaded!"
				<# Download VMWare Kali VM #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Kali VMWare','Downloading VMWare Kali VM',[system.windows.forms.tooltipicon]::None)
				$source = 'https://kali.download/virtual-images/kali-2021.4a/kali-linux-2021.4a-vmware-amd64.7z'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\VMs\kali-linux-2021.4a-vmware-amd64.7z"
				Start-BitsTransfer -Source $source -Destination $destination -Description "Downloading Kali VMWare" -DisplayName "Kali VMWare"
				Clear-Host
				Invoke-Item "C:\Users\$([Environment]::UserName)\Documents\CTFTools"
             }
            2 {
                $message = "Burp Suite Downloaded!"
				<# Download VMWare Kali VM #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Burp Suite','Downloading Burp Suite Windows Version',[system.windows.forms.tooltipicon]::None)
				$source = 'https://raw.githubusercontent.com/HankBoone/HankBoone.github.io/main/Installers/burpsuite_community_windows-x64_v2021_12_1.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\burpsuite_community_windows-x64_v2021_12_1.exe"
				Invoke-WebRequest -Uri $source -OutFile $destination
				Clear-Host
				Invoke-Item "C:\Users\$([Environment]::UserName)\Documents\CTFTools"
            }
            3 {
                $message = "Metasploit Downloaded!"
                <# Download Metasploit Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Metasploit','Downloading Metasploit Windows Version',[system.windows.forms.tooltipicon]::None)
				$source = 'https://raw.githubusercontent.com/HankBoone/HankBoone.github.io/main/Installers/metasploitframework-latest.msi'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\metasploitframework-latest.msi"
				Invoke-WebRequest -Uri $source -OutFile $destination
				Clear-Host
				Invoke-Item "C:\Users\$([Environment]::UserName)\Documents\CTFTools"
            }
            4 {
                $message = "Wireshark Downloaded!"
                <# Download Wireshark Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Wireshark','Downloading Wireshark Windows Edition',[system.windows.forms.tooltipicon]::None)
				$source = 'https://raw.githubusercontent.com/HankBoone/HankBoone.github.io/main/Installers/Wireshark-win64-3.6.1.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\Wireshark-win64-3.6.1.exe"
				Invoke-WebRequest -Uri $source -OutFile $destination
				Clear-Host
				Invoke-Item "C:\Users\$([Environment]::UserName)\Documents\CTFTools"
            }
            5 {
                $message = "Nmap Downloaded!"
                <# Download NMAP Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Nmap','Downloading Nmap Windows Edition',[system.windows.forms.tooltipicon]::None)
				$source = 'https://raw.githubusercontent.com/HankBoone/HankBoone.github.io/main/Installers/nmap-7.92-setup.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\nmap-7.92-setup.exe"
				Invoke-WebRequest -Uri $source -OutFile $destination
				Clear-Host
				Invoke-Item "C:\Users\$([Environment]::UserName)\Documents\CTFTools"
            }
         }
		 Write-Output $message
  