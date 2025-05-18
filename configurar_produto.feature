Feature: Configuração de produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given que eu estou na página de um produto
    Scenario: Seleções obrigatórias de cor, tamanho e quantidade
        When tento adicionar o produto ao carrinho sem preencher todos os campos
        Then deve exibir uma mensagem de alerta solicitando as seleções obrigatórias

    Scenario: Limite máximo de produtos por venda
        When seleciono 11 unidades de um produto
        Then o sistema deve impedir a seleção e xibir uma mensagem de limite de 10 unidades

    Scenario: Botão "Limpar" redefine a configuração
        Given que selecionei cor, tamanho e quantidade
        When clico no botão "limpar"
        Then os campos devem voltar ao estado original não selecionado
