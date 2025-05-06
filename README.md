# Script de Instalação de Aplicativos via Winget

Este script PowerShell automatiza a instalação de uma lista organizada de aplicativos utilizando o gerenciador de pacotes **winget**. Os aplicativos estão classificados por categorias como Desenvolvimento, Banco de Dados, Navegadores, Utilitários, Multimídia, Google, Ferramentas, Comunicação, Fonte, Escritório, e Outros.

## Pré-requisitos

- Windows 10 ou superior
- PowerShell 5.1 ou superior
- [Winget](https://learn.microsoft.com/pt-br/windows/package-manager/winget/) instalado e funcional no sistema

Você pode verificar se o `winget` está disponível executando no PowerShell:

```powershell
winget --version
````

Como usar
Baixe o script PowerShell

Salve o script .ps1 que contém a lista de aplicativos (por exemplo: instalar_apps.ps1).

Execute o PowerShell como Administrador

Clique com o botão direito no menu Iniciar → PowerShell (Admin)

Permita a execução de scripts (caso necessário)

Se ainda não estiver habilitado, execute:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope Process
````

Execute o script

Navegue até a pasta onde está o script e execute:
```powershell
powershell -ExecutionPolicy Bypass -File .\instalador.ps1
````

O script pode conter um loop que percorre cada item da lista $appList e utiliza:
```powershell
winget install --id $app.Id --accept-source-agreements --accept-package-agreements
````
Exemplo de estrutura do objeto no script
[PSCustomObject]@{
    Name = "Visual Studio Code"
    Id = "Microsoft.VisualStudioCode"
    Categoria = "Desenvolvimento"
}

Categorias disponíveis
Desenvolvimento

Banco de Dados

Navegadores

Utilitários

Multimídia

Google

Ferramentas

Comunicação

Fonte

Escritório

Outros

Observações
Certifique-se de estar conectado à internet durante a execução.

Alguns pacotes podem requerer permissões elevadas ou reinicialização.

O Winget pode solicitar interações dependendo do aplicativo.

