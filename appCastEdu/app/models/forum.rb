class Forum < ActiveRecord::Base

  attr_reader :tittle, :description, :room_id, :erros, :forum
  belongs_to :room
  after_initialize :start



  def start
    "Instancia de Forum criada "
  end

end
