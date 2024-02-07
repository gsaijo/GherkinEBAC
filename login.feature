# language: pt

Funcionalidade: Tela de Login
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que estou na página de login da EBAC-SHOP

Cenário: Dados de usuário válidos
Quando eu digitar o usuário "gustavo@ebac.com.br"
E a senha "senha@123"
Então devo ser direciondo pra a tela de checkout

Cenário: Usuário inexistente
Quando eu digitar o usuário "xxxx@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "gustavo@ebac.com.br"
E a senha "s123"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"
