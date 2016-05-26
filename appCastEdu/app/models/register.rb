class Register

  def initialize type, user
    puts "Register"
    puts user
      if type == "email"
        register = AbstractRegister.new(RegisterEmail.new);
        register.register user
      end
    end


end
