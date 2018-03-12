#Encoding utf-8


Dado("usuário acessa a página login e loga") do
    visit "http://vanilton.net/selenium/game/"  
    find(:xpath,"//div[@id='modalInitial']//button[@class='close']") .click
    find('#nome').set "caboquinho"
    find('#senha').set "0123456789"
    find('button[name=entrar]').click
    mensagem = find('#msg_login').text
    expect(mensagem).to eql "Login efetuado com sucesso!"
  end
  Dado("que eu já respondi a questão um") do
    find('label[for*=radio5]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
  end

  Dado("que eu já respondi a questão um e dois") do
    find('label[for*=radio5]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
    find('label[for*=radio4]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
  end

  Dado("que eu já respondi a questão um dois e três") do                        
    find('label[for*=radio5]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
    find('label[for*=radio4]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
    find('label[for*=radio2]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
  end 

  Quando("marco a resposta da fase um questão um") do 
    find('label[for*=radio5]').click
  end
    
  Quando("marco a resposta da fase um questão dois") do
    find('label[for*=radio4]').click
  end

  Quando("marco a resposta da fase um questão três") do
    find('label[for*=radio2]').click
  end

  Quando("marco a resposta da fase um questão quatro") do                       
    find('label[for*=radio2]').click
  end

  Então("envio a resposta") do
    find('#quiz1 > button.mdl-button.mdl-js-button').click
  end
  
  Então("passa para a questão dois") do 
    questão = find('#quiz1_status').text
    expect(questão).to eql "Questão 2 de 4"
  end
  
  Então("passa para a questão três") do
    questão = find('#quiz1_status').text
    expect(questão).to eql "Questão 3 de 4"
  end
  
  Então("passa para a questão quatro") do
    questão = find('#quiz1_status').text
    expect(questão).to eql "Questão 4 de 4"
  end


                                                                          
                                                                                
                                                                            
                                                                                