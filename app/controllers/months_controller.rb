class MonthsController < ApplicationController
    def index
        @months = Month.all
    end

    def show
        @months = Month.find(params[:id])
    end
end