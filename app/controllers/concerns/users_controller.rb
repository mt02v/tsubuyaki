class UsersController < ApplicationController
 # Get /users
 # Get /users.json
 def index
  @users = User.all
 end

 # Get /users/1
 # Get /users/1.json
 def show
   @user = User.find(params[:id])
 end
end