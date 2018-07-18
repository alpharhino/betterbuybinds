$QuestionExecution = Read-Host -Prompt "Do you want to install the necessary files for the BetterBuyBinds autoexec? (Y/N)"
if ($QuestionExecution -Match 'Y' -or $QuestionExecution -Match 'Yes')
{
	$DefaultLocation = 'C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg'
	
	$LocationOfCS

	$MultipleDrives ='C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','A','B'
	Foreach($IndividualDrive in $MultipleDrives) 
	{
		[string]$DirOfDrive = Get-ChildItem -Path ${IndividualDrive}:\ -Name -ErrorAction Ignore 
		$DirOfDrive_array = $DirOfDrive -split " "
		Foreach($IndividualDir in $DirOfDrive_array)
		{
			If ($IndividualDir -Match 'x86' )
			{
				$IndividualDir = 'Program Files (x86)'
				[string]$DirectoriesOfx86 = Get-ChildItem -Path ${env:ProgramFiles(x86)} -Name  
				$DirectoriesOfx86_array = $DirectoriesOfx86 -split " "
				Foreach($IndividualDirectoriesOfx86 in $DirectoriesOfx86_array)
				{
					If($IndividualDirectoriesOfx86  -Match 'Steam')
					{
						[string]$CommonGames = Get-ChildItem -Path ${env:ProgramFiles(x86)}\Steam\steamapps\common -Name -ErrorAction Ignore 
						$CommonGames_array = $CommonGames -split " "
						Foreach ($CurrentGame in $CommonGames_array)
						{
							If($CurrentGame -Match 'Offensive')
							{
								$LocationOfCS = "${IndividualDrive}:\${IndividualDir}\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg"
							}
							
						}
					}
				}
				
			}
			ElseIf($IndividualDir -Match 'Steam')
			{
				
				[string]$CommonGames = Get-ChildItem -Path ${IndividualDrive}:\Steam\steamapps\common -Name -ErrorAction Ignore 
				$CommonGames_array = $CommonGames -split " "
				Foreach ($CurrentGame in $CommonGames_array)
				{
					If($CurrentGame -Match 'Offensive')
					{
						$LocationOfCS = "${IndividualDrive}:\${IndividualDir}\steamapps\common\Counter-Strike Global Offensive\csgo\cfg"
					}
				}
				
			}
		}
	}
	New-Item -Path $LocationOfCS -Name "betterbuybindsTEST" -ItemType "directory" -Force | Out-Null  
	[string]$autoexecFiles= Get-ChildItem -Path ".\cfg"
	$autoexecFiles_Array = $autoexecFiles -split " "
	Foreach($cfgFILE in $autoexecFiles_Array)
	{
		Copy-Item ".\cfg\${cfgFILE}" -Destination "${LocationOfCS}\betterbuybindsTEST"
	}
	Write-Host ""
	Write-Host "STATUS: Installation Complete"
	Write-Host ""
	Write-Host "(You can exit this window.)"
	Write-Host ""
}
else
{
	Write-Host ""
	Write-Host "STATUS: Installation Cancelled."
	Write-Host ""
	Write-Host "(You can exit this window.)"
	Write-Host ""
}
