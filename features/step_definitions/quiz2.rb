#Encoding utf-8

Dado("usuário acessa a página login, loga e responde o quiz um") do     
    @login = LoginPage.new
    @login.load    
    @login.modal_x.click
    @login.nome.set "cabloquinho"
    @login.senha.set "0123456789"
    @login.loginEntrar.click
    
    @resp = QuizPage1.new
    @resp.resp1.click
    @resp.Send_quiz1.click
    @resp.resp2.click
    @resp.Send_quiz1.click
    @resp.resp3.click
    @resp.Send_quiz1.click 
    @resp.resp4.click
    @resp.Send_quiz1.click
    
    @resp2 = QuizPage2.new
    @resp2.dia_atual.click
    @resp2.mes_atual.click
    @resp2.ano_atual.click
end                                                                            
          
Dado("que eu já respondi a questão um da fase dois") do
    @resp2 = QuizPage2.new    
    @resp2.resp5.click
    @resp2.Send_quiz2.click
end

Quando("marco a resposta da fase dois questão um") do                          
    @resp2 = QuizPage2.new    
    @resp2.resp5.click
end                                             
Quando("marco a resposta da fase dois questão dois") do
    @resp2 = QuizPage2.new    
    @resp2.resp6.click
end                 
Então("envio a resposta fase dois") do
    @resp2 = QuizPage2.new    
    @resp2.Send_quiz2.click
  end
Então("passa para a questão dois fase dois") do
    @resp2 = QuizPage2.new 
    questão = @resp2.quiz2_status.text
    expect(questão).to eql "Questão 2 de 2"
end



  
  
  