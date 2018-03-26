
 class LoginPage < SitePrism::Page
    set_url "http://vanilton.net/selenium/game/"
    element :modal_x, :xpath, '//div[@id="modalInitial"]//button[@class="close"]'
    element :nome, '#nome'
    element :senha, '#senha'
    element :loginEntrar, 'button[name=entrar]'

    def do_login()      
        self.load 
        self.modal_x.click
        self.nome.set 'cabloquinho'
        self.senha.set '0123456789'
        self.loginEntrar.click
    end
 end
 class QuizPage1 < SitePrism::Page
    element :resp1, 'label[for*=radio5]'
    element :resp2, 'label[for*=radio4]'
    element :resp3, 'label[for*=radio2]'
    element :resp4, 'label[for*=radio2]'
    element :Send_quiz1, '#quiz1 > button.mdl-button.mdl-js-button' 
    element :quiz1_status, '#quiz1_status'

    def Q1_resp1()
        self.resp1.click
        self.Send_quiz1.click
    end
    def Q1_resp2()
        self.resp2.click
        self.Send_quiz1.click
    end
    def Q1_resp3()
        self.resp3.click
        self.Send_quiz1.click
    end
    def Q1_resp4()
        self.resp4.click
        self.Send_quiz1.click
    end
 end
 class QuizPage2 < SitePrism::Page
    element :dia_atual, '#dia_atual'
    element :mes_atual, '#mes_atual'
    element :ano_atual, '#ano_atual'
    element :resp5, 'label[for*=radio8]'
    element :resp6, 'label[for*=radio10]'    
    element :Send_quiz2, '#quiz2 > button.mdl-button.mdl-js-button' 
    element :quiz2_status, '#quiz2_status'
 end
 class QuizPage3 < SitePrism::Page
    element :nome, '#nome_contratante'
    element :cpf, '#cpf_contratante'
    element :end, '#endereco_contratante'
    element :dt_nasc, '#dt_nascimento_contratante'
    element :dt_habilit, '#dt_habilitacao_contratante'
    element :tel, '#telefone_contratante'
    element :end, '#endereco_contratante'
    element :avancar_veiculo, '#avancar_veiculo'
 end
