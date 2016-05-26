class UsersController < ApplicationController

skip_before_filter :verify_authenticity_token, :only => [:update]


  def shop
      render json: User.find(params[:id]);
  end

    def new
      @usera = User.all
    end


  def register
      strategy =  params[:provider]

      if strategy == "email"
        puts "+++++++Iniciando o registro++++++++++"
        user = User.new(params[:user])
        user.register_strategy(strategy,user)
      else
        puts "+++++++Iniciando o registro Social ++++++++++"
        user = User.new()
        user_for_register = env["omniauth.auth"]
        puts user_for_register
        user.register_strategy(strategy,user_for_register)
      end


      flash.alert = "You must be logged in"
      flash.notice = "Usuário criado com sucesso Agora vc poderá fazer o login"
      redirect_to new_user_path
 end






    def create
      if (User.create(user_params).valid?)

          @user = User.create(user_params)
          puts "if"
          respond_to do |format|
            format.html { room_path @user, notice: 'Room was successfully created.' }
            format.json {render json: @user}
          end
      elsif
          User.find_by_email(params[:email])
          puts "Elseif"
          render json: @users
        end
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
