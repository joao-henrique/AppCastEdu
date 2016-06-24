class SessionEmail < Session

  def initialize user
      @user = user
  end

  def session
    @user.save
    @user = User.find_by_email(session_user.email);
  end

end
