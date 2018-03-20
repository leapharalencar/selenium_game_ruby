#Encoding utf-8

Dado("usuário acessa a página login, loga e responde o quiz um e dois") do
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
    find('label[for*=radio8]').click
    find('#quiz2 > button.mdl-button.mdl-js-button').click
    find('label[for*=radio10]').click
    find('#quiz2 > button.mdl-button.mdl-js-button').click
  end
  
  Quando("preencho o cadastro do contratante") do
    @resp3 = QuizPage3.new

    @resp3.nome.
    @resp3.cpf.
    @resp3.dt_nasc.
    @resp3.dt_habilit.
    @resp3.tel.
    @resp3.end.
    @resp3.tel.click
    @resp3.avancar_veiculo.click



    find('#nome_contratante').set "Raphael de Alencar"
    find('#cpf_contratante').set "22657874185"
    find('#dt_nascimento_contratante').set "12/08/1986"
    find('#dt_habilitacao_contratante').set "12/08/2006"
    find('#telefone_contratante').set "1156894578"    
    find('#endereco_contratante').set "R. das flores"
    find('#telefone_contratante').click
    find('#avancar_veiculo').click    
  end
  
  Quando("preencho o cadastro do veículo") do
    find('#veiculo_opcoes').find(:xpath, 'option[2]').select_option
    find('#veiculo_modelo').find(:xpath, 'option[4]').select_option
    find('#dias_aluguel').set "20"
    find('#veiculo_modelo').click
  end
  
  Então("avanço para o orçamento") do
    find('#avancar_orcamento').click
  end
  Então("valido os dados") do
    #msg = find('#dia_atua').text
    #expect(msg).to have_content "Confirmar Aluguel"   
  end
  Então("Confirmo o aluguel") do
    find('#dia_atual').click
    sleep(5)
  end