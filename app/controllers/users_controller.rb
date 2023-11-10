class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def create
    user = User.new(name: params[:name], password: params[:password])
    user.save
  end
end
