class Room < ActiveRecord::Base

  attr_accessible :tittle, :description,:id,:user_id
  has_many :forums
  belongs_to :user

  def create_forum
     ForumBuilder.new(self).build_forum
    end

  # def create_forum tittle, description
  #   forum =  ForumBuilder.new(self).com_tittle(tittle).com_description(description)
  #   forum.build_forum
  # end


end
