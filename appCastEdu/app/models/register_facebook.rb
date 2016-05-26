class RegisterFacebook < Register

  def initialize user
      @user = user
  end

  def register
    user = User.new()

  User.where(@user.slice(:email)).first_or_initialize.tap do |user|
      user.password = @user.uid
      user.name = @user.info.name
      user.email = @user.info.email
      user.save!
   end
    puts "------"

  end


end
