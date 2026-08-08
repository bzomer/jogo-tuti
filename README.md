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

## As fases

**A manhã em casa** — quatro tarefinhas antes de sair: acordar no despertador,
tomar o café da manhã, escovar os dentes e se arrumar. Não tem como perder;
serve pra ambientar e pra aprender os controles.

**A corrida pra escola** — dirigir o carro da Tia Nuna desviando de cones, poças
e outros carros, sem deixar a gasolina acabar. A rua passa por três trechos
diferentes (bairro, avenida e a rua da escola, com chuva) e tem três coleguinhas
pra pegar no ponto de ônibus pelo caminho.

**Desafios na escola** — um labirinto onde o Tuti precisa achar a mochila, o
lápis, o lanche e a chave antes de entrar na sala de aula, fugindo dos
monstrinhos da bagunça. O espaço solta um "grito de coragem" que congela eles.

## Mexer no jogo

É um arquivo só, `index.html`, sem nenhuma dependência — dá pra abrir com duplo
clique direto do Explorer, sem servidor e sem instalar nada. Todos os desenhos
são pixel art escrita à mão dentro do próprio JavaScript, e os sons são gerados
na hora pela Web Audio API, então não existe nenhum arquivo de imagem ou áudio.

Os números que controlam a dificuldade ficam todos no bloco `CONFIG`, logo no
começo do arquivo — velocidade, vidas, tamanho das fases, consumo de gasolina,
velocidade dos monstrinhos. Os nomes dos personagens também estão lá
(`nomeMenino` e `nomeTia`), então dá pra adaptar o jogo pra outra criança
trocando duas linhas.
