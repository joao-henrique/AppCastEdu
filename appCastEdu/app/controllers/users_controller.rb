class UsersController < ApplicationController

skip_before_filter :verify_authenticity_token, :only => [:update]


    def new
      @usera = User.all
    end

    def create
      if (User.create(user_params).valid?)

          @user = User.create(user_params)
          puts "if"
          respond_to do |format|
            format.html { room_path @user, notice: 'Room was successfully created.' }
            formart.json {render json: @user}
          end

      elsif
          User.find_by_email(params[:email])
          puts "Elseif"
          render json: @users
        end
    end


    def show
      @users = User.all
      render json: @users
    end

    def ranking
      @users = User.order(score: 'desc')
      render json: @users
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
    def score_params
      params.require(:user).permit(:score)
    end

end
