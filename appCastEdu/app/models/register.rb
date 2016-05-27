class Register < ApplicationController

  def initialize registerType,user
    if registerType == "email"
      puts "+++++++Registro com Email++++++++++"
        @register = RegisterEmail.new(user)
        @user = User.find_by(email: user.email)
    end
      if registerType ==  "facebook"
        @register = RegisterFacebook.new(user)
        @user = User.find_by(email: user.info.email)
      end
      @register.register

  end

  def registed_user
    @user
  end



  def register
    raise NotImplementedError
  end

end
