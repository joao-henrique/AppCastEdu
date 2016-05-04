class UsersController < ApplicationController

skip_before_filter :verify_authenticity_token, :only => [:update]

    def create
      if (User.create(user_params).valid?)
          User.create(user_params)
          puts "if"
        render json: @users
      elsif
          User.find_by(email: user_params.email)
          puts "Elseif"
          render json: @users
        end
    end

    def login
      user = User.find_by_email(params[:email])
      if !user.blank?
        if user && user.authenticate(params[:password])
          session[:user_token] = user.token
          render json: User.find_by(token: session[:user_token])
        end
      else
        user = User.create(user_params)
        ##User.login(user)
      end
    end


        def createtwitter
          puts "Ola"
          if (User.create(user_params).valid?)
              User.create(user_params)
              puts "if"
            render json: @users
          elsif
              puts "Elseif"
              render json: @users
            end
        end



        def logintwitter

          puts "Console"
          user = User.find_by_idRedeSocial(params[:idRedeSocial])
          if (!user.blank? )
            if user && user.authenticate(params[:idRedeSocial])
              puts "Entrou no login "
              session[:user_token] = user.token
              render json: User.find_by(idRedeSocial: user.idRedeSocial)
            end
          else
            puts "Cadastrou"
            @user = User.create(user_params)
            User.logintwitter(@user)
            render json: @user
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
       params.require(:user).permit(:name , :email, :idRedeSocial, :password, :password_confirmation)
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
