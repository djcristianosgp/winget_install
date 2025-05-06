# Script de Instalação de Aplicativos via Winget

Este script PowerShell automatiza a instalação de uma lista organizada de aplicativos utilizando o gerenciador de pacotes **winget**. Os aplicativos estão classificados por categorias como Desenvolvimento, Banco de Dados, Navegadores, Utilitários, Multimídia, Google, Ferramentas, Comunicação, Fonte, Escritório, e Outros.

## Pré-requisitos

- Windows 10 ou superior
- PowerShell 5.1 ou superior
- [Winget](https://learn.microsoft.com/pt-br/windows/package-manager/winget/) instalado e funcional no sistema

Você pode verificar se o `winget` está disponível executando no PowerShell:

```powershell
winget --version
