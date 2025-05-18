Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login na plataforma
    Para visualizar meus pedidos

    Background:
        Given que estou na página de login da plataforma

    Scenario: Login com dados válidos
        When insiro e-mail e senha válidos
        Then devo ser redirecionado para a tela de checkout

    Scenario Outline: Login com dados inválidos
        When insiro <email>
        And <senha>
        Then deve exibir a mensagem "Usuário ou senha inválidos"

        Examples:
            | email              | senha        |
            | usuario@email.com  | senha.errada |
            |                    | 1234567      |
            | usurario@email.com |              |
