class UsersController < ApplicationController

skip_before_filter :verify_authenticity_token, :only => [:update]


  def get_perfil
      @user =  User.find(params[:id]);
      @rooms = Room.where(user_id: params[:id])
  end

    def new
      @users = User.all
    end


  def register
      strategy =  params[:provider]
      if strategy == "email"
        user = User.new(params[:user])
        @user = user.register_strategy(strategy,user)
        redirect_to perfil_path @user
      else
        redirect_to perfil_path  User.new.register_strategy(strategy,get_data_social)
      end
 end

 def get_data_social
   env["omniauth.auth"]
 end


 def login
    user = User.find_by_email user_params[:email]
    puts 'login'
   if !user.blank?
       puts "Pesquisa"
       redirect_to perfil_path user
   else
       puts "Pesquisa1"
       redirect_to login_path
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
