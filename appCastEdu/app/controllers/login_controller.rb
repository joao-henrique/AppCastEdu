class LoginController < ApplicationController

  def create
    user = User.registerSocial(env["omniauth.auth"])
    puts "user.id ----------------------------------------------"
    session[:user_id] = user.id
    redirect_to show_path user.id


  end

  def destroy
      session[:user_id] = nil
      redirect_to login_path
  end



  def makeLogin
    user = User.find_by_email user_params[:email]
    puts user.name

    if !user.blank?
        puts "Pesquisa"
        redirect_to shop_path user.id
    else
          puts "Pesquisa1"
          redirect_to login_path
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
