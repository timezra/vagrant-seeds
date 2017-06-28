function Install-From-Web
{
	param( [string]$Url, [string]$Installer, [string]$Flags )
	If (!(test-path $Installer))
	{
		$WebClient = New-Object System.Net.WebClient
		$WebClient.DownloadFile($Url, $Installer);
	}
	Else
	{
		Write-Output "$($Installer) already downloaded, skipping."
	}
	$Command = @"
& "$Installer" $Flags
"@
	iex $Command
}

Install-From-Web -url 'http://www.7-zip.org/a/7z1604-x64.exe' -installer 'C:/tmp/7z1604-x64.exe' -flags '/S'

Install-From-Web -url 'https://download.sublimetext.com/Sublime%20Text%20Build%203126%20x64%20Setup.exe' -installer 'C:/tmp/Sublime Text Build 3126 x64 Setup.exe' -flags '/SILENT /NORESTART'

Install-From-Web -url 'https://notepad-plus-plus.org/repository/7.x/7.4.2/npp.7.4.2.Installer.x64.exe' -installer 'C:/tmp/npp.7.4.2.Installer.x64.exe' -flags '/S'

Install-From-Web -url 'https://download.visualstudio.microsoft.com/download/pr/10753563/14dd70405e8244481b35017b9a562edd/vs_Professional.exe' -installer 'C:/tmp/vs_Professional.exe' -flags '/adminfile C:/vagrant/VS_Install.xml /quiet /norestart'

Install-From-Web -url 'http://go.microsoft.com/fwlink/?LinkID=822301' -installer 'C:/tmp/SSMS-Setup-ENU.exe' -flags '/quiet'

Install-From-Web -url 'https://download-cf.jetbrains.com/resharper/JetBrains.ReSharperUltimate.2017.1.3.exe' -installer 'C:/tmp/JetBrains.ReSharperUltimate.2017.1.3.exe' -flags '/VsVersion=15.0 /SpecificProductNames=ReSharper /Silent=True'

Install-From-Web -url 'https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B9EC597A5-32DF-8E73-2835-6343B91406D5%7D%26lang%3Den%26browser%3D4%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Ddefaultbrowser/update2/installers/ChromeSetup.exe' -installer 'C:/tmp/ChromeSetup.exe' -flags '/silent /install'

Install-From-Web -url 'http://download.microsoft.com/download/0/7/8/078E99E2-F1AE-4F46-B3EE-8208B7D01E5C/BDT5/BingDesktopSetup.exe' -installer 'C:/tmp/BingDesktopSetup.exe' -flags '/Q'

Install-From-Web -url 'https://c2rsetup.officeapps.live.com/c2r/download.aspx?productReleaseID=O365ProPlusRetail&platform=X86&language=en-US&TaxRegion=pr&correlationId=9bc1c76b-2cab-4a71-b46d-61a3221f38f0&token=032a8ca1-a622-491e-a84b-a0692abe8064&version=O16GA&source=O15OLSO365&Br=4' -installer 'C:/tmp/Setup.X86.en-US_O365ProPlusRetail_032a8ca1-a622-491e-a84b-a0692abe8064_TX_PR_b_64_.exe'
