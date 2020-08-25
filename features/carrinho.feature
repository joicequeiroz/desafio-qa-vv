#language: pt

Funcionalidade: Adicionar produtos ao carrinho
Como cliente das Casas Bahia
Quero adicionar um produto no carrinho
Para reservar meu produto

Contexto: Acesso ao site
    Dado que eu acesso o site de compras


Cenário: Adicionar um Iphone XR no carrinho
    Quando realizo a busca pelo produto "Iphone XR"
    Então eu vejo no resultado da consulta
    E seleciono o item ao meu carrinho de compras
    Então o o produto e adicionado ao minha lista