#language: pt
#Encoding utf-8

Funcionalidade: Responder Questões quiz2
    Sendo um usuário no site logado e respondido o quiz1
    Quero responder o Quiz2
    
 
  Contexto: Usuário logado e quiz1 respondido
    * usuário acessa a página login, loga e responde o quiz um


  Cenário: responder a o Quiz Fase 2 questão 1
    Quando marco a resposta da fase dois questão um
    Então envio a resposta fase dois
        E passa para a questão dois fase dois

  
  Cenário: responder a o Quiz Fase 2 questão 2
    Dado que eu já respondi a questão um da fase dois
    Quando marco a resposta da fase dois questão dois
    Então envio a resposta fase dois
       


  