class RegisterEmail < AbstractRegister

  def initialize
    puts 'iniciou'
  end

  def register
    puts 'RegisterEmail'
    puts "-----------------"
    user = User.new
    user.name = "Joa"
    user.password = "1010"


    User.create(user).valid?
     user = User.find_by_email(user);
         redirect_to shop_path user
  end

end
