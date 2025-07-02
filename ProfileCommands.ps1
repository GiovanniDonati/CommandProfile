# Inicia os projetos com o IntelliJ IDEA, similar ao "code ."
function idea { 
    Start-Process "C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2024.3.4.1\bin\idea64.exe" -ArgumentList $args 
}

# Aponta para o diretório de projetos
function project {
    cd "C:\projects"
}

# Inicia ambiente virtual com o Poetry:
function poenv {
    $activationOutput = poetry env activate
    $activationOutput | Set-Clipboard

    $clipboardContent = Get-Clipboard

    Write-Host "Copied to clipboard: `n" -NoNewline
    Write-Host "'$clipboardContent' `n" -ForegroundColor Green -NoNewline
    Write-Host "Do you want to execute this? (Y/N)"

    $confirm = Read-Host

    if ($confirm -eq 'Y' -or $confirm -eq 'y') {
        Write-Host "Executing: $clipboardContent" -ForegroundColor Yellow
        Invoke-Expression $clipboardContent
    } else {
        Write-Host "Execution cancelled." -ForegroundColor Red
    }
}

# Inicia a aplicação do chatbot
function chatbot {
    cd "C:\projects\DevTools\HelpAI"
    poenv
    Write-Host "Iniciar chat? (Y/N)"

    $confirm = Read-Host

    if ($confirm -eq 'Y' -or $confirm -eq 'y') {
        python app.py
    } else {
        Write-Host "Cancelado." -ForegroundColor Red
    }
}