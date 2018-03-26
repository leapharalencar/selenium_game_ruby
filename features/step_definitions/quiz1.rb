#Encoding utf-8


Dado("usuário acessa a página login e loga") do
    @login = LoginPage.new
    @login.do_login
  end
  Dado("que eu já respondi a questão um") do
    @resp = QuizPage1.new
    @resp.Q1_resp1

  end

  Dado("que eu já respondi a questão um e dois") do
    @resp = QuizPage1.new
    @resp.Q1_resp1
    @resp.Q1_resp2
  end

  Dado("que eu já respondi a questão um dois e três") do                        
    @resp = QuizPage1.new
    @resp.Q1_resp1
    @resp.Q1_resp2   
    @resp.Q1_resp3
  end 

  Quando("marco a resposta da fase um questão um") do 
    @resp = QuizPage1.new
    @resp.Q1_resp1    
  end
    
  Quando("marco a resposta da fase um questão dois") do
    @resp = QuizPage1.new
    @resp.Q1_resp2
  end

  Quando("marco a resposta da fase um questão três") do
    @resp = QuizPage1.new
    @resp.Q1_resp3
  end

  Quando("marco a resposta da fase um questão quatro") do                       
    @resp = QuizPage1.new
    @resp.Q1_resp4 
  end

  Então("envio a resposta") do
    @resp = QuizPage1.new
    @resp.Send_quiz1.click
  end
  
  Então("passa para a questão dois") do 
    @resp = QuizPage1.new
    questão = @resp.quiz1_status.text
    expect(questão).to eql "Questão 2 de 4"
  end
  
  Então("passa para a questão três") do
    @resp = QuizPage1.new
    questão = @resp.quiz1_status.text
    expect(questão).to eql "Questão 3 de 4"
  end
  
  Então("passa para a questão quatro") do
    @resp = QuizPage1.new
    questão = @resp.quiz1_status.text
    expect(questão).to eql "Questão 4 de 4"
  end


                                                                          
                                                                                
                                                                            
                                                                                