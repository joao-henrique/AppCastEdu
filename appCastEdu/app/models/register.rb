class Register

  def initialize registerType,user
    if registerType == "email"
      @register = RegisterEmail.new(user)
    else
        @register = RegisterSocial.new(user)
    end
        @register.register
        @user = @register.registed_user
  end




  def registed_user
    @user
  end


  def register
    raise NotImplementedError
  end

end
