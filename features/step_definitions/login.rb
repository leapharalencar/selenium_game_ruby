#Encoding utf-8

Dado("usuário acessa a página login") do
  visit "http://vanilton.net/selenium/game/"  
  find(:xpath,"//div[@id='modalInitial']//button[@class='close']") .click
end

Dado("que eu tenho os dados de acesso:") do |table|
  nome = table.rows_hash['nome']
  senha = table.rows_hash['senha']
  find('#nome').set nome
  find('#senha').set senha
end

Dado("que eu tenho os dados de acesso {string}{string}") do |nome , senha|
  find('#nome').set nome
  find('#senha').set senha
end

Quando("faço login") do
  find('button[name=entrar]').click
end

Então("vejo a mensagem {string}") do |msg|
  mensagem = find('#msg_login').text
  expect(mensagem).to eql msg
end