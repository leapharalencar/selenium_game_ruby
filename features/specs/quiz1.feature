#language: pt
#Encoding utf-8

Funcionalidade: Responder Questões
    Sendo um usuário no site logado
    Quero responder o Quiz
    
 
  Contexto: Usuário logado
    * usuário acessa a página login e loga
  @pergunta
  Cenário: responder a o Quiz Fase 1
    Quando marco a resposta da fase um questão um
    Então envio a resposta
        E passa para a questão dois