class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :idRedeSocial, :id
  has_secure_password
  has_secure_token
  has_many :rooms
   attr_accessible :register
   attr_accessor :register

  validates :email,
            :on => :create,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }

  def register_strategy strategy,user
      Session.new(strategy,user).session_user
  end

  def create_room
    RoomBuilder.new(self).build_room()
  end


end
