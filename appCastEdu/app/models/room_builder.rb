class RoomBuilder

  attr_reader :tittle, :description, :user

  def initialize user

      if user.class.to_s != 'User'
          raise StandardError, "Raising standard error"
        end
      @user = user
      @tittle =  'Titulo em Branco'
      @description = 'Insira uma descrição'
  end

  def build_room
    puts @user
    room = Room.new(tittle: @tittle,description: @description,user_id: @user.id)
    room.save
  end

  def com_tittle(tittle)
      @tittle = tittle
    self
  end

  def com_description(description)
      @description = description
      self
  end





end
