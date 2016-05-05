class LoginController < ApplicationController

  def makeLogin
    user = User.find_by_email(params[:email])

    if !user.blank?
      if user && user.authenticate(params[:password])
        session[:user_token] = user.token
        render json: User.find_by(token: session[:user_token])
      end
    else
        render template: '/users/show'
    end
  end


  private
   def user_params
     params.require(:user).permit(:name , :email, :idRedeSocial, :password, :password_confirmation)
   end

  private
  def login_params
    params.require(:user).permit(:email)
  end

end
