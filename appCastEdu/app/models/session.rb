class Session
  #construtor
  include Singleton

  def _dump(depth)
    # this strips the @strip information from the instance
    Marshal.dump(@keep, depth)
  end

  def self._load(str)
    instance.keep = Marshal.load(str)
    instance
  end


  def initialize session_type,user
    if session_type == "email"
      @session = SessionEmail.new(user)
    else
        @session = SessionSocial.new(user)
    end
        @session.session
        @user = @session.session_user
  end

  def session_user
    @user
  end

  # Metodo Abstrato
  def session
    raise NotImplementedError
  end

end
