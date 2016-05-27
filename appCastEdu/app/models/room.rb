class Room < ActiveRecord::Base
  has_many :forums





  def create_forum new_forum
    forum = Forum.new(self,new_forum)
     puts forum.get_room

   end




end
