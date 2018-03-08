

class LoginPage < SitePrism::Page
    set_url '/game'

    element :modal_x, '.close'

    element :email, '#email'
    element :email, '#senha'


 #   element :email, '#email'
 #   element :password, 'input[type=password]'
 #   element :sign_in, 'button[id*=btnLogin]'
 #   element :message_error, '#login-errors'

#    def do_login(user)
#        self.email.set user ['email'] 
#        self.password.set user['password']
#        self.sign_in.click
#    end

end
