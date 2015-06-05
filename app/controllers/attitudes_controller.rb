class AttitudesController < ApplicationController
  def index
    @attitudes = Attitude.all
  end

end
