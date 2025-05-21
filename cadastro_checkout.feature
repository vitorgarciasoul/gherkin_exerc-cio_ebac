#laguage: pt
Funcionalidade: Cadastro na tela de checkout

    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

   Contexto:
        Dado que estou na tela de cadastro da finalização da compra

    Cenário: Cadastro com campos obrigatórios preenchidos
        Quando preencho todos os campos obrigatórios
        E clico em "Finalizar Cadastro"
        Então o cadastro deve ser concluído com sucesso

    Esquema do Cenário: Cadastro com e-mail inválido
        Quando insiro o <email>
        E clico em "Finalizar Cadastro"
        Então deve exibir a mensagem de erro "Formato de e-mail inválido"

    Examplos:
            | email      |
            | teste@com  |
            | teste.com  |
            | @teste.com |

    Cenário: Campos obrigatórios vazios
        Quando deixo os campos obrigatórios em branco
        E clico em "Finalizar Cadastro"
        Então deve existir mensagem de alerta solicitando o preencimento dos campos
