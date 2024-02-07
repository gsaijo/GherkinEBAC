            # language: pt

            Funcionalidade: Cadastro de usuário
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout da EBAC-SHOP

            Cenário: Cadastro com todos os campos obrigatorios preenchidos
            Quando eu preencher todos os campos obrigatorios
            Então devo conseguir prosseguir com a finalização da compra

            Cenário: Tentar finalizar a compra sem preencher todos os campos obrigatórios
            Quando eu tentar finalizar a compra sem preencher os campos obrigatorios
            Então devo receber uma mensagem de alerta: "Preencha todos os campos obrigatórios"

            Cenário: Preencher o campo e-mail com formato válido
            Quando eu preencher o campo e-mail com formato válido
            Então devo conseguir finalizar a compra

            Cenário: Preencher o campo e-mail com formato inválido
            Quando eu preencher o campo e-mail com formato inválido
            Então o sistema deve inserir uma mensagem de erro: "Formato de e-mail inválido"

            Esquema do Cenário: Autenticar e-mail inváldo
            Quando eu digitar o <e-mail>
            Então deve exibir a <mensagem>

            Exemplos:
            | e-mail             | mensagem                     |
            | email.invalido.com | "Formato de e-mail inválido" |
            | email@invalidocom  | "Formato de e-mail inválido" |