# language: pt

Funcionalidade: Seleção de produtos em vendas
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que estou na página de seleção de produtos da EBAC-SHOP

Cenário: Configurar produto nos campos obrigatorios preenchidos
Quando escolher <tamanho>, <cor> e <quantidade> e clicar no botão "Comprar"
Então o produto deve ser adicionado ao meu carrinho de compras

Cenário: Tentar adicionar produto sem preencher todos os campos obrigatórios
Quando eu tentar adicionar o produto ao carrinho preencher os campos obrigatorios
Então devo receber uma mensagem informando para preencher todos os campos obrigatórios

Cenário: Limite de 10 produtos por venda
Quando eu adicionar 10 produtos ao carrinho de compras
E tentar adicionar mais um produto
Então devo receber uma mensagem informando que só são permitidos 10 produtos por venda

Cenário: Limpar as seleções ao clicar no botão "limpar"
Quando eu clicar no botão "limpar"
Então as seleções de cor, tamanho e quantidade devem ser resetadas ao estado original
