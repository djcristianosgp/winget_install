# Lista de aplicativos como objetos com propriedades reais
$appList = @(
    # Sistema e Utilitários
    [PSCustomObject]@{ Name = "7-Zip"; Id = "7zip.7zip"; Categoria = "Sistema e Utilitários" }
    [PSCustomObject]@{ Name = "WinRAR"; Id = "RARLab.WinRAR"; Categoria = "Sistema e Utilitários" }
    [PSCustomObject]@{ Name = "PowerToys"; Id = "Microsoft.PowerToys"; Categoria = "Sistema e Utilitários" }
    [PSCustomObject]@{ Name = "JetBrains Mono Nerd Font"; Id = "DEVCOM.JetBrainsMonoNerdFont"; Categoria = "Sistema e Utilitários" }

    # Desenvolvimento
    [PSCustomObject]@{ Name = "Git"; Id = "Git.Git"; Categoria = "Desenvolvimento" }
    [PSCustomObject]@{ Name = "Notepad++"; Id = "Notepad++.Notepad++"; Categoria = "Desenvolvimento" }
    [PSCustomObject]@{ Name = "NodeJS LTS"; Id = "OpenJS.NodeJS.LTS"; Categoria = "Desenvolvimento" }
    [PSCustomObject]@{ Name = "VS Code"; Id = "Microsoft.VisualStudioCode"; Categoria = "Desenvolvimento" }
    [PSCustomObject]@{ Name = "Python 3.12"; Id = "Python.Python.3.12"; Categoria = "Desenvolvimento" }
    [PSCustomObject]@{ Name = "Docker Desktop"; Id = "Docker.DockerDesktop"; Categoria = "Desenvolvimento" }
    [PSCustomObject]@{ Name = "Postman"; Id = "Postman.Postman"; Categoria = "Desenvolvimento" }
    [PSCustomObject]@{ Name = "Visual Studio 2022 Community"; Id = "Microsoft.VisualStudio.2022.Community"; Categoria = "Desenvolvimento" }
    [PSCustomObject]@{ Name = "MobaXterm"; Id = "Mobatek.MobaXterm"; Categoria = "Desenvolvimento" }
	[PSCustomObject]@{ Name = "Crystal Dew World"; Id = "CrystalDewWorld.CrystalDiskMark"; Categoria = "Desenvolvimento" }
	[PSCustomObject]@{ Name = "HelpNDoc"; Id = "IBESoftware.HelpNDoc"; Categoria = "Desenvolvimento" }
	[PSCustomObject]@{ Name = "Tortoise Git"; Id = "TortoiseGit.TortoiseGit"; Categoria = "Desenvolvimento" }
	[PSCustomObject]@{ Name = "Tortoise SVN"; Id = "TortoiseSVN.TortoiseSVN"; Categoria = "Desenvolvimento" }

    # Banco de Dados
    [PSCustomObject]@{ Name = "Firebird 3"; Id = "FirebirdProject.Firebird.3"; Categoria = "Banco de Dados" }
    [PSCustomObject]@{ Name = "PostgreSQL 17"; Id = "PostgreSQL.PostgreSQL.17"; Categoria = "Banco de Dados" }
    [PSCustomObject]@{ Name = "DBeaver"; Id = "dbeaver.dbeaver"; Categoria = "Banco de Dados" }
    [PSCustomObject]@{ Name = "SSMS"; Id = "Microsoft.SQLServerManagementStudio"; Categoria = "Banco de Dados" }
	[PSCustomObject]@{ Name = "PG Admin"; Id = "PostgreSQL.pgAdmin"; Categoria = "Banco de Dados" }
	[PSCustomObject]@{ Name = "My SQL Workbench"; Id = "Oracle.MySQLWorkbench"; Categoria = "Banco de Dados" }

    # Produtividade
    [PSCustomObject]@{ Name = "Microsoft Teams"; Id = "Microsoft.Teams"; Categoria = "Produtividade" }
    [PSCustomObject]@{ Name = "Report Builder"; Id = "Microsoft.ReportBuilder"; Categoria = "Produtividade" }
    [PSCustomObject]@{ Name = "Power BI"; Id = "Microsoft.PowerBI"; Categoria = "Produtividade" }
    [PSCustomObject]@{ Name = "Kingsoft"; Id = "Kingsoft.WPSOffice"; Categoria = "Produtividade" }

    # Comunicação
    [PSCustomObject]@{ Name = "Thunderbird (pt-BR)"; Id = "Mozilla.Thunderbird.pt-BR"; Categoria = "Comunicação" }

    # Design e Mídia
    [PSCustomObject]@{ Name = "Google Web Designer"; Id = "Google.WebDesigner"; Categoria = "Design e Mídia" }
    [PSCustomObject]@{ Name = "OBS Studio"; Id = "OBSProject.OBSStudio"; Categoria = "Design e Mídia" }
    [PSCustomObject]@{ Name = "Streamlabs OBS"; Id = "Streamlabs.StreamlabsOBS"; Categoria = "Design e Mídia" }
    [PSCustomObject]@{ Name = "CapCut"; Id = "ByteDance.CapCut"; Categoria = "Design e Mídia" }
    [PSCustomObject]@{ Name = "DroidCam OBS Plugin"; Id = "dev47apps.DroidCamOBSPlugin"; Categoria = "Design e Mídia" }

    # Multimídia
    [PSCustomObject]@{ Name = "K-Lite Codec Pack Full"; Id = "CodecGuide.K-LiteCodecPack.Full"; Categoria = "Multimídia" }
    [PSCustomObject]@{ Name = "Spotify"; Id = "Spotify.Spotify"; Categoria = "Multimídia" }

    # Google
    [PSCustomObject]@{ Name = "Google Drive"; Id = "Google.Drive"; Categoria = "Google" }
    [PSCustomObject]@{ Name = "Google Earth Pro"; Id = "Google.EarthPro"; Categoria = "Google" }
    [PSCustomObject]@{ Name = "Google Play Games"; Id = "Google.PlayGames.Beta"; Categoria = "Google" }
    [PSCustomObject]@{ Name = "Google Chrome"; Id = "Google.Chrome"; Categoria = "Google" }

    # Outros
    [PSCustomObject]@{ Name = "NDI 5 Runtime"; Id = "NewTek.NDI5Runtime"; Categoria = "Outros" }
    [PSCustomObject]@{ Name = "NDI 5 Tools"; Id = "NewTek.NDI5Tools"; Categoria = "Outros" }	
	[PSCustomObject]@{ Name = "Windows Terminal"; Id = "Microsoft.WindowsTerminal"; Categoria = "Outros" }
    [PSCustomObject]@{ Name = "WSL"; Id = "Microsoft.WSL"; Categoria = "Outros" }
)


# Exibir a interface de seleção
$selectedApps = $appList | Out-GridView -Title "Selecione os aplicativos para instalar (CTRL+Clique para múltiplos)" -PassThru

# Instalar os aplicativos selecionados
foreach ($app in $selectedApps) {
    Write-Host "Instalando: $($app.Name) ($($app.Id))" -ForegroundColor Cyan
    winget install --id $($app.Id) -e --accept-package-agreements --accept-source-agreements
}
