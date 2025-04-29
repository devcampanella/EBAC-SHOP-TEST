#language: pt

Funcionalidade: login na plataforma EBAC-SHOP

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto: Dado que o usuário está na página da plataforma EBAC-SHOP

        Esquema do Cenário: Login com dados válidos e inválidos
        Quando o usuário preencher o campo "Usuário" com "<Usuário>" e o campo "Senha" com "<Senha>"
        E clicar no botão "login"
        Então o sitema deve "<resultados>"

        Examples:
      | Usuário            | Senha           | Resultado                                       |
      | maria@email.com    | senha123        | redirecionar para a tela de checkout            |
      | maria@email.com    | senhaErrada     | mensagem "Usuário ou senha inválidos"           |
      | errado@email.com   | senha123        | mensagem "Usuário ou senha inválidos"           |
      | errado@email.com   | senhaErrada     | mensagem "Usuário ou senha inválidos"           |
