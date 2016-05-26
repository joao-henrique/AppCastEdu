class RegisterFacebook < AbstractRegister

  def register user
    where(auth.slice(:email)).first_or_initialize.tap do |user|
      user.password = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.save!
    end
    puts "------"
    return find_by(email: auth.info.email)
  end


end
