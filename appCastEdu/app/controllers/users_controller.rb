class UsersController < ApplicationController

skip_before_filter :verify_authenticity_token, :only => [:update]


  def shop
      puts params[:id]
      render json: User.find(params[:id]);
  end

    def new
      @usera = User.all
    end




    def register


      user = User.new
      user = User.new(user_params)
      puts user

      user.register_strategy "email", user
       redirect_to login_path
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
      user = User.find user_params[:id]
    end


    private
     def user_params
       params.require(:user).permit(:name , :email, :password, :password_confirmation , :sex)
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
