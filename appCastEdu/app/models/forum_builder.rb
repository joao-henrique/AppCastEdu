class ForumBuilder

  attr_reader :tittle, :description, :room

  def initialize room
    puts room.class.to_s
      if room.class.to_s != 'Room'
          raise StandardError, "Raising standard error"
        end
      @room = room
      @tittle =  'Titulo em Branco'
      @description = 'Insira uma descrição'
  end

  def build_forum
    forum = Forum.new(tittle: @tittle,description: @description, room_id: @room.id)
    forum.save
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
