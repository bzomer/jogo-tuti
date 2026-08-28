# Tia Motora em Missão! — versão para Anbernic (Knulli)

Port completo do `index.html` para **Python/pygame**, em um arquivo só
(`TiaMotora.pygame`), sem nenhuma dependência além do pygame que o próprio
Knulli/Batocera já traz. Todas as 7 fases, a pixel art e os sons sintetizados
foram portados 1 pra 1 do original.

## Instalar no console

1. Ligue o Anbernic e conecte no Wi-Fi (o IP aparece em
   `Start > NETWORK SETTINGS`).
2. No PC, rode:

   ```powershell
   .\instalar_no_knulli.ps1            # usa o IP 192.168.15.27
   .\instalar_no_knulli.ps1 <OUTRO-IP> # se o IP mudou
   ```

   O script copia por SSH e vai pedir a senha do console (senha: `linux`).

   Alternativa pelo Explorer: abra `\\<IP>\share` (usuário `root`, senha
   `linux`) e copie `TiaMotora.pygame` para `roms\pygame`. Desde a versão
   Scarab do Knulli o compartilhamento exige esse login — e se ele não
   abrir, ative em `System Settings > Services > SAMBA` ou reinicie o
   console.
3. No console: `Start > GAME SETTINGS > UPDATE GAMELISTS`.
4. O jogo aparece na seção **PYGAME**.

## Controles no console

| Botão | O que faz |
| --- | --- |
| Direcional | Andar / dirigir |
| A / B / X / Y | Ação (acordar, turbo, grito de coragem, vestir) |
| Start | Pausa |
| Select | Liga e desliga o som |
| Select + Start | Sair do jogo |

## Testar no PC

```powershell
py -3 -m pip install pygame
py -3 .\TiaMotora.pygame -w
```

(`-w` abre em janela; sem ele abre em tela cheia. No PC valem as setas,
espaço, P e M, como no jogo de navegador. ESC sai.)

## Mexer no jogo

Os números de dificuldade e os nomes das crianças ficam no bloco `CONFIG`
no começo do arquivo, igualzinho ao `index.html`.
