class Room < ActiveRecord::Base

    has_many :categories
    serialize :categories_id, Array
    has_many :forums

end
