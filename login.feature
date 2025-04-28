#language: pt

Feature: login na plataforma EBAC-SHOP

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background: Dado que estou na página da plataforma EBAC-SHOP

        Cenário: Login com dados válidos e inválidos
        Quando eu preencher o campo "Usuário" com "<Usuário>" e o campo "Senha" com "<Senha>"
        E clicar no botão "login"
        Então o sitema deve "<resultados>"

        Examples:
            | Usuário          | Senha          | resultado                                    |
            | Usuário_valido   | Senha_válida   | redirecionar para tela de checkout           |
            | Usuário_inválido | Senha_válida   | Exibir mensagem "Usuário ou Senha inválidos" |
            | Usuário_valido   | Senha_inválida | Exibir mensagem "Usuário ou Senha inválidos" |
            | Usuário_inválido | Senha_inválida | Exibir mensagem "Usuário ou Senha inválidos" |
