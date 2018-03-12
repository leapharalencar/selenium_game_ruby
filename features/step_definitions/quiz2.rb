#Encoding utf-8

Dado("usuário acessa a página login, loga e responde o quiz um") do     
    visit "http://vanilton.net/selenium/game/"  
    find(:xpath,"//div[@id='modalInitial']//button[@class='close']") .click
    find('#nome').set "caboquinho"
    find('#senha').set "0123456789"
    find('button[name=entrar]').click
    find('label[for*=radio5]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
    find('label[for*=radio4]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
    find('label[for*=radio2]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
    find('label[for*=radio2]').click
    find('#quiz1 > button.mdl-button.mdl-js-button').click
    find('#dia_atual').click
    find('#mes_atual').click
    find('#ano_atual').click
end                                                                            
          
Dado("que eu já respondi a questão um da fase dois") do
    find('label[for*=radio8]').click
    find('#quiz2 > button.mdl-button.mdl-js-button').click
end

Quando("marco a resposta da fase dois questão um") do                          
    find('label[for*=radio8]').click
end                                             
Quando("marco a resposta da fase dois questão dois") do
    find('label[for*=radio10]').click
end                 
Então("envio a resposta fase dois") do
    find('#quiz2 > button.mdl-button.mdl-js-button').click
  end
Então("passa para a questão dois fase dois") do
    questão = find('#quiz2_status').text
    expect(questão).to eql "Questão 2 de 2"
end



  
  
  