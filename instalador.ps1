# Lista de aplicativos como objetos com propriedades reais
$appList = @(
    [PSCustomObject]@{ Name = "7-Zip"; Id = "7zip.7zip" }
    [PSCustomObject]@{ Name = "Firebird 3"; Id = "FirebirdProject.Firebird.3" }
    [PSCustomObject]@{ Name = "Git"; Id = "Git.Git" }
    [PSCustomObject]@{ Name = "Thunderbird (pt-BR)"; Id = "Mozilla.Thunderbird.pt-BR" }
    [PSCustomObject]@{ Name = "Notepad++"; Id = "Notepad++.Notepad++" }
    [PSCustomObject]@{ Name = "PostgreSQL 17"; Id = "PostgreSQL.PostgreSQL.17" }
    [PSCustomObject]@{ Name = "WinRAR"; Id = "RARLab.WinRAR" }
    [PSCustomObject]@{ Name = "NodeJS LTS"; Id = "OpenJS.NodeJS.LTS" }
    [PSCustomObject]@{ Name = "Google Drive"; Id = "Google.Drive" }
    [PSCustomObject]@{ Name = "Google Web Designer"; Id = "Google.WebDesigner" }
    [PSCustomObject]@{ Name = "Google Earth Pro"; Id = "Google.EarthPro" }
    [PSCustomObject]@{ Name = "Google Play Games"; Id = "Google.PlayGames.Beta" }
    [PSCustomObject]@{ Name = "Google Chrome"; Id = "Google.Chrome" }
    [PSCustomObject]@{ Name = "K-Lite Codec Pack Full"; Id = "CodecGuide.K-LiteCodecPack.Full" }
    [PSCustomObject]@{ Name = "OBS Studio"; Id = "OBSProject.OBSStudio" }
    [PSCustomObject]@{ Name = "Streamlabs OBS"; Id = "Streamlabs.StreamlabsOBS" }
    [PSCustomObject]@{ Name = "PowerToys"; Id = "Microsoft.PowerToys" }
    [PSCustomObject]@{ Name = "NDI 5 Runtime"; Id = "NewTek.NDI5Runtime" }
    [PSCustomObject]@{ Name = "NDI 5 Tools"; Id = "NewTek.NDI5Tools" }
    [PSCustomObject]@{ Name = "JetBrains Mono Nerd Font"; Id = "DEVCOM.JetBrainsMonoNerdFont" }
    [PSCustomObject]@{ Name = "SSMS"; Id = "Microsoft.SQLServerManagementStudio" }
    [PSCustomObject]@{ Name = "CapCut"; Id = "ByteDance.CapCut" }
    [PSCustomObject]@{ Name = "DBeaver"; Id = "dbeaver.dbeaver" }
    [PSCustomObject]@{ Name = "Spotify"; Id = "Spotify.Spotify" }
    [PSCustomObject]@{ Name = "VS Code"; Id = "Microsoft.VisualStudioCode" }
    [PSCustomObject]@{ Name = "Python 3.12"; Id = "Python.Python.3.12" }
    [PSCustomObject]@{ Name = "Microsoft Teams"; Id = "Microsoft.Teams" }
    [PSCustomObject]@{ Name = "Docker Desktop"; Id = "Docker.DockerDesktop" }
    [PSCustomObject]@{ Name = "Power BI"; Id = "Microsoft.PowerBI" }
    [PSCustomObject]@{ Name = "Visual Studio 2022 Community"; Id = "Microsoft.VisualStudio.2022.Community" }
    [PSCustomObject]@{ Name = "Report Builder"; Id = "Microsoft.ReportBuilder" }
    [PSCustomObject]@{ Name = "MobaXterm"; Id = "Mobatek.MobaXterm" }
    [PSCustomObject]@{ Name = "DroidCam OBS Plugin"; Id = "dev47apps.DroidCamOBSPlugin" }
    [PSCustomObject]@{ Name = "Postman"; Id = "Postman.Postman" }
    [PSCustomObject]@{ Name = "Kingsoft"; Id = "Kingsoft.WPSOffice" }
)

# Exibir a interface de seleção
$selectedApps = $appList | Out-GridView -Title "Selecione os aplicativos para instalar (CTRL+Clique para múltiplos)" -PassThru

# Instalar os aplicativos selecionados
foreach ($app in $selectedApps) {
    Write-Host "Instalando: $($app.Name) ($($app.Id))" -ForegroundColor Cyan
    winget install --id $($app.Id) -e --accept-package-agreements --accept-source-agreements
}
