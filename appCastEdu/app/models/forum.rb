class Forum < ActiveRecord::Base

  attr_reader :tittle, :description, :room_id, :erros, :forum
  belongs_to :room
  after_initialize :start

  def start
      puts "Inicializando um Forum"
  end

end
