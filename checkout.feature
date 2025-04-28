#language: pt

Feature: Cadastro de Usuário no Checkout da EBAC-SHOP

Como cliente da EBAC-SHOP
Quero concluir meu Cadastro
Para finalizar minha compra

Background: Dado que estou na página de cadastro no Checkout

Cenário: Cadastro com todos os dados obrigatórios preenchidos
Quando eu preencher todos os campos obrigatórios corretamente
E clicar no botão "cadastrar"
Então o sistema deve salvar meu cadastro com sucesso

Cenário: Campo e-mail com formato inválido
Quando eu preencher o campo "e-mail" com "e-mail inválido"
E clicar no botão "cadastrar"
Então o sistema deve exibir uma mensagemde erro "e-mail inválido"

Cenário: Campos obrigatórios vazios
Quando eu tentar cadastrar deixando campos obrigatórios vazios
Então o sistema deve exibir uma mensagem de alerta informando "Preencha todos os campos obritatórios"