class Register < ApplicationController

  def initialize registerType,user
    if registerType == "email"
      puts "+++++++Registro com Email++++++++++"
        @register = RegisterEmail.new(user)
    end
      if registerType ==  "facebook"
        @register = RegisterFacebook.new(user)
      end
      @register.register
  end


  def register
    raise NotImplementedError
  end

end
