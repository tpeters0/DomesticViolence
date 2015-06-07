class BehaviorsController < ApplicationController
  def index
    @behaviors = Behavior.all
  end

  def show
    @behavior = Behavior.find(params[:id])
  end

end
