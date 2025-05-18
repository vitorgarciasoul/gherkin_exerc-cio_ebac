Feature: Cadastro na tela de checkout

    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que estou na tela de cadastro da finalização da compra

    Scenario: Cadastro com campos obrigatórios preenchidos
        When preencho todos os campos obrigatórios
        And clico em "Finalizar Cadastro"
        Then o cadastro deve ser concluído com sucesso

    Scenario Outline: Cadastro com e-mail inválido
        When insiro o <email>
        And clico em "Finalizar Cadastro"
        Then deve exibir a mensagem de erro "Formato de e-mail inválido"

    Example:
            | email      |
            | teste@com  |
            | teste.com  |
            | @teste.com |

    Scenario: Campos obrigatórios vazios
        When deixo os campos obrigatórios em branco
        And clico em "Finalizar Cadastro"
        Then deve existir mensagem de alerta solicitando o preencimento dos campos
