class RegistrationsController < ApplicationController
  def new
    @user = User.new
    redirect_to tweets_url if logged_in?
  end

  def create
    @user = User.new(params_user)

    if @user.save
      login(@user.email, @user.password)
      redirect_to tweets_url
    else
      render :new
    end
  end

 private

 def params_user
   params.require(:user).permit(:name, :email, :passwore, :password_confirmation)
 end
end
