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
  
  Quando("marco a resposta da fase um questão um") do 
    find('label[for*=radio5]').click
  end
  
  Então("envio a resposta") do
    find('button[onclick*=checkAnswer]')[0].click
  end
  
  Então("passa para a questão dois") do 
    questão = find('#quiz1_status').text
    expect(questão).to eql "Questão 2 de 4"
  end