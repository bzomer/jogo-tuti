# Tia Motora em Missão! 🚗

Joguinho de pixel art feito de presente para o Tuti, 7 anos.

**👉 [Jogar agora](https://bzomer.github.io/jogo-tuti/)**

## Como joga

| Tecla | O que faz |
| --- | --- |
| ← → ↑ ↓ | Andar / dirigir |
| Espaço | Ação (acordar, turbo, grito de coragem, vestir) |
| P | Pausa |
| M | Liga e desliga o som |

**No celular e no tablet** aparecem sozinhos um direcional e um botão AÇÃO na
tela, e as dicas do jogo trocam "ESPAÇO" por "AÇÃO". Em pé os botões ficam
embaixo do jogo; deitado eles vão pras laterais, sem cobrir nada da tela.

## As fases

**1. A manhã em casa** — quatro tarefinhas antes de sair: acordar no despertador,
tomar o café da manhã, escovar os dentes e se arrumar. Não tem como perder;
serve pra ambientar e pra aprender os controles.

**2. A corrida pra escola** — dirigir o carro da Tia Nuna desviando de cones,
poças e outros carros, sem deixar a gasolina acabar. A rua passa por três trechos
diferentes (bairro, avenida e a rua da escola, com chuva) e tem três coleguinhas
pra pegar no ponto de ônibus pelo caminho.

**3. Desafios na escola** — um labirinto onde o Tuti precisa achar a mochila, o
lápis, o lanche e a chave antes de entrar na sala de aula, fugindo dos
monstrinhos da bagunça. O espaço solta um "grito de coragem" que congela eles.

**4. Recreio: esconde-esconde** — os três coleguinhas se escondem pelo pátio e o
Tuti tem que achar todos. Ele chega perto de um esconderijo e aperta espaço pra
espiar; o painel avisa se está "gelado", "morno" ou "pegando fogo", e de vez em
quando quem está escondido solta uma risadinha e entrega a posição.

**5. A corrida de volta pra casa** — agora é disputa de verdade: três carros
rivais e o objetivo é chegar em primeiro. Mesmo caminho ao contrário, no fim de
tarde, com a posição na corrida aparecendo no painel.

**6. Pega-pega no quintal** — o Tuti é o pegador e precisa encostar no Thomas e
na Tia Nuna. O Thomas é pequeno e corre devagar, mas a tia corre mais que ele:
a chance é aproveitar o momento em que ela para pra tomar fôlego.

**7. A noite na sala** — o fecho do dia, sem como perder. Ele zapeia a TV com
← → até achar o desenho do foguete, assiste apertando ação nas partes
engraçadas enquanto a barrinha de sono enche, e aí anda até o sofá pra deitar.
A Tia Nuna chega com o cobertor, apaga a luz e acaba o jogo.

## Mexer no jogo

É um arquivo só, `index.html`, sem nenhuma dependência — dá pra abrir com duplo
clique direto do Explorer, sem servidor e sem instalar nada. Todos os desenhos
são pixel art escrita à mão dentro do próprio JavaScript, e os sons são gerados
na hora pela Web Audio API, então não existe nenhum arquivo de imagem ou áudio.

Os números que controlam a dificuldade ficam todos no bloco `CONFIG`, logo no
começo do arquivo — velocidade, vidas, tamanho das fases, consumo de gasolina,
velocidade dos monstrinhos, quanto tempo a tia demora pra cansar no pega-pega.
Os nomes dos personagens também estão lá (`nomeMenino`, `nomeTia` e
`nomeIrmao`), então dá pra adaptar o jogo pra outra criança trocando três
linhas.
