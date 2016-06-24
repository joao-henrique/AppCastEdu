class SessionSocial < Session

  def initialize user
      @user = user
  end

  def session
    user = User.new()
      user.email = @user.info.email
      user.name = @user.info.name
      user.password = @user.uid
      user.save
      @user = User.find_by_email(session_user.info.email);
    end
end
