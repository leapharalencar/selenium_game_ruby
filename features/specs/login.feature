#language: pt
#encode: UTF-8

  Funcionalidade: Login
    Sendo um usuário no site
    Quero fazer o login
    Para jogar

  Contexto: Página login
    * usuário acessa a página login

  Cenário: logar com usuário valido

    Dado que eu tenho o usuário
    Quando faço login
    Então vejo a mensagem "Login efetuado com sucesso!"
 
