class UsersController < ApplicationController
    
    def index
        @users = User.all
    end

    def show
        @users = User.find(params[:id])
        render :show
    end
end