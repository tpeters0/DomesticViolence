class AttitudesController < ApplicationController
  def index
    @attitudes = Attitude.all
  end

  def show
    @attitude = Attitude.find(params[:id])
  end

end
