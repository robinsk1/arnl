class CarsController < ApplicationController

  def index
    @car = Car.new(params[:registration], params[:stock_ref])

      if @car.valid?
        render :index
      else
        flash[:error] = "Errors detected"
        redirect_to :back
      end
    
  end

end
