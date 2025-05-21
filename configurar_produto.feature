
#language: pt
Funcionalidade: Configuração de produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que eu estou na página de um produto
    Contexto: Seleções obrigatórias de cor, tamanho e quantidade
        Quando tento adicionar o produto ao carrinho sem preencher todos os campos
        Então deve exibir uma mensagem de alerta solicitando as seleções obrigatórias

    Cenário: Limite máximo de produtos por venda
        Quando seleciono 11 unidades de um produto
        Então o sistema deve impedir a seleção e xibir uma mensagem de limite de 10 unidades

    Cenário Botão "Limpar" redefine a configuração
        Dado que selecionei cor, tamanho e quantidade
        Quando clico no botão "limpar"
        Então os campos devem voltar ao estado original não selecionado
