class UsersController < ApplicationController
  before_action :require_login

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  def favorite
    @user = User.find(params[:id])
  end

  def follow
    @user = User.find(params[:id])
  end

  def followers
    @user = User.find(params[:id])
  end
end