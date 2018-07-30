class CalculatorsController < ApplicationController
  before_action :set_calculator, only: [:show]

  def index
    @calculators = Calculator.all
  end

  def show
  end

  def create
    @calculator = Calculator.new(calculator_params)

    if @calculator.save
      render :show, status: :created, location: @calculator
    else
      render json: @calculator.errors, status: :unprocessable_entity
    end
  end

  private
    def set_calculator
      @calculator = Calculator.find(params[:id])
    end

    def calculator_params
      params.require(:calculator).permit(:algorithim)
    end
end
