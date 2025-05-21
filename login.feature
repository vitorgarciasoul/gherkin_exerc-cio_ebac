#language: pt
Funcionalidade: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login na plataforma
    Para visualizar meus pedidos

    Contexto:
        Dado que estou na página de login da plataforma

    Cenário: Login com dados válidos
        Dado insiro e-mail e senha válidos
        Então devo ser redirecionado para a tela de checkout

    Esquema do Cenário: Login com dados inválidos
        Quando insiro <email>
        E <senha>
        Então deve exibir a mensagem "Usuário ou senha inválidos"

        Examplos:
            | email              | senha        |
            | usuario@email.com  | senha.errada |
            |                    | 1234567      |
            | usurario@email.com |              |
