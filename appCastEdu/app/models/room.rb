class Room < ActiveRecord::Base

  attr_accessible :tittle, :description,:id
  has_many :forums

  def create_forum
    forum =  ForumBuilder.new(self)
    forum.build_forum
  end




end
