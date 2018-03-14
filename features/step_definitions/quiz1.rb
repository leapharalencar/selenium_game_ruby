#Encoding utf-8


Dado("usuário acessa a página login e loga") do
    @login = LoginPage.new
    @login.load    
    @login.modal_x.click
    @login.nome.set "cabloquinho"
    @login.senha.set "0123456789"
    @login.loginEntrar.click
  end
  Dado("que eu já respondi a questão um") do
    @resp = QuizPage1.new
    @resp.resp1.click
    @resp.Send_quiz1.click
  end

  Dado("que eu já respondi a questão um e dois") do
    @resp = QuizPage1.new
    @resp.resp1.click
    @resp.Send_quiz1.click
    @resp.resp2.click
    @resp.Send_quiz1.click
  end

  Dado("que eu já respondi a questão um dois e três") do                        
    @resp = QuizPage1.new
    @resp.resp1.click
    @resp.Send_quiz1.click
    @resp.resp2.click
    @resp.Send_quiz1.click
    @resp.resp3.click
    @resp.Send_quiz1.click    
  end 

  Quando("marco a resposta da fase um questão um") do 
    @resp = QuizPage1.new
    @resp.resp1.click    
  end
    
  Quando("marco a resposta da fase um questão dois") do
    @resp = QuizPage1.new
    @resp.resp2.click 
  end

  Quando("marco a resposta da fase um questão três") do
    @resp = QuizPage1.new
    @resp.resp3.click 
  end

  Quando("marco a resposta da fase um questão quatro") do                       
    @resp = QuizPage1.new
    @resp.resp4.click 
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


                                                                          
                                                                                
                                                                            
                                                                                