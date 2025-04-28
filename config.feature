#language: pt

Feature: Configurar produto no EBAC-SHOP

Como cliente da EBAC_SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade 
Para depois inserir no carrinho

Background: Dados que estou na página de configuração de produtos


Cenario: Selecionar cor, tamanho e quantidade obrigatoriamente
Quando eu selecioanr a cor, o tamanho e a quantidade
Então o botão de adicionar ao carrinho deve ser habilitado

Cenário: Limitar a quantidade máxima de produtos
Quando eu tentar adicionar mais de 10 produtos
Então o sistema deve exibir uma mensagem de erro informando "Limite máximo de 10 produtos por venda "

Cenário: Limpar seleção
Quando eu clicar no botão "Limpar"
Então todas as seleções devem ser resetadas para estado original




    Feature Description