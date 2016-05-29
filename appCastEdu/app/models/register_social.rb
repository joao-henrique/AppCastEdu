class RegisterSocial < Register

  def initialize user
      @user = user
  end

  def register
    user = User.new()
      user.email = @user.info.email
      user.name = @user.info.name
      user.password = @user.uid
      user.save

      @user = User.find_by_email(registed_user.info.email);
    end


end
