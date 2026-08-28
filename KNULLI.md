# Jogando no Anbernic RG35XXSP (Knulli) 🎮

O jogo agora entende **controle de videogame**: direcional e analógico movem,
**A** (ou B) é a ação, **START** pausa e **SELECT** liga e desliga o som. As
dicas na tela trocam sozinhas "ESPAÇO" por "A" quando um controle é usado.
Nada muda pra quem joga pela URL de sempre — teclado e toque continuam iguais.

## O que dá e o que não dá

O jogo é uma página web (um `index.html` com canvas e JavaScript), e o Knulli
**não tem navegador**: ele roda emuladores e ports nativos de Linux, mas não
tem como abrir uma página web no aparelho. Também não existe nenhum runtime de
HTML5 no PortMaster. Ou seja: **não dá pra copiar o arquivo pro cartão SD e
jogar direto** — pra isso o jogo precisaria ser reescrito numa engine que o
aparelho rode (veja o fim deste guia).

O que **dá** pra fazer hoje, sem reescrever nada, é jogar no RG35XXSP por
**streaming**: o Knulli vem com o **Moonlight**, que espelha um computador da
mesma rede Wi-Fi no aparelho. O jogo roda no navegador do computador, aparece
na telinha do Anbernic e os botões dele funcionam como controle — que é
exatamente o que este suporte a controle habilita.

## Passo a passo (Moonlight + Sunshine)

Precisa de: o RG35XXSP com Knulli, um computador na mesma rede Wi-Fi, e uns
10 minutos só na primeira vez.

**1. No computador — instalar o Sunshine**

O [Sunshine](https://app.lizardbyte.dev/Sunshine/) é o servidor de streaming
(gratuito, Windows/Mac/Linux). Instale e abra a interface dele no navegador
(`https://localhost:47990`), criando usuário e senha na primeira vez.

**2. No Sunshine — cadastrar o jogo como um "aplicativo"**

Em **Applications → Add New**, crie um app chamado `Tia Motora` com o comando
que abre o jogo em tela cheia. Com o Chrome no Windows, por exemplo:

```
"C:\Program Files\Google\Chrome\Application\chrome.exe" --kiosk https://bzomer.github.io/jogo-tuti/
```

(`--kiosk` abre em tela cheia, sem barra de endereço. Serve também um arquivo
local: troque a URL por `C:\caminho\para\index.html`.)

**3. No RG35XXSP — parear o Moonlight**

No Knulli, o Moonlight fica na lista de sistemas/ports. Abra, ele acha o
computador na rede e mostra um **PIN de 4 dígitos**; digite esse PIN na
interface do Sunshine (aba **PIN**). Isso é só na primeira vez.

**4. Jogar**

No Moonlight, escolha `Tia Motora`. O navegador abre no computador, a imagem
aparece no Anbernic e os botões já funcionam: **A = ação, START = pausa,
SELECT = som**. A tela do SP é 640×480 (4:3), a mesma proporção do jogo, então
ele preenche a tela certinho, sem tarja.

> Dica: no Sunshine dá pra deixar a resolução do app em 640×480 pra
> economizar rede — o jogo é pixel art, não perde nada.

## Bônus: qualquer controle, em qualquer lugar

O suporte a controle não é só pro Anbernic: um controle USB ou Bluetooth
ligado no computador, celular ou TV também funciona direto na página do jogo.
Aperte qualquer botão do controle e as dicas na tela já trocam pra ele.

## E rodar direto no aparelho, sem computador?

Só reescrevendo o jogo numa engine que o Knulli execute — as opções seriam um
*demake* em [TIC-80](https://tic80.com/) ou PICO-8 (telinha e cores bem mais
limitadas), ou uma reescrita em Love2D/Godot distribuída como port do
PortMaster. Qualquer uma é um projeto grande, separado deste `index.html` —
se um dia rolar, vive em outra pasta e a URL de sempre continua intacta.
