class Forum < ActiveRecord::Base

    belongs_to :room


  def initialize room,new_forum
      @room = room
      @forum = new_forum
  end

  def get_room
   return  @room
  end




end
