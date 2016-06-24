require "observer"


class Forum < ActiveRecord::Base
    include Observable

    
  belongs_to: entity_colab, :as => :childrenable

  attr_reader :tittle, :description, :room_id, :erros, :forum
  belongs_to :room
  after_initialize :start

  def start
      puts "Inicializando um Forum"
  end

end
