class CyclesController < ApplicationController
  def index
    @cycles = Cycle.all
  end

  def show
    @cycle = Cycle.find(params[:id])
  end

end
