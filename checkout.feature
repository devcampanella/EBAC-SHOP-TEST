#language: pt
Funcionalidade: Cadastro de usuário no checkout da EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que o usuário está na página de cadastro no checkout

  Cenário: Cadastro com todos os dados obrigatórios preenchidos
    Quando o usuário preenche todos os campos obrigatórios corretamente
    E clica no botão "cadastrar"
    Então o sistema deve salvar o cadastro com sucesso

  Cenário: Campo e-mail com formato inválido
    Quando o usuário preenche o campo "e-mail" com "joao-email.com"
    E clica no botão "cadastrar"
    Então o sistema deve exibir uma mensagem de erro "E-mail inválido"

  Cenário: Campos obrigatórios vazios
    Quando o usuário tenta cadastrar deixando campos obrigatórios vazios
    Então o sistema deve exibir uma mensagem de alerta informando "Preencha todos os campos obrigatórios"
