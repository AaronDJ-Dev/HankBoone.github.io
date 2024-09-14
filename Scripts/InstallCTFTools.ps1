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
				$job1 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Kali VMWare" -Description "Downloading Kali VMWare"
				While ($job1.JobState -eq "Transferring" -Or $job1.JobState -eq "Connecting") {
    			Start-Sleep -Seconds 20
				}

				If ($job1.InternalErrorCode -ne 0) {
    			("Error downloading the file {0}" -f $job1.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
    			#Do something here
    			#Stop-Computer -Force
				}
				Clear-Host
                Write-Output $message

                $message = "Burp Suite Downloaded!"
				<# Download Burp Suite Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Burp Suite','Downloading Burp Suite Windows Version',[system.windows.forms.tooltipicon]::None)
				$source = 'https://media.githubusercontent.com/media/HankBoone/HankBoone.github.io/main/Installers/burpsuite_community_windows-x64_v2021_12_1.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\burpsuite_community_windows-x64_v2021_12_1.exe"
				$job2 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Burp Suite" -Description "Downloading Burp Suite" -Dynamic
				While ($job2.JobState -eq "Transferring" -Or $job2.JobState -eq "Connecting") {
    			Start-Sleep -Seconds 20
				}

				If ($job2.InternalErrorCode -ne 0) {
    			("Error downloading the file {0}" -f $job2.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
    			#Do something here
    			#Stop-Computer -Force
				}
				Clear-Host
                Write-Output $message

                $message = "Metasploit Downloaded!"
				<# Download Metasploit Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Metasploit','Downloading Metasploit Windows Version',[system.windows.forms.tooltipicon]::None)
				$source = 'https://media.githubusercontent.com/media/HankBoone/HankBoone.github.io/main/Installers/metasploitframework-latest.msi'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\metasploitframework-latest.msi"
				$job3 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Metasploit" -Description "Downloading Metasploit" -Dynamic
				While ($job3.JobState -eq "Transferring" -Or $job3.JobState -eq "Connecting") {
    			Start-Sleep -Seconds 20
				}

				If ($job3.InternalErrorCode -ne 0) {
    			("Error downloading the file {0}" -f $job3.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
    			#Do something here
    			#Stop-Computer -Force
				}
				Clear-Host
                Write-Output $message

                $message = "Wireshark Downloaded!"
				<# Download Wireshark Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Wireshark','Downloading Wireshark Windows Edition',[system.windows.forms.tooltipicon]::None)
				$source = 'https://media.githubusercontent.com/media/HankBoone/HankBoone.github.io/main/Installers/Wireshark-win64-3.6.1.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\Wireshark-win64-3.6.1.exe"
				$job4 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Wireshark" -Description "Downloading Wireshark" -Dynamic
				While ($job4.JobState -eq "Transferring" -Or $job4.JobState -eq "Connecting") {
    			Start-Sleep -Seconds 20
				}

				If ($job4.InternalErrorCode -ne 0) {
    			("Error downloading the file {0}" -f $job4.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
    			#Do something here
    			#Stop-Computer -Force
				}
				Clear-Host
                Write-Output $message

                $message = "Nmap Downloaded!"
				<# Download NMAP Windows #>
				[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
				[reflection.assembly]::loadwithpartialname('System.Drawing')
				$notify = new-object system.windows.forms.notifyicon
				$notify.icon = [System.Drawing.SystemIcons]::Information
				$notify.visible = $true
				$notify.showballoontip(10,'Nmap','Downloading Nmap Windows Edition',[system.windows.forms.tooltipicon]::None)
				$source = 'https://media.githubusercontent.com/media/HankBoone/HankBoone.github.io/main/Installers/Installers/nmap-7.92-setup.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\nmap-7.92-setup.exe"
				$job5 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Nmap" -Description "Downloading Nmap" -Dynamic
				While ($job5.JobState -eq "Transferring" -Or $job5.JobState -eq "Connecting") {
    			Start-Sleep -Seconds 20
				}

				If ($job5.InternalErrorCode -ne 0) {
    			("Error downloading the file {0}" -f $job5.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
    			#Do something here
    			#Stop-Computer -Force
				}
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
				$job01 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Kali VMWare" -Description "Downloading Kali VMWare"
				While ($job01.JobState -eq "Transferring" -Or $job01.JobState -eq "Connecting") {
						Start-Sleep -Seconds 20
				}

				If ($job01.InternalErrorCode -ne 0) {
						("Error downloading the file {0}" -f $job01.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
						#Do something here
						#Stop-Computer -Force
				}
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
				$source = 'https://media.githubusercontent.com/media/HankBoone/HankBoone.github.io/main/Installers/burpsuite_community_windows-x64_v2021_12_1.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\burpsuite_community_windows-x64_v2021_12_1.exe"
				$job02 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Burp Suite" -Description "Downloading Burp Suite" -Dynamic
				While ($job02.JobState -eq "Transferring" -Or $job02.JobState -eq "Connecting") {
    			Start-Sleep -Seconds 20
				}

				If ($job02.InternalErrorCode -ne 0) {
    			("Error downloading the file {0}" -f $job02.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
    			#Do something here
    			#Stop-Computer -Force
				}
				Clear-Host
                Write-Output $message
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
				$source = 'https://media.githubusercontent.com/media/HankBoone/HankBoone.github.io/main/Installers/metasploitframework-latest.msi'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\metasploitframework-latest.msi"
				$job03 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Metasploit" -Description "Downloading Metasploit" -Dynamic
				While ($job03.JobState -eq "Transferring" -Or $job03.JobState -eq "Connecting") {
    			Start-Sleep -Seconds 20
				}

				If ($job03.InternalErrorCode -ne 0) {
    			("Error downloading the file {0}" -f $job03.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
    			#Do something here
    			#Stop-Computer -Force
				}
				Clear-Host
                Write-Output $message
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
				$source = 'https://media.githubusercontent.com/media/HankBoone/HankBoone.github.io/main/Installers/Wireshark-win64-3.6.1.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\Wireshark-win64-3.6.1.exe"
				$job04 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Wireshark" -Description "Downloading Wireshark" -Dynamic
				While ($job04.JobState -eq "Transferring" -Or $job04.JobState -eq "Connecting") {
    			Start-Sleep -Seconds 20
				}

				If ($job04.InternalErrorCode -ne 0) {
    			("Error downloading the file {0}" -f $job04.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
    			#Do something here
    			#Stop-Computer -Force
				}
				Clear-Host
                Write-Output $message
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
				$source = 'https://media.githubusercontent.com/media/HankBoone/HankBoone.github.io/main/Installers/nmap-7.92-setup.exe'
				$destination = "C:\Users\$([Environment]::UserName)\Documents\CTFTools\Installers\nmap-7.92-setup.exe"
				$job05 = Start-BitsTransfer -Source $source -Destination $destination -DisplayName "Nmap" -Description "Downloading Nmap" -Dynamic
				While ($job05.JobState -eq "Transferring" -Or $job05.JobState -eq "Connecting") {
    			Start-Sleep -Seconds 20
				}

				If ($job05.InternalErrorCode -ne 0) {
    			("Error downloading the file {0}" -f $job05.InternalErrorCode) | Out-File C:\downloads\downloaderror.log
				} else {
    			#Do something here
    			#Stop-Computer -Force
				}
				Clear-Host
                Write-Output $message
				Invoke-Item "C:\Users\$([Environment]::UserName)\Documents\CTFTools"
            }
         }
		 Write-Output $message
  