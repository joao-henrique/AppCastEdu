

class Comment < ActiveRecord::Base

  belongs_to: entity_colab, :as => :childrenable

end
