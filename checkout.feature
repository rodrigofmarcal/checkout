            #language: pt

            Funcionalidade: Tela de cadastro checkout
            Como cliente da Ebac-Shop
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a pagina de checkout da Ebac-Shop
            
            Cenário: Checkout válido
            Quando eu digitar "nome", "sobrenome", "pais","endereco", "cidade", "CEP", "telefone" e "email"
            E clicar no botão de finalizar compra
            Então deve ser exibida uma mensagem "compra finalizada"

            Cenário: Checkout com email em formato inválido
            Quando eu digitar "nome", "sobrenome", "pais", "endereco", "cidade", "CEP", "telefone" e "email"
            E clicar no botão de finalizar compra
            Então deve ser exibida uma mensagem de alerta "email em formato inválido"

            Cenário: Checkout com campo(s) obrigatório(s) vazio(s)
            Quando eu digitar "nome", "sobrenome", "pais", "endereco", "cidade", "CEP", "telefone"
            E um clicar no botão de finalizar compra
            Então deve ser exibida uma mensagem de alerta "campo(s) obrigatório(s) vazio(s)"

            Esquema do Cenário: multiplos Checkout
            Quando eu digitar <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone> e <email>
            E clicar no botão finalizar compra
            Então deve ser exibida uma <mensagem>

            Exemplos:
            | nome    | sobrenome | país   | endereço | CEP     | telefone      | email        | mensagem                         |
            | Rodrigo | Marçal    | Brasil | rua 1    | 33000   | (31)999999999 | rodrigo@Ebac | compra finalizada                |
            | Maria   | Silva     | Brasil | rua 2    | 34000   | (31)988888888 | maria@zzz    | email em formato inválido        |
            | Jose    | Santos    | Brasil | rua 3    | ******* | (35)977777777 | jose@ebac    | campo(s) obrigatório(s) vazio(s) |