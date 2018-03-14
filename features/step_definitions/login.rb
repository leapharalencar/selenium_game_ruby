#Encoding utf-8

Dado("usuário acessa a página login") do
  @login = LoginPage.new
  @login.load
  @login.modal_x.click
end

Dado("que eu tenho os dados de acesso:") do |table|
  @login = LoginPage.new

  nome = table.rows_hash['nome']
  senha = table.rows_hash['senha']
  @login.nome.set nome
  @login.senha.set senha
end

Dado("que eu tenho os dados de acesso {string}{string}") do |nome , senha|
  @login.nome.set nome
  @login.senha.set senha
end

Quando("faço login") do
  @login = LoginPage.new
  @login.loginEntrar.click
end

Então("vejo a mensagem {string}") do |msg|
  mensagem = find('#msg_login').text
  expect(mensagem).to eql msg
end