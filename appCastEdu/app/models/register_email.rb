class RegisterEmail < Register

  def initialize user
      @user = user
  end

  def register
    @user.save
    user = User.find_by_email(user);
    puts "+++++++Finalizando registro com email++++++++++"

  end

end
