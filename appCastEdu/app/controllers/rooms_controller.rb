class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def index
    @rooms = Room.all
    @categories = Category.all
  end

  def show
  end

  def new
    @room = Room.new
  end

  def create_forum
        room = Room.find(params[:id])
        room.create_forum()
        redirect_to root_path
  end



  def createRoom
    @room = Room.new(room_params)
    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  def updateRoom
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  def listRoom
    @rooms = Room.all
  end

  def listRoomByCategory
    @rooms =  Room.find_by_category(params[:category])
  end

  def addUserRoom
      params[:user]
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:tittle, :descrition,:categories_id)
    end

    def forum_params
      params.require(:forum).permit(:tittle, :descrition)
    end




end
