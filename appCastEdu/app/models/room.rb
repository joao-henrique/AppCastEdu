require "observer"

class Room < ActiveRecord::Base
  include Observable

  has_many: entity_colab, :as => :childrenable
  has_and_belongs_to_many :components


  attr_accessible :tittle, :description,:id,:user_id
  belongs_to :user

    def create_forum
     ForumBuilder.new(self).build_forum
     notify_observer("um novo forum criado ");
    end

   def create_forum tittle, description
     forum =  ForumBuilder.new(self).com_tittle(tittle).com_description(description)
     forum.build_forum
   end

   def feed_users user
     this.add_observer(user)
   end



end
