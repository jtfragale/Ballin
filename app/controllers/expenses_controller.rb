class ExpensesController < ApplicationController

    def index
        @expense = Expense.all
    end

    def show
        @expense = Expense.find(params[:id])
    end
end