class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
end

def new
    @user = User.new
end

def create
    @user = User.create(user_params)
    redirect_to "/users/#{@user.id}"
end

def edit
    @user = User.find(params[:id])
end

def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to "/users/#{@user.id}"
end

def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "/users"
end

private
def user_params
    params.require(:user).permit(:name)
end
end
