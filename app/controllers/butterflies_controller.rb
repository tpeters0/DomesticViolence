class ButterfliesController < ApplicationController
  def index
    @butterflies = Butterfly.all
  end

  def show
    @butterfly = Butterfly.find(params[:id])
  end

end
