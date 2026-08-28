# Instala o jogo no Anbernic com Knulli pela rede (via SSH/scp).
# Uso:  .\instalar_no_knulli.ps1            (usa o IP 192.168.15.27)
#       .\instalar_no_knulli.ps1 192.168.15.42   (outro IP)
#
# A senha do console vai ser pedida (até duas vezes). A senha padrao do
# Knulli é:  linux   (usuário root)
param([string]$Ip = "192.168.15.27")

$jogo = Join-Path $PSScriptRoot "TiaMotora.pygame"

Write-Host "Procurando o Knulli em $Ip (SSH)..."
$c = New-Object Net.Sockets.TcpClient
$r = $c.BeginConnect($Ip, 22, $null, $null)
$ok = $r.AsyncWaitHandle.WaitOne(4000) -and $c.Connected
$c.Close()
if (-not $ok) {
    Write-Host "Nao achei o console em $Ip. Confira se ele esta LIGADO e no Wi-Fi." -ForegroundColor Red
    Write-Host "O IP aparece no console em: MENU (Start) > NETWORK SETTINGS > IP ADDRESS"
    exit 1
}

Write-Host ""
Write-Host "Quando pedir a senha, digite:  linux" -ForegroundColor Yellow
Write-Host "(se aparecer 'Are you sure you want to continue connecting', responda: yes)"
Write-Host ""

ssh "root@$Ip" "mkdir -p /userdata/roms/pygame"
if ($LASTEXITCODE -ne 0) {
    Write-Host "Nao consegui conectar por SSH." -ForegroundColor Red
    exit 1
}

scp $jogo "root@${Ip}:/userdata/roms/pygame/"
if ($LASTEXITCODE -ne 0) {
    Write-Host "A copia falhou." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "PRONTO! Agora no console:" -ForegroundColor Green
Write-Host "  1. Aperte Start > GAME SETTINGS > UPDATE GAMELISTS (ou reinicie o console)"
Write-Host "  2. O jogo aparece na secao PYGAME"
Write-Host "  3. No jogo: direcional = andar, A/B = acao, Start = pausa, Select = som"
Write-Host "     Select + Start juntos = sair do jogo"
