#language: pt
Funcionalidade: Configurar produto no EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que o usuário está na página de configuração de produtos

  Cenário: Selecionar cor, tamanho e quantidade obrigatoriamente
    Quando o usuário seleciona a cor, o tamanho e a quantidade
    Então o botão de "adicionar ao carrinho" deve ser habilitado

  Cenário: Limitar a quantidade máxima de produtos
    Quando o usuário tenta adicionar mais de 10 produtos
    Então o sistema deve exibir uma mensagem de erro informando "Limite máximo de 10 produtos por venda"

  Cenário: Limpar seleção
    Quando o usuário clica no botão "Limpar"
    Então todas as seleções devem ser resetadas para o estado original




    Feature Description
