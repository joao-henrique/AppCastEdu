class UsersController < ApplicationController

skip_before_filter :verify_authenticity_token, :only => [:update]


  def perfil
      @user =  User.find(params[:id]);
      @rooms = Room.where(user_id: params[:id])

  end

    def new
      @usera = User.all
    end


  def register
      strategy =  params[:provider]

      if strategy == "email"
        user = User.new(params[:user])
        @user = user.register_strategy(strategy,user)
        redirect_to perfil_path @user
      else
        user = User.new()
        user_for_register = env["omniauth.auth"]
        puts user_for_register.info.email


        user = user.register_strategy(strategy,user_for_register)
        redirect_to perfil_path user
      end
 end


 def create_room
    User.find(params[:id]).create_room
    redirect_to perfil_path params[:id]
 end


  def show
    render json: User.all

  end


    private
     def user_params
       params.require(:user).permit(:name, :email, :password, :password_confirmation , :sex)
     end

    private
    def login_params
      params.require(:user).permit(:email)
    end

    private
    def pefil_params
      params.require(:user).permit(:id)
    end

end
