class AbstractRegister

def register user
    raise NotImplementedError.
      new("#{self.class.name}#area is an abstract method.")
  end


def initialize registerType
  @register = registerType
  @register.register
end



end
