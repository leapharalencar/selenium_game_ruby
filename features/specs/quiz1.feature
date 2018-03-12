#language: pt
#Encoding utf-8

Funcionalidade: Responder Questões
    Sendo um usuário no site logado
    Quero responder o Quiz
    
 
  Contexto: Usuário logado
    * usuário acessa a página login e loga
  @pergunta
  Cenário: responder a o Quiz Fase 1 questão 1
    Quando marco a resposta da fase um questão um
    Então envio a resposta
        E passa para a questão dois

  Cenário: responder a o Quiz Fase 1 questão 2
    Dado que eu já respondi a questão um
    Quando marco a resposta da fase um questão dois
    Então envio a resposta
        E passa para a questão três
  
  Cenário: responder a o Quiz Fase 1 questão 3
    Dado que eu já respondi a questão um e dois
    Quando marco a resposta da fase um questão três
    Então envio a resposta
        E passa para a questão quatro

  
  Cenário: responder a o Quiz Fase 1 questão 4
    Dado que eu já respondi a questão um dois e três
    Quando marco a resposta da fase um questão quatro
    Então envio a resposta
        E passa para a questão quatro
  