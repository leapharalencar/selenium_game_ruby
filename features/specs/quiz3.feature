#language: pt
#Encoding utf-8

Funcionalidade: Responder Questões quiz2
    Sendo um usuário no site logado e respondido o quiz1 e quiz3
    Quero responder o Quiz3


Contexto: Usuário logado com quiz1 quiz2 e respondido
    * usuário acessa a página login, loga e responde o quiz um e dois


 Cenário: responder a o Quiz Fase 3
    Quando preencho o cadastro do contratante
    Então avanço com o cadastro
        E passa para o cadastro do veiculo