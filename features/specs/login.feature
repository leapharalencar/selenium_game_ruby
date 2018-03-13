#language: pt
#Encoding utf-8

  Funcionalidade: Login
    Sendo um usuário no site
    Quero fazer o login
    Para jogar

  Contexto: Página login
    * usuário acessa a página login
  @teste
  Cenário: logar com usuário valido
    Dado que eu tenho os dados de acesso:
      | nome  | caboquinho |
      | senha | 0123456789 |
    Quando faço login
    Então vejo a mensagem "Login efetuado com sucesso!"

  Esquema do Cenário: Tentativa de logar com dados invalido
    Dado que eu tenho os dados de acesso <nome><senha>      
    Quando faço login
    Então vejo a mensagem <msg>

      Exemplos:
      | nome         | senha        | msg                |
      | 'coqfsdfsdo' | '0123456789' | 'Login incorreto!' |
      | 'caboquinho' | '5415454645' | 'Login incorreto!' |
      
 
